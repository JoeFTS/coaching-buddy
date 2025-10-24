'use client'

import { useState, useEffect } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { PracticePlan, PracticePlanDrill } from '@/types'
import { ChevronDown, ChevronUp, Clock, Users, ListOrdered } from 'lucide-react'

export default function PracticePlanDetailPage() {
  const params = useParams()
  const router = useRouter()
  const [plan, setPlan] = useState<PracticePlan | null>(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [expandedDrills, setExpandedDrills] = useState<Set<string>>(new Set())
  const supabase = createClient()

  useEffect(() => {
    fetchPlan()
  }, [params.id])

  const fetchPlan = async () => {
    try {
      setLoading(true)

      // Fetch practice plan with drills
      const { data, error: fetchError } = await supabase
        .from('practice_plans')
        .select(`
          *,
          practice_plan_drills (
            id,
            drill_id,
            order_index,
            duration_minutes,
            notes,
            drills (
              id,
              title,
              description,
              instructions,
              video_url,
              duration_minutes,
              skill_category,
              difficulty_level,
              equipment_needed,
              min_players
            )
          )
        `)
        .eq('id', params.id)
        .single()

      if (fetchError) throw fetchError

      // Transform the data to match our types
      const transformedData: PracticePlan = {
        id: data.id,
        userId: data.user_id,
        divisionId: data.division_id,
        title: data.title,
        practiceDate: data.practice_date,
        durationMinutes: data.duration_minutes,
        notes: data.notes,
        isTemplate: data.is_template,
        drills: data.practice_plan_drills?.map((ppd: any) => ({
          id: ppd.id,
          practicePlanId: data.id,
          drillId: ppd.drill_id,
          orderIndex: ppd.order_index,
          durationMinutes: ppd.duration_minutes,
          notes: ppd.notes,
          drill: ppd.drills ? {
            id: ppd.drills.id,
            title: ppd.drills.title,
            description: ppd.drills.description,
            instructions: ppd.drills.instructions,
            videoUrl: ppd.drills.video_url,
            durationMinutes: ppd.drills.duration_minutes,
            divisionId: null,
            skillCategory: ppd.drills.skill_category,
            difficultyLevel: ppd.drills.difficulty_level,
            equipmentNeeded: ppd.drills.equipment_needed || [],
            minPlayers: ppd.drills.min_players,
            createdBy: null
          } : undefined
        })).sort((a: PracticePlanDrill, b: PracticePlanDrill) => a.orderIndex - b.orderIndex)
      }

      setPlan(transformedData)
    } catch (err: any) {
      setError(err.message || 'Failed to load practice plan')
    } finally {
      setLoading(false)
    }
  }

  const toggleDrill = (drillId: string) => {
    const newExpanded = new Set(expandedDrills)
    if (newExpanded.has(drillId)) {
      newExpanded.delete(drillId)
    } else {
      newExpanded.add(drillId)
    }
    setExpandedDrills(newExpanded)
  }

  const toggleAllDrills = () => {
    if (expandedDrills.size === plan?.drills?.length) {
      setExpandedDrills(new Set())
    } else {
      setExpandedDrills(new Set(plan?.drills?.map(d => d.id) || []))
    }
  }

  if (loading) {
    return (
      <div className="container mx-auto px-4 py-8 max-w-4xl">
        <div className="text-center py-12">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-[#064789] mx-auto"></div>
          <p className="text-gray-600 mt-4">Loading practice plan...</p>
        </div>
      </div>
    )
  }

  if (error || !plan) {
    return (
      <div className="container mx-auto px-4 py-8 max-w-4xl">
        <Card className="border-red-200 bg-red-50">
          <CardContent className="pt-6">
            <p className="text-red-600">{error || 'Practice plan not found'}</p>
            <Button
              onClick={() => router.push('/dashboard')}
              variant="outline"
              className="mt-4"
            >
              Back to Dashboard
            </Button>
          </CardContent>
        </Card>
      </div>
    )
  }

  return (
    <div className="container mx-auto px-4 py-8 max-w-4xl">
      {/* Header */}
      <div className="mb-6">
        <Button
          onClick={() => router.push('/dashboard')}
          variant="ghost"
          className="mb-4"
        >
          ← Back to Dashboard
        </Button>

        <div className="flex items-start justify-between">
          <div>
            <h1 className="text-3xl font-bold text-gray-900 mb-2">
              {plan.title}
            </h1>
            <div className="flex items-center gap-4 text-sm text-gray-600">
              {plan.practiceDate && (
                <span>
                  📅 {new Date(plan.practiceDate).toLocaleDateString()}
                </span>
              )}
              <span className="flex items-center gap-1">
                <Clock className="w-4 h-4" />
                {plan.durationMinutes} minutes
              </span>
            </div>
          </div>

          <div className="flex gap-2">
            <Button variant="outline" onClick={() => router.push(`/dashboard/plans/${plan.id}/edit`)}>
              Edit Plan
            </Button>
            <Button variant="outline" onClick={() => alert('Export to PDF coming soon!')}>
              Export PDF
            </Button>
          </div>
        </div>

        {plan.notes && (
          <div className="mt-4 p-4 bg-blue-50 rounded-lg border border-blue-200">
            <p className="text-sm text-gray-700">{plan.notes}</p>
          </div>
        )}
      </div>

      {/* Drills Section */}
      <Card>
        <CardHeader>
          <div className="flex items-center justify-between">
            <div>
              <CardTitle>Practice Schedule</CardTitle>
              <CardDescription>
                {plan.drills?.length || 0} drills • Total time: {plan.drills?.reduce((sum, d) => sum + d.durationMinutes, 0) || 0} minutes
              </CardDescription>
            </div>
            <Button
              variant="ghost"
              size="sm"
              onClick={toggleAllDrills}
            >
              {expandedDrills.size === plan?.drills?.length ? 'Collapse All' : 'Expand All'}
            </Button>
          </div>
        </CardHeader>
        <CardContent>
          {!plan.drills || plan.drills.length === 0 ? (
            <div className="text-center py-12">
              <p className="text-gray-600 mb-4">No drills added yet</p>
              <Button onClick={() => router.push(`/dashboard/plans/${plan.id}/edit`)}>
                Add Drills
              </Button>
            </div>
          ) : (
            <div className="space-y-3">
              {plan.drills.map((practiceDrill, index) => {
                const drill = practiceDrill.drill
                if (!drill) return null

                const isExpanded = expandedDrills.has(practiceDrill.id)

                return (
                  <div
                    key={practiceDrill.id}
                    className="border border-gray-200 rounded-lg overflow-hidden hover:border-[#064789] transition-colors"
                  >
                    {/* Drill Header - Always Visible */}
                    <div
                      className="p-4 bg-gray-50 cursor-pointer hover:bg-gray-100 transition-colors"
                      onClick={() => toggleDrill(practiceDrill.id)}
                    >
                      <div className="flex items-start justify-between">
                        <div className="flex-1">
                          <div className="flex items-center gap-3">
                            <span className="flex items-center justify-center w-8 h-8 rounded-full bg-[#064789] text-white text-sm font-bold">
                              {index + 1}
                            </span>
                            <div>
                              <h3 className="font-semibold text-lg text-gray-900">
                                {drill.title}
                              </h3>
                              <div className="flex items-center gap-3 mt-1 text-xs text-gray-600">
                                <span className="px-2 py-1 bg-white rounded-full border border-gray-300">
                                  {drill.skillCategory}
                                </span>
                                <span className="px-2 py-1 bg-white rounded-full border border-gray-300">
                                  {drill.difficultyLevel}
                                </span>
                                <span className="flex items-center gap-1">
                                  <Clock className="w-3 h-3" />
                                  {practiceDrill.durationMinutes} min
                                </span>
                                {drill.minPlayers > 0 && (
                                  <span className="flex items-center gap-1">
                                    <Users className="w-3 h-3" />
                                    {drill.minPlayers}+ players
                                  </span>
                                )}
                              </div>
                            </div>
                          </div>
                        </div>

                        <button
                          className="ml-4 p-2 hover:bg-gray-200 rounded-full transition-colors"
                          onClick={(e) => {
                            e.stopPropagation()
                            toggleDrill(practiceDrill.id)
                          }}
                        >
                          {isExpanded ? (
                            <ChevronUp className="w-5 h-5 text-gray-600" />
                          ) : (
                            <ChevronDown className="w-5 h-5 text-gray-600" />
                          )}
                        </button>
                      </div>
                    </div>

                    {/* Drill Details - Expandable */}
                    {isExpanded && (
                      <div className="p-4 bg-white border-t border-gray-200">
                        {/* Description */}
                        {drill.description && (
                          <div className="mb-4">
                            <h4 className="font-semibold text-sm text-gray-700 mb-2">Description</h4>
                            <p className="text-sm text-gray-600">{drill.description}</p>
                          </div>
                        )}

                        {/* Instructions */}
                        <div className="mb-4">
                          <h4 className="font-semibold text-sm text-gray-700 mb-2 flex items-center gap-2">
                            <ListOrdered className="w-4 h-4" />
                            Instructions
                          </h4>
                          <div className="text-sm text-gray-600 whitespace-pre-line bg-gray-50 p-3 rounded-lg">
                            {drill.instructions}
                          </div>
                        </div>

                        {/* Equipment */}
                        {drill.equipmentNeeded.length > 0 && (
                          <div className="mb-4">
                            <h4 className="font-semibold text-sm text-gray-700 mb-2">Equipment Needed</h4>
                            <div className="flex flex-wrap gap-2">
                              {drill.equipmentNeeded.map((item, i) => (
                                <span
                                  key={i}
                                  className="px-3 py-1 bg-blue-100 text-blue-800 rounded-full text-xs font-medium"
                                >
                                  {item}
                                </span>
                              ))}
                            </div>
                          </div>
                        )}

                        {/* Video */}
                        {drill.videoUrl && (
                          <div className="mb-4">
                            <h4 className="font-semibold text-sm text-gray-700 mb-2">Video Reference</h4>
                            <a
                              href={drill.videoUrl}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-[#064789] hover:underline"
                            >
                              Watch video →
                            </a>
                          </div>
                        )}

                        {/* Plan-specific Notes */}
                        {practiceDrill.notes && (
                          <div className="mb-4">
                            <h4 className="font-semibold text-sm text-gray-700 mb-2">Coach Notes</h4>
                            <p className="text-sm text-gray-600 italic bg-yellow-50 p-3 rounded-lg border border-yellow-200">
                              {practiceDrill.notes}
                            </p>
                          </div>
                        )}
                      </div>
                    )}
                  </div>
                )
              })}
            </div>
          )}
        </CardContent>
      </Card>

      {/* Summary Card */}
      {plan.drills && plan.drills.length > 0 && (
        <Card className="mt-6">
          <CardHeader>
            <CardTitle className="text-lg">Practice Summary</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-3 gap-4 text-center">
              <div>
                <div className="text-2xl font-bold text-[#064789]">
                  {plan.drills.length}
                </div>
                <div className="text-sm text-gray-600">Total Drills</div>
              </div>
              <div>
                <div className="text-2xl font-bold text-[#064789]">
                  {plan.drills.reduce((sum, d) => sum + d.durationMinutes, 0)}
                </div>
                <div className="text-sm text-gray-600">Total Minutes</div>
              </div>
              <div>
                <div className="text-2xl font-bold text-[#064789]">
                  {new Set(plan.drills.map(d => d.drill?.skillCategory)).size}
                </div>
                <div className="text-sm text-gray-600">Skill Areas</div>
              </div>
            </div>
          </CardContent>
        </Card>
      )}
    </div>
  )
}
