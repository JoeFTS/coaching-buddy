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
