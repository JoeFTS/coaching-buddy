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
