-- Migration: Add skills_taught column to drills table
-- This allows drills to be tagged with specific skills they teach
-- based on the SKILL_TAGS_MAPPING.md document

-- Add skills_taught column as a text array
ALTER TABLE drills ADD COLUMN IF NOT EXISTS skills_taught TEXT[];

-- Add comment to column for documentation
COMMENT ON COLUMN drills.skills_taught IS 'Array of skill tags that this drill teaches, used for age-appropriate drill filtering based on SKILLS_MATRIX.md';

-- Create an index on skills_taught for faster filtering
CREATE INDEX IF NOT EXISTS idx_drills_skills_taught ON drills USING GIN (skills_taught);

-- Verify the column was added
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'drills' AND column_name = 'skills_taught';
