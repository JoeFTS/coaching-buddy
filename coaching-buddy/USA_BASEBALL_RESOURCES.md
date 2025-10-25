# USA Baseball Resources for Coaches

This document provides information about USA Baseball's coaching resources, drill libraries, and video content available to coaches.

## About USA Baseball

**USA Baseball** has been the national governing body for amateur baseball in the United States since 1978. They provide extensive resources for coaches, players, and parents at all levels of amateur baseball.

## Official USA Baseball Resources

### 1. USA Baseball Mobile Coach App

**Platform:** iOS and Android
**Cost:** Free to all users (membership to USA Baseball recommended)
**Download:**
- iOS: [USA Baseball on the App Store](https://apps.apple.com/us/app/usa-baseball/id994754156)
- Android: [USA Baseball on Google Play](https://play.google.com/store/apps/details?id=org.playball.mobile&hl=en_US&gl=US)

#### Features:

**Drill Library**
- Over 175+ baseball-specific drills
- Drills organized by skill category
- Color-coded difficulty levels (beginner, intermediate, advanced)
- Time estimates for each drill
- Ability to add your own custom drills

**Practice Planning**
- Create complete practice plans using app drills
- Customize duration and order of drills
- Save and reuse favorite practice plans
- Templates for different age groups

**Additional Tools**
- Pitch count tracker
- Instructional videos
- Strength and conditioning programs
- Age-appropriate skill progressions

#### User Feedback:
"I love all the features... from the large drill library to the practice plans to the videos to the pitch count log." - Coach Review

"Perfect for first-time coaches and experienced ones needing fresh ideas." - App User

### 2. USABDevelops.com

**Website:** [usabdevelops.com](https://usabdevelops.com)

#### Key Features:

**Drill Library**
- Over 300 baseball-specific drills online
- Searchable by skill category, age, difficulty
- Written instructions for each drill
- Equipment lists
- Coaching tips and variations

**Drill Categories Available:**
- Hitting
- Pitching
- Fielding (Infield & Outfield)
- Catching
- Baserunning
- Throwing
- Warm-up and Conditioning

**Access:**
- Create free account at USABDevelops.com
- Access desktop and mobile versions
- Syncs with Mobile Coach app

### 3. USA Baseball Online Education Center

**Partnership:** USA Baseball + American Baseball Coaches Association (ABCA)

#### Available Content:
- 5+ coaching courses featuring ABCA content
- Clinic videos from ABCA national conventions
- Position-specific instruction
- Age-appropriate teaching methods
- Practice organization and planning
- Advanced coaching certifications

### 4. USA Baseball Video Content

**Official Website:** [usabaseball.com/video](https://www.usabaseball.com/video)

#### Video Categories:
- National Team training camps
- Skills development sessions
- Position-specific techniques
- Coach education clinics
- Game highlights and analysis

**Example Content:**
- 12U National Team Training Camp videos
- Athlete Development Program sessions
- Positional drills from national team coaches

## IMG Academy Partnership

IMG Academy works closely with USA Baseball and the national team programs. Their instructional videos are high-quality and professionally produced.

### IMG Academy YouTube Content

**Channel:** @imgacademy on YouTube

#### Available Drill Videos:

**Hitting Drills:**
- Walk Through Drill (momentum and separation)
- Exaggerated Leg Kick (power development)
- Launch Angle Drill (proper swing path)

**Infielding Drills:**
- Three Cone Fundamentals (footwork)
- Short Hop Attack (difficult hops)
- Dry Action Cone (footwork practice)

**Pitching Drills:**
- Step Back Pivot Pick (balance and footwork)
- Janitor Throw (arm action)
- Step Back Throw (full mechanics)

**Outfielding Drills:**
- Footwork Drill (angles and approaches)
- Routine Ground Balls and Fly Balls
- Overhead Ball and Assists (tracking and throwing)

All IMG Academy drills have been included in the `img_academy_drills.sql` file for easy import into your database.

## How to Use These Resources

### For Practice Planning

1. **Download the USA Baseball Mobile Coach App**
   - Browse the 175+ drill library
   - Select drills appropriate for your team's age and skill level
   - Build a practice plan directly in the app
   - Use the timer feature to keep practice moving

2. **Supplement with USABDevelops.com**
   - Search for specific drills to address team needs
   - Read detailed instructions and coaching tips
   - Add variations to keep players engaged
   - Download or print drills for reference

3. **Use IMG Academy Videos**
   - Watch videos before practice to understand the drill
   - Show videos to players for visual learning
   - Reference videos for proper technique demonstration
   - Share links with parents for at-home practice

### For Coaching Education

1. **USA Baseball Online Education Center**
   - Complete certification courses
   - Watch ABCA convention videos
   - Learn from national team coaches
   - Stay updated on best practices

2. **National Team Content**
   - Study how elite players train
   - Adapt national team drills for your level
   - Learn advanced techniques to introduce gradually
   - Use as motivation for dedicated players

## Integration with Coaching Buddy

We've created SQL scripts to import drills with video links into your Coaching Buddy database:

### Available SQL Files:

1. **drills_with_videos.sql**
   - 18 drills with YouTube videos
   - Various reputable coaching sources
   - All skill categories covered

2. **img_academy_drills.sql**
   - 12 additional IMG Academy drills
   - Professional video instruction
   - Advanced techniques and fundamentals

### To Import:

```sql
-- In Supabase SQL Editor:
-- 1. Open the SQL file
-- 2. Copy all content
-- 3. Paste into SQL Editor
-- 4. Click "Run"

-- Verify import:
SELECT COUNT(*) as total_drills,
       COUNT(video_url) as drills_with_videos
FROM drills;
```

## Additional Resources

### American Baseball Coaches Association (ABCA)
- **Website:** abca.org
- **Video Library:** Extensive collection of coaching videos
- **Categories:** Practice planning, hitting, pitching, defense, baserunning
- **Access:** Membership required for full access

### PlaySportsTV
- **Website:** playsportstv.com/baseball
- **Content:** 40+ instructional videos
- **Topics:** All fundamental skills
- **Format:** Short, focused video tutorials

### Dominate The Diamond
- **Website:** dominatethediamond.com
- **Content:** 1000+ training videos, 60+ practice plans
- **Created by:** Former pro players Duke Baxter and Steve Nikorak
- **Special Features:** Position-specific programs

## Best Practices for Using Video Instruction

### Before Practice:
1. Watch videos yourself first
2. Understand the key coaching points
3. Prepare any necessary equipment
4. Have video ready to show if needed

### During Practice:
1. Demonstrate the drill yourself when possible
2. Show video on tablet/phone for visual learners
3. Have players watch proper technique
4. Use video for immediate feedback

### After Practice:
1. Share video links with players/parents
2. Recommend specific drills for at-home practice
3. Use videos for makeup work if players miss practice
4. Create a team playlist of relevant videos

## Recommended YouTube Channels

In addition to USA Baseball and IMG Academy, these channels offer excellent baseball instruction:

1. **Antonelli Baseball** (@antonellibaseball)
   - Matt Antonelli, former MLB player
   - Infield skills specialist
   - Hitting and fielding instruction

2. **Dan Blewett** (Search: Dan Blewett)
   - Former professional pitcher
   - Pitching mechanics expert
   - Youth-focused instruction

3. **MOJO** (@yougotmojo)
   - Youth sports training platform
   - Team practice drills
   - Short, focused videos (5 min)

4. **ProSpeed Baseball**
   - 55,000+ subscribers
   - Hitting specialist
   - All skill levels

5. **Ultimate Baseball Training** (Coach Justin)
   - 330,000+ subscribers
   - All positions and skills
   - 5-10 minute tutorials

## Contact and Support

### USA Baseball
- **Website:** usabaseball.com
- **Develops:** usabdevelops.com
- **Phone:** Listed on website
- **Email:** Contact form on website

### Technical Support
- **Mobile Coach App:** Support within app
- **Website Issues:** Contact through usabdevelops.com

## Summary

USA Baseball provides comprehensive resources for coaches at all levels:

✅ **Free Mobile Coach app** with 175+ drills
✅ **Online drill library** with 300+ drills at usabdevelops.com
✅ **Video content** from national team training
✅ **Education courses** in partnership with ABCA
✅ **Integration ready** for Coaching Buddy via SQL scripts

By combining USA Baseball's official resources with the IMG Academy videos and other reputable coaching channels, you'll have access to hundreds of high-quality drills and instructional videos to help your players develop their skills.

---

**Document Version:** 1.0
**Last Updated:** October 2025
**Compiled by:** Coaching Buddy Development Team
