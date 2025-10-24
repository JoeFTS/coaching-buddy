# Coaching Buddy Database Schema

This document outlines the complete database schema for Coaching Buddy. Execute these SQL commands in your Supabase SQL editor.

## Tables

### 1. pony_divisions
Reference table for Pony Baseball divisions.

```sql
CREATE TABLE pony_divisions (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name VARCHAR(50) NOT NULL UNIQUE,
  age_min INTEGER NOT NULL,
  age_max INTEGER NOT NULL,
  display_order INTEGER NOT NULL,
  base_distance INTEGER NOT NULL, -- in feet
  pitching_distance INTEGER NOT NULL, -- in feet
  description TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Insert division data
INSERT INTO pony_divisions (name, age_min, age_max, display_order, base_distance, pitching_distance, description) VALUES
  ('Shetland', 5, 6, 1, 50, 38, 'Instructional program for fundamentals'),
  ('Pinto', 7, 8, 2, 60, 40, 'Elementary baseball instruction'),
  ('Mustang', 9, 10, 3, 60, 46, 'Advanced baseball rules introduction'),
  ('Bronco', 11, 12, 4, 70, 50, 'Full MLB rules application'),
  ('Pony', 13, 14, 5, 80, 54, 'High school preparation'),
  ('Colt', 15, 16, 6, 90, 60, 'Regulation baseball'),
  ('Palomino', 17, 18, 7, 90, 60, 'Advanced competition'),
  ('Thorobred', 17, 23, 8, 90, 60, 'Pre-professional level');
```

### 2. users (extends Supabase auth.users)
Extended user profiles.

```sql
CREATE TABLE public.users (
  id UUID REFERENCES auth.users(id) PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  full_name VARCHAR(255),
  team_name VARCHAR(255),
  division_id UUID REFERENCES pony_divisions(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Enable Row Level Security
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Users can view their own profile" ON public.users
  FOR SELECT USING (auth.uid() = id);

CREATE POLICY "Users can update their own profile" ON public.users
  FOR UPDATE USING (auth.uid() = id);

CREATE POLICY "Users can insert their own profile" ON public.users
  FOR INSERT WITH CHECK (auth.uid() = id);
```

### 3. drills
Drill library with instructions and videos.

```sql
CREATE TABLE drills (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  instructions TEXT NOT NULL,
  video_url VARCHAR(500),
  duration_minutes INTEGER NOT NULL,
  division_id UUID REFERENCES pony_divisions(id),
  skill_category VARCHAR(100) NOT NULL, -- throwing, catching, hitting, fielding, baserunning, pitching
  difficulty_level VARCHAR(20) NOT NULL, -- beginner, intermediate, advanced
  equipment_needed TEXT[],
  min_players INTEGER DEFAULT 1,
  created_by UUID REFERENCES public.users(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Enable RLS
ALTER TABLE drills ENABLE ROW LEVEL SECURITY;

-- All users can read drills
CREATE POLICY "Anyone can view drills" ON drills
  FOR SELECT USING (true);

-- Only authenticated users can create drills
CREATE POLICY "Authenticated users can create drills" ON drills
  FOR INSERT WITH CHECK (auth.uid() IS NOT NULL);

-- Users can update their own drills
CREATE POLICY "Users can update their own drills" ON drills
  FOR UPDATE USING (auth.uid() = created_by);
```

### 4. practice_plans
Generated or saved practice plans.

```sql
CREATE TABLE practice_plans (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID REFERENCES public.users(id) NOT NULL,
  division_id UUID REFERENCES pony_divisions(id) NOT NULL,
  title VARCHAR(255) NOT NULL,
  practice_date DATE,
  duration_minutes INTEGER NOT NULL,
  notes TEXT,
  is_template BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Enable RLS
ALTER TABLE practice_plans ENABLE ROW LEVEL SECURITY;

-- Users can view their own plans
CREATE POLICY "Users can view their own plans" ON practice_plans
  FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can create their own plans" ON practice_plans
  FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own plans" ON practice_plans
  FOR UPDATE USING (auth.uid() = user_id);

CREATE POLICY "Users can delete their own plans" ON practice_plans
  FOR DELETE USING (auth.uid() = user_id);
```

### 5. practice_plan_drills
Join table for practice plans and drills.

```sql
CREATE TABLE practice_plan_drills (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  practice_plan_id UUID REFERENCES practice_plans(id) ON DELETE CASCADE NOT NULL,
  drill_id UUID REFERENCES drills(id) NOT NULL,
  order_index INTEGER NOT NULL,
  duration_minutes INTEGER NOT NULL,
  notes TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Enable RLS
ALTER TABLE practice_plan_drills ENABLE ROW LEVEL SECURITY;

-- Users can view drills in their own plans
CREATE POLICY "Users can view their own plan drills" ON practice_plan_drills
  FOR SELECT USING (
    EXISTS (
      SELECT 1 FROM practice_plans
      WHERE practice_plans.id = practice_plan_drills.practice_plan_id
      AND practice_plans.user_id = auth.uid()
    )
  );

CREATE POLICY "Users can manage their own plan drills" ON practice_plan_drills
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM practice_plans
      WHERE practice_plans.id = practice_plan_drills.practice_plan_id
      AND practice_plans.user_id = auth.uid()
    )
  );
```

### 6. feed_posts
Social feed posts.

```sql
CREATE TABLE feed_posts (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID REFERENCES public.users(id) NOT NULL,
  content TEXT NOT NULL,
  drill_id UUID REFERENCES drills(id), -- optional reference to a drill
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Enable RLS
ALTER TABLE feed_posts ENABLE ROW LEVEL SECURITY;

-- Anyone can view posts
CREATE POLICY "Anyone can view posts" ON feed_posts
  FOR SELECT USING (true);

-- Authenticated users can create posts
CREATE POLICY "Authenticated users can create posts" ON feed_posts
  FOR INSERT WITH CHECK (auth.uid() = user_id);

-- Users can update their own posts
CREATE POLICY "Users can update their own posts" ON feed_posts
  FOR UPDATE USING (auth.uid() = user_id);

-- Users can delete their own posts
CREATE POLICY "Users can delete their own posts" ON feed_posts
  FOR DELETE USING (auth.uid() = user_id);
```

### 7. post_likes
Like tracking for feed posts.

```sql
CREATE TABLE post_likes (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  post_id UUID REFERENCES feed_posts(id) ON DELETE CASCADE NOT NULL,
  user_id UUID REFERENCES public.users(id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  UNIQUE(post_id, user_id)
);

-- Enable RLS
ALTER TABLE post_likes ENABLE ROW LEVEL SECURITY;

-- Anyone can view likes
CREATE POLICY "Anyone can view likes" ON post_likes
  FOR SELECT USING (true);

-- Authenticated users can like posts
CREATE POLICY "Authenticated users can like posts" ON post_likes
  FOR INSERT WITH CHECK (auth.uid() = user_id);

-- Users can unlike posts
CREATE POLICY "Users can unlike posts" ON post_likes
  FOR DELETE USING (auth.uid() = user_id);
```

### 8. drill_favorites
Favorite drills for quick access.

```sql
CREATE TABLE drill_favorites (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  drill_id UUID REFERENCES drills(id) ON DELETE CASCADE NOT NULL,
  user_id UUID REFERENCES public.users(id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  UNIQUE(drill_id, user_id)
);

-- Enable RLS
ALTER TABLE drill_favorites ENABLE ROW LEVEL SECURITY;

-- Users can view their own favorites
CREATE POLICY "Users can view their own favorites" ON drill_favorites
  FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can create their own favorites" ON drill_favorites
  FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete their own favorites" ON drill_favorites
  FOR DELETE USING (auth.uid() = user_id);
```

### 9. division_skills
Skill checklists by division.

```sql
CREATE TABLE division_skills (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  division_id UUID REFERENCES pony_divisions(id) NOT NULL,
  skill_name VARCHAR(255) NOT NULL,
  skill_category VARCHAR(100) NOT NULL,
  description TEXT,
  display_order INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Enable RLS
ALTER TABLE division_skills ENABLE ROW LEVEL SECURITY;

-- Anyone can view skills
CREATE POLICY "Anyone can view division skills" ON division_skills
  FOR SELECT USING (true);
```

### 10. resources
Links to official Pony Baseball resources.

```sql
CREATE TABLE resources (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  url VARCHAR(500) NOT NULL,
  resource_type VARCHAR(50) NOT NULL, -- rulebook, field_specs, coaching_guide, video
  division_id UUID REFERENCES pony_divisions(id), -- null means applies to all divisions
  display_order INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Enable RLS
ALTER TABLE resources ENABLE ROW LEVEL SECURITY;

-- Anyone can view resources
CREATE POLICY "Anyone can view resources" ON resources
  FOR SELECT USING (true);
```

## Indexes

```sql
-- Performance indexes
CREATE INDEX idx_users_division ON public.users(division_id);
CREATE INDEX idx_drills_division ON drills(division_id);
CREATE INDEX idx_drills_category ON drills(skill_category);
CREATE INDEX idx_practice_plans_user ON practice_plans(user_id);
CREATE INDEX idx_practice_plans_division ON practice_plans(division_id);
CREATE INDEX idx_practice_plan_drills_plan ON practice_plan_drills(practice_plan_id);
CREATE INDEX idx_feed_posts_user ON feed_posts(user_id);
CREATE INDEX idx_feed_posts_created ON feed_posts(created_at DESC);
CREATE INDEX idx_post_likes_post ON post_likes(post_id);
CREATE INDEX idx_drill_favorites_user ON drill_favorites(user_id);
CREATE INDEX idx_division_skills_division ON division_skills(division_id);
CREATE INDEX idx_resources_division ON resources(division_id);
```

## Functions

### Update timestamp trigger
```sql
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = TIMEZONE('utc', NOW());
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Apply to relevant tables
CREATE TRIGGER update_users_updated_at BEFORE UPDATE ON public.users
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_drills_updated_at BEFORE UPDATE ON drills
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_practice_plans_updated_at BEFORE UPDATE ON practice_plans
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_feed_posts_updated_at BEFORE UPDATE ON feed_posts
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
```

## Setup Instructions

1. Create a new Supabase project at https://supabase.com
2. Go to the SQL Editor in your Supabase dashboard
3. Copy and paste all the SQL commands above in order
4. Run the commands to create your database schema
5. Update your `.env.local` file with your Supabase credentials:
   - Find your project URL and anon key in Settings > API
   - Replace the placeholder values in `.env.local`

## Next Steps

After setting up the database:
1. Populate the drills table with age-appropriate drills
2. Add initial resources pointing to official Pony Baseball materials
3. Populate division_skills with skill checklists for each division
