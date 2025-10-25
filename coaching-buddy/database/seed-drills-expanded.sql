-- ============================================
-- Coaching Buddy - Expanded Drill Library
-- ============================================
-- Total Drills: 100
-- - 25 Hitting Drills
-- - 25 Baserunning Drills
-- - 25 Fielding Drills
-- - 25 Pitching Drills
--
-- Each drill is tagged with specific skills from SKILL_TAGS_MAPPING.md
-- to enable age-appropriate drill filtering based on SKILLS_MATRIX.md
-- ============================================

-- Clear existing drills
TRUNCATE drills CASCADE;

-- HITTING DRILLS (25)

-- 1. Grip and Stance Foundation
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Grip and Stance Foundation',
  'Teaches proper bat grip and athletic stance positioning. Foundation drill for all future hitting mechanics.',
  'Show players how to line up door-knocking knuckles on both hands
Have players grip bat with relaxed but firm pressure (hold like a bird)
Position feet shoulder-width apart with knees slightly bent
Weight distributed evenly on balls of feet
Hands positioned at back shoulder height
Check each player individually and make corrections
Have players hold stance for 10 seconds, repeat 5 times
Practice moving from relaxed position into proper stance repeatedly',
  null,
  10,
  null,
  'Hitting',
  'beginner',
  ARRAY['bat', 'mirror or coach for feedback'],
  1,
  ARRAY['proper-grip', 'basic-stance']
);

-- 2. Eye on the Ball Tee Work
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Eye on the Ball Tee Work',
  'Develops ability to track and watch the ball all the way to contact point using a stationary tee.',
  'Set up tee at mid-thigh height in front of home plate
Place ball on tee with seams visible
Have hitter take proper stance beside tee
Instruct player to identify ball seams or logo before swinging
Player should say "see it" right before making contact
Swing and make contact while keeping eyes on ball
Hold finish position and check where eyes are looking
Repeat 10-12 swings, alternating calling out different parts of ball',
  null,
  15,
  null,
  'Hitting',
  'beginner',
  ARRAY['batting tee', 'wiffle balls or soft baseballs', 'bat', 'net or field'],
  1,
  ARRAY['watching-ball', 'contact-point', 'basic-stance']
);

-- 3. Swing Through the Ball
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Swing Through the Ball',
  'Teaches complete swing path and proper follow-through by swinging through the ball, not at it.',
  'Set up primary tee with ball at contact point
Place second tee (or coach''s glove) 6-8 inches in front of first tee
Hitter must swing through first ball and over/through second tee position
Focus on extending arms fully through contact zone
Finish swing with bat over opposite shoulder
Back shoulder should come through and replace front shoulder
Belt buckle should face pitcher at finish
Complete 15 swings with proper extension and follow-through',
  null,
  15,
  null,
  'Hitting',
  'beginner',
  ARRAY['batting tee', 'balls', 'bat', 'two tees (optional)'],
  1,
  ARRAY['swing-through', 'follow-through', 'contact-point']
);

-- 4. Step and Swing
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Step and Swing',
  'Introduces proper weight transfer and stride timing coordinated with swing mechanics.',
  'Mark stride landing spot with chalk or mat (roughly 6 inches forward)
Hitter starts in proper stance with weight on back leg
Practice stride without swinging - small controlled step toward pitcher
Front foot should land softly on ball of foot, not heel
Add ball on tee at proper contact point
Combine stride and swing - "load, stride, swing"
Weight transfers from back to front as hands come through
Complete 20 swings focusing on smooth weight transfer',
  null,
  15,
  null,
  'Hitting',
  'beginner',
  ARRAY['batting tee', 'balls', 'bat', 'stride mat or chalk'],
  1,
  ARRAY['weight-transfer', 'basic-stance', 'contact-point']
);

-- 5. Hip Rotation Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Hip Rotation Drill',
  'Isolates and develops proper hip rotation which generates power in the swing.',
  'Place bat across hips/waist with hands holding each end
Take batting stance with proper knee bend
Practice rotating hips so back hip replaces front hip
Belt buckle should face pitcher at finish position
Add small stride before hip rotation
Progress to holding bat normally and taking dry swings
Hit balls off tee focusing solely on aggressive hip rotation
Complete 15 swings with exaggerated hip turn',
  null,
  12,
  null,
  'Hitting',
  'intermediate',
  ARRAY['bat', 'batting tee', 'balls', 'alignment sticks or cones'],
  1,
  ARRAY['hip-rotation', 'weight-transfer', 'swing-through']
);

-- 6. Level Swing Plane Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Level Swing Plane Drill',
  'Develops proper swing plane that matches pitch trajectory for consistent hard contact.',
  'Set up tee with ball at middle height of strike zone
Place one ball on ground 6 inches in front of tee
Place another ball on second tee 12 inches behind primary tee at shoulder height
Hitter must swing through hitting middle ball without hitting front or back balls
This creates proper swing plane - slightly upward through zone
Adjust tee heights to practice different pitch locations
Complete 10 swings at each height (low, middle, high)
Progress to soft toss maintaining same swing plane',
  null,
  15,
  null,
  'Hitting',
  'intermediate',
  ARRAY['batting tee', 'balls', 'bat', 'two additional balls or obstacles', 'net'],
  1,
  ARRAY['level-swing', 'contact-point', 'tracking-ball']
);

-- 7. Front Toss Tracking
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Front Toss Tracking',
  'Improves pitch tracking ability and timing with front toss from short distance.',
  'Set up protective screen 12-15 feet in front of home plate
Tosser sits behind screen on bucket
Tosser delivers underhand or overhand toss to strike zone
Hitter tracks ball from release point to contact
Call "yes" for strikes, "no" for balls before swinging
Take aggressive swings at strikes only
Vary heights and locations within strike zone
Complete 3 rounds of 10 swings with brief rest between',
  null,
  15,
  null,
  'Hitting',
  'intermediate',
  ARRAY['soft baseballs or lite-flight balls', 'bat', 'screen', 'net or field'],
  2,
  ARRAY['tracking-ball', 'level-swing', 'weight-transfer', 'follow-through']
);

-- 8. Inside Hands Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Inside Hands Drill',
  'Teaches proper hand path keeping hands inside the ball for maximum bat control and power.',
  'Place towel or pad under hitter''s back armpit
Hitter must keep towel in place during entire swing
Set up tee on inside part of plate
Take swings pulling inside pitch while maintaining towel position
Hands should stay close to body on path to ball
If towel drops, hands cast away from body
Progress to soft toss inside pitches
Complete 20 swings maintaining proper hand path',
  null,
  15,
  null,
  'Hitting',
  'intermediate',
  ARRAY['batting tee', 'balls', 'bat', 'towel or small pad'],
  1,
  ARRAY['hands-inside', 'consistent-mechanics', 'hip-rotation']
);

-- 9. Opposite Field Tee Work
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Opposite Field Tee Work',
  'Develops ability to drive outside pitches to opposite field with authority.',
  'Set up tee on outside corner of plate
Position tee slightly deeper (more toward catcher) than middle location
Hitter takes normal stance and stride
Focus on letting ball travel deeper before contact
Hands should drive ball back through middle or opposite field
Contact point is deeper, closer to back hip
Practice keeping front shoulder in to avoid pulling off
Hit 15-20 balls aiming for opposite field gap',
  null,
  15,
  null,
  'Hitting',
  'intermediate',
  ARRAY['batting tee', 'balls', 'bat', 'net or field'],
  1,
  ARRAY['all-fields', 'situational-hitting', 'plate-coverage']
);

-- 10. Situational Soft Toss
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Situational Soft Toss',
  'Practices specific game situations with soft toss to develop situational hitting awareness.',
  'Set up soft toss station with screen protection
Assign specific situations before each round (runner on 2nd, none out)
Hitter must execute proper approach for situation
Situations: hit and run, runner on 3rd less than 2 outs, moving runner over, etc.
Discuss proper approach before each round
Tosser varies locations based on situation requirements
Complete 8 swings per situation, rotate through 4 situations
Evaluate success based on execution, not just contact',
  null,
  20,
  null,
  'Hitting',
  'intermediate',
  ARRAY['baseballs', 'bat', 'screen', 'net or field'],
  2,
  ARRAY['situational-hitting', 'situational-execution', 'all-fields', 'mental-approach']
);

-- 11. Two-Strike Approach Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Two-Strike Approach Drill',
  'Develops protective two-strike approach focusing on contact and using whole field.',
  'Every swing is treated as two-strike count
Choke up 1-2 inches on bat for better control
Widen stance slightly and crouch for better plate coverage
Tosser throws balls to all locations including borderline pitches
Hitter must protect zone and spoil tough pitches
Focus is contact over power
Fight off inside pitches, drive outside pitches opposite way
Complete 25 swings battling every pitch',
  null,
  15,
  null,
  'Hitting',
  'intermediate',
  ARRAY['baseballs', 'bat', 'screen', 'net or field'],
  2,
  ARRAY['two-strike-approach', 'plate-discipline', 'plate-coverage', 'mental-approach']
);

-- 12. Bunting Fundamentals
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Bunting Fundamentals',
  'Teaches proper sacrifice and drag bunting technique for moving runners and getting on base.',
  'Start with pivot method - pivot on back foot, square to pitcher
Bat angle creates trajectory - top hand high, bottom hand low for strikes
Catch the ball with the bat - no stabbing motion
Eyes track ball directly onto bat
Practice dry runs without ball first
Add soft toss from short distance
Place targets on field - down 1st base line, down 3rd base line
Alternate sacrifice bunts and drag bunts for 20 total attempts',
  null,
  15,
  null,
  'Hitting',
  'intermediate',
  ARRAY['baseballs', 'bat', 'screen for tosser', 'chalk for target areas'],
  2,
  ARRAY['bunting', 'situational-execution', 'plate-discipline']
);

-- 13. Consistent Mechanics Dry Swings
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Consistent Mechanics Dry Swings',
  'Develops muscle memory for consistent swing mechanics through repetition of proper form.',
  'Take 10 full-speed dry swings focusing on perfect form
Use mirror or record video to check positions
Check key positions: stance, load, stride, contact, follow-through
Rest 30 seconds between sets
Complete 5 sets of 10 swings (50 total swings)
Focus on one mechanical element each set
Gradually increase swing speed while maintaining form
Finish with 10 game-speed swings with perfect mechanics',
  null,
  10,
  null,
  'Hitting',
  'intermediate',
  ARRAY['bat', 'mirror (optional)', 'video recording device (optional)'],
  1,
  ARRAY['consistent-mechanics', 'advanced-mechanics', 'consistent-approach']
);

-- 14. Live BP Count Work
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Live BP Count Work',
  'Simulates game at-bats with specific counts to develop plate discipline and approach.',
  'Start each hitter with specific count (0-0, 1-0, 0-2, 2-2, 3-1, etc.)
Pitcher throws from mound or closer distance
Hitter takes correct approach for count
Call balls and strikes - full count progression
At-bat ends with hit, out, or walk
Rotate counts to practice all situations
Each hitter gets 5-6 full at-bats
Discuss approach after each at-bat',
  null,
  20,
  null,
  'Hitting',
  'intermediate',
  ARRAY['baseballs', 'bat', 'screen', 'full field setup'],
  3,
  ARRAY['plate-discipline', 'pitch-recognition', 'mental-approach', 'situational-hitting']
);

-- 15. Power Development Tee Work
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Power Development Tee Work',
  'Focuses on generating maximum power through explosive hip rotation and extension.',
  'Use heavier training bat for first half of drill
Set tee at lower-middle height (launch angle zone)
Focus on explosive weight transfer and hip rotation
Drive back knee aggressively toward pitcher
Full extension through contact zone
Finish in balanced position with power
Switch to game bat - feel increased bat speed
Hit 30 total balls - 15 with heavy bat, 15 with game bat',
  null,
  15,
  null,
  'Hitting',
  'advanced',
  ARRAY['batting tee', 'baseballs', 'bat (game bat and heavier training bat)', 'net'],
  1,
  ARRAY['power-development', 'hip-rotation', 'driving-ball', 'bat-speed']
);

-- 16. Pitch Recognition Flips
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pitch Recognition Flips',
  'Improves ability to recognize and react to different pitch types and locations.',
  'Use two different colored balls or mark balls differently
Each color represents different pitch location or type
Tosser randomly selects ball without showing hitter
Hitter must identify color/type as ball is released
Take appropriate swing based on pitch type
Call out pitch type before swinging
Progress to three different pitches (fastball, curve, change)
Complete 30 tosses with immediate verbal recognition',
  null,
  15,
  null,
  'Hitting',
  'advanced',
  ARRAY['baseballs', 'bat', 'different colored balls or marked balls', 'screen'],
  2,
  ARRAY['pitch-recognition', 'advanced-pitch-recognition', 'spin-recognition', 'tracking-ball']
);

-- 17. Top Hand/Bottom Hand Isolation
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Top Hand/Bottom Hand Isolation',
  'Isolates and strengthens each hand''s role in the swing for better bat control.',
  'Set up tee at mid-height
Take 10 swings using only top hand (palm up hand)
Focus on guiding bat through zone and proper extension
Take 10 swings using only bottom hand (palm down hand)
Focus on pulling bat through and generating power
Alternate hands for 2 more rounds (40 total swings)
Finish with 10 two-handed swings feeling both hands work together
Note improved feel and control',
  null,
  15,
  null,
  'Hitting',
  'intermediate',
  ARRAY['batting tee', 'balls', 'bat', 'net'],
  1,
  ARRAY['hands-inside', 'consistent-mechanics', 'bat-speed', 'level-swing']
);

-- 18. High Tee, Low Tee Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'High Tee, Low Tee Drill',
  'Develops ability to adjust swing plane for different pitch heights in strike zone.',
  'Set up one tee at letters height
Set up second tee at knee height
Alternate hitting one ball from high tee, one from low tee
High pitch: stay on top, don''t uppercut
Low pitch: bend knees, maintain spine angle
Complete 10 rounds (20 total swings)
Focus on smooth transitions between heights
Maintain consistent mechanics despite height changes',
  null,
  15,
  null,
  'Hitting',
  'intermediate',
  ARRAY['two batting tees', 'baseballs', 'bat', 'net or field'],
  1,
  ARRAY['plate-coverage', 'consistent-mechanics', 'level-swing', 'contact-point']
);

-- 19. Inside-Outside Rapid Fire
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Inside-Outside Rapid Fire',
  'Develops quick recognition and adjustment between inside and outside pitches.',
  'Tosser sets up for front toss or soft toss
Call "in" or "out" just before releasing ball
Hitter must make instant mechanical adjustment
Inside: quick hands, pull with authority
Outside: let ball travel, drive opposite field
Rapid pace - 5 second rest between tosses
Complete 30 tosses with random locations
Progress to no verbal call - read location and react',
  null,
  15,
  null,
  'Hitting',
  'advanced',
  ARRAY['baseballs', 'bat', 'screen', 'net or field'],
  2,
  ARRAY['plate-coverage', 'hands-inside', 'all-fields', 'pitch-recognition']
);

-- 20. Timing Chain Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Timing Chain Drill',
  'Develops timing against live pitching with varying speeds to simulate game conditions.',
  'Pitcher throws from mound at varying speeds (50-100% effort)
Mix fastballs, changeups, and breaking balls
Hitter must time each pitch individually
Focus on seeing ball early and syncing stride timing
No called strikes - hitter decides what to swing at
3 rounds of 12 pitches each
Between rounds, discuss timing adjustments needed
Track hard contact percentage',
  null,
  20,
  null,
  'Hitting',
  'advanced',
  ARRAY['baseballs', 'bat', 'mound', 'full field setup'],
  3,
  ARRAY['tracking-ball', 'pitch-recognition', 'spin-recognition', 'mental-approach', 'consistent-approach']
);

-- 21. Barrel Control Fence Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Barrel Control Fence Drill',
  'Develops compact swing and barrel control by hitting close to a fence or net.',
  'Set up 2-3 feet from fence or net
Position tee in front of plate
Hitter must swing without hitting fence on backswing or follow-through
Forces compact, controlled swing path
Maintains proper hand path inside the ball
Take 20 swings without touching fence
Move back to normal distance and feel improved control
Notice increased bat speed with compact swing',
  null,
  15,
  null,
  'Hitting',
  'advanced',
  ARRAY['batting tee', 'balls', 'bat', 'fence or net close to hitter'],
  1,
  ARRAY['hands-inside', 'consistent-mechanics', 'bat-speed', 'advanced-mechanics']
);

-- 22. Mental Approach Simulation
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Mental Approach Simulation',
  'Simulates high-pressure game situations to develop mental toughness and clutch performance.',
  'Create specific game scenarios (bottom 7th, down by 1, runner on 3rd)
Add pressure elements (teammates watching, consequences for outs)
Pitcher throws competitive pitches
Hitter must execute proper approach for situation
Call balls and strikes - full at-bat
Rotate through 6 different pressure situations
Debrief after each at-bat on mental approach
Track success rate in pressure moments',
  null,
  25,
  null,
  'Hitting',
  'advanced',
  ARRAY['full field setup', 'baseballs', 'bat', 'bases'],
  3,
  ARRAY['mental-toughness', 'clutch-performance', 'mental-approach', 'situational-execution', 'plate-discipline']
);

-- 23. Launch Angle Tee Work
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Launch Angle Tee Work',
  'Optimizes swing path to create ideal launch angles for maximum exit velocity and distance.',
  'Set tee at lower-middle height (belt level)
Focus on slight upward path through zone (10-30 degree launch angle)
Back knee drives forward creating proper swing plane
Extend through ball with slight lift
Avoid excessive uppercut or chopping down
Use net markers or measure actual launch angles if possible
Hit 25 balls focusing on optimal launch angle
Track which swings produce line drives vs fly balls',
  null,
  15,
  null,
  'Hitting',
  'advanced',
  ARRAY['batting tee', 'baseballs', 'bat', 'launch angle measurement tool or net', 'targets'],
  1,
  ARRAY['power-development', 'driving-ball', 'advanced-mechanics', 'personalized-adjustments']
);

-- 24. Advanced Two-Strike Battle Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Advanced Two-Strike Battle Drill',
  'Elite two-strike approach focusing on spoiling pitches and winning pitcher-hitter battles.',
  'Every at-bat starts 0-2
Pitcher throws competitive mix - including waste pitches
Hitter must battle and extend at-bat
Foul balls off tough pitches
Recognize balls out of zone and take
Look to drive mistake pitches
At-bat ends with hit, walk, or strikeout
Complete 8-10 competitive 0-2 at-bats',
  null,
  20,
  null,
  'Hitting',
  'advanced',
  ARRAY['baseballs', 'bat', 'full field setup'],
  3,
  ARRAY['two-strike-approach', 'mental-toughness', 'plate-discipline', 'advanced-pitch-recognition', 'clutch-performance']
);

-- 25. Personalized Weakness Work
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Personalized Weakness Work',
  'Targets individual player''s specific mechanical weaknesses or pitch recognition issues for elite adjustments.',
  'Identify specific weakness through video or coach evaluation
Design drill specifically addressing that weakness
Examples: struggling with inside fastball, chasing breaking balls, casting hands
Create focused drill isolating that one element
High volume repetition of correct movement (50+ reps)
Video record progress throughout session
Apply correction in simulated at-bats
Track improvement metrics over multiple sessions',
  null,
  20,
  null,
  'Hitting',
  'advanced',
  ARRAY['video analysis (optional)', 'baseballs', 'bat', 'tee or live pitcher', 'net or field'],
  2,
  ARRAY['elite-adjustments', 'personalized-adjustments', 'consistent-approach', 'advanced-mechanics', 'mental-approach']
);

-- BASERUNNING DRILLS (25)

-- 1. Base Location Treasure Hunt
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Base Location Treasure Hunt',
  'An introductory drill where young players learn the location and names of each base through a fun treasure hunt game.',
  'Step 1: Set up bases in proper diamond configuration with coach standing at pitcher''s mound
Step 2: Place a colored cone or marker at each base (different color for each)
Step 3: Call out "Find home plate!" and have players run to home
Step 4: Once all players reach home, call out "Find first base!"
Step 5: Continue calling out each base in random order
Step 6: Increase speed of calls as players become familiar
Step 7: Finish by having players run around all bases in correct order',
  null,
  10,
  null,
  'Baserunning',
  'beginner',
  ARRAY['4 bases', 'colored cones or markers'],
  1,
  ARRAY['base-locations', 'running-direction']
);

-- 2. Right Way Around
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Right Way Around',
  'Teaches the correct counterclockwise direction around the bases using visual cues and repetition.',
  'Step 1: Place cones creating a clear path from home to first to second to third
Step 2: Line up players at home plate
Step 3: Demonstrate running the correct direction around bases
Step 4: Have players walk slowly around bases following the cone path
Step 5: After each player completes one lap, have them jog the next lap
Step 6: Remove cones and have players run without visual guides
Step 7: Create a "follow the leader" chain where players run one after another
Step 8: End with a celebration lap around all bases',
  null,
  8,
  null,
  'Baserunning',
  'beginner',
  ARRAY['4 bases', 'cones'],
  2,
  ARRAY['running-direction', 'base-locations', 'touching-bases']
);

-- 3. Stomp the Base
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Stomp the Base',
  'Players practice touching each base properly with their foot while running, developing muscle memory for base contact.',
  'Step 1: Set up bases with a poly spot or marker on the front corner of each base
Step 2: Demonstrate touching the base with either foot on the marker
Step 3: Have players start at home and walk to first, touching the marker
Step 4: Emphasize making an audible "stomp" sound when touching base
Step 5: Progress from walking to jogging to running at game speed
Step 6: Have players practice rounding bases while still touching them
Step 7: Play "Red Light, Green Light" where players must stop with foot on base when you call "Red Light"
Step 8: End with full-speed run around all bases, ensuring each is touched',
  null,
  12,
  null,
  'Baserunning',
  'beginner',
  ARRAY['4 bases', 'poly spots or floor markers'],
  2,
  ARRAY['touching-bases', 'base-locations', 'basic-stopping']
);

-- 4. Stop Sign Challenge
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Stop Sign Challenge',
  'Teaches young players to stop on a base when instructed, developing body control and the ability to hold their position.',
  'Step 1: Line up players at home plate
Step 2: Explain that when you blow the whistle, they must stop at the nearest base
Step 3: Have first player start running the bases
Step 4: Blow whistle randomly - player must stop at next base
Step 5: Once stopped, player must keep both feet on or touching the base
Step 6: After 3 seconds, blow whistle again for player to continue
Step 7: Rotate through all players multiple times
Step 8: Progress to having multiple players running simultaneously',
  null,
  10,
  null,
  'Baserunning',
  'beginner',
  ARRAY['4 bases', 'whistle or stop sign'],
  2,
  ARRAY['basic-stopping', 'touching-bases', 'base-locations']
);

-- 5. Run Through First Base Relay
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Run Through First Base Relay',
  'Players learn to run through first base rather than stopping on it, using a relay race format to make it competitive and fun.',
  'Step 1: Set up home plate and first base with a cone 8-10 feet past first base
Step 2: Place another cone on foul territory side for players to circle back
Step 3: Divide players into two equal teams by speed
Step 4: First player from each team starts at home plate
Step 5: On "Go," players sprint to first, run through to the cone past first
Step 6: Players turn right into foul territory, circle the cone, and return to tag next teammate
Step 7: Continue relay until all players complete their turn
Step 8: Emphasize that the bag is not a stopping point but part of the running path',
  null,
  15,
  null,
  'Baserunning',
  'beginner',
  ARRAY['home plate', 'first base', '2 cones'],
  4,
  ARRAY['run-through-first', 'touching-bases', 'knowing-advance']
);

-- 6. Banana Turn Basics
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Banana Turn Basics',
  'Teaches the proper curved path (banana shape) to run when rounding first base and continuing to second, optimizing speed and angle.',
  'Step 1: Set up cones in a curved banana shape from home plate, curving out before first, then back toward second
Step 2: Demonstrate the path: start straight, curve out about 3 feet before first base, touch inside corner of first, curve back toward second
Step 3: Have players walk the path following the cones
Step 4: Remove every other cone and have players jog the path
Step 5: Remove all cones and have players run the remembered path at full speed
Step 6: Add a coach at first base calling "one base" or "two bases"
Step 7: Players decide whether to continue to second or stop at first based on call
Step 8: Time players and emphasize that proper curve is faster than sharp angles',
  null,
  12,
  null,
  'Baserunning',
  'intermediate',
  ARRAY['bases', '6-8 cones', 'chalk or field markers'],
  2,
  ARRAY['banana-turn', 'rounding-bases', 'run-through-first', 'knowing-advance']
);

-- 7. Slide Into It Introduction
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Slide Into It Introduction',
  'Safe introduction to sliding technique using progressive steps from static positions to controlled sliding at reduced speed.',
  'Step 1: Start with players sitting on ground demonstrating "figure 4" position: one leg extended, other bent underneath
Step 2: Have players hold a bat or pool noodle above their head with both hands
Step 3: From standing, players take 3 steps then sit into figure 4 position (no sliding yet)
Step 4: Progress to 5 steps then sitting down into position on wet grass or sliding mat
Step 5: Add gentle forward momentum with a short jog before sitting back
Step 6: Emphasize landing on bottom/side, not back
Step 7: Practice both left leg extended and right leg extended
Step 8: Once comfortable, add base as target',
  null,
  20,
  null,
  'Baserunning',
  'beginner',
  ARRAY['bases', 'sliding mat or cardboard', 'water to wet grass'],
  1,
  ARRAY['sliding-intro', 'sliding-technique', 'basic-stopping']
);

-- 8. Lead-Off Basics
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Lead-Off Basics',
  'Introduces proper lead-off technique from first base, teaching distance, stance, and getting back safely.',
  'Step 1: Place cones at 6 feet, 8 feet, and 10 feet from first base toward second
Step 2: Teach proper stance: feet shoulder-width apart, knees bent, weight forward, hands ready
Step 3: Have players practice taking lead to 6-foot cone
Step 4: Coach calls "Back!" and players dive or scramble back to first
Step 5: Progress to 8-foot distance, then 10-foot
Step 6: Introduce shuffle steps: left foot toward second, right foot follows
Step 7: Practice lead, shuffle, shuffle, get back drill
Step 8: Time players on getting back to base after lead-off',
  null,
  15,
  null,
  'Baserunning',
  'intermediate',
  ARRAY['bases', 'cones for distance markers'],
  2,
  ARRAY['leadoffs', 'knowing-advance', 'basic-stopping']
);

-- 9. Pitcher Watch Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pitcher Watch Drill',
  'Players learn to read pitcher movements to determine when to extend lead, when to freeze, and when to get back to the base.',
  'Step 1: Assign one player as pitcher, others as baserunners at first
Step 2: Pitcher performs various moves: looking at first, looking home, stepping off, coming set, delivering to plate
Step 3: Runners take their lead and must react correctly to each pitcher move
Step 4: If pitcher looks at first, runner freezes in ready position
Step 5: If pitcher steps off, runner returns to base
Step 6: If pitcher delivers home, runner takes secondary lead
Step 7: Coach calls "safe" or "out" based on runner reactions
Step 8: Rotate roles so all players experience both pitcher and runner perspectives',
  null,
  12,
  null,
  'Baserunning',
  'intermediate',
  ARRAY['bases', 'glove for "pitcher"'],
  3,
  ARRAY['reading-pitchers', 'leadoffs', 'knowing-advance']
);

-- 10. Steal Start Mechanics
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Steal Start Mechanics',
  'Teaches the explosive first three steps of stealing a base, focusing on footwork, body position, and maximum acceleration.',
  'Step 1: Mark a cone 15 feet from first base toward second
Step 2: Teach three types of steal starts: jab step, crossover step, drop step
Step 3: For crossover: on pitcher''s move home, cross right foot over left and explode toward second
Step 4: Have players practice each start type 5 times from standing lead position
Step 5: Emphasize low body position, forward lean, driving knees, and arm drive
Step 6: Time players from first movement to reaching the 15-foot cone
Step 7: Practice "peek" technique: after 3 steps, quick glance to locate ball at plate
Step 8: Add competition: who reaches cone fastest with proper form',
  null,
  18,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'cones', 'stopwatch'],
  2,
  ARRAY['stealing-basics', 'leadoffs', 'reading-pitchers', 'maximizing-speed']
);

-- 11. Round All Bases Speed Circuit
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Round All Bases Speed Circuit',
  'Develops proper technique for rounding all bases at maximum speed, simulating an inside-the-park home run or triple.',
  'Step 1: Place arc-guide cones 3-4 feet outside baseline at each base
Step 2: Players start at home plate in batting stance
Step 3: On "Go," simulate swing then explode from box
Step 4: Round first base touching inside corner, following arc to second
Step 5: Round second base aggressively, looking for third base coach
Step 6: Round third base and sprint home
Step 7: Time each player''s full circuit
Step 8: Rest 2 minutes between attempts, perform 3-4 repetitions
Step 9: Focus on one base at a time, correcting form before next attempt',
  null,
  15,
  null,
  'Baserunning',
  'intermediate',
  ARRAY['4 bases', 'stopwatch', 'cones for arc guides'],
  2,
  ARRAY['rounding-bases', 'banana-turn', 'touching-bases', 'maximizing-speed']
);

-- 12. Pop-Up Slide Practice
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pop-Up Slide Practice',
  'Advanced sliding technique where player slides into base then immediately pops up to standing position, ready to advance on overthrow.',
  'Step 1: Review basic slide technique on wet grass or mat
Step 2: Demonstrate pop-up slide: slide on bent leg, keep top leg bent slightly
Step 3: As player reaches base, top foot contacts bag and provides push
Step 4: Player uses momentum and leg drive to pop up to standing position
Step 5: Start with static practice: sit in slide position, then pop up
Step 6: Progress to slow jog, slide, pop-up
Step 7: Add scenario: slide into second, pop up, advance to third on overthrow
Step 8: Time players: from 20 feet away to slide, pop-up, run 20 feet past base',
  null,
  20,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'sliding mat', 'water for grass'],
  2,
  ARRAY['pop-up-slide', 'sliding-technique', 'aggressive-running', 'knowing-advance']
);

-- 13. Secondary Lead Reaction
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Secondary Lead Reaction',
  'Teaches runners to take an aggressive secondary lead as the pitcher delivers, then react correctly based on where the ball is hit.',
  'Step 1: Set up with runners on first, pitcher, hitter, and outfielders
Step 2: Runner takes primary lead (10-12 feet) as pitcher comes set
Step 3: As pitcher delivers, runner takes 2-3 shuffle steps toward second (secondary lead)
Step 4: Coach hits ball to various locations: infield, shallow outfield, deep outfield
Step 5: Runner reads ball and reacts: infield = back to first, outfield = advance
Step 6: If ball goes to outfield, runner must reach second before outfielder has ball
Step 7: Practice all scenarios: ground balls, line drives, fly balls
Step 8: Add base coach giving verbal commands to simulate game situations',
  null,
  15,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'balls', 'gloves'],
  4,
  ARRAY['secondary-leads', 'reading-situations', 'knowing-advance', 'aggressive-running']
);

-- 14. First-to-Third Decision Making
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'First-to-Third Decision Making',
  'Live situational drill teaching aggressive baserunning from first to third on singles, emphasizing reads, decisions, and communication.',
  'Step 1: Set up full defense with focus on outfielders and middle infielders
Step 2: Place runners at first base with proper lead
Step 3: Coach hits singles to various outfield locations
Step 4: Runner reads ball location and makes decision: stop at second or go to third
Step 5: Third base coach gives signals (stop or continue) as runner rounds second
Step 6: Runner must decide before reaching second base whether to continue
Step 7: General rule: if you reach second before outfielder has ball, continue to third
Step 8: Track success rate: safe at third, out at third, held at second
Step 9: Discuss each attempt: was decision correct based on ball location and fielder position?',
  null,
  20,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'balls', 'gloves', 'full defensive alignment'],
  6,
  ARRAY['first-to-third', 'reading-situations', 'secondary-leads', 'aggressive-running', 'advanced-reads']
);

-- 15. Steal Execution vs. Live Defense
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Steal Execution vs. Live Defense',
  'Full simulation of stealing second base with live pitcher, catcher, and middle infielders, developing timing, speed, and technique under game conditions.',
  'Step 1: Set up pitcher, catcher with full gear, and middle infielders at second base
Step 2: Runner takes lead from first base, reads pitcher
Step 3: Pitcher uses slide-step or regular delivery to plate
Step 4: Runner breaks for second on pitcher''s first movement home
Step 5: Catcher receives and throws to second base
Step 6: Time runner from first movement to touching second base (goal: under 3.5 seconds)
Step 7: Also time pitcher''s delivery to plate and catcher''s pop time
Step 8: Track success rate: safe vs. out at second
Step 9: Rotate all players through runner, pitcher, catcher positions',
  null,
  25,
  null,
  'Baserunning',
  'advanced',
  ARRAY['full catcher gear', 'bases', 'balls', 'gloves', 'stopwatch'],
  6,
  ARRAY['steal-execution', 'stealing-basics', 'reading-pitchers', 'sliding-technique', 'maximizing-speed']
);

-- 16. Tag-Up Timing on Fly Balls
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Tag-Up Timing on Fly Balls',
  'Teaches runners proper tag-up technique on fly balls, including when to go, how to time the catch, and how to maximize lead while staying safe.',
  'Step 1: Place runners at second and third base
Step 2: Coach hits fly balls of varying depth to outfield
Step 3: Runner must tag base with one foot, watch outfielder catch ball
Step 4: On catch, runner explodes toward next base
Step 5: Practice shallow fly balls (stay at base), medium depth (go halfway), deep fly balls (tag and go)
Step 6: Emphasize leaving base the instant ball touches outfielder''s glove
Step 7: Add base coach to give verbal "Go!" or "No!" commands
Step 8: Time runner from catch to reaching next base
Step 9: Rotate runners through second and third base tag-up situations',
  null,
  18,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'balls', 'gloves', 'fungo bat'],
  4,
  ARRAY['reading-flyballs', 'knowing-advance', 'reading-situations', 'aggressive-running']
);

-- 17. Delayed Steal Techniques
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Delayed Steal Techniques',
  'Teaches the delayed steal, where runner breaks for next base after catcher has received the ball, exploiting poor defensive positioning or lack of attention.',
  'Step 1: Set up pitcher, catcher, and middle infielders
Step 2: Runner takes normal lead from first base
Step 3: As catcher receives pitch, runner reads catcher''s body language and middle infield positioning
Step 4: If catcher is lazy throwing back to pitcher or infielders are out of position, runner breaks for second
Step 5: Runner takes 2-3 hard steps beyond normal lead, then explodes to second
Step 6: Practice scenarios: catcher looking down, infielders playing deep, no one covering second
Step 7: Catcher practices quick reaction throw to second
Step 8: Track success rate and discuss when delayed steal is appropriate
Step 9: Progress to delayed steal from third to home on wild pitch or passed ball',
  null,
  20,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'balls', 'catcher gear', 'gloves'],
  5,
  ARRAY['advanced-stealing', 'reading-situations', 'elite-baserunning-iq', 'aggressive-running']
);

-- 18. Scoring from Second Base
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Scoring from Second Base',
  'Aggressive baserunning drill teaching runners to score from second base on singles, reading outfield positions and making split-second decisions.',
  'Step 1: Set up full outfield defense and middle infielders
Step 2: Place runner at second base with proper lead
Step 3: Coach hits singles to various outfield locations
Step 4: Runner must decide immediately: can I score or hold at third?
Step 5: Factors: ball location, outfielder''s arm strength, how quickly fielder reaches ball
Step 6: Runner watches third base coach but makes own read simultaneously
Step 7: Practice rounding third at full speed - coach decides "commit home" or "retreat to third"
Step 8: If throw comes home, runner must slide
Step 9: Track: scored safely, out at home, held at third',
  null,
  22,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'balls', 'gloves', 'full outfield'],
  6,
  ARRAY['scoring-second', 'aggressive-running', 'reading-situations', 'advanced-reads', 'sliding-technique']
);

-- 19. Reading Ground Balls in the Infield
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Reading Ground Balls in the Infield',
  'Teaches runners to read ground balls to infielders and react correctly - when to advance, when to retreat, and when to freeze.',
  'Step 1: Set up full infield with runners at first and second bases
Step 2: Coach hits ground balls to various infield positions
Step 3: Runner at first reads: ground ball in front (advance), ground ball behind (stay), double play depth (freeze or return)
Step 4: Runner at second: ground ball to left side (advance to third), ground ball to right side (hold or return)
Step 5: Practice line drives: runner must freeze until ball lands or is caught
Step 6: Add scenarios: runner on third with ground ball hit
Step 7: Discuss each scenario: was the decision correct?
Step 8: Emphasize reading ball immediately off bat',
  null,
  15,
  null,
  'Baserunning',
  'intermediate',
  ARRAY['bases', 'balls', 'gloves', 'infielders'],
  5,
  ARRAY['reading-situations', 'knowing-advance', 'aggressive-running', 'elite-baserunning-iq']
);

-- 20. Leadoff from Third Base
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Leadoff from Third Base',
  'Specialized drill for taking proper lead from third base, reading wild pitches/passed balls, and scoring on ground balls or fly balls.',
  'Step 1: Runner takes lead from third base in foul territory
Step 2: Lead should be 12-15 feet down the line, allowing clear view of pitcher and catcher
Step 3: Practice walking lead: as pitcher delivers, runner takes 3-4 shuffle steps toward home
Step 4: On wild pitch or passed ball, runner must decide immediately: can I score?
Step 5: Practice scoring on ground balls: read infield position, go on contact with two outs
Step 6: Practice staying on ground balls with infield drawn in (less than two outs)
Step 7: Add sacrifice fly scenarios: proper tag-up distance
Step 8: Runner must get back safely on pickoff throws from catcher',
  null,
  15,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'balls', 'catcher gear'],
  3,
  ARRAY['aggressive-running', 'reading-situations', 'elite-baserunning-iq', 'scoring-second', 'advanced-reads']
);

-- 21. Headfirst Slide Progression
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Headfirst Slide Progression',
  'Teaches advanced headfirst sliding technique for diving back to bases on pickoffs and advancing on close plays, with strong emphasis on safety.',
  'Step 1: **Important:** Review league rules - many youth leagues prohibit headfirst slides advancing to bases
Step 2: Start with static practice: lay on ground in proper headfirst position (hands extended, head up, body flat)
Step 3: From kneeling position, fall forward into mat in headfirst position
Step 4: Progress to slow jog, then dive onto mat
Step 5: Emphasize hands hit first, then chest and stomach slide
Step 6: Practice diving back to first base on pickoff attempts
Step 7: Time the dive back: must be quicker than throw from pitcher
Step 8: Add live pickoff scenarios with pitcher and first baseman
Step 9: If league allows, practice headfirst slide advancing to second (advanced players only)',
  null,
  25,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'sliding mat', 'water', 'towels'],
  2,
  ARRAY['headfirst-slides', 'advanced-stealing', 'elite-baserunning-iq', 'maximizing-speed']
);

-- 22. Base Running IQ Scenarios
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Base Running IQ Scenarios',
  'Comprehensive situational baserunning drill covering multiple game scenarios, developing decision-making skills and baseball IQ.',
  'Step 1: Set up full defense with various game situations
Step 2: Coach calls out scenario: "Runner on second, one out, ball hit to right field, go!"
Step 3: Runner must execute correct baserunning decision for that scenario
Step 4: Scenarios include: bases loaded, no outs; runner on first, two outs; runner on third, infield in
Step 5: Add ball location variables: gap hits, line drives, ground balls to specific positions
Step 6: Include less common scenarios: runner interference, infield fly rule situations
Step 7: After each scenario, discuss why decision was correct or incorrect
Step 8: Keep score: runners vs. defense - did runner make it or get out?
Step 9: Rotate players through all base positions',
  null,
  30,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'balls', 'gloves', 'full defense'],
  8,
  ARRAY['elite-baserunning-iq', 'reading-situations', 'advanced-reads', 'aggressive-running', 'knowing-advance']
);

-- 23. Speed Development Circuit
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Speed Development Circuit',
  'Dedicated speed and acceleration training focused on improving raw baserunning speed through proper running mechanics and explosive power.',
  'Step 1: Warm up with dynamic stretching: leg swings, high knees, butt kicks
Step 2: Station 1: 60-foot sprints from home to first (5 repetitions)
Step 3: Station 2: 90-foot sprints from first to second (5 repetitions)
Step 4: Station 3: 180-foot sprints around bases from home to second (3 repetitions)
Step 5: Station 4: Resistance band sprints if available (10 repetitions of 30 feet)
Step 6: Focus on proper sprint mechanics: knee drive, arm pump, forward lean
Step 7: Rest 1:1 ratio (run 10 seconds, rest 10 seconds)
Step 8: Time each player''s fastest 60-foot and 90-foot times
Step 9: Track improvement week to week',
  null,
  20,
  null,
  'Baserunning',
  'intermediate',
  ARRAY['bases', 'cones', 'stopwatch', 'resistance bands (optional)'],
  2,
  ARRAY['maximizing-speed', 'aggressive-running', 'run-through-first', 'steal-execution']
);

-- 24. Two-Base Advancement Mandate
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Two-Base Advancement Mandate',
  'Practice drill mandating all runners advance two bases on every outfield single, developing aggressive mentality and quick decision-making.',
  'Step 1: Set up live hitting or coach-pitched scenarios with full defense
Step 2: Announce rule: "Every single to outfield, runner goes two bases"
Step 3: Runner at first must reach third; runner at second must score
Step 4: This removes hesitation and forces aggressive secondary leads
Step 5: Defense tries to throw out aggressive runners
Step 6: Track outcomes: safe at third/home, out attempting third/home
Step 7: After 15 reps, analyze: which ball locations allowed successful two-base advancement?
Step 8: Discuss why delayed reads result in one-base advancement
Step 9: Return to normal baserunning with new aggressive mindset',
  null,
  25,
  null,
  'Baserunning',
  'advanced',
  ARRAY['bases', 'balls', 'gloves', 'full outfield'],
  6,
  ARRAY['aggressive-running', 'first-to-third', 'scoring-second', 'secondary-leads', 'advanced-reads']
);

-- 25. Championship Baserunning Relay
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Championship Baserunning Relay',
  'Team relay race incorporating multiple baserunning skills appropriate for each age group, creating competitive fun while reinforcing techniques.',
  'Step 1: Divide team into two equal groups by speed and skill
Step 2: Each team lines up at home plate
Step 3: **Shetland/Pinto:** Run all bases, touch each one, return home
Step 4: **Mustang:** Run through first, round first to second, slide into second, run home
Step 5: **Bronco/Pony:** Take lead from first, steal second, round second to third, slide into third, score home
Step 6: **Colt+:** Simulated game scenario with random coach calls (tag up, steal, first-to-third, etc.)
Step 7: First player completes circuit, tags next teammate
Step 8: Continue until all players complete their turn
Step 9: Winning team must demonstrate all techniques correctly (speed + technique = winner)',
  null,
  15,
  null,
  'Baserunning',
  'beginner',
  ARRAY['bases', 'balls', 'gloves', 'cones'],
  8,
  ARRAY['base-locations', 'running-direction', 'touching-bases', 'run-through-first', 'banana-turn', 'sliding-intro', 'leadoffs', 'stealing-basics', 'sliding-technique', 'rounding-bases', 'steal-execution', 'secondary-leads', 'pop-up-slide', 'aggressive-running', 'elite-baserunning-iq', 'advanced-reads']
);

-- FIELDING DRILLS (25)

-- 1. Alligator Catch Basics
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Alligator Catch Basics',
  'Teaches the fundamental two-hand catching technique using the "alligator" method where hands clap together like an alligator''s mouth.',
  'Position players in a line facing the coach, 10-15 feet away
Demonstrate the alligator catch: glove hand is bottom jaw, throwing hand is top jaw
Coach underhand tosses soft balls directly to each player''s chest
Players catch with both hands, emphasizing the clapping motion
Have players say "chomp" as they catch to reinforce the concept
Progress to gentle ground balls that players field at their feet
After 5 successful catches, move players back 2-3 feet
End with praise for proper two-hand technique',
  null,
  10,
  null,
  'Fielding',
  'beginner',
  ARRAY['softballs or soft training balls', 'gloves'],
  1,
  ARRAY['two-hand-catch', 'alligator-catch', 'get-in-front']
);

-- 2. Red Light, Green Light Fielding
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Red Light, Green Light Fielding',
  'Combines movement with fielding fundamentals, teaching players to get in front of the ball while maintaining focus in a fun, game-like format.',
  'Set up cones 30 feet from starting line
Players line up at starting line in ready position
On "green light," coach rolls ball slowly; players move forward and field it
On "red light," players must freeze in ready position
Players must use proper alligator catch when fielding
After successful catch, player returns ball and goes to back of line
First player to reach cone with 3 successful catches wins
Repeat 2-3 rounds, increasing ball speed slightly',
  null,
  12,
  null,
  'Fielding',
  'beginner',
  ARRAY['gloves', '5-8 soft training balls', 'cones'],
  3,
  ARRAY['get-in-front', 'two-hand-catch', 'ready-position', 'footwork-basic']
);

-- 3. Partner Flip Drills
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Partner Flip Drills',
  'Develops soft hands and basic throwing mechanics through short-distance partner work with emphasis on proper grip and release.',
  'Pair players 8-10 feet apart facing each other
Demonstrate proper four-seam grip on the baseball
Players underhand flip to partner, focusing on grip and follow-through
Partners catch with two hands and check their grip before returning
After 10 successful catches, move back to 12 feet
Progress to overhead tosses with same emphasis on grip
Each pair completes 20 total exchanges
Finish with players showing coach their proper grip',
  null,
  8,
  null,
  'Fielding',
  'beginner',
  ARRAY['gloves', 'baseballs'],
  2,
  ARRAY['basic-throw', 'two-hand-catch', 'accurate-throws']
);

-- 4. Triangle Ground Ball Progression
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Triangle Ground Ball Progression',
  'Develops ground ball fundamentals and footwork through progressive difficulty levels in a triangle formation that keeps players active.',
  'Set up three cones in triangle formation 25 feet apart
Position one player at each cone with multiple balls at one station
Player 1 rolls ground ball to Player 2, who fields and throws to Player 3
Player 3 catches and rolls to Player 1, continuing the pattern
After 5 minutes, progress to bounced throws instead of rolls
Add proper fielding position: feet shoulder-width, glove low, butt down
Players rotate positions every 2 minutes
End with competition: which triangle can complete 20 successful reps first',
  null,
  15,
  null,
  'Fielding',
  'beginner',
  ARRAY['gloves', 'baseballs', '3 cones'],
  3,
  ARRAY['ground-balls', 'footwork-basic', 'ready-position', 'accurate-throws', 'two-hand-catch']
);

-- 5. Pop Fly Tracking
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pop Fly Tracking',
  'Teaches proper technique for tracking and catching pop-ups and fly balls with emphasis on getting under the ball and using two hands.',
  'Players start in ready position facing coach 20 feet away
Coach tosses high pop-ups with varying trajectories
Player calls "I got it!" and moves to position under the ball
Catch above eye level with thumbs together for high balls
Emphasize getting to spot early and waiting for ball
Progress to toss over player''s head requiring them to turn and find it
Add communication drill: pairs of players, one calls "mine" or "yours"
Finish with competition catching 5 consecutive pops',
  null,
  12,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'tennis balls'],
  1,
  ARRAY['overhead-catch', 'two-hand-catch', 'footwork-basic', 'communication']
);

-- 6. Four-Corner Infield Fundamentals
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Four-Corner Infield Fundamentals',
  'Position-specific drill teaching proper mechanics at each infield position including footwork, throws, and transitions.',
  'Set up bases in regulation infield diamond or use cones
Position one player at each base plus one at shortstop
Coach hits or throws ground balls to each position in rotation
Players field and make appropriate throw to first base
After throw, player sprints to back of line at their position
Rotate positions every 5 minutes to experience each spot
Add double-play feeds: shortstop and second base work on flips
Final 5 minutes: simulate game situations with coach calling plays',
  null,
  20,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'bases or cones for four corners'],
  5,
  ARRAY['position-specific', 'footwork-basic', 'ground-balls', 'accurate-throws', 'proper-throws-bases']
);

-- 7. Drop Step Drill for Outfielders
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Drop Step Drill for Outfielders',
  'Teaches outfielders the essential drop-step technique for tracking fly balls hit over their head, improving their ability to cover ground efficiently.',
  'Line up outfielders in ready position facing coach
Coach points left or right to indicate direction
Players execute drop step: turn and run on proper foot
After drop step, player sprints 15-20 feet and looks back
Coach throws ball over player''s original position
Player tracks, adjusts, and makes catch while moving
Practice both left and right drop steps equally
Progress to coach calling "left" or "right" as they throw',
  null,
  15,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'cones'],
  1,
  ARRAY['drop-step', 'drop-step-technique', 'overhead-catch', 'reading-bat', 'covering-ground']
);

-- 8. Catcher Block and Recovery
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Catcher Block and Recovery',
  'Develops proper blocking technique for catchers with emphasis on keeping balls in front and quick recovery to prevent runners from advancing.',
  'Catcher in full gear, in proper receiving stance at home plate
Coach 15 feet away with L-screen tosses balls in dirt
Catcher drops to knees, chin tucked, glove between legs
Block ball, keeping it in front, then quickly recover to throwing position
Start with straight-on blocks, then progress to left and right
Add element: after block, catcher picks ball and throws to second base
Use tennis balls for young catchers to reduce fear
Complete 20 blocks: 10 center, 5 left, 5 right',
  null,
  15,
  null,
  'Fielding',
  'intermediate',
  ARRAY['catcher''s gear', 'baseballs', 'tennis balls', 'home plate', 'L-screen'],
  1,
  ARRAY['blocking-catcher', 'blocking', 'receiving', 'quick-hands-feet', 'position-specific']
);

-- 9. Double Play Feeds and Turns
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Double Play Feeds and Turns',
  'Teaches middle infielders the footwork and timing required for executing double plays, including various feed techniques and turning methods.',
  'Set up second base with shortstop, second baseman, and first baseman
Coach rolls or hits to shortstop who feeds to second base
Second baseman practices different footwork techniques for the turn
Start slow focusing on proper feeds and footwork
Progress to game speed with emphasis on quick transfer
Switch: second baseman fields and feeds to shortstop
Add element: runner at first (not sliding initially) for timing
Final round: full speed with slides (older divisions only)',
  null,
  18,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'bases'],
  3,
  ARRAY['double-play-footwork', 'advanced-double-plays', 'infield-footwork', 'double-plays', 'quick-release', 'position-specific']
);

-- 10. Cutoff and Relay Game Situations
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Cutoff and Relay Game Situations',
  'Comprehensive drill teaching proper cutoff and relay positioning, communication, and execution for various game scenarios from the outfield.',
  'Position full defense: 4 infielders and 3 outfielders (minimum)
Coach hits or throws to outfield positions simulating base hits
Infielders align as proper cutoff men calling "here, here, here"
Outfielders field and throw to cutoff man with strong, accurate throw
Cutoff man decides to cut or let it through based on coach''s call
Practice scenarios: single to right (runner on first), double to gap, etc.
Rotate all players through different positions
End with competition: defense vs. coach placing runners',
  null,
  20,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'full set of bases', 'cones for outfield positions'],
  6,
  ARRAY['cutoff-relay', 'relay-throws', 'communication', 'backing-up', 'outfield-throws', 'decision-making', 'position-mastery']
);

-- 11. First Base Scoops and Stretches
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'First Base Scoops and Stretches',
  'Develops first baseman''s ability to scoop short hops and low throws while maintaining contact with the base and proper footwork.',
  'First baseman at base, partner 30-40 feet away simulating infield throw
Partner throws variety of throws: high, low, left, right of base
First baseman practices footwork to find best foot for base
Emphasize scooping motion on low throws - glove stays down
Progress to short hops intentionally thrown in dirt
Add left and right stretches requiring player to choose correct foot
Time drill: how many successful scoops in 90 seconds
Rotate players so everyone experiences first base position',
  null,
  12,
  null,
  'Fielding',
  'beginner',
  ARRAY['gloves', 'baseballs', 'first base or cone', 'tennis balls for beginners'],
  2,
  ARRAY['position-specific', 'ground-balls', 'footwork-basic', 'infield-footwork', 'two-hand-catch']
);

-- 12. Charging Slow Rollers
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Charging Slow Rollers',
  'Teaches infielders how to aggressively charge slow ground balls and execute quick, accurate throws using various techniques including bare-hand plays.',
  'Infielders start at normal depth in ready position
Coach rolls slow ground balls requiring players to charge hard
Players attack ball under control, field with glove, and make strong throw
Progress to bare-hand technique: scoop and throw in one motion
Emphasize proper arm angle - short, quick release
Add bases and runners for pressure situations
Third basemen and first basemen practice most (common scenarios)
Final round: competition for quickest charge-to-release time',
  null,
  15,
  null,
  'Fielding',
  'advanced',
  ARRAY['gloves', 'baseballs', 'bases'],
  2,
  ARRAY['charging-slow', 'quick-release', 'infield-footwork', 'decision-making', 'quick-hands-feet', 'position-mastery']
);

-- 13. Backhand Plays Progression
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Backhand Plays Progression',
  'Develops the backhand technique for infielders on balls hit to their glove side, teaching proper footwork and glove positioning for this challenging play.',
  'Players line up at shortstop position (or normal infield spot)
Coach rolls or hits balls 3-5 steps to glove side
Players work on crossover step and backhand glove position
Start stationary: plant, reach, field with back of glove facing up
Progress to moving: crossover step, plant, field, throw
Emphasize keeping glove low and fingers pointed down
Add throws to first base from backhand position
Competition: pairs compete for cleanest backhand plays',
  null,
  15,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'bases'],
  2,
  ARRAY['backhand-plays', 'infield-footwork', 'advanced-footwork', 'position-mastery', 'ground-balls']
);

-- 14. Outfield Communication Three-Man
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Outfield Communication Three-Man',
  'Teaches outfielders proper communication protocols for calling fly balls, backing up teammates, and avoiding collisions on balls in gaps.',
  'Position three outfielders in standard alignment with cones
Coach hits or throws fly balls to various positions and gaps
Outfielders call "Mine," "You take it," or "Go, go, go"
Player catching must call at least three times while approaching
Other outfielders call "I''m here" when backing up
Practice priority system: center fielder has priority on all balls
Hit balls directly at players and in gaps between positions
Add element: outfielders start with backs turned, must communicate to find ball',
  null,
  15,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'cones for outfield positions'],
  3,
  ARRAY['outfield-communication', 'communication', 'backing-up', 'overhead-catch', 'covering-ground', 'defensive-leadership']
);

-- 15. Bunt Defense Rotation
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Bunt Defense Rotation',
  'Complete team bunt defense drill teaching responsibilities, communication, and execution for various bunt situations with runners on base.',
  'Position full infield defense with catcher
Coach explains scenarios: runner on first, runners on first and second
Pitcher, first, third, and catcher crash for bunts
Second base covers first, shortstop covers second
Coach bunts ball to different locations
Player fielding calls "I got it" and announces throw destination
Practice all scenarios: bunt to pitcher, first base line, third base line
Add runners to create game pressure (walking speed initially)',
  null,
  18,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'bases', 'bat for coach'],
  5,
  ARRAY['bunt-defense', 'communication', 'charging-slow', 'decision-making', 'position-mastery', 'quick-release', 'defensive-leadership']
);

-- 16. Quick Hands Glove Work
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Quick Hands Glove Work',
  'Improves hand-eye coordination and glove work through rapid-fire short-distance exchanges that develop soft hands and quick transfers.',
  'Partners stand 8-10 feet apart in athletic stance
One partner rapidly tosses balls varying height and location
Receiving partner catches and immediately returns ball
Complete 20 catches, then switch roles
Progress to tennis ball bounces off ground
Add challenge: receiving player closes eyes until ball is released
Speed round: how many catches in 30 seconds
Finish with competitive pairs tournament',
  null,
  10,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'tennis balls'],
  2,
  ARRAY['quick-hands-feet', 'two-hand-catch', 'ground-balls', 'accurate-throws', 'footwork-basic']
);

-- 17. Catcher Throwing to Bases
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Catcher Throwing to Bases',
  'Develops catcher''s throwing mechanics, footwork, and accuracy for throws to all bases with emphasis on quick release and proper technique.',
  'Catcher in full gear at home plate, middle infielder covering base
Coach or partner simulates pitcher throwing to catcher
Catcher receives, transfers, and throws to second base
Focus on footwork: right foot replaces left, gain ground toward target
Time from catch to base: goal is under 2.0 seconds for older divisions
Practice throws to third base (pickoffs) and first base
Add element: coach varies pitch locations (inside, outside, high, low)
Competition round: accuracy and speed combined score',
  null,
  20,
  null,
  'Fielding',
  'intermediate',
  ARRAY['catcher''s gear', 'baseballs', 'bases', 'stopwatch'],
  2,
  ARRAY['throwing-bases-catcher', 'quick-release', 'receiving', 'quick-hands-feet', 'position-specific', 'accurate-throws']
);

-- 18. Do or Die Outfield Play
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Do or Die Outfield Play',
  'Teaches outfielders the aggressive "do or die" play where they charge ground balls at full speed to make strong throws home, accepting higher risk for critical outs.',
  'Outfielder starts at normal depth, bases loaded scenario explained
Coach hits or rolls base hit to outfield requiring charge
Outfielder sprints toward ball at full speed
Field ball on glove side while running, transition to throw
Throw should be on line to home plate (cone or catcher)
Emphasize all-out effort - if ball gets by, runner scores anyway
Practice from all three outfield positions
Add pressure: timed drill with "runner" trying to score',
  null,
  15,
  null,
  'Fielding',
  'advanced',
  ARRAY['gloves', 'baseballs', 'bases', 'cones'],
  2,
  ARRAY['do-or-die', 'charging-slow', 'quick-release', 'outfield-throws', 'decision-making', 'anticipation', 'covering-ground']
);

-- 19. Reading the Bat Reaction Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Reading the Bat Reaction Drill',
  'Develops outfielders'' ability to read the hitter''s swing and get a jump on the ball based on bat angle, swing plane, and contact point.',
  'Three outfielders in standard positions, coach at plate with screen
Coach takes full swings hitting to various locations
Outfielders read swing and break with contact
Focus on early indicators: bat path, where contact occurs, swing type
Coach mixes line drives, fly balls, and ground balls
Outfielders call out read: "deep," "shallow," "line drive"
After 15 swings, discuss what each player saw
Final round: compete for who reaches ball first based on best jump',
  null,
  15,
  null,
  'Fielding',
  'advanced',
  ARRAY['gloves', 'baseballs', 'bat', 'screen for coach'],
  3,
  ARRAY['reading-bat', 'anticipation', 'drop-step-technique', 'covering-ground', 'decision-making', 'outfield-communication']
);

-- 20. Advanced Footwork Cone Drills
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Advanced Footwork Cone Drills',
  'Develops elite infield footwork through structured cone patterns that simulate game movements including crossovers, shuffles, and pivot techniques.',
  'Set up cone course: 5 cones in zigzag pattern 5 feet apart
Player starts at first cone in ready position
Execute specific footwork pattern: crossover to cone 2, shuffle to cone 3
Coach rolls ball at various cones requiring field and throw
Patterns include: crossover steps, drop steps, pivot turns, shuffles
Each pattern repeated 3 times, then rotate to new pattern
Add throws to bases after fielding at final cone
Time trial: complete course with clean fielding fastest',
  null,
  15,
  null,
  'Fielding',
  'advanced',
  ARRAY['gloves', 'baseballs', '8-10 cones', 'bases'],
  1,
  ARRAY['advanced-footwork', 'infield-footwork', 'quick-hands-feet', 'position-mastery', 'ground-balls']
);

-- 21. Catcher Game Calling Simulation
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Catcher Game Calling Simulation',
  'Teaches catchers the mental game of calling pitches based on count, situation, and hitter tendencies while managing the pitcher and game tempo.',
  'Set up realistic scenario: catcher in gear, pitcher on mound
Coach provides game situation: inning, score, count, runners
Catcher puts down signs and explains reasoning after each pitch
Pitcher throws to spots (no batter needed)
Rotate through various situations: ahead in count, behind, 3-2 count
Discuss pitch selection strategy and sequencing
Add element: coach plays hitter with known tendencies
Final scenario: high pressure situation, catcher must call full at-bat',
  null,
  20,
  null,
  'Fielding',
  'advanced',
  ARRAY['catcher''s gear', 'baseballs', 'home plate', 'lineup cards'],
  2,
  ARRAY['calling-games', 'catcher-leadership', 'decision-making', 'receiving', 'position-expertise', 'defensive-leadership']
);

-- 22. Precision Relay Throws
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Precision Relay Throws',
  'Develops precise relay throwing technique and positioning for all outfielders and infielders in various extra-base hit scenarios.',
  'Position relay teams: outfielder, relay man, base receiver
Set up cones for proper relay positions (120-150 feet from base)
Outfielder throws to relay man who turns and throws to base
Emphasize hitting relay man chest high on a line
Relay man catches in throwing position, quick transfer
Practice all scenarios: LF to 3rd, RF to 3rd, CF to home
Time full relay: outfielder''s catch to tag at base
Competition: which relay team completes 10 perfect relays fastest',
  null,
  18,
  null,
  'Fielding',
  'intermediate',
  ARRAY['gloves', 'baseballs', 'bases', 'cones for relay positions', 'stopwatch'],
  6,
  ARRAY['relay-throws', 'cutoff-relay', 'communication', 'outfield-throws', 'quick-release', 'accurate-throws', 'position-mastery']
);

-- 23. Position Specialization Stations
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Position Specialization Stations',
  'Comprehensive station work where players focus on position-specific advanced techniques with dedicated coaching at each station.',
  'Set up four stations: infield, outfield, catcher, first base
Players rotate through positions 6 minutes each
Infield station: backhand plays, slow rollers, double play feeds
Outfield station: reading bat, do-or-die plays, fence work
Catcher station: blocking, receiving, throwing mechanics
First base station: scoops, footwork, 3-6-3 double plays
Coaches provide specific feedback at each station
Final rotation: combine all stations for game simulation',
  null,
  25,
  null,
  'Fielding',
  'advanced',
  ARRAY['gloves', 'baseballs', 'full set of bases', 'catcher''s gear', 'batting tee'],
  9,
  ARRAY['position-specialization', 'position-expertise', 'advanced-footwork', 'quick-release', 'decision-making']
);

-- 24. Live Game Situation Scrimmage
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Live Game Situation Scrimmage',
  'Simulates real game scenarios with runners on base, requiring defensive communication, positioning, and execution under pressure conditions.',
  'Set up complete defensive team with catcher and infield/outfield
Coach hits or pitchers throw to create live game situations
Start with simple scenarios: runner on first, less than 2 outs
Defense must communicate coverage, cutoffs, and backup responsibilities
Progress to complex scenarios: bases loaded, bunt situations
Rotate offensive and defensive players every 5 minutes
Keep score based on defensive execution (not runs allowed)
Final round: championship situation, tie game, extra innings',
  null,
  25,
  null,
  'Fielding',
  'intermediate',
  ARRAY['full field equipment', 'baseballs', 'bases', 'helmets', 'bat'],
  10,
  ARRAY['communication', 'backing-up', 'decision-making', 'defensive-leadership', 'position-mastery', 'anticipation']
);

-- 25. Dive and Extension Plays
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Dive and Extension Plays',
  'Teaches advanced defensive players how to extend range through proper diving technique for balls requiring maximum effort to reach.',
  'Set up on grass or use sliding mats to prevent injury
Start with stationary dive technique: belly down, glove extended
Players practice diving motion without ball to learn proper form
Progress to slow rolls requiring one step and dive
Emphasize landing on chest/stomach, not shoulder
Add game-speed element: balls requiring full sprint and dive
Practice both forehand and backhand diving plays
Competition: highlight reel - who makes the most spectacular plays',
  null,
  15,
  null,
  'Fielding',
  'advanced',
  ARRAY['gloves', 'baseballs', 'sliding mats or grass area', 'knee pads (optional)'],
  1,
  ARRAY['covering-ground', 'advanced-footwork', 'backhand-plays', 'position-expertise', 'anticipation', 'quick-hands-feet']
);

-- PITCHING DRILLS (25)

-- 1. Balance Point Hold
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Balance Point Hold',
  'Develops proper balance and body control at the critical balance point of the pitching delivery. Foundation drill for all young pitchers learning proper mechanics.',
  'Start in the windup position with hands together at chest
Slowly lift front leg to balance point (knee at hip height)
Hold position for 10 seconds maintaining perfect balance
Keep head directly over rubber and belt buckle facing target
Back leg should be straight and strong like a post
Lower leg slowly and reset, repeat 10-15 times
Progress to holding a baseball in glove at balance point
Advanced variation: close eyes while holding balance',
  null,
  10,
  null,
  'Pitching',
  'beginner',
  ARRAY['flat surface', 'pitcher''s mound'],
  1,
  ARRAY['pitching-intro', 'balance-point', 'basic-windup', 'pitcher-mechanics']
);

-- 2. Wall Drill for Stride Direction
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Wall Drill for Stride Direction',
  'Teaches pitchers to stride directly toward home plate, preventing cross-body delivery and developing proper directional mechanics.',
  'Place a line of tape on ground pointing from rubber to target
Position pitcher''s pivot foot on line with wall 6 inches to glove side
Pitcher goes through pitching motion in slow motion
Stride foot should land on the line without hitting wall
Wall prevents falling toward glove side
Complete 10-12 repetitions focusing on stride direction
Gradually increase speed as control improves
Progress to using ball and following through',
  null,
  8,
  null,
  'Pitching',
  'beginner',
  ARRAY['wall or fence', 'tape or chalk'],
  1,
  ARRAY['pitching-intro', 'balance-point', 'basic-windup', 'throwing-strikes', 'pitcher-mechanics']
);

-- 3. Towel Drill for Arm Action
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Towel Drill for Arm Action',
  'Develops proper arm path, extension, and follow-through without the stress of throwing a baseball. Perfect for learning correct mechanics.',
  'Pitcher holds towel by one end instead of baseball
Go through full pitching motion at half speed
Focus on arm whipping towel toward target
Towel should crack at release point
Follow through should bring towel to opposite knee
Complete 15-20 repetitions
Partner watches for consistent arm path
Progress to full speed with proper form',
  null,
  10,
  null,
  'Pitching',
  'beginner',
  ARRAY['towel or sock'],
  1,
  ARRAY['pitching-intro', 'basic-windup', 'release-point', 'pitcher-mechanics']
);

-- 4. Step-Behind Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Step-Behind Drill',
  'Simplifies delivery by eliminating windup, allowing pitcher to focus on balance, stride, and arm action from the stretch position.',
  'Start with feet together, ball in glove at chest
Step back with pivot foot and place it at 45-degree angle
Lift front leg to balance point
Drive toward plate and release ball
Partner or catcher receives throws from 30-40 feet
Complete 15-20 throws focusing on mechanics
Gradually increase distance to regulation
Focus on consistent release point',
  null,
  12,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'gloves', 'catcher or target'],
  2,
  ARRAY['balance-point', 'release-point', 'throwing-strikes', 'pitch-control', 'pitcher-mechanics']
);

-- 5. Fastball Grip and Spin Work
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Fastball Grip and Spin Work',
  'Teaches proper four-seam and two-seam fastball grips while developing backspin for maximum velocity and movement.',
  'Demonstrate four-seam grip (across horseshoe seams)
Pitcher throws from 30 feet focusing on pure backspin
Partner watches rotation and provides feedback
Ball should have tight spiral rotation toward target
Progress to two-seam grip (along seams)
Two-seam should have slight tailing action
Complete 10 throws with each grip
Gradually increase distance while maintaining spin quality',
  null,
  10,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'gloves'],
  2,
  ARRAY['basic-grips', 'pitch-control', 'release-point', 'pitcher-mechanics']
);

-- 6. One-Knee Throwing Progression
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'One-Knee Throwing Progression',
  'Isolates upper body mechanics by eliminating lower half, forcing focus on proper arm path, shoulder rotation, and follow-through.',
  'Pitcher kneels on back knee (throwing side)
Front leg extends forward as if in stride position
Start with ball in glove at chest height
Rotate shoulders and throw to partner 30 feet away
Focus on driving chest toward target
Follow through should bring arm to opposite hip
Complete 15-20 throws
Stay on knee entire drill to eliminate legs',
  null,
  12,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'gloves'],
  2,
  ARRAY['release-point', 'pitch-control', 'arm-care', 'pitcher-mechanics']
);

-- 7. Pitcher's Fielding Practice (PFP)
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pitcher''s Fielding Practice (PFP)',
  'Teaches pitchers to field their position covering bunts, comebackers, and covering first base on ground balls to the right side.',
  'Set up infield with pitcher on mound, bases at positions
Practice comebackers: pitcher fields and throws to first
Practice bunts: pitcher breaks, fields, and makes accurate throw
Practice 3-1 coverage: ground ball to first, pitcher covers bag
Emphasize quick reaction and proper footwork
Rotate through each scenario 5-6 times
Add base runners for game-speed practice
Focus on accuracy over velocity on throws',
  null,
  15,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'gloves', 'bases', 'fungo bat'],
  4,
  ARRAY['fielding-position', 'fielding-bunts', 'pitcher-fielding', 'pitcher-mechanics']
);

-- 8. Target Practice - Four Quadrants
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Target Practice - Four Quadrants',
  'Develops command and control by targeting specific locations in the strike zone, essential for pitch control development.',
  'Divide strike zone into four quadrants (inside/outside, up/down)
Catcher sets up and calls location
Pitcher aims for called quadrant
Throw 5 pitches to each location (20 total)
Track hits: give 2 points for quadrant, 1 for strike zone
Record score and compete against previous sessions
Gradually make targets smaller (9 zones instead of 4)
Advanced: catcher gives target with glove only',
  null,
  15,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'catcher with gear', 'strike zone target or mat'],
  2,
  ARRAY['pitch-control', 'throwing-strikes', 'release-point', 'pitcher-mechanics']
);

-- 9. Changeup Introduction and Development
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Changeup Introduction and Development',
  'Introduces and develops the changeup grip and arm speed, teaching pitchers to throw off-speed pitch with fastball mechanics.',
  'Teach circle change or three-finger changeup grip
Start at 40 feet throwing only changeups
Focus on same arm speed as fastball
Ball should have downward tumbling action
Mix fastball and changeup, partner calls pitch
Partner ensures arm speed looks identical
Progress to regulation distance
Practice selling the fastball with every changeup',
  null,
  12,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'gloves', 'catcher'],
  2,
  ARRAY['basic-grips', 'multiple-pitches', 'pitch-control', 'release-point', 'pitcher-mechanics']
);

-- 10. Holding Runners Drill
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Holding Runners Drill',
  'Teaches pitchers proper mechanics for holding runners close to bases while maintaining effectiveness to home plate.',
  'Place runner at first base, first baseman holding runner
Pitcher works from stretch position
Vary look times to first base (quick looks and holds)
Practice slide step delivery to home
Mix in pickoff throws to first base
First baseman works on receiving pickoffs
Time delivery to home (goal under 1.3 seconds to plate)
Runner attempts steals to create game pressure',
  null,
  15,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'bases', 'stopwatch'],
  4,
  ARRAY['holding-runners', 'pickoff-moves', 'fielding-position', 'mental-game', 'pitcher-mechanics']
);

-- 11. Curveball Mechanics and Spin
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Curveball Mechanics and Spin',
  'Introduces curveball grip and proper release mechanics with emphasis on spin quality and arm health.',
  'Teach proper curveball grip (middle finger along seam)
Start at close range (25-30 feet) throwing only curves
Focus on pulling down front side of ball at release
Ball should have tight 12-6 or 11-5 rotation
Partner watches spin and provides feedback
Gradually increase distance as spin improves
Limit to 15-20 curveballs per session initially
Never sacrifice arm slot to make ball curve',
  null,
  12,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catcher or partner'],
  2,
  ARRAY['multiple-pitches', 'basic-grips', 'release-point', 'arm-care', 'pitcher-mechanics']
);

-- 12. Pitching from Stretch
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pitching from Stretch',
  'Develops comfort and consistency pitching from the stretch position with runners on base, critical game situation skill.',
  'Set up in stretch position (side to target, hands set)
Come to complete stop in set position (1 second)
Lift leg and deliver to home plate
Focus on balance and not rushing delivery
Practice 15-20 pitches from stretch only
Mix in looks to imaginary runner at first
Work on both slide step and full leg lift
Compare velocity and control to windup delivery',
  null,
  12,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'gloves', 'rubber or mound'],
  2,
  ARRAY['pitch-control', 'holding-runners', 'mental-game', 'pitcher-mechanics']
);

-- 13. Bullpen Routine Development
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Bullpen Routine Development',
  'Establishes structured pre-game bullpen routine to prepare mentally and physically for game situations.',
  'Begin with 5 minutes of long toss (60-120 feet)
Move to mound and throw 5-6 pitches at 50% effort
Throw 5-6 pitches at 75% focusing on mechanics
Work through all pitches at game speed (fastball, change, curve)
Practice hitting all quadrants of strike zone
Simulate first batter of game (3 pitches)
End with 2-3 full-effort fastballs
Record pitch counts and effectiveness',
  null,
  20,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catcher with gear', 'mound'],
  2,
  ARRAY['pitch-control', 'multiple-pitches', 'mental-game', 'complete-mental', 'arm-care', 'pitcher-mechanics']
);

-- 14. Pickoff Moves to First Base
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pickoff Moves to First Base',
  'Teaches legal and effective pickoff moves to first base while avoiding balks and controlling the running game.',
  'Pitcher in stretch with runner at first
Practice inside move (spin toward first)
Practice jump move (quick step and throw)
Step must be clearly toward first base, not plate
First baseman practices receiving throws
Add live runner attempting to get back
Work on deception with timing variations
Coach watches for balk violations',
  null,
  15,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'first base'],
  3,
  ARRAY['pickoff-moves', 'holding-runners', 'fielding-position', 'mental-game', 'pitcher-mechanics', 'pitcher-fielding']
);

-- 15. Pitch Sequencing Scenarios
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pitch Sequencing Scenarios',
  'Develops ability to sequence pitches strategically based on count, situation, and batter tendencies.',
  'Set up specific game situations (0-0 count, runner on 3rd, etc.)
Catcher and pitcher discuss pitch sequence
Execute 3-5 pitch sequence to simulated batter
Discuss why certain pitches chosen in sequence
Practice ahead-in-count sequences (0-2, 1-2)
Practice behind-in-count sequences (2-0, 3-1)
Emphasize setting up out pitch with earlier pitches
Review effectiveness and adjust strategy',
  null,
  15,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catcher with gear'],
  2,
  ARRAY['pitch-sequencing', 'mental-game', 'pitch-selection', 'pitching-strategy', 'pitcher-mechanics']
);

-- 16. Long Toss Program
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Long Toss Program',
  'Builds arm strength, improves mechanics, and develops extension through progressive throwing distances.',
  'Start at 60 feet throwing on a line (no arc)
Gradually increase distance by 10-15 feet
Move to 90 feet maintaining line drive throws
Progress to 120 feet with slight arc
Peak at 150-180 feet (varies by age/arm strength)
Work back down to 60 feet gradually
Finish with 10 throws at regulation distance
Complete 2-3 times per week (not daily)',
  null,
  15,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'gloves', 'open field'],
  2,
  ARRAY['arm-care', 'velocity-development', 'pitcher-mechanics', 'release-point']
);

-- 17. Reading Hitters and Adjustments
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Reading Hitters and Adjustments',
  'Teaches pitchers to observe hitter setup, swing tendencies, and weaknesses to exploit during at-bat.',
  'Pitcher faces live hitter in controlled situation
Observe hitter''s stance (open, closed, deep in box, etc.)
Throw 3-5 pitches and watch swing path
Identify holes in swing (inside, outside, up, down)
Adjust pitch selection based on observations
Catcher helps identify hitter weaknesses
Pitch to observed weaknesses
Discuss observations after each at-bat',
  null,
  15,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catcher', 'live hitter'],
  3,
  ARRAY['reading-hitters', 'pitching-strategy', 'mental-game', 'complete-mental', 'pitch-selection', 'pitcher-mechanics']
);

-- 18. Developing Third Pitch
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Developing Third Pitch',
  'Introduces slider, cutter, or split-finger as third pitch to complement fastball and changeup/curve repertoire.',
  'Choose third pitch based on arm slot and strengths (slider, cutter, splitter)
Learn proper grip from coach or experienced pitcher
Start at 40 feet focusing only on new pitch
Work on spin and movement without concern for strikes
Gradually increase distance as comfort grows
Mix into bullpen sessions (limit to 5-10 per session initially)
Only use in games when consistently controlled
Continue developing over months, not weeks',
  null,
  15,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catcher'],
  2,
  ARRAY['third-pitch', 'multiple-pitches', 'complete-arsenal', 'pitch-control', 'pitcher-mechanics']
);

-- 19. Situational Pitching
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Situational Pitching',
  'Simulates high-pressure game situations to develop mental toughness and decision-making under stress.',
  'Set up specific scenarios (bases loaded, 3-2 count, etc.)
Pitcher must execute in pressure situation
Scenarios include: runners in scoring position, full count, one out situations
Catcher calls pitches based on situation
Pitcher executes 3-5 pitch sequences per scenario
Discuss pitch selection after each scenario
Practice 5-6 different high-leverage situations
Record success rate and pitch effectiveness',
  null,
  20,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catcher with gear'],
  2,
  ARRAY['mental-game', 'complete-mental', 'pitching-strategy', 'pitch-sequencing', 'competitive-mentality', 'pitcher-mechanics']
);

-- 20. Velocity Development Program
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Velocity Development Program',
  'Structured program using weighted ball progressions and explosive drills to develop increased pitching velocity safely.',
  'Warm up with dynamic stretching and light throwing
Use underweight ball (4 oz) for 5 throws at max effort
Use regulation ball (5 oz) for 5 throws at max effort
Use overweight ball (6 oz) for 5 throws at controlled effort
Return to regulation ball for 5 throws
Focus on explosive hip drive and arm speed
Complete program 2-3 times per week with rest days between
Track velocity improvements monthly',
  null,
  20,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'weighted balls (4-6 oz)', 'radar gun', 'gloves'],
  2,
  ARRAY['velocity-development', 'pitcher-mechanics', 'arm-care', 'professional-pitching']
);

-- 21. Pitch Tunneling Concept
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Pitch Tunneling Concept',
  'Teaches pitchers to make different pitches look identical out of hand by matching release points and arm angles.',
  'Set up camera behind pitcher (down center line) if available
Throw fastballs and off-speed from identical release point
Catcher observes pitches out of hand
All pitches should look same for first 20-30 feet
Review video to compare release points
Make adjustments to match release points
Practice fastball/changeup tunnel, then fastball/breaking ball tunnel
Goal: catcher cannot identify pitch type until late',
  null,
  15,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catcher', 'video camera'],
  2,
  ARRAY['pitch-tunneling', 'advanced-control', 'complete-arsenal', 'professional-pitching', 'pitcher-mechanics']
);

-- 22. Arm Care and Recovery Routine
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Arm Care and Recovery Routine',
  'Essential routine for maintaining arm health, preventing injury, and ensuring longevity as a pitcher.',
  'Pre-throwing: Dynamic arm circles and band work (internal/external rotation)
Complete band routine: 15 reps each of 6 exercises
Post-throwing: Static stretching of shoulder, forearm, triceps
Foam roll upper back, lats, and rotator cuff area
Ice arm for 15 minutes after throwing (optional based on workload)
Complete routine after every throwing session
Add wrist curls and reverse curls with light weight
Track any arm soreness or discomfort',
  null,
  15,
  null,
  'Pitching',
  'beginner',
  ARRAY['resistance bands', 'foam roller', 'ice/heat packs'],
  1,
  ARRAY['arm-care', 'recovery', 'professional-pitching', 'pitcher-mechanics']
);

-- 23. Mound Presence and Composure
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Mound Presence and Composure',
  'Develops mental skills for maintaining composure, controlling tempo, and projecting confidence on the mound.',
  'Pitcher takes mound for simulated inning
Coach creates adversity (hit, walk, error behind pitcher)
Pitcher must maintain composure and body language
Practice stepping off rubber to slow game down
Use breathing techniques between pitches
Maintain consistent tempo regardless of situation
Project confidence through posture and demeanor
Debrief mental approach after session',
  null,
  15,
  null,
  'Pitching',
  'intermediate',
  ARRAY['baseballs', 'gloves', 'catcher', 'mound'],
  2,
  ARRAY['mental-game', 'complete-mental', 'competitive-mentality', 'professional-pitching', 'pitcher-mechanics']
);

-- 24. Advanced Pitch Sequencing
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Advanced Pitch Sequencing',
  'Masters complex sequencing patterns using all pitches to set up strikeouts and weak contact situations.',
  'Work with catcher to plan 3-pitch strikeout sequences
Example: Fastball inside, curveball away, changeup down
Execute sequences against imaginary hitters
Practice backward sequencing (off-speed early in count)
Set up fastball with off-speed pitches
Discuss why sequences work against different hitter types
Practice tunneling fastball and changeup for strikeout
Review which sequences felt most effective',
  null,
  20,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catcher with gear'],
  2,
  ARRAY['advanced-sequencing', 'pitch-sequencing', 'complete-arsenal', 'pitching-strategy', 'competitive-mentality', 'pitch-selection', 'pitcher-mechanics']
);

-- 25. Competitive Bullpen Sessions
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players, skills_taught) VALUES (
  'Competitive Bullpen Sessions',
  'Simulates game competition in practice setting with multiple pitchers competing in situational innings.',
  'Set up two pitchers alternating innings
Each pitcher faces 9 imaginary batters (3 innings)
Catcher calls balls and strikes honestly
Coach creates situations (runners on, counts)
Track pitch counts, strikes, and simulated outcomes
Pitchers compete for lowest ERA/WHIP in session
Add pressure with consequences (sprints for walks, rewards for Ks)
Review performance and discuss approach',
  null,
  25,
  null,
  'Pitching',
  'advanced',
  ARRAY['baseballs', 'gloves', 'catchers with gear', 'mound', 'scorekeeping system'],
  4,
  ARRAY['competitive-mentality', 'complete-mental', 'mental-game', 'advanced-sequencing', 'complete-arsenal', 'professional-pitching', 'pitcher-mechanics', 'pitch-selection']
);

-- ============================================
-- Total drills inserted: 100
-- ============================================
