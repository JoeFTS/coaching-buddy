-- Additional Drills with IMG Academy and USA Baseball Affiliated Videos
-- IMG Academy is closely affiliated with USA Baseball and their instructors
-- provide high-quality, professional instruction for youth baseball

-- ============================================================
-- IMG ACADEMY HITTING DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Walk Through Drill - Hitting Momentum',
  'IMG Academy drill focusing on creating momentum and separation in the swing.',
  E'1. Start in a standing position with bat\n2. Take a slow walk while maintaining hitting position\n3. Focus on creating separation between hands and hips\n4. Practice proper weight transfer through the swing\n5. Time the load as you step\n6. Keep hands back as front foot lands\n7. Explode through the hitting zone\n8. Complete 15-20 quality swings',
  'https://www.youtube.com/watch?v=4jKBu0n0AvE',
  15,
  id,
  'hitting',
  'intermediate',
  ARRAY['Bat', 'Batting cage or field'],
  1
FROM pony_divisions WHERE name = 'Mustang';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Exaggerated Leg Kick Drill',
  'IMG Academy drill for developing power through the hips and improving timing.',
  E'1. Set up in normal batting stance\n2. Practice exaggerated leg kick to chest level\n3. Focus on balance throughout the movement\n4. Feel weight shift to back leg\n5. Drive forward with hips leading\n6. Keep hands back during leg kick\n7. Explode through contact\n8. Work on timing and rhythm\n9. Progress to hitting off tee or soft toss',
  'https://www.youtube.com/watch?v=4jKBu0n0AvE',
  20,
  id,
  'hitting',
  'advanced',
  ARRAY['Bat', 'Tee or soft toss setup', 'Balls'],
  1
FROM pony_divisions WHERE name = 'Bronco';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Launch Angle Hitting Drill',
  'IMG Academy drill teaching proper swing path and launch angle for line drives.',
  E'1. Set up with slightly wider stance\n2. Focus on hip isolation and rotation\n3. Practice proper bat path - slight upward angle\n4. Drive through the ball, not down on it\n5. Work on consistent contact point\n6. Use tee set at different heights\n7. Aim for line drives, not pop-ups\n8. Complete 20-25 swings at each height\n9. Track ball flight and adjust',
  'https://www.youtube.com/watch?v=4jKBu0n0AvE',
  25,
  id,
  'hitting',
  'advanced',
  ARRAY['Bat', 'Batting tee', 'Baseballs', 'Net'],
  1
FROM pony_divisions WHERE name = 'Pony';

-- ============================================================
-- IMG ACADEMY INFIELD DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Three Cone Fundamentals',
  'IMG Academy drill focusing on pre-pitch steps and proper fielding footwork.',
  E'1. Set up three cones in a line\n2. Start at first cone in ready position\n3. Practice proper pre-pitch step timing\n4. Move to ball with proper footwork\n5. Field ball between second and third cone\n6. Work on approach angle\n7. Quick transfer and throw\n8. Return to starting position\n9. Repeat 10-15 times\n10. Focus on consistency and rhythm',
  'https://www.youtube.com/watch?v=iRzepPsERBc',
  20,
  id,
  'fielding',
  'intermediate',
  ARRAY['Gloves', 'Baseballs', 'Cones (3)', 'Base or target'],
  2
FROM pony_divisions WHERE name = 'Mustang';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Short Hop Attack Drill',
  'IMG Academy drill teaching proper technique for handling short hop ground balls.',
  E'1. Partner throws or bounces short hops\n2. Read the hop early\n3. Attack the ball - move forward, not back\n4. Get low with good wide base\n5. Field ball on the up-hop when possible\n6. Keep glove out front\n7. Secure ball with two hands\n8. Quick transition to throw\n9. Work both forehand and backhand\n10. Progress to game speed',
  'https://www.youtube.com/watch?v=iRzepPsERBc',
  15,
  id,
  'fielding',
  'advanced',
  ARRAY['Gloves', 'Baseballs'],
  2
FROM pony_divisions WHERE name = 'Bronco';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Dry Action Cone Drill',
  'IMG Academy footwork drill for multiple ground ball scenarios without using a ball.',
  E'1. Set up cones representing different ground ball paths\n2. Practice footwork without ball first\n3. Work on approach to routine grounders\n4. Practice forehand and backhand footwork\n5. Slow rollers - charge and field\n6. Balls up the middle - proper angles\n7. Add ball once footwork is mastered\n8. Emphasize muscle memory\n9. Increase speed gradually',
  'https://www.youtube.com/watch?v=iRzepPsERBc',
  15,
  id,
  'fielding',
  'intermediate',
  ARRAY['Cones (5-6)', 'Gloves', 'Optional: baseballs'],
  1
FROM pony_divisions WHERE name = 'Pinto';

-- ============================================================
-- IMG ACADEMY PITCHING DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Step Back Pivot Pick',
  'IMG Academy drill for developing proper footwork and balance in the wind-up.',
  E'1. Start in set position on rubber\n2. Step back with pivot foot\n3. Find the rubber with side of foot\n4. Lift front leg to balance point\n5. Hold balance for 2-3 seconds\n6. Practice without throwing first\n7. Focus on staying tall and balanced\n8. Progress to throwing when consistent\n9. Repeat 15-20 times',
  'https://www.youtube.com/watch?v=7V8mIhp5Cko',
  15,
  id,
  'pitching',
  'beginner',
  ARRAY['Rubber or pitching mound', 'Optional: baseballs'],
  1
FROM pony_divisions WHERE name = 'Mustang';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Janitor Throw Drill',
  'IMG Academy drill for developing proper arm action and shoulder separation.',
  E'1. Stand sideways to target\n2. Ball in throwing hand, glove at side\n3. Practice arm circle motion\n4. Focus on high elbow position\n5. "Janitor" motion - sweeping arc\n6. Separate hands and get arm up\n7. Drive through the throw\n8. Follow through completely\n9. Start slow, increase speed\n10. Throw 20-25 reps',
  'https://www.youtube.com/watch?v=7V8mIhp5Cko',
  20,
  id,
  'pitching',
  'intermediate',
  ARRAY['Baseballs', 'Partner or net'],
  1
FROM pony_divisions WHERE name = 'Bronco';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Step Back Throw',
  'IMG Academy drill combining footwork and throwing mechanics for pitchers.',
  E'1. Start on or near rubber\n2. Step back and pivot on rubber\n3. Lift leg to balance point\n4. Drive toward target with lower half\n5. Proper shoulder and hip separation\n6. Throw with full mechanics\n7. Follow through across body\n8. Focus on control and accuracy\n9. Gradually increase intensity\n10. Complete 25-30 pitches',
  'https://www.youtube.com/watch?v=7V8mIhp5Cko',
  25,
  id,
  'pitching',
  'advanced',
  ARRAY['Baseballs', 'Mound', 'Catcher or target', 'Home plate'],
  2
FROM pony_divisions WHERE name = 'Pony';

-- ============================================================
-- IMG ACADEMY OUTFIELD DRILLS
-- ============================================================

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Outfield Footwork Drill',
  'IMG Academy drill teaching proper footwork for approaching fly balls and ground balls in the outfield.',
  E'1. Start in ready position\n2. Practice drop step for balls over head\n3. Crossover step for balls to side\n4. Charge hard on ground balls\n5. Break down under control\n6. Proper throwing position after catch\n7. Crow hop for distance throws\n8. Work all angles and directions\n9. Add ball after footwork is solid\n10. Progress to game speed',
  'https://www.youtube.com/watch?v=iRzepPsERBc',
  20,
  id,
  'catching',
  'intermediate',
  ARRAY['Baseballs', 'Gloves', 'Fungo bat'],
  2
FROM pony_divisions WHERE name = 'Mustang';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Routine Ground Balls and Fly Balls - Outfield',
  'IMG Academy drill combining ground ball and fly ball work for complete outfield training.',
  E'1. Start with routine ground balls\n2. Charge ball under control\n3. Field ball off throwing foot\n4. Quick transfer to throwing hand\n5. Strong, accurate throw to base\n6. Progress to fly balls\n7. Get good first step and angle\n8. Communicate with other fielders\n9. Catch ball at highest point\n10. Work on both do-or-die plays and routine plays',
  'https://www.youtube.com/watch?v=iRzepPsERBc',
  25,
  id,
  'catching',
  'intermediate',
  ARRAY['Baseballs', 'Gloves', 'Fungo bat', 'Bases'],
  3
FROM pony_divisions WHERE name = 'Pinto';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Overhead Ball and Assists Drill',
  'IMG Academy drill for tracking balls overhead and making strong throws from the outfield.',
  E'1. Practice reading balls off the bat\n2. Turn and run on balls over head\n3. Look over correct shoulder\n4. Track ball while running\n5. Make catch over shoulder when possible\n6. Quick recovery to throwing position\n7. Crow hop and strong throw\n8. Work on hitting cutoff man\n9. Practice from all outfield positions\n10. Simulate game scenarios with runners',
  'https://www.youtube.com/watch?v=iRzepPsERBc',
  20,
  id,
  'catching',
  'advanced',
  ARRAY['Baseballs', 'Gloves', 'Fungo bat', 'Bases', 'Cutoff man'],
  3
FROM pony_divisions WHERE name = 'Bronco';

-- Display summary
SELECT 'IMG Academy drills successfully added!' as message;
SELECT
  skill_category,
  COUNT(*) as total_drills,
  SUM(CASE WHEN video_url LIKE '%youtube.com%' THEN 1 ELSE 0 END) as drills_with_videos
FROM drills
GROUP BY skill_category
ORDER BY skill_category;
