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
