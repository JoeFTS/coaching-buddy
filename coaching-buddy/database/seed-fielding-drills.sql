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
