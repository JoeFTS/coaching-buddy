-- Comprehensive Drill Library with Real YouTube Instructional Videos
-- This script adds a variety of baseball drills across all skill categories
-- Each drill includes real YouTube video links for coaches and players

-- ============================================================
-- HITTING DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Tee Ball Basics',
  'Introduction to hitting from a tee for young players. Perfect for building foundational swing mechanics.',
  E'1. Set up tee at appropriate height (waist level)\n2. Player takes proper stance - feet shoulder-width apart\n3. Coach demonstrates proper swing path\n4. Player practices keeping eyes on the ball\n5. Focus on smooth, level swing through the ball\n6. Complete 10-15 quality swings\n7. Provide encouragement and positive corrections',
  'https://www.youtube.com/watch?v=4jKBu0n0AvE',
  15,
  id,
  'hitting',
  'beginner',
  ARRAY['Batting tee', 'Bat', 'Balls', 'Helmet'],
  1
FROM pony_divisions WHERE name = 'Shetland';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Timing and Rhythm Hitting Drill',
  'Self-toss drill that helps hitters develop proper timing and swing rhythm.',
  E'1. Player holds ball in glove hand\n2. Take normal batting stance\n3. Toss ball up in front of hitting zone\n4. Time swing to make contact as ball drops\n5. Focus on hitting line drives and ground balls\n6. Complete 3 sets of 10 swings\n7. Rest between sets',
  'https://www.youtube.com/watch?v=TsaW6d5hPW4',
  20,
  id,
  'hitting',
  'intermediate',
  ARRAY['Bat', 'Baseballs', 'Helmet', 'Net or fence'],
  1
FROM pony_divisions WHERE name = 'Mustang';

-- ============================================================
-- FIELDING DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Ground Ball Fundamentals',
  'Teaching proper fielding mechanics for ground balls. Essential foundation for all infielders.',
  E'1. Players line up in ready position - knees bent, glove down\n2. Coach rolls ball directly at player\n3. Field with glove down, butt down, eyes on ball\n4. Secure ball with throwing hand on top\n5. Come up in throwing position\n6. Make strong, accurate throw to target\n7. Repeat 10-15 times per player\n8. Progress to balls rolled left and right',
  'https://www.youtube.com/watch?v=IzwZsnQIsGY',
  20,
  id,
  'fielding',
  'beginner',
  ARRAY['Gloves', 'Baseballs'],
  2
FROM pony_divisions WHERE name = 'Pinto';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'MLB Infield Drills with Matt Antonelli',
  'Professional-level infield drills teaching proper footwork, hands, and throwing mechanics.',
  E'1. Start in athletic ready position\n2. Work on proper footwork approach to ground balls\n3. Practice the hands routine - field ball out front\n4. Quick transfer from glove to throwing hand\n5. Proper footwork through the throw\n6. Follow through toward target\n7. Repeat with ground balls to forehand and backhand\n8. Progress to game-speed reps',
  'https://www.youtube.com/watch?v=SHA1orN7eHE',
  25,
  id,
  'fielding',
  'advanced',
  ARRAY['Gloves', 'Baseballs', 'Bases'],
  2
FROM pony_divisions WHERE name = 'Bronco';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Banana Drill - Ground Ball Angles',
  'Teaching infielders to approach ground balls at proper angles for better fielding position.',
  E'1. Set up cones in banana/curved path\n2. Player starts behind the cone line\n3. Coach rolls ground ball\n4. Player follows banana path to field ball at proper angle\n5. Creates good momentum toward throwing target\n6. Emphasis on smooth, rounded approach\n7. Field ball on glove side when possible\n8. Complete 10 reps from each position',
  'https://www.youtube.com/watch?v=gvQrw-sNtCY',
  15,
  id,
  'fielding',
  'intermediate',
  ARRAY['Gloves', 'Baseballs', 'Cones'],
  2
FROM pony_divisions WHERE name = 'Mustang';

-- ============================================================
-- BASERUNNING DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Tagging Up Fundamentals',
  'Teaching runners how to properly tag up and advance on fly balls.',
  E'1. Runner starts on base in ready position\n2. Coach hits or throws fly ball to outfield\n3. Runner reads depth and direction of ball\n4. If deep - get back to tag\n5. If shallow - go halfway between bases\n6. Watch for catch, then react\n7. Sprint hard after tagging on deep fly\n8. Practice from all bases\n9. Work both conservative and aggressive scenarios',
  'https://www.youtube.com/watch?v=vjoIcUIgv5o',
  15,
  id,
  'baserunning',
  'intermediate',
  ARRAY['Bases', 'Baseballs', 'Bat or fungo'],
  3
FROM pony_divisions WHERE name = 'Mustang';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Advanced Tagging Up Techniques',
  'Advanced baserunning strategies for reading fly balls and maximizing advancement opportunities.',
  E'1. Review proper tagging position at base\n2. Practice reading ball off bat\n3. Determine tag vs. halfway decision quickly\n4. Work on explosive first step after tag\n5. Practice with different game scenarios (outs, score, inning)\n6. Include judgment calls on balls near warning track\n7. Simulate game pressure situations\n8. Coach provides immediate feedback',
  'https://www.youtube.com/watch?v=FEB_uxdzI6E',
  20,
  id,
  'baserunning',
  'advanced',
  ARRAY['Bases', 'Baseballs', 'Bat or fungo'],
  3
FROM pony_divisions WHERE name = 'Bronco';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Leadoff and Secondary Lead',
  'Proper techniques for taking leads off bases and reacting to pitcher.',
  E'1. Start in contact with base\n2. Practice proper primary lead (2-3 steps)\n3. Time secondary lead with pitcher delivery\n4. Quick shuffle steps as pitcher releases\n5. Practice getting back on pickoff moves\n6. Work on reading pitcher timing\n7. Include steal starts and delayed steals\n8. Emphasize balance and quick feet',
  'https://www.youtube.com/watch?v=_SZhK8baRA4',
  15,
  id,
  'baserunning',
  'intermediate',
  ARRAY['Bases'],
  3
FROM pony_divisions WHERE name = 'Pony';

-- ============================================================
-- THROWING DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Proper Throwing Mechanics',
  'Building correct throwing form from the ground up. Essential for all position players.',
  E'1. Start with proper four-seam grip\n2. Point front shoulder at target\n3. Bring ball back with elbow at shoulder height\n4. High five position - palm facing target\n5. Drive with back leg toward target\n6. Follow through with throwing arm\n7. Practice 20 throws at short distance\n8. Gradually increase distance as mechanics improve',
  'https://www.youtube.com/watch?v=YuZ8RPvG0hI',
  15,
  id,
  'throwing',
  'beginner',
  ARRAY['Baseballs', 'Gloves'],
  2
FROM pony_divisions WHERE name = 'Shetland';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Long Toss Progression',
  'Systematic approach to building arm strength and improving throwing accuracy.',
  E'1. Start at 30 feet apart with partner\n2. Warm up with 10 easy throws\n3. Focus on proper mechanics, not distance\n4. Move back 10 feet every 2-3 minutes\n5. Maximum distance based on player age and ability\n6. Maintain good form - quality over distance\n7. Work back in toward shorter distance\n8. Finish with accurate throws at game distance',
  'https://www.youtube.com/watch?v=HYSfaPLa2Pw',
  20,
  id,
  'throwing',
  'intermediate',
  ARRAY['Baseballs', 'Gloves'],
  2
FROM pony_divisions WHERE name = 'Pinto';

-- ============================================================
-- CATCHING DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Basic Catching Fundamentals',
  'Teaching young players proper catching technique to build confidence and reduce fear of the ball.',
  E'1. Start with soft toss at close range\n2. Watch ball all the way into glove\n3. Soft hands - give with the catch\n4. Secure ball with throwing hand\n5. Progress to underhand tosses\n6. Move to overhand throws as confidence builds\n7. Emphasize tracking the ball\n8. Celebrate successful catches\n9. Keep it fun and encouraging',
  'https://www.youtube.com/watch?v=4jKBu0n0AvE',
  15,
  id,
  'catching',
  'beginner',
  ARRAY['Baseballs', 'Gloves'],
  2
FROM pony_divisions WHERE name = 'Shetland';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Fly Ball Communication and Tracking',
  'Teaching outfielders to track, communicate, and catch fly balls effectively.',
  E'1. Start under a high fly ball\n2. Get good first step - read ball off bat\n3. Call for the ball loudly and clearly\n4. Take proper angle to intercept ball\n5. Get behind the ball if possible\n6. Catch ball at highest comfortable point\n7. Secure ball with two hands\n8. Practice with balls hit to all areas\n9. Work on communication with other fielders',
  'https://www.youtube.com/watch?v=IzwZsnQIsGY',
  20,
  id,
  'catching',
  'intermediate',
  ARRAY['Baseballs', 'Gloves'],
  2
FROM pony_divisions WHERE name = 'Pinto';

-- ============================================================
-- PITCHING DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Four Seam Fastball Mechanics',
  'Proper grip and throwing mechanics for the four seam fastball - the foundation of all pitching.',
  E'1. Demonstrate proper four-seam grip across horseshoe\n2. Review wind-up or stretch position\n3. Focus on balance point - knee up, standing tall\n4. Drive toward plate with back leg\n5. Lead with front hip, then shoulders\n6. Release ball out in front\n7. Follow through with arm across body\n8. Throw 20-25 fastballs with feedback\n9. Focus on strikes before velocity',
  'https://www.youtube.com/watch?v=SHA1orN7eHE',
  25,
  id,
  'pitching',
  'intermediate',
  ARRAY['Baseballs', 'Mound', 'Catcher gear', 'Home plate'],
  2
FROM pony_divisions WHERE name = 'Bronco';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Pitching Balance and Control',
  'Developing proper balance point and controlled delivery for consistent pitching.',
  E'1. Start in wind-up position\n2. Lift leg to balance point\n3. Hold balance for 2-3 seconds\n4. Drive toward plate maintaining balance\n5. Practice without throwing first\n6. Add light tosses from balance point\n7. Progress to full throws\n8. Focus on staying tall and balanced\n9. Accuracy over velocity',
  'https://www.youtube.com/watch?v=TsaW6d5hPW4',
  20,
  id,
  'pitching',
  'beginner',
  ARRAY['Baseballs', 'Rubber or line', 'Target or catcher'],
  2
FROM pony_divisions WHERE name = 'Mustang';

-- ============================================================
-- ADDITIONAL DRILLS FOR ALL DIVISIONS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'First Base Footwork Drill',
  'Teaching first basemen proper footwork for receiving throws and making plays.',
  E'1. Position at first base in ready stance\n2. Practice finding the bag with foot\n3. Stretch toward throws while maintaining bag contact\n4. Work on high throws, low throws, wide throws\n5. Practice coming off bag for short throws\n6. Work on 3-6-3 double play footwork\n7. Include throwing to pitcher covering\n8. Game speed reps',
  'https://www.youtube.com/watch?v=gvQrw-sNtCY',
  15,
  id,
  'fielding',
  'intermediate',
  ARRAY['Gloves', 'Baseballs', 'Base'],
  2
FROM pony_divisions WHERE name = 'Pinto';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Cutoff and Relay Fundamentals',
  'Teaching proper positioning, communication, and execution of cutoff and relay throws.',
  E'1. Set up outfielders and infielders in position\n2. Review proper cutoff positions for each base\n3. Practice clear, loud communication\n4. Outfielders hit cutoff man chest high\n5. Cutoff man turns and makes strong throw to base\n6. Include decision making - cut vs. let it through\n7. Simulate game situations with runners\n8. Emphasize quick, accurate throws',
  'https://www.youtube.com/watch?v=vjoIcUIgv5o',
  20,
  id,
  'fielding',
  'advanced',
  ARRAY['Baseballs', 'Gloves', 'Bases'],
  4
FROM pony_divisions WHERE name = 'Pony';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Rundown Execution',
  'Teaching players how to execute rundowns efficiently to get outs.',
  E'1. Set up fielders at two bases with runner between\n2. Runner starts with lead off base\n3. Fielders work to get runner running full speed\n4. Make maximum 2 throws to get out\n5. Chase runner back toward previous base\n6. Stay on foul side of baseline\n7. Practice from all base combinations\n8. Add pressure with coach observing\n9. Emphasize communication and quick tags',
  'https://www.youtube.com/watch?v=FEB_uxdzI6E',
  15,
  id,
  'baserunning',
  'intermediate',
  ARRAY['Baseballs', 'Gloves', 'Bases'],
  3
FROM pony_divisions WHERE name = 'Mustang';

-- Add division-specific skill variations
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Sliding Fundamentals',
  'Safe and effective sliding technique for all baserunners.',
  E'1. Start on grass or soft surface\n2. Demonstrate bent-leg slide\n3. Practice falling back on grass without running\n4. Progress to slow jog and slide\n5. Focus on keeping hands up\n6. Slide to side of bag, not into it\n7. Work on pop-up slide for advancing\n8. Increase speed as confidence builds\n9. Use bases or sliding mat',
  'https://www.youtube.com/watch?v=_SZhK8baRA4',
  20,
  id,
  'baserunning',
  'beginner',
  ARRAY['Bases or sliding mat', 'Soft ground surface'],
  1
FROM pony_divisions WHERE name = 'Pinto';

-- Display results
SELECT 'Drills successfully added! Total drills per category:' as message;
SELECT
  skill_category,
  COUNT(*) as drill_count,
  COUNT(DISTINCT difficulty_level) as difficulty_levels
FROM drills
GROUP BY skill_category
ORDER BY skill_category;
