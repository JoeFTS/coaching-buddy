'use client'

import { useState, useEffect } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { ArrowLeft, ExternalLink } from 'lucide-react'
import { PonyDivision, Resource } from '@/types'

export default function DivisionRulesPage() {
  const params = useParams()
  const router = useRouter()
  const [division, setDivision] = useState<PonyDivision | null>(null)
  const [resources, setResources] = useState<Resource[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const supabase = createClient()

  useEffect(() => {
    fetchDivisionAndResources()
  }, [params.slug])

  const fetchDivisionAndResources = async () => {
    try {
      setLoading(true)

      // Convert slug to division name (e.g., 'shetland' -> 'Shetland')
      const divisionName = String(params.slug).charAt(0).toUpperCase() + String(params.slug).slice(1).toLowerCase()

      // Fetch division
      const { data: divisionData, error: divisionError } = await supabase
        .from('pony_divisions')
        .select('*')
        .ilike('name', divisionName)
        .single()

      if (divisionError) throw divisionError

      // Transform division data
      const transformedDivision: PonyDivision = {
        id: divisionData.id,
        name: divisionData.name,
        ageMin: divisionData.age_min,
        ageMax: divisionData.age_max,
        displayOrder: divisionData.display_order,
        baseDistance: divisionData.base_distance,
        pitchingDistance: divisionData.pitching_distance,
        description: divisionData.description
      }

      setDivision(transformedDivision)

      // Fetch resources for this division
      const { data: resourcesData, error: resourcesError } = await supabase
        .from('resources')
        .select('*')
        .eq('division_id', divisionData.id)
        .order('display_order')

      if (resourcesError) throw resourcesError

      // Transform resources data
      const transformedResources: Resource[] = resourcesData.map((r: any) => ({
        id: r.id,
        title: r.title,
        description: r.description,
        url: r.url,
        resourceType: r.resource_type,
        divisionId: r.division_id,
        displayOrder: r.display_order
      }))

      setResources(transformedResources)
    } catch (err: any) {
      setError(err.message || 'Failed to load division information')
    } finally {
      setLoading(false)
    }
  }

  const getResourceIcon = (type: string) => {
    switch (type) {
      case 'rulebook':
        return '📖'
      case 'field_specs':
        return '📐'
      case 'coaching_guide':
        return '👨‍🏫'
      case 'video':
        return '🎥'
      default:
        return '📄'
    }
  }

  const getResourceTypeLabel = (type: string) => {
    switch (type) {
      case 'rulebook':
        return 'Rulebook'
      case 'field_specs':
        return 'Field Specifications'
      case 'coaching_guide':
        return 'Coaching Guide'
      case 'video':
        return 'Video'
      default:
        return 'Resource'
    }
  }

  if (loading) {
    return (
      <div className="min-h-screen bg-[#EBF2FA]">
        <div className="max-w-4xl mx-auto px-4 py-8">
          <div className="text-center py-12">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-[#064789] mx-auto"></div>
            <p className="text-gray-600 mt-4">Loading division information...</p>
          </div>
        </div>
      </div>
    )
  }

  if (error || !division) {
    return (
      <div className="min-h-screen bg-[#EBF2FA]">
        <div className="max-w-4xl mx-auto px-4 py-8">
          <Card className="border-red-200 bg-red-50">
            <CardContent className="pt-6">
              <p className="text-red-600">{error || 'Division not found'}</p>
              <Button
                onClick={() => router.push('/')}
                variant="outline"
                className="mt-4"
              >
                Back to Home
              </Button>
            </CardContent>
          </Card>
        </div>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-[#EBF2FA]">
      {/* Header */}
      <header className="bg-white border-b border-gray-200">
        <div className="max-w-4xl mx-auto px-6 py-4">
          <div className="flex items-center justify-between">
            <Button
              onClick={() => router.push('/')}
              variant="ghost"
              className="gap-2"
            >
              <ArrowLeft className="w-4 h-4" />
              Back to Home
            </Button>
            <a href="/auth/login" className="text-sm font-medium text-gray-700 hover:text-gray-900 transition-colors">
              Login
            </a>
          </div>
        </div>
      </header>

      {/* Main Content */}
      <main className="max-w-4xl mx-auto px-4 py-8">
        {/* Division Header */}
        <div className="mb-8">
          <div className="inline-block px-3 py-1 bg-[#064789] text-white text-sm font-medium rounded-full mb-4">
            Pony Baseball Division
          </div>
          <h1 className="text-4xl font-bold text-gray-900 mb-3">
            {division.name} Division
          </h1>
          <p className="text-xl text-gray-600 mb-4">
            Ages {division.ageMin}-{division.ageMax}
          </p>
          {division.description && (
            <p className="text-gray-700 leading-relaxed">
              {division.description}
            </p>
          )}
        </div>

        {/* Field Specifications Card */}
        <Card className="mb-6">
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <span className="text-2xl">📏</span>
              Field Dimensions
            </CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid md:grid-cols-2 gap-4">
              <div className="p-4 bg-[#EBF2FA] rounded-lg">
                <div className="text-sm text-gray-600 mb-1">Base Distance</div>
                <div className="text-2xl font-bold text-[#064789]">
                  {division.baseDistance} feet
                </div>
              </div>
              <div className="p-4 bg-[#EBF2FA] rounded-lg">
                <div className="text-sm text-gray-600 mb-1">Pitching Distance</div>
                <div className="text-2xl font-bold text-[#064789]">
                  {division.pitchingDistance} feet
                </div>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Resources Section */}
        <div className="mb-6">
          <h2 className="text-2xl font-bold mb-4">Official Rules & Resources</h2>

          {resources.length === 0 ? (
            <Card>
              <CardContent className="py-12 text-center">
                <p className="text-gray-600">
                  No specific resources available yet for this division.
                </p>
                <p className="text-sm text-gray-500 mt-2">
                  Check back soon for official rulebooks and field specifications.
                </p>
              </CardContent>
            </Card>
          ) : (
            <div className="space-y-4">
              {resources.map((resource) => (
                <Card key={resource.id} className="hover:border-[#064789] transition-colors">
                  <CardHeader>
                    <div className="flex items-start justify-between">
                      <div className="flex items-start gap-3 flex-1">
                        <span className="text-3xl">{getResourceIcon(resource.resourceType)}</span>
                        <div className="flex-1">
                          <CardTitle className="text-lg mb-2">
                            {resource.title}
                          </CardTitle>
                          <div className="inline-block px-2 py-1 bg-[#EBF2FA] text-[#064789] text-xs font-medium rounded-full mb-3">
                            {getResourceTypeLabel(resource.resourceType)}
                          </div>
                          {resource.description && (
                            <CardDescription className="text-sm leading-relaxed">
                              {resource.description}
                            </CardDescription>
                          )}
                        </div>
                      </div>
                    </div>
                  </CardHeader>
                  <CardContent>
                    <a
                      href={resource.url}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="inline-flex items-center gap-2 px-4 py-2 bg-[#064789] text-white rounded-lg font-medium hover:bg-[#427AA1] transition-colors"
                    >
                      View Resource
                      <ExternalLink className="w-4 h-4" />
                    </a>
                  </CardContent>
                </Card>
              ))}
            </div>
          )}
        </div>

        {/* Additional Actions */}
        <Card className="bg-gradient-to-br from-[#679436] to-[#A5BE00] text-white">
          <CardHeader>
            <CardTitle>Ready to Create a Practice Plan?</CardTitle>
            <CardDescription className="text-white/90">
              Use age-appropriate drills for {division.name} division players
            </CardDescription>
          </CardHeader>
          <CardContent>
            <a
              href="/create"
              className="inline-flex items-center gap-2 px-6 py-3 bg-white text-[#064789] rounded-lg font-medium hover:bg-gray-100 transition-colors"
            >
              Create Practice Plan
              <ArrowLeft className="w-4 h-4 rotate-180" />
            </a>
          </CardContent>
        </Card>
      </main>
    </div>
  )
}
