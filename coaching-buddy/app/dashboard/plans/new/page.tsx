'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { PonyDivision } from '@/types'

export default function NewPracticePlanPage() {
  const [divisions, setDivisions] = useState<PonyDivision[]>([])
  const [title, setTitle] = useState('')
  const [divisionId, setDivisionId] = useState('')
  const [durationMinutes, setDurationMinutes] = useState('60')
  const [practiceDate, setPracticeDate] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const router = useRouter()
  const supabase = createClient()

  useEffect(() => {
    fetchDivisions()
  }, [])

  const fetchDivisions = async () => {
    const { data } = await supabase
      .from('pony_divisions')
      .select('*')
      .order('display_order')

    if (data) {
      setDivisions(data as unknown as PonyDivision[])
    }
  }

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setError('')
    setLoading(true)

    try {
      const { data: { user } } = await supabase.auth.getUser()

      if (!user) {
        throw new Error('Not authenticated')
      }

      // Create practice plan
      const { data: plan, error: planError } = await supabase
        .from('practice_plans')
        .insert({
          user_id: user.id,
          division_id: divisionId,
          title,
          duration_minutes: parseInt(durationMinutes),
          practice_date: practiceDate || null,
        })
        .select()
        .single()

      if (planError) throw planError

      // Redirect to plan detail/edit page
      router.push(`/dashboard/plans/${plan.id}`)
    } catch (error: any) {
      setError(error.message || 'Failed to create practice plan')
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="container mx-auto px-4 py-8 max-w-2xl">
      <div className="mb-6">
        <h1 className="text-3xl font-bold text-gray-900">
          Create Practice Plan
        </h1>
        <p className="text-gray-600 mt-2">
          Let's build a custom practice plan for your team
        </p>
      </div>

      <Card>
        <CardHeader>
          <CardTitle>Practice Details</CardTitle>
          <CardDescription>
            Start by telling us about your practice session
          </CardDescription>
        </CardHeader>
        <CardContent>
          <form onSubmit={handleSubmit} className="space-y-6">
            {error && (
              <div className="p-3 text-sm text-red-600 bg-red-50 border border-red-200 rounded-md">
                {error}
              </div>
            )}

            <div className="space-y-2">
              <Label htmlFor="title">Practice Title</Label>
              <Input
                id="title"
                type="text"
                placeholder="e.g., Week 3 Practice - Hitting Focus"
                value={title}
                onChange={(e) => setTitle(e.target.value)}
                required
              />
            </div>

            <div className="space-y-2">
              <Label htmlFor="division">Division</Label>
              <Select value={divisionId} onValueChange={setDivisionId} required>
                <SelectTrigger>
                  <SelectValue placeholder="Select division" />
                </SelectTrigger>
                <SelectContent>
                  {divisions.map((division) => (
                    <SelectItem key={division.id} value={division.id}>
                      {division.name} (Ages {division.ageMin}-{division.ageMax})
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="duration">Duration (minutes)</Label>
                <Select value={durationMinutes} onValueChange={setDurationMinutes}>
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="30">30 minutes</SelectItem>
                    <SelectItem value="45">45 minutes</SelectItem>
                    <SelectItem value="60">60 minutes</SelectItem>
                    <SelectItem value="75">75 minutes</SelectItem>
                    <SelectItem value="90">90 minutes</SelectItem>
                    <SelectItem value="120">120 minutes</SelectItem>
                  </SelectContent>
                </Select>
              </div>

              <div className="space-y-2">
                <Label htmlFor="date">Practice Date (optional)</Label>
                <Input
                  id="date"
                  type="date"
                  value={practiceDate}
                  onChange={(e) => setPracticeDate(e.target.value)}
                />
              </div>
            </div>

            <div className="flex gap-3 pt-4">
              <Button
                type="submit"
                className="flex-1"
                disabled={loading || !divisionId}
              >
                {loading ? 'Creating...' : 'Create Plan'}
              </Button>
              <Button
                type="button"
                variant="outline"
                onClick={() => router.back()}
              >
                Cancel
              </Button>
            </div>
          </form>
        </CardContent>
      </Card>

      <Card className="mt-6">
        <CardHeader>
          <CardTitle className="text-lg">What's Next?</CardTitle>
        </CardHeader>
        <CardContent className="text-sm text-gray-600">
          <p>
            After creating your practice plan, you'll be able to:
          </p>
          <ul className="list-disc list-inside mt-2 space-y-1">
            <li>Add age-appropriate drills from our library</li>
            <li>Customize drill durations and order</li>
            <li>Add notes and coaching tips</li>
            <li>Export your plan as a PDF</li>
          </ul>
        </CardContent>
      </Card>
    </div>
  )
}
