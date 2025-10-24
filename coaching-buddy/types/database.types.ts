export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export interface Database {
  public: {
    Tables: {
      pony_divisions: {
        Row: {
          id: string
          name: string
          age_min: number
          age_max: number
          display_order: number
          base_distance: number
          pitching_distance: number
          description: string | null
          created_at: string
        }
        Insert: {
          id?: string
          name: string
          age_min: number
          age_max: number
          display_order: number
          base_distance: number
          pitching_distance: number
          description?: string | null
          created_at?: string
        }
        Update: {
          id?: string
          name?: string
          age_min?: number
          age_max?: number
          display_order?: number
          base_distance?: number
          pitching_distance?: number
          description?: string | null
          created_at?: string
        }
      }
      users: {
        Row: {
          id: string
          email: string
          full_name: string | null
          team_name: string | null
          division_id: string | null
          created_at: string
          updated_at: string
        }
        Insert: {
          id: string
          email: string
          full_name?: string | null
          team_name?: string | null
          division_id?: string | null
          created_at?: string
          updated_at?: string
        }
        Update: {
          id?: string
          email?: string
          full_name?: string | null
          team_name?: string | null
          division_id?: string | null
          created_at?: string
          updated_at?: string
        }
      }
      drills: {
        Row: {
          id: string
          title: string
          description: string
          instructions: string
          video_url: string | null
          duration_minutes: number
          division_id: string | null
          skill_category: string
          difficulty_level: string
          equipment_needed: string[] | null
          min_players: number
          created_by: string | null
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          title: string
          description: string
          instructions: string
          video_url?: string | null
          duration_minutes: number
          division_id?: string | null
          skill_category: string
          difficulty_level: string
          equipment_needed?: string[] | null
          min_players?: number
          created_by?: string | null
          created_at?: string
          updated_at?: string
        }
        Update: {
          id?: string
          title?: string
          description?: string
          instructions?: string
          video_url?: string | null
          duration_minutes?: number
          division_id?: string | null
          skill_category?: string
          difficulty_level?: string
          equipment_needed?: string[] | null
          min_players?: number
          created_by?: string | null
          created_at?: string
          updated_at?: string
        }
      }
      practice_plans: {
        Row: {
          id: string
          user_id: string
          division_id: string
          title: string
          practice_date: string | null
          duration_minutes: number
          notes: string | null
          is_template: boolean
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          user_id: string
          division_id: string
          title: string
          practice_date?: string | null
          duration_minutes: number
          notes?: string | null
          is_template?: boolean
          created_at?: string
          updated_at?: string
        }
        Update: {
          id?: string
          user_id?: string
          division_id?: string
          title?: string
          practice_date?: string | null
          duration_minutes?: number
          notes?: string | null
          is_template?: boolean
          created_at?: string
          updated_at?: string
        }
      }
      practice_plan_drills: {
        Row: {
          id: string
          practice_plan_id: string
          drill_id: string
          order_index: number
          duration_minutes: number
          notes: string | null
          created_at: string
        }
        Insert: {
          id?: string
          practice_plan_id: string
          drill_id: string
          order_index: number
          duration_minutes: number
          notes?: string | null
          created_at?: string
        }
        Update: {
          id?: string
          practice_plan_id?: string
          drill_id?: string
          order_index?: number
          duration_minutes?: number
          notes?: string | null
          created_at?: string
        }
      }
      feed_posts: {
        Row: {
          id: string
          user_id: string
          content: string
          drill_id: string | null
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          user_id: string
          content: string
          drill_id?: string | null
          created_at?: string
          updated_at?: string
        }
        Update: {
          id?: string
          user_id?: string
          content?: string
          drill_id?: string | null
          created_at?: string
          updated_at?: string
        }
      }
      post_likes: {
        Row: {
          id: string
          post_id: string
          user_id: string
          created_at: string
        }
        Insert: {
          id?: string
          post_id: string
          user_id: string
          created_at?: string
        }
        Update: {
          id?: string
          post_id?: string
          user_id?: string
          created_at?: string
        }
      }
      drill_favorites: {
        Row: {
          id: string
          drill_id: string
          user_id: string
          created_at: string
        }
        Insert: {
          id?: string
          drill_id: string
          user_id: string
          created_at?: string
        }
        Update: {
          id?: string
          drill_id?: string
          user_id?: string
          created_at?: string
        }
      }
      division_skills: {
        Row: {
          id: string
          division_id: string
          skill_name: string
          skill_category: string
          description: string | null
          display_order: number
          created_at: string
        }
        Insert: {
          id?: string
          division_id: string
          skill_name: string
          skill_category: string
          description?: string | null
          display_order: number
          created_at?: string
        }
        Update: {
          id?: string
          division_id?: string
          skill_name?: string
          skill_category?: string
          description?: string | null
          display_order?: number
          created_at?: string
        }
      }
      resources: {
        Row: {
          id: string
          title: string
          description: string | null
          url: string
          resource_type: string
          division_id: string | null
          display_order: number
          created_at: string
        }
        Insert: {
          id?: string
          title: string
          description?: string | null
          url: string
          resource_type: string
          division_id?: string | null
          display_order: number
          created_at?: string
        }
        Update: {
          id?: string
          title?: string
          description?: string | null
          url?: string
          resource_type?: string
          division_id?: string | null
          display_order?: number
          created_at?: string
        }
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
  }
}
