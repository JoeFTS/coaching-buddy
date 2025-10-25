# Deployment Instructions: Skill-Based Drill Filtering

## Overview
This update adds age-appropriate skill-based drill filtering to the Coaching Buddy practice plan generator. The system now ensures drills shown match the specific skills outlined in SKILLS_MATRIX.md for each division.

## What Changed

### 1. Database Schema
- Added `skills_taught` column (TEXT[] array) to `drills` table
- Created GIN index on `skills_taught` for fast filtering

### 2. Drill Library Expansion
- **Expanded from 30 to 100 drills:**
  - 25 Hitting drills
  - 25 Baserunning drills
  - 25 Fielding drills
  - 25 Pitching drills
- Each drill tagged with specific skills from SKILL_TAGS_MAPPING.md

### 3. Frontend Logic
- Added `divisionSkills` mapping in [app/create/page.tsx](app/create/page.tsx)
- Added `getSkillsForDivision()` helper function
- Updated drill queries to filter by skills using PostgreSQL `.overlaps()` operator
- Updated `Drill` TypeScript interface with `skills_taught: string[]`

## Deployment Steps

### Step 1: Run Database Migration

In your Supabase SQL Editor, run:

```sql
-- File: database/add-skills-taught-column.sql
ALTER TABLE drills ADD COLUMN IF NOT EXISTS skills_taught TEXT[];

COMMENT ON COLUMN drills.skills_taught IS 'Array of skill tags that this drill teaches, used for age-appropriate drill filtering based on SKILLS_MATRIX.md';

CREATE INDEX IF NOT EXISTS idx_drills_skills_taught ON drills USING GIN (skills_taught);
```

### Step 2: Seed Expanded Drill Library

In your Supabase SQL Editor, run:

```sql
-- File: database/seed-drills-expanded.sql
-- This will TRUNCATE existing drills and insert all 100 new drills
-- WARNING: This clears all existing drills first
```

**IMPORTANT:** The seed file contains `TRUNCATE drills CASCADE` which will delete all existing drills. If you have custom drills you want to keep, back them up first.

To run the seed file:
1. Open Supabase Dashboard → SQL Editor
2. Copy contents of `database/seed-drills-expanded.sql`
3. Paste and execute
4. Verify: `SELECT COUNT(*) FROM drills;` should return 100

### Step 3: Deploy Frontend Changes

The frontend changes in [app/create/page.tsx](app/create/page.tsx) will be automatically deployed when you push to your repository (assuming you have Vercel/GitHub Pages deployment set up).

### Step 4: Test the System

1. Navigate to `/create` page
2. Select **Shetland (5-6)** division
3. Generate a hitting-focused practice plan
4. Verify drills shown teach basic skills like:
   - Proper grip
   - Basic stance
   - Watching the ball

5. Select **Bronco (11-12)** division
6. Generate a hitting-focused practice plan
7. Verify drills shown teach advanced skills like:
   - Plate discipline
   - Two-strike approach
   - Hitting to all fields

8. Try other divisions and practice focuses to ensure variety and age-appropriateness

## How It Works

### Skill Filtering Logic

1. **User selects division** (e.g., Bronco 11-12)
2. **System looks up appropriate skills** from `divisionSkills` mapping:
   ```typescript
   // Bronco hitting skills
   ['advanced-mechanics', 'plate-discipline', 'two-strike-approach', 'all-fields', 'bunting']
   ```

3. **Database query filters drills** with overlapping skills:
   ```typescript
   supabase
     .from('drills')
     .select('*')
     .eq('skill_category', 'Hitting')
     .in('difficulty_level', ['beginner', 'intermediate'])
     .overlaps('skills_taught', ['advanced-mechanics', 'plate-discipline', ...])
   ```

4. **Only age-appropriate drills returned**

### Example

**Shetland (5-6) - Hitting Practice:**
- ✅ "Grip and Stance Foundation" - teaches `proper-grip`, `basic-stance`
- ✅ "Watching the Ball Drill" - teaches `watching-ball`, `contact-point`
- ❌ "Two-Strike Battle Drill" - teaches `two-strike-approach` (too advanced)

**Bronco (11-12) - Hitting Practice:**
- ❌ "Grip and Stance Foundation" - teaches `proper-grip` (too basic)
- ✅ "Two-Strike Battle Drill" - teaches `two-strike-approach`, `plate-discipline`
- ✅ "Opposite Field Hitting" - teaches `all-fields`, `advanced-mechanics`

## Files Modified

### Database Files
- ✅ `database/add-skills-taught-column.sql` - Migration
- ✅ `database/seed-drills-expanded.sql` - 100 drills with skill tags
- ✅ `database/baseball-hitting-drills.md` - 25 hitting drills documentation
- ✅ `database/baseball-baserunning-drills.md` - 25 baserunning drills
- ✅ `database/baseball-fielding-drills.md` - 25 fielding drills
- ✅ `database/baseball-pitching-drills.md` - 25 pitching drills

### Frontend Files
- ✅ `app/create/page.tsx` - Updated with skill filtering logic

### Documentation Files
- ✅ `SKILL_TAGS_MAPPING.md` - Maps SKILLS_MATRIX.md to database tags
- ✅ `SKILLS_MATRIX.md` - Age-appropriate skills (already existed)

## Rollback Plan

If you need to rollback:

1. **Restore old seed file:**
   ```sql
   -- Run: database/seed-drills.sql (original 30 drills)
   ```

2. **Revert frontend changes:**
   ```bash
   git revert <commit-hash>
   ```

3. **Optional: Remove skills_taught column:**
   ```sql
   ALTER TABLE drills DROP COLUMN IF EXISTS skills_taught;
   DROP INDEX IF EXISTS idx_drills_skills_taught;
   ```

## Troubleshooting

### Issue: No drills showing up

**Possible cause:** Division has no matching skills

**Solution:**
- Check `divisionSkills` mapping in [app/create/page.tsx](app/create/page.tsx:23-77)
- Verify drills in database have matching skill tags
- Check browser console for Supabase errors

### Issue: Same drills for all divisions

**Possible cause:** Skills not filtering correctly

**Solution:**
- Verify `skills_taught` column exists: `SELECT column_name FROM information_schema.columns WHERE table_name = 'drills';`
- Check drill tags in database: `SELECT title, skills_taught FROM drills LIMIT 5;`
- Verify `.overlaps()` query is working

### Issue: Error when generating practice plan

**Possible cause:** TypeScript type mismatch or Supabase query error

**Solution:**
- Check browser console for errors
- Verify `Drill` interface includes `skills_taught: string[]`
- Check Supabase logs in dashboard

## Future Enhancements

Potential improvements to consider:

1. **Admin UI for Managing Drills**
   - Add/edit/delete drills through web interface
   - Tag drills with skills via UI instead of SQL

2. **Drill Favoriting**
   - Let coaches save favorite drills
   - Prioritize favorited drills in practice plans

3. **Custom Skill Tags**
   - Allow coaches to create custom skill tags
   - Add drills with custom tags

4. **Video Integration**
   - Add video URLs to drills
   - Show instructional videos in practice plans

5. **Progressive Skill Tracking**
   - Track which skills have been practiced
   - Suggest drills for under-practiced skills

## Support

For issues or questions:
- Check SKILLS_MATRIX.md for age-appropriate skills reference
- Check SKILL_TAGS_MAPPING.md for tag definitions
- Review DATABASE_SCHEMA.md for database structure
- File issues in GitHub repository
