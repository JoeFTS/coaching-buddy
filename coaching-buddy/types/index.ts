export type SkillCategory =
  | 'throwing'
  | 'catching'
  | 'hitting'
  | 'fielding'
  | 'baserunning'
  | 'pitching'

export type DifficultyLevel = 'beginner' | 'intermediate' | 'advanced'

export type ResourceType =
  | 'rulebook'
  | 'field_specs'
  | 'coaching_guide'
  | 'video'

export interface PonyDivision {
  id: string
  name: string
  ageMin: number
  ageMax: number
  displayOrder: number
  baseDistance: number
  pitchingDistance: number
  description: string | null
}

export interface User {
  id: string
  email: string
  fullName: string | null
  teamName: string | null
  divisionId: string | null
}

export interface Drill {
  id: string
  title: string
  description: string
  instructions: string
  videoUrl: string | null
  durationMinutes: number
  divisionId: string | null
  skillCategory: SkillCategory
  difficultyLevel: DifficultyLevel
  equipmentNeeded: string[]
  minPlayers: number
  createdBy: string | null
}

export interface PracticePlan {
  id: string
  userId: string
  divisionId: string
  title: string
  practiceDate: string | null
  durationMinutes: number
  notes: string | null
  isTemplate: boolean
  drills?: PracticePlanDrill[]
}

export interface PracticePlanDrill {
  id: string
  practicePlanId: string
  drillId: string
  orderIndex: number
  durationMinutes: number
  notes: string | null
  drill?: Drill
}

export interface FeedPost {
  id: string
  userId: string
  content: string
  drillId: string | null
  createdAt: string
  user?: User
  drill?: Drill
  likes?: number
  isLiked?: boolean
}

export interface DivisionSkill {
  id: string
  divisionId: string
  skillName: string
  skillCategory: string
  description: string | null
  displayOrder: number
}

export interface Resource {
  id: string
  title: string
  description: string | null
  url: string
  resourceType: ResourceType
  divisionId: string | null
  displayOrder: number
}
