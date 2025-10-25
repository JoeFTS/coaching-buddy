# Baseball Drills Library with YouTube Videos

This file contains a comprehensive collection of baseball drills with real YouTube instructional videos for coaches and players.

## Overview

We provide **two drill libraries** with professional video instruction:

### 1. Core Drill Library (`drills_with_videos.sql`)
**18 drills** across all major skill categories from various reputable coaching sources.

### 2. IMG Academy Drills (`img_academy_drills.sql`)
**12 additional drills** from IMG Academy - USA Baseball's partner training facility with professional instructors.

**Total: 30 drills with video instruction**

Each drill includes:
- Detailed step-by-step instructions
- Real YouTube video demonstrations
- Appropriate difficulty levels (beginner, intermediate, advanced)
- Age-appropriate division assignments
- Required equipment lists
- Minimum player requirements

## Drill Categories

### Hitting (2 drills)
- **Tee Ball Basics** - Foundation hitting mechanics for young players
- **Timing and Rhythm Hitting Drill** - Self-toss drill for developing swing timing

### Fielding (5 drills)
- **Ground Ball Fundamentals** - Essential infield mechanics
- **MLB Infield Drills** - Professional-level techniques from Matt Antonelli
- **Banana Drill** - Proper angles for approaching ground balls
- **First Base Footwork** - Receiving throws and making plays at first
- **Cutoff and Relay Fundamentals** - Advanced positioning and communication

### Baserunning (5 drills)
- **Tagging Up Fundamentals** - Reading and reacting to fly balls
- **Advanced Tagging Up Techniques** - Game situation decision making
- **Leadoff and Secondary Lead** - Taking leads and reading pitchers
- **Rundown Execution** - Getting outs between bases
- **Sliding Fundamentals** - Safe and effective sliding technique

### Throwing (2 drills)
- **Proper Throwing Mechanics** - Building correct form from the ground up
- **Long Toss Progression** - Systematic arm strengthening

### Catching (2 drills)
- **Basic Catching Fundamentals** - Building confidence with proper technique
- **Fly Ball Communication and Tracking** - Outfield skills

### Pitching (2 drills)
- **Four Seam Fastball Mechanics** - Foundation of all pitching
- **Pitching Balance and Control** - Developing consistent delivery

## IMG Academy Drill Library

The `img_academy_drills.sql` file contains 12 additional drills from IMG Academy, a premier baseball training facility that works closely with USA Baseball.

### IMG Academy Hitting Drills (3 drills)
- **Walk Through Drill** - Creating momentum and separation
- **Exaggerated Leg Kick** - Power development through the hips
- **Launch Angle Drill** - Proper swing path for line drives

### IMG Academy Infield Drills (3 drills)
- **Three Cone Fundamentals** - Pre-pitch steps and fielding footwork
- **Short Hop Attack** - Handling difficult short hops
- **Dry Action Cone Drill** - Footwork practice without the ball

### IMG Academy Pitching Drills (3 drills)
- **Step Back Pivot Pick** - Footwork and balance in wind-up
- **Janitor Throw** - Arm action and shoulder separation
- **Step Back Throw** - Full pitching mechanics integration

### IMG Academy Outfield Drills (3 drills)
- **Outfield Footwork** - Approaching fly balls and ground balls
- **Routine Ground Balls and Fly Balls** - Complete outfield training
- **Overhead Ball and Assists** - Tracking and throwing from outfield

## USA Baseball Resources

For comprehensive information about USA Baseball's coaching resources, mobile app, and online drill library, see **USA_BASEBALL_RESOURCES.md**.

USA Baseball offers:
- **Mobile Coach App** - 175+ drills, practice planning, pitch tracking (FREE)
- **USABDevelops.com** - 300+ drills online with detailed instructions
- **Online Education Center** - Coaching courses and certification
- **Video Library** - National team training and skill development videos

## How to Use

### For First-Time Setup

1. **Open Supabase SQL Editor**
   - Go to your Supabase Dashboard
   - Click "SQL Editor" in the left sidebar
   - Click "New Query"

2. **Run the Scripts**

   **First, run the core drill library:**
   - Open `drills_with_videos.sql` in your text editor
   - Copy all the SQL code
   - Paste into Supabase SQL Editor
   - Click "Run" (or press Ctrl/Cmd + Enter)

   **Then, run the IMG Academy drills:**
   - Open `img_academy_drills.sql` in your text editor
   - Copy all the SQL code
   - Paste into Supabase SQL Editor
   - Click "Run" (or press Ctrl/Cmd + Enter)

3. **Verify Installation**
   ```sql
   -- Check how many drills were added
   SELECT skill_category, COUNT(*) as count
   FROM drills
   GROUP BY skill_category
   ORDER BY skill_category;

   -- View all drills with videos
   SELECT title, skill_category, difficulty_level, video_url
   FROM drills
   WHERE video_url IS NOT NULL
   ORDER BY skill_category, difficulty_level;
   ```

### Updating Existing Drills

If you've already run the sample drills from `SETUP_GUIDE.md`, you may want to update them with real video URLs:

```sql
-- Update existing drills to use real YouTube videos
-- (The script will handle this automatically if drills already exist)

-- Or manually update specific drills:
UPDATE drills
SET video_url = 'https://www.youtube.com/watch?v=4jKBu0n0AvE'
WHERE title = 'Tee Ball Basics';
```

## YouTube Video Sources

All videos come from reputable baseball instruction sources:

- **IMG Academy** - Professional training facility
- **Matt Antonelli** - Former MLB player and instructor (Antonelli Baseball)
- **Baseball Tutorials** - Comprehensive coaching resource
- **You Go Pro Baseball** - Youth baseball instruction
- Various professional coaches and training programs

## Customization

### Adding Your Own Drills

You can add custom drills using this template:

```sql
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Your Drill Name',
  'Brief description of the drill',
  E'1. Step one\n2. Step two\n3. Step three',
  'https://www.youtube.com/watch?v=YOUR_VIDEO_ID',
  20,  -- duration in minutes
  id,
  'hitting',  -- or 'fielding', 'pitching', 'catching', 'throwing', 'baserunning'
  'intermediate',  -- or 'beginner', 'advanced'
  ARRAY['Equipment', 'List', 'Here'],
  2  -- minimum players needed
FROM pony_divisions WHERE name = 'Mustang';  -- or any division
```

### Finding More YouTube Videos

Good sources for finding instructional baseball videos:

1. **YouTube Channels to Search:**
   - Antonelli Baseball (Matt Antonelli)
   - Dan Blewett
   - Baseball Tutorials
   - MOJO (yougotmojo)
   - You Go Pro Baseball
   - Ultimate Baseball Training
   - IMG Academy

2. **Search Terms:**
   - "[skill] drill youth baseball"
   - "[skill] fundamentals tutorial"
   - "baseball [skill] coaching"
   - "[division age] baseball drills"

## Practice Plan Integration

Once drills are loaded, you can:

1. **Browse Drills** - View drills filtered by:
   - Division/Age group
   - Skill category
   - Difficulty level

2. **Create Practice Plans** - Add drills to practice plans:
   - Customize duration for each drill
   - Reorder drills via drag-and-drop
   - Add coach notes specific to your team

3. **View Instructions** - The practice plan detail page shows:
   - Full drill instructions
   - Embedded or linked videos
   - Equipment needed
   - Estimated time

## Maintenance

### Updating Video Links

If a YouTube video becomes unavailable:

```sql
-- Find drills with broken videos
SELECT id, title, video_url
FROM drills
WHERE video_url LIKE '%youtube.com%';

-- Update to new video
UPDATE drills
SET video_url = 'https://www.youtube.com/watch?v=NEW_VIDEO_ID'
WHERE title = 'Drill Name';
```

### Adding Videos to Existing Drills

```sql
-- Find drills without videos
SELECT id, title, skill_category
FROM drills
WHERE video_url IS NULL;

-- Add video to specific drill
UPDATE drills
SET video_url = 'https://www.youtube.com/watch?v=VIDEO_ID'
WHERE title = 'Drill Name';
```

## Skill Category Reference

| Category | Description |
|----------|-------------|
| `hitting` | Batting, tee work, timing drills |
| `fielding` | Ground balls, fly balls, infield/outfield |
| `catching` | Receiving, framing, blocking (catcher position) |
| `throwing` | Arm mechanics, accuracy, strength |
| `pitching` | Mound work, pitch grips, mechanics |
| `baserunning` | Leads, steals, sliding, reading bases |

## Difficulty Levels

| Level | Description | Age Range |
|-------|-------------|-----------|
| `beginner` | First-time players, fundamentals | 5-8 years |
| `intermediate` | Players with 1-2 years experience | 8-12 years |
| `advanced` | Experienced players, complex skills | 12+ years |

## Division Reference

| Division | Age Range | Typical Skill Level |
|----------|-----------|---------------------|
| Shetland | 5-6 | Beginner |
| Pinto | 7-8 | Beginner to Intermediate |
| Mustang | 9-10 | Intermediate |
| Bronco | 11-12 | Intermediate to Advanced |
| Pony | 13-14 | Advanced |
| Colt | 15-16 | Advanced |
| Palomino | 17-18 | Advanced |
| Thorobred | 17-23 | Advanced |

## Support

If you find better instructional videos or want to contribute drills:

1. Search YouTube for high-quality instructional content
2. Test the drill with your team
3. Document the drill using the template above
4. Add to your database or share with the community

## Credits

Drills compiled from various reputable baseball coaching sources including:
- Matt Antonelli (Antonelli Baseball)
- IMG Academy
- Baseball Tutorials
- You Go Pro Baseball
- USA Baseball affiliated content

Video content belongs to respective creators and is linked for educational purposes only.

---

**Last Updated:** October 2025
**Total Drills:** 30 (18 core + 12 IMG Academy)
**Video Sources:** YouTube instructional content from professional coaches
**All Drills Include:** Instructions, Videos, Equipment Lists, Time Estimates
**Bonus Resources:** USA Baseball Mobile Coach App info (175+ drills)
