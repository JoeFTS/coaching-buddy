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

// Map division IDs to age-appropriate skills from SKILLS_MATRIX.md
const divisionSkills: Record<string, {
  hitting: string[]
  baserunning: string[]
  fielding: string[]
  pitching: string[]
}> = {
  '1': { // Shetland (5-6)
    hitting: ['proper-grip', 'basic-stance', 'watching-ball', 'contact-point', 'swing-through'],
    baserunning: ['base-locations', 'running-direction', 'touching-bases', 'basic-stopping'],
    fielding: ['two-hand-catch', 'get-in-front', 'basic-throw', 'alligator-catch'],
    pitching: [] // Coach pitch only
  },
  '2': { // Pinto (7-8)
    hitting: ['weight-transfer', 'hip-rotation', 'level-swing', 'tracking-ball', 'follow-through'],
    baserunning: ['run-through-first', 'banana-turn', 'knowing-advance', 'sliding-intro'],
    fielding: ['ready-position', 'footwork-basic', 'ground-balls', 'overhead-catch', 'accurate-throws'],
    pitching: ['pitching-intro', 'balance-point', 'basic-windup', 'throwing-strikes']
  },
  '3': { // Mustang (9-10)
    hitting: ['consistent-mechanics', 'pitch-recognition', 'situational-hitting', 'hands-inside', 'driving-ball'],
    baserunning: ['leadoffs', 'reading-pitchers', 'stealing-basics', 'rounding-bases', 'sliding-technique'],
    fielding: ['position-specific', 'double-play-footwork', 'drop-step', 'blocking-catcher', 'proper-throws-bases'],
    pitching: ['release-point', 'pitch-control', 'basic-grips', 'fielding-position', 'arm-care']
  },
  '4': { // Bronco (11-12)
    hitting: ['advanced-mechanics', 'plate-discipline', 'two-strike-approach', 'all-fields', 'bunting'],
    baserunning: ['reading-flyballs', 'secondary-leads', 'first-to-third', 'steal-execution', 'pop-up-slide'],
    fielding: ['position-mastery', 'cutoff-relay', 'communication', 'bunt-defense', 'advanced-double-plays', 'backing-up'],
    pitching: ['multiple-pitches', 'pitch-sequencing', 'fielding-bunts', 'holding-runners', 'mental-game']
  },
  '5': { // Pony (13-14)
    hitting: ['power-development', 'plate-coverage', 'mental-approach', 'spin-recognition', 'situational-execution'],
    baserunning: ['aggressive-running', 'reading-situations', 'advanced-stealing', 'scoring-second'],
    fielding: ['position-specialization', 'advanced-footwork', 'quick-release', 'decision-making', 'do-or-die'],
    pitching: ['third-pitch', 'advanced-control', 'pitching-strategy', 'reading-hitters', 'complete-mental']
  },
  '6': { // Colt (15-16)
    hitting: ['consistent-approach', 'bat-speed', 'mental-toughness', 'personalized-adjustments'],
    baserunning: ['elite-baserunning-iq', 'maximizing-speed', 'advanced-reads', 'headfirst-slides'],
    fielding: ['position-expertise', 'anticipation', 'quick-hands-feet', 'defensive-leadership'],
    pitching: ['complete-arsenal', 'advanced-sequencing', 'competitive-mentality', 'recovery', 'velocity-development']
  },
  '7': { // Palomino (17-18)
    hitting: ['elite-adjustments', 'advanced-pitch-recognition', 'clutch-performance'],
    baserunning: ['elite-baserunning-iq', 'maximizing-speed', 'advanced-reads'],
    fielding: ['position-expertise', 'anticipation', 'defensive-leadership'],
    pitching: ['complete-arsenal', 'pitch-tunneling', 'professional-pitching']
  },
  '8': { // Thorobred (17-23)
    hitting: ['elite-adjustments', 'advanced-pitch-recognition', 'clutch-performance'],
    baserunning: ['elite-baserunning-iq', 'maximizing-speed', 'advanced-reads'],
    fielding: ['position-expertise', 'anticipation', 'defensive-leadership'],
    pitching: ['complete-arsenal', 'pitch-tunneling', 'professional-pitching', 'recovery']
  }
}

interface Drill {
  id: string
  title: string
  description: string
  instructions: string
  skill_category: string
  difficulty_level: string
  duration_minutes: number
  equipment_needed: string[]
  skills_taught: string[]
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

  const getSkillsForDivision = (divisionId: string, category: string) => {
    const skills = divisionSkills[divisionId]
    if (!skills) return []

    // Map category names to division skills keys
    const categoryMap: Record<string, keyof typeof skills> = {
      'Hitting': 'hitting',
      'Baserunning': 'baserunning',
      'Fielding': 'fielding',
      'Pitching': 'pitching'
    }

    const skillKey = categoryMap[category]
    return skillKey ? skills[skillKey] : []
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

      // Fetch drills from database for each category with appropriate difficulty and skills
      const divisionHittingSkills = getSkillsForDivision(divisionId, 'Hitting')
      const divisionBaserunningSkills = getSkillsForDivision(divisionId, 'Baserunning')
      const divisionFieldingSkills = getSkillsForDivision(divisionId, 'Fielding')
      const divisionPitchingSkills = getSkillsForDivision(divisionId, 'Pitching')

      const { data: hittingDrills } = hittingCount > 0 ? await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Hitting')
        .in('difficulty_level', allowedDifficulties)
        .overlaps('skills_taught', divisionHittingSkills)
        .limit(hittingCount * 2) // Fetch more than needed
        : { data: [] }

      const { data: fieldingDrills } = fieldingCount > 0 ? await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Fielding')
        .in('difficulty_level', allowedDifficulties)
        .overlaps('skills_taught', divisionFieldingSkills)
        .limit(fieldingCount * 2)
        : { data: [] }

      const { data: baserunningDrills } = baserunningCount > 0 ? await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Baserunning')
        .in('difficulty_level', allowedDifficulties)
        .overlaps('skills_taught', divisionBaserunningSkills)
        .limit(baserunningCount * 2)
        : { data: [] }

      const { data: pitchingDrills } = pitchingCount > 0 && divisionPitchingSkills.length > 0 ? await supabase
        .from('drills')
        .select('*')
        .eq('skill_category', 'Pitching')
        .in('difficulty_level', allowedDifficulties)
        .overlaps('skills_taught', divisionPitchingSkills)
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
    <div className="min-h-screen bg-[#F5F1E8] font-mono">
      {/* Header */}
      <header className="bg-black border-b-4 border-black">
        <div className="max-w-6xl mx-auto px-4 py-3">
          <div className="flex items-center justify-between">
            <a href="/" className="text-sm font-bold text-[#FF6B35] hover:text-white uppercase tracking-wider">
              ← Coaching Buddy
            </a>
            <a href="/auth/login" className="text-xs font-bold text-white hover:text-[#FF6B35] uppercase">
              Login
            </a>
          </div>
        </div>
      </header>

      <div className="max-w-6xl mx-auto px-4 py-6">
        <div className="mb-6 border-4 border-black bg-white p-4">
          <h1 className="text-2xl font-bold uppercase mb-1 tracking-tight">
            Practice Plan Generator
          </h1>
          <p className="text-xs uppercase tracking-wide">
            Design age-appropriate baseball practice
          </p>
        </div>

        <div className="grid lg:grid-cols-2 gap-4">
          {/* Form */}
          <div>
            <div className="border-4 border-black bg-white">
              <div className="bg-[#FF6B35] border-b-4 border-black p-3">
                <h2 className="text-sm font-bold uppercase tracking-wide">Configuration</h2>
              </div>
              <div className="p-4">
                <form onSubmit={handleGenerate} className="space-y-3">
                  <div>
                    <label className="block text-xs font-bold uppercase mb-1">Title</label>
                    <Input
                      id="title"
                      type="text"
                      placeholder="Week 3 Practice"
                      value={title}
                      onChange={(e) => setTitle(e.target.value)}
                      className="border-2 border-black rounded-none font-mono text-sm focus:ring-0 focus:border-[#FF6B35]"
                    />
                  </div>

                  <div>
                    <label className="block text-xs font-bold uppercase mb-1">Division *</label>
                    <Select value={divisionId} onValueChange={setDivisionId} required>
                      <SelectTrigger className="border-2 border-black rounded-none font-mono text-sm h-10">
                        <SelectValue placeholder="Select..." />
                      </SelectTrigger>
                      <SelectContent className="border-2 border-black rounded-none">
                        {divisions.map((division) => (
                          <SelectItem key={division.id} value={division.id} className="font-mono text-sm">
                            {division.name} ({division.ageMin}-{division.ageMax})
                          </SelectItem>
                        ))}
                      </SelectContent>
                    </Select>
                  </div>

                  <div>
                    <label className="block text-xs font-bold uppercase mb-1">Duration *</label>
                    <Select value={durationMinutes} onValueChange={setDurationMinutes}>
                      <SelectTrigger className="border-2 border-black rounded-none font-mono text-sm h-10">
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent className="border-2 border-black rounded-none">
                        <SelectItem value="30" className="font-mono text-sm">30 min</SelectItem>
                        <SelectItem value="45" className="font-mono text-sm">45 min</SelectItem>
                        <SelectItem value="60" className="font-mono text-sm">60 min</SelectItem>
                        <SelectItem value="75" className="font-mono text-sm">75 min</SelectItem>
                        <SelectItem value="90" className="font-mono text-sm">90 min</SelectItem>
                        <SelectItem value="120" className="font-mono text-sm">120 min</SelectItem>
                      </SelectContent>
                    </Select>
                  </div>

                  <div>
                    <label className="block text-xs font-bold uppercase mb-1">Focus *</label>
                    <Select value={practiceFocus} onValueChange={setPracticeFocus}>
                      <SelectTrigger className="border-2 border-black rounded-none font-mono text-sm h-10">
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent className="border-2 border-black rounded-none">
                        <SelectItem value="mixed" className="font-mono text-sm">Mixed</SelectItem>
                        <SelectItem value="hitting" className="font-mono text-sm">Hitting</SelectItem>
                        <SelectItem value="fielding" className="font-mono text-sm">Fielding</SelectItem>
                        <SelectItem value="pitching" className="font-mono text-sm">Pitching</SelectItem>
                      </SelectContent>
                    </Select>
                  </div>

                  <div>
                    <label className="block text-xs font-bold uppercase mb-1">Per Week *</label>
                    <Select value={practicesPerWeek} onValueChange={setPracticesPerWeek}>
                      <SelectTrigger className="border-2 border-black rounded-none font-mono text-sm h-10">
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent className="border-2 border-black rounded-none">
                        <SelectItem value="1" className="font-mono text-sm">1x</SelectItem>
                        <SelectItem value="2" className="font-mono text-sm">2x</SelectItem>
                        <SelectItem value="3" className="font-mono text-sm">3x</SelectItem>
                        <SelectItem value="4" className="font-mono text-sm">4x</SelectItem>
                        <SelectItem value="5" className="font-mono text-sm">5x+</SelectItem>
                      </SelectContent>
                    </Select>
                  </div>

                  <Button
                    type="submit"
                    className="w-full bg-black hover:bg-[#FF6B35] text-white font-bold uppercase text-sm py-3 border-2 border-black rounded-none transition-colors"
                    disabled={loading || !divisionId}
                  >
                    {loading ? '...' : 'Generate'}
                  </Button>
                </form>
              </div>
            </div>

            <div className="mt-3 border-2 border-black bg-[#FFE5D9] p-3">
              <p className="text-xs font-bold uppercase mb-1">Save Plans?</p>
              <p className="text-xs mb-2">
                Create account to save & organize
              </p>
              <a href="/auth/register" className="text-xs font-bold uppercase underline hover:text-[#FF6B35]">
                Sign Up →
              </a>
            </div>
          </div>

          {/* Generated Plan */}
          <div>
            {!generatedPlan ? (
              <div className="border-4 border-black bg-white h-full flex items-center justify-center min-h-[500px]">
                <div className="text-center p-8">
                  <div className="text-6xl mb-3">⚾</div>
                  <h3 className="text-sm font-bold uppercase mb-2">Waiting for input</h3>
                  <p className="text-xs">
                    Configure and generate
                  </p>
                </div>
              </div>
            ) : (
              <div className="border-4 border-black bg-white">
                <div className="bg-black text-white p-3 border-b-4 border-black">
                  <div className="text-sm font-bold uppercase">{generatedPlan.title}</div>
                  <div className="text-xs mt-1 opacity-90">
                    {generatedPlan.division.name} / {generatedPlan.duration}min /
                    {generatedPlan.focus === 'mixed' ? ' Mixed' :
                     generatedPlan.focus === 'hitting' ? ' Hitting' :
                     generatedPlan.focus === 'fielding' ? ' Fielding' :
                     ' Pitching'} /
                    {generatedPlan.practicesPerWeek}x/week
                  </div>
                </div>
                <div className="p-4 space-y-3">
                  {generatedPlan.activities.map((activity: PracticeActivity, index: number) => (
                    <div key={index} className="border-2 border-black">
                      {/* Activity Header */}
                      <div className="flex items-center justify-between p-2 bg-[#FFE5D9] border-b-2 border-black">
                        <div className="text-xs font-bold uppercase">{activity.name}</div>
                        <div className="text-xs font-bold">
                          {activity.duration}min
                        </div>
                      </div>

                      {/* Drills List */}
                      {activity.drills.length > 0 && (
                        <div className="bg-white p-3 space-y-3">
                          {activity.drills.map((drill: Drill, drillIndex: number) => (
                            <div key={drillIndex} className="border-l-4 border-[#FF6B35] pl-3">
                              <div className="text-xs font-bold uppercase mb-1">{drill.title}</div>
                              <div className="text-xs mb-2">{drill.description}</div>

                              {/* Instructions */}
                              <div className="mb-2">
                                <div className="text-xs font-bold mb-1">STEPS:</div>
                                <div className="text-xs whitespace-pre-line leading-relaxed">
                                  {drill.instructions}
                                </div>
                              </div>

                              {/* Equipment */}
                              {drill.equipment_needed && drill.equipment_needed.length > 0 && (
                                <div className="mb-2">
                                  <span className="text-xs font-bold">GEAR: </span>
                                  <span className="text-xs">{drill.equipment_needed.join(', ')}</span>
                                </div>
                              )}

                              <div className="text-xs font-bold uppercase">
                                {drill.difficulty_level} / {drill.duration_minutes}min
                              </div>
                            </div>
                          ))}
                        </div>
                      )}
                    </div>
                  ))}
                  <div className="border-t-2 border-black pt-3 mt-3 space-y-2">
                    <Button
                      onClick={handleExportPDF}
                      className="w-full bg-[#FF6B35] hover:bg-black text-white font-bold uppercase text-xs py-3 border-2 border-black rounded-none"
                    >
                      Export PDF
                    </Button>
                    <Button
                      onClick={handleSaveAndLogin}
                      className="w-full bg-white hover:bg-black hover:text-white text-black font-bold uppercase text-xs py-3 border-2 border-black rounded-none"
                    >
                      Save to Account
                    </Button>
                  </div>
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  )
}
