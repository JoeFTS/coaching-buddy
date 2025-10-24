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
  instructions: string
  skill_category: string
  difficulty_level: string
  duration_minutes: number
  equipment_needed: string[]
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
  const [practicesPerWeek, setPracticesPerWeek] = useState('2')
  const [practiceFocus, setPracticeFocus] = useState('mixed')
  const [loading, setLoading] = useState(false)
  const [generatedPlan, setGeneratedPlan] = useState<any>(null)
  const supabase = createClient()

  const getDifficultyForDivision = (divisionId: string) => {
    const div = divisions.find(d => d.id === divisionId)
    if (!div) return ['beginner']

    // Shetland/Pinto (5-8): beginner only
    if (div.ageMin <= 8) return ['beginner']
    // Mustang/Bronco (9-12): beginner + intermediate
    if (div.ageMin <= 12) return ['beginner', 'intermediate']
    // Pony+ (13+): all levels
    return ['beginner', 'intermediate', 'advanced']
  }

  const handleGenerate = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)

    try {
      const selectedDivision = divisions.find(d => d.id === divisionId)
      const totalDuration = parseInt(durationMinutes)
      const allowedDifficulties = getDifficultyForDivision(divisionId)

      // Adjust drill counts based on focus
      let hittingCount = 2, fieldingCount = 2, baserunningCount = 1, pitchingCount = 1

      if (practiceFocus === 'hitting') {
        hittingCount = 6
        fieldingCount = 0
        baserunningCount = 0
        pitchingCount = 0
      } else if (practiceFocus === 'fielding') {
        hittingCount = 0
        fieldingCount = 6
        baserunningCount = 0
        pitchingCount = 0
      } else if (practiceFocus === 'pitching') {
        hittingCount = 0
        fieldingCount = 0
        baserunningCount = 0
        pitchingCount = 6
      }

      // Fetch drills from database for each category with appropriate difficulty
      // Use a random seed based on timestamp to get different drills each time
      const randomSeed = Math.random()

      const { data: hittingDrills } = hittingCount > 0 ? await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Hitting')
        .in('difficulty_level', allowedDifficulties)
        .limit(hittingCount * 2) // Fetch more than needed
        : { data: [] }

      const { data: fieldingDrills } = fieldingCount > 0 ? await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Fielding')
        .in('difficulty_level', allowedDifficulties)
        .limit(fieldingCount * 2)
        : { data: [] }

      const { data: baserunningDrills } = baserunningCount > 0 ? await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Baserunning')
        .in('difficulty_level', allowedDifficulties)
        .limit(baserunningCount * 2)
        : { data: [] }

      const { data: pitchingDrills } = pitchingCount > 0 ? await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Pitching')
        .in('difficulty_level', allowedDifficulties)
        .limit(pitchingCount * 2)
        : { data: [] }

      // Shuffle and select the right number of drills
      const shuffleArray = (array: any[]) => {
        const shuffled = [...array]
        for (let i = shuffled.length - 1; i > 0; i--) {
          const j = Math.floor(Math.random() * (i + 1));
          [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]]
        }
        return shuffled
      }

      const selectedHittingDrills = hittingDrills ? shuffleArray(hittingDrills).slice(0, hittingCount) : []
      const selectedFieldingDrills = fieldingDrills ? shuffleArray(fieldingDrills).slice(0, fieldingCount) : []
      const selectedBaserunningDrills = baserunningDrills ? shuffleArray(baserunningDrills).slice(0, baserunningCount) : []
      const selectedPitchingDrills = pitchingDrills ? shuffleArray(pitchingDrills).slice(0, pitchingCount) : []

      // Build practice plan with real drills - adjust time based on focus
      const activities: PracticeActivity[] = [
        {
          name: 'Warm-up & Stretching',
          duration: Math.floor(totalDuration * 0.10),
          category: 'Warm-up',
          drills: []
        }
      ]

      // Add activities based on focus
      if (practiceFocus === 'hitting') {
        // Hitting focus - ONLY hitting drills
        if (selectedHittingDrills.length > 0) {
          activities.push({
            name: 'Hitting Drills',
            duration: Math.floor(totalDuration * 0.80),
            category: 'Hitting',
            drills: selectedHittingDrills
          })
        }
      } else if (practiceFocus === 'fielding') {
        // Fielding focus - ONLY fielding drills
        if (selectedFieldingDrills.length > 0) {
          activities.push({
            name: 'Fielding Drills',
            duration: Math.floor(totalDuration * 0.80),
            category: 'Fielding',
            drills: selectedFieldingDrills
          })
        }
      } else if (practiceFocus === 'pitching') {
        // Pitching focus - ONLY pitching drills (if age appropriate)
        if (selectedDivision && selectedDivision.ageMin >= 7 && selectedPitchingDrills.length > 0) {
          activities.push({
            name: 'Pitching Drills',
            duration: Math.floor(totalDuration * 0.80),
            category: 'Pitching',
            drills: selectedPitchingDrills
          })
        }
      } else {
        // Mixed/Balanced - Mix of all drill types
        if (selectedHittingDrills.length > 0) {
          activities.push({
            name: 'Hitting',
            duration: Math.floor(totalDuration * 0.25),
            category: 'Hitting',
            drills: selectedHittingDrills
          })
        }
        if (selectedFieldingDrills.length > 0) {
          activities.push({
            name: 'Fielding',
            duration: Math.floor(totalDuration * 0.25),
            category: 'Fielding',
            drills: selectedFieldingDrills
          })
        }
        if (selectedBaserunningDrills.length > 0) {
          activities.push({
            name: 'Baserunning',
            duration: Math.floor(totalDuration * 0.15),
            category: 'Baserunning',
            drills: selectedBaserunningDrills
          })
        }
        if (selectedDivision && selectedDivision.ageMin >= 7 && selectedPitchingDrills.length > 0) {
          activities.push({
            name: 'Pitching',
            duration: Math.floor(totalDuration * 0.15),
            category: 'Pitching',
            drills: selectedPitchingDrills
          })
        }
      }

      activities.push({
        name: 'Scrimmage / Game Situations',
        duration: Math.floor(totalDuration * 0.10),
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
        focus: practiceFocus,
        practicesPerWeek: practicesPerWeek,
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
                    <Label htmlFor="practiceFocus">Practice Focus *</Label>
                    <Select value={practiceFocus} onValueChange={setPracticeFocus}>
                      <SelectTrigger>
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="mixed">Mixed / Balanced Practice</SelectItem>
                        <SelectItem value="hitting">Hitting Focus</SelectItem>
                        <SelectItem value="fielding">Fielding Focus</SelectItem>
                        <SelectItem value="pitching">Pitching Focus</SelectItem>
                      </SelectContent>
                    </Select>
                  </div>

                  <div className="space-y-2">
                    <Label htmlFor="practicesPerWeek">Practices Per Week *</Label>
                    <Select value={practicesPerWeek} onValueChange={setPracticesPerWeek}>
                      <SelectTrigger>
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="1">1 time per week</SelectItem>
                        <SelectItem value="2">2 times per week</SelectItem>
                        <SelectItem value="3">3 times per week</SelectItem>
                        <SelectItem value="4">4 times per week</SelectItem>
                        <SelectItem value="5">5+ times per week</SelectItem>
                      </SelectContent>
                    </Select>
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
                        {generatedPlan.division.name} • {generatedPlan.duration} minutes •
                        {generatedPlan.focus === 'mixed' ? ' Mixed/Balanced' :
                         generatedPlan.focus === 'hitting' ? ' Hitting Focus' :
                         generatedPlan.focus === 'fielding' ? ' Fielding Focus' :
                         ' Pitching Focus'} •
                        {generatedPlan.practicesPerWeek}x per week
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
                          <div className="bg-white p-3 space-y-3">
                            {activity.drills.map((drill: Drill, drillIndex: number) => (
                              <div key={drillIndex} className="pl-4 border-l-2 border-[#064789] py-2">
                                <div className="text-sm font-bold text-gray-900">{drill.title}</div>
                                <div className="text-xs text-gray-600 mt-1 italic">{drill.description}</div>

                                {/* Instructions */}
                                <div className="mt-2">
                                  <div className="text-xs font-semibold text-gray-700 mb-1">How to do it:</div>
                                  <div className="text-xs text-gray-700 whitespace-pre-line leading-relaxed">
                                    {drill.instructions}
                                  </div>
                                </div>

                                {/* Equipment */}
                                {drill.equipment_needed && drill.equipment_needed.length > 0 && (
                                  <div className="mt-2">
                                    <span className="text-xs font-semibold text-gray-700">Equipment: </span>
                                    <span className="text-xs text-gray-600">{drill.equipment_needed.join(', ')}</span>
                                  </div>
                                )}

                                <div className="text-xs text-[#064789] mt-2 font-medium">
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
