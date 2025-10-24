'use client'

import { useState } from 'react'
import { createClient } from '@/lib/supabase/client'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'

const divisions = [
  { id: '1', name: 'Shetland', ageMin: 5, ageMax: 6 },
  { id: '2', name: 'Pinto', ageMin: 7, ageMax: 8 },
  { id: '3', name: 'Mustang', ageMin: 9, ageMax: 10 },
  { id: '4', name: 'Bronco', ageMin: 11, ageMax: 12 },
  { id: '5', name: 'Pony', ageMin: 13, ageMax: 14 },
  { id: '6', name: 'Colt', ageMin: 15, ageMax: 16 },
  { id: '7', name: 'Palomino', ageMin: 17, ageMax: 18 },
  { id: '8', name: 'Thorobred', ageMin: 17, ageMax: 23 },
]

interface Drill {
  id: string
  title: string
  description: string
  skill_category: string
  difficulty_level: string
  duration_minutes: number
}

interface PracticeActivity {
  name: string
  duration: number
  category: string
  drills: Drill[]
}

export default function CreatePracticePlanPage() {
  const [title, setTitle] = useState('')
  const [divisionId, setDivisionId] = useState('')
  const [durationMinutes, setDurationMinutes] = useState('60')
  const [practiceDate, setPracticeDate] = useState('')
  const [loading, setLoading] = useState(false)
  const [generatedPlan, setGeneratedPlan] = useState<any>(null)
  const supabase = createClient()

  const handleGenerate = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)

    try {
      const selectedDivision = divisions.find(d => d.id === divisionId)
      const totalDuration = parseInt(durationMinutes)

      // Fetch drills from database for each category
      const { data: hittingDrills } = await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Hitting')
        .limit(2)

      const { data: fieldingDrills } = await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Fielding')
        .limit(2)

      const { data: baserunningDrills } = await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Baserunning')
        .limit(1)

      const { data: pitchingDrills } = await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Pitching')
        .limit(1)

      // Build practice plan with real drills
      const activities: PracticeActivity[] = [
        {
          name: 'Warm-up & Stretching',
          duration: Math.floor(totalDuration * 0.10),
          category: 'Warm-up',
          drills: []
        },
        {
          name: 'Hitting',
          duration: Math.floor(totalDuration * 0.25),
          category: 'Hitting',
          drills: hittingDrills || []
        },
        {
          name: 'Fielding',
          duration: Math.floor(totalDuration * 0.25),
          category: 'Fielding',
          drills: fieldingDrills || []
        },
        {
          name: 'Baserunning',
          duration: Math.floor(totalDuration * 0.15),
          category: 'Baserunning',
          drills: baserunningDrills || []
        }
      ]

      // Add pitching for older divisions
      if (selectedDivision && selectedDivision.ageMin >= 7) {
        activities.push({
          name: 'Pitching',
          duration: Math.floor(totalDuration * 0.15),
          category: 'Pitching',
          drills: pitchingDrills || []
        })
      }

      activities.push({
        name: 'Scrimmage / Game Situations',
        duration: Math.floor(totalDuration * 0.15),
        category: 'Game Situations',
        drills: []
      })

      activities.push({
        name: 'Cool Down',
        duration: 5,
        category: 'Cool Down',
        drills: []
      })

      setGeneratedPlan({
        title: title || `${selectedDivision?.name} Practice Plan`,
        division: selectedDivision,
        duration: totalDuration,
        date: practiceDate,
        activities: activities
      })
    } catch (error) {
      console.error('Error generating plan:', error)
      alert('Error generating practice plan. Please try again.')
    } finally {
      setLoading(false)
    }
  }

  const handleExportPDF = () => {
    // TODO: Implement PDF export
    alert('PDF export coming soon!')
  }

  const handleSaveAndLogin = () => {
    // Redirect to login with return URL
    window.location.href = '/auth/login?returnTo=/create'
  }

  return (
    <div className="min-h-screen bg-[#EBF2FA]">
      {/* Header */}
      <header className="bg-white border-b border-gray-200">
        <div className="max-w-6xl mx-auto px-6 py-4">
          <div className="flex items-center justify-between">
            <a href="/" className="text-lg font-bold tracking-tight hover:text-[#064789] transition-colors">
              ← Coaching Buddy
            </a>
            <a href="/auth/login" className="text-sm font-medium text-gray-700 hover:text-gray-900 transition-colors">
              Login to save
            </a>
          </div>
        </div>
      </header>

      <div className="max-w-6xl mx-auto px-6 py-8">
        <div className="mb-6">
          <h1 className="text-4xl font-bold tracking-tight mb-2">
            Create Practice Plan
          </h1>
          <p className="text-gray-600">
            Generate a professional practice plan in seconds. No login required.
          </p>
        </div>

        <div className="grid lg:grid-cols-2 gap-6">
          {/* Form */}
          <div>
            <Card>
              <CardHeader>
                <CardTitle>Practice Details</CardTitle>
                <CardDescription>
                  Tell us about your practice session
                </CardDescription>
              </CardHeader>
              <CardContent>
                <form onSubmit={handleGenerate} className="space-y-4">
                  <div className="space-y-2">
                    <Label htmlFor="title">Practice Title (optional)</Label>
                    <Input
                      id="title"
                      type="text"
                      placeholder="e.g., Week 3 Practice - Hitting Focus"
                      value={title}
                      onChange={(e) => setTitle(e.target.value)}
                    />
                  </div>

                  <div className="space-y-2">
                    <Label htmlFor="division">Division *</Label>
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

                  <div className="space-y-2">
                    <Label htmlFor="duration">Duration *</Label>
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

                  <Button
                    type="submit"
                    className="w-full bg-[#064789] hover:bg-[#427AA1]"
                    disabled={loading || !divisionId}
                  >
                    {loading ? 'Generating...' : 'Generate Practice Plan'}
                  </Button>
                </form>
              </CardContent>
            </Card>

            <div className="mt-4 p-4 bg-white rounded-lg border border-gray-200">
              <h3 className="font-medium mb-2 text-sm">Want to save your plans?</h3>
              <p className="text-xs text-gray-600 mb-3">
                Create a free account to save, edit, and organize your practice plans.
              </p>
              <a href="/auth/register" className="text-xs font-medium text-[#064789] hover:underline">
                Sign up for free →
              </a>
            </div>
          </div>

          {/* Generated Plan */}
          <div>
            {!generatedPlan ? (
              <Card className="h-full flex items-center justify-center bg-gradient-to-br from-gray-50 to-white">
                <CardContent className="text-center py-12">
                  <div className="text-6xl mb-4">📋</div>
                  <h3 className="text-xl font-bold mb-2">Your plan will appear here</h3>
                  <p className="text-gray-600 text-sm">
                    Fill out the form and click Generate to create your practice plan
                  </p>
                </CardContent>
              </Card>
            ) : (
              <Card>
                <CardHeader>
                  <div className="flex items-start justify-between">
                    <div>
                      <CardTitle>{generatedPlan.title}</CardTitle>
                      <CardDescription>
                        {generatedPlan.division.name} • {generatedPlan.duration} minutes
                        {generatedPlan.date && ` • ${new Date(generatedPlan.date).toLocaleDateString()}`}
                      </CardDescription>
                    </div>
                  </div>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="space-y-3">
                    {generatedPlan.activities.map((activity: PracticeActivity, index: number) => (
                      <div key={index} className="border border-gray-200 rounded-lg overflow-hidden">
                        {/* Activity Header */}
                        <div className="flex items-center justify-between p-3 bg-gray-50">
                          <div>
                            <div className="font-semibold text-sm">{activity.name}</div>
                            <div className="text-xs text-gray-600">{activity.category}</div>
                          </div>
                          <div className="text-sm font-medium text-[#064789]">
                            {activity.duration} min
                          </div>
                        </div>

                        {/* Drills List */}
                        {activity.drills.length > 0 && (
                          <div className="bg-white p-3 space-y-2">
                            {activity.drills.map((drill: Drill, drillIndex: number) => (
                              <div key={drillIndex} className="pl-4 border-l-2 border-[#064789] py-1">
                                <div className="text-sm font-medium text-gray-900">{drill.title}</div>
                                <div className="text-xs text-gray-600 mt-0.5">{drill.description}</div>
                                <div className="text-xs text-[#064789] mt-1">
                                  {drill.difficulty_level} • {drill.duration_minutes} min suggested
                                </div>
                              </div>
                            ))}
                          </div>
                        )}
                      </div>
                    ))}
                  </div>

                  <div className="pt-4 border-t space-y-2">
                    <Button
                      onClick={handleExportPDF}
                      className="w-full bg-[#064789] hover:bg-[#427AA1]"
                    >
                      📥 Export as PDF
                    </Button>
                    <Button
                      onClick={handleSaveAndLogin}
                      variant="outline"
                      className="w-full"
                    >
                      💾 Save to Account
                    </Button>
                  </div>

                  <div className="text-xs text-gray-500 text-center pt-2">
                    Login to save and manage your practice plans
                  </div>
                </CardContent>
              </Card>
            )}
          </div>
        </div>
      </div>
    </div>
  )
}
