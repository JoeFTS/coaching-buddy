-- Coaching Buddy - Drill Database Seed File
-- This file populates the drills table with age-appropriate baseball drills
-- Run this in your Supabase SQL Editor after creating the database schema

-- Note: Replace division_id UUIDs with actual IDs from your pony_divisions table
-- You can get these by running: SELECT id, name FROM pony_divisions ORDER BY display_order;

-- HITTING DRILLS

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players) VALUES
('Batting Tee Work - Front Toss',
'Foundation drill for developing proper contact point and swing mechanics.',
'1. Set up tee at front of plate (near pitcher''s side)
2. Player takes proper batting stance
3. Focus on keeping eyes on ball through contact
4. Swing through the ball, not down at it
5. Start with 10 swings, increase as skill improves
6. Coach checks: grip, stance, eye contact, follow-through

Coaching Points:
- Ball should be at belt height
- Hands stay back until commit to swing
- Head stays down through contact
- Rotate hips, don''t just use arms',
null,
10,
null, -- Works for multiple divisions
'Hitting',
'beginner',
ARRAY['Batting tee', 'baseballs', 'bat', 'net or field'],
1),

('Soft Toss',
'Improves hand-eye coordination and timing while introducing movement to the ball.',
'1. Tosser kneels 8-10 feet away at 45-degree angle
2. Hitter takes stance in front of net or fence
3. Tosser gently underhand tosses ball to hitting zone
4. Hitter tracks ball and drives it into net
5. Complete 15-20 swings per round
6. Switch sides to work opposite field

Coaching Points:
- Toss should be consistent and hittable
- Start slow, increase speed as player improves
- Focus on square contact
- Watch for lunging or stepping out',
null,
12,
null,
'Hitting',
'beginner',
ARRAY['Baseballs (6-12)', 'bat', 'net or fence'],
2),

('Bucket Drill',
'Creates stable base and prevents over-striding, helping players generate power efficiently.',
'1. Turn a bucket upside down
2. Player places back foot on top of bucket
3. Front foot on ground in normal stance position
4. Hit balls off tee or soft toss
5. Back foot stays planted throughout swing
6. Complete 15-20 swings

Coaching Points:
- Forces weight transfer without stepping
- Back foot stays on bucket entire swing
- Hips must rotate to generate power
- Helps players feel proper weight shift',
null,
10,
null,
'Hitting',
'intermediate',
ARRAY['Bat', 'bucket', 'baseballs'],
1),

('Chin Down Drill',
'Forces players to keep eyes on target, removing visual distraction and improving timing.',
'1. Place ball on tee
2. Player takes stance with chin tucked to chest
3. Keep chin down through entire swing
4. Focus on feeling the swing, not watching ball
5. Complete 10-15 swings maintaining chin position
6. Progress to soft toss with same technique

Coaching Points:
- Chin stays tucked entire swing
- Develops muscle memory for head position
- Eyes stay focused on contact point
- Eliminates head pull',
null,
8,
null,
'Hitting',
'intermediate',
ARRAY['Bat', 'ball', 'tee'],
1),

('Anti-Wrap Drill',
'Teaches proper load position and prevents bat wrapping behind head.',
'1. Player holds bat in launch position
2. Place fence or wall directly behind player
3. Take practice swings without hitting fence
4. Focus on keeping bat in hitting zone
5. Bat should not wrap behind head
6. Repeat 15-20 times

Coaching Points:
- Bat stays in power position
- Hands load back, but bat stays up
- Prevents long swing path
- Creates more direct path to ball',
null,
8,
null,
'Hitting',
'intermediate',
ARRAY['Bat'],
1),

('Don''t Squish the Bug',
'Helps players drive through ball with back leg rather than spinning on back foot.',
'1. Player takes batting stance
2. Focus on driving back knee toward pitcher
3. Back heel comes up naturally
4. Weight transfers completely to front side
5. Hit balls off tee focusing on leg drive
6. Complete 15-20 swings

Coaching Points:
- Back knee drives forward, not spinning
- Creates linear power, not rotational spin
- Weight finishes on front leg
- Back leg should look like pitcher''s stride',
null,
10,
null,
'Hitting',
'intermediate',
ARRAY['Bat', 'ball', 'tee'],
1),

('Two-Ball Soft Toss',
'Improves bat control, tracking, and decision-making at high level.',
'1. Tosser holds two different colored balls
2. Tosser soft tosses both balls simultaneously
3. Calls out color before balls reach hitting zone
4. Hitter must hit only called ball
5. Complete 15-20 reps
6. Increases reaction time and focus

Coaching Points:
- Advanced drill for experienced players only
- Improves pitch selection
- Develops quick hands
- Enhances eye-hand coordination',
null,
10,
null,
'Hitting',
'advanced',
ARRAY['2 different colored balls', 'bat', 'net'],
2);

-- BASERUNNING DRILLS

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players) VALUES
('Base Naming March',
'Builds confidence and teaches base locations for youngest players.',
'1. Line up players at home plate
2. March around bases in single file
3. Call out base name as each player touches it
4. "First base!" "Second base!" etc.
5. Complete 2-3 laps around bases
6. Make it fun with music or rhymes

Coaching Points:
- Emphasize touching each base
- Keep spacing between runners
- Celebrate enthusiasm
- Build familiarity with diamond',
null,
8,
null,
'Baserunning',
'beginner',
ARRAY['Baseball diamond'],
5),

('Red, Yellow, Green Light',
'Teaches running with control and listening to coaches.',
'1. Players line up at home plate
2. Coach calls out "Green light!" - run fast
3. "Yellow light!" - slow down
4. "Red light!" - stop completely
5. Practice on base paths
6. Add baseball scenarios as skill improves

Coaching Points:
- Emphasize quick stops
- Practice stopping at bases
- Fun way to teach listening to coaches
- Builds base running awareness',
null,
10,
null,
'Baserunning',
'beginner',
ARRAY['Baseball diamond'],
5),

('Run Through First Base',
'Teaches players to run through first base rather than slowing down.',
'1. Player starts in batter''s box (simulated hit)
2. Run at full speed to first base
3. Touch front of first base with lead foot
4. Continue running 10-15 feet past base
5. Turn to right (foul territory) after passing
6. Walk back to line

Coaching Points:
- Never slow down before base
- Hit front corner of base
- Always turn right after passing
- Lead foot touches base first',
null,
10,
null,
'Baserunning',
'beginner',
ARRAY['Baseball diamond'],
3),

('Banana Turn',
'Teaches proper turn technique at first base for advancing to second.',
'1. Player starts at home plate
2. Run hard to first base
3. Begin curve (banana shape) halfway to first
4. Touch inside corner of first base
5. Take 2-3 hard steps toward second
6. Read coach for advance or return signal

Coaching Points:
- Start turn before reaching base
- Touch inside corner with either foot
- Stay low through turn
- Read coach quickly',
null,
12,
null,
'Baserunning',
'intermediate',
ARRAY['Baseball diamond'],
3),

('Single, Double, Triple, Home Run',
'Teaches players proper running for different hit scenarios.',
'1. Coach calls out hit type
2. "Single" - run through first base
3. "Double" - turn first, sprint to second
4. "Triple" - proper turns at first and second
5. "Home run" - jog bases, touch all
6. Players execute correctly

Coaching Points:
- Different speeds for different situations
- Touch all bases properly
- Make proper turns
- Head up looking for coaches',
null,
15,
null,
'Baserunning',
'intermediate',
ARRAY['Baseball diamond'],
4),

('Lead-Off Progressions',
'Teaches proper lead-off technique and getting back safely.',
'1. Runner takes primary lead (2-3 steps)
2. Practice shuffle steps off base
3. On pitcher''s move, dive/step back to base
4. Practice both first and second base leads
5. Add secondary leads after pitch
6. Include steal breaks at appropriate ages

Coaching Points:
- Weight balanced, ready to move either way
- Always see ball and pitcher
- Quick first step back to base
- Stay in athletic position',
null,
15,
null,
'Baserunning',
'advanced',
ARRAY['Baseball diamond', 'bases'],
3);

-- PITCHING DRILLS

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players) VALUES
('Balance Point Drill',
'Develops proper balance and body control in pitching delivery.',
'1. Start in wind-up position
2. Lift leg to balance point
3. Hold position for 5-10 seconds
4. Maintain straight back and head over rubber
5. Practice 10-15 times
6. Progress to holding ball in glove

Coaching Points:
- Head over rubber (pivot foot)
- Belt buckle facing target
- Hands together at chest
- Back leg straight and strong',
null,
10,
null,
'Pitching',
'beginner',
ARRAY[],
1),

('One-Knee Throwing',
'Isolates upper body mechanics and proper arm path.',
'1. Kneel on back knee (throwing side)
2. Front leg extends forward in stride position
3. Make throws to partner 30 feet away
4. Focus on arm path and follow-through
5. Complete 15-20 throws
6. Stay on knee entire drill

Coaching Points:
- Forces upper body only (eliminates legs)
- Proper arm path critical
- Follow through to opposite knee
- Develops arm strength and mechanics',
null,
10,
null,
'Pitching',
'intermediate',
ARRAY['Baseballs', 'gloves'],
2),

('Target Practice - Four Corners',
'Improves command and control by targeting specific strike zone locations.',
'1. Catcher sets up behind plate with gear
2. Call out target: "High inside", "Low away", etc.
3. Pitcher aims for called spot
4. Complete 5 pitches to each corner
5. Track successful targets
6. Reward accuracy

Coaching Points:
- Focus on hitting spots, not velocity
- Proper mechanics on every pitch
- Catcher provides honest feedback
- Build gradually from closer distance',
null,
15,
null,
'Pitching',
'intermediate',
ARRAY['Baseballs', 'catcher gear', 'strike zone mat'],
2),

('Line Drill',
'Creates consistent release point for command improvement.',
'1. Draw line from rubber to home plate
2. Pitcher throws down line to partner
3. Ball should travel over line entire flight
4. Start at 30 feet, move back gradually
5. Complete 20 throws
6. Any ball off line is noted

Coaching Points:
- Develops straight over-the-top delivery
- Improves consistency
- Helps eliminate cross-body throw
- Creates repeatable mechanics',
null,
10,
null,
'Pitching',
'advanced',
ARRAY['Baseballs', 'gloves', 'tape or chalk'],
2),

('Pickoff Moves Practice',
'Teaches pitchers to hold runners and make throws to bases.',
'1. Set up pitchers with runners on first
2. Practice pickoff moves (legal mechanics)
3. Step must be toward base, not plate
4. Quick feet, quick arm
5. First baseman practices receiving throws
6. Add runner reactions for game speed

Coaching Points:
- Must step toward base clearly
- Quick but accurate throws
- Mix timing of moves
- Hold runners without balking',
null,
12,
null,
'Pitching',
'advanced',
ARRAY['Baseballs', 'gloves', 'bases'],
3);

-- FIELDING DRILLS

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players) VALUES
('Roll and Catch',
'Introduction to fielding ground balls with proper technique.',
'1. Partner rolls ball slowly on ground
2. Fielder gets in front of ball
3. Bend knees, glove down
4. Use two hands (alligator catch)
5. Secure ball then stand up
6. Roll back to partner

Coaching Points:
- Get body in front of ball
- Glove touches ground
- Other hand covers ball
- Stay down through catch',
null,
10,
null,
'Fielding',
'beginner',
ARRAY['Baseballs', 'gloves'],
2),

('Triangle Footwork',
'Teaches proper footwork sequence for fielding ground balls.',
'1. Right foot forward first (right-handed throwers)
2. Left foot steps through ball
3. Field ball between feet
4. Crow hop and throw
5. Sequence: right-left-field-crow hop-throw
6. Repeat 20 times

Coaching Points:
- Right-left-field rhythm
- Stay low through entire motion
- Field ball in middle of body
- Quick exchange to throwing position',
null,
12,
null,
'Fielding',
'intermediate',
ARRAY['Baseballs', 'gloves'],
2),

('Rapid Fire Ground Balls',
'Speeds up reactions, footwork, and fielding consistency.',
'1. Fielder takes position at shortstop
2. Coach has 10-12 balls in bucket
3. Hit ground balls in quick succession
4. Fielder fields and tosses aside
5. No throws to first - focus on fielding only
6. Complete 10-12 reps, rest, repeat

Coaching Points:
- Quick feet between reps
- Maintain proper form despite speed
- Build endurance and concentration
- Increase difficulty with harder hits',
null,
10,
null,
'Fielding',
'intermediate',
ARRAY['Multiple baseballs', 'gloves', 'bucket'],
3),

('Double Play Turns',
'Teaches proper footwork and timing for turning double plays.',
'1. Second baseman and shortstop at positions
2. Coach rolls/hits ball to one infielder
3. Fielder feeds second baseman covering
4. Receive ball, touch base, throw to first
5. Practice both sides of double play
6. Add runner at game speed

Coaching Points:
- Quick, accurate feed from fielder
- Receiver gets to bag quickly
- Touch base with any part of foot
- Get rid of ball quickly and accurately',
null,
15,
null,
'Fielding',
'advanced',
ARRAY['Baseballs', 'gloves', 'bases'],
4),

('Drop Step Drill',
'Teaches outfielders proper first move on balls hit over their head.',
'1. Outfielder faces coach
2. Coach points left or right
3. Player drop steps with appropriate foot
4. Sprint back 20-30 feet
5. Coach throws ball for catch
6. Complete 10 reps each direction

Coaching Points:
- Drop step with foot on side ball is hit
- Turn and run, don''t backpedal
- Look over shoulder while running
- Quick first step critical',
null,
12,
null,
'Fielding',
'intermediate',
ARRAY['Baseballs', 'gloves'],
3),

('Catcher Blocking Drill',
'Teaches proper blocking technique for balls in dirt.',
'1. Catcher in full gear, receiving position
2. Coach throws mix of strikes and dirt balls
3. Catcher blocks dirt balls with chest
4. Keep ball in front, drop to knees
5. Complete 15-20 reps
6. Increase difficulty with side-to-side

Coaching Points:
- Drop to knees quickly
- Chin tucked, chest out
- Glove between legs
- Goal is to keep ball in front',
null,
10,
null,
'Fielding',
'intermediate',
ARRAY['Baseballs', 'full catcher gear'],
2),

('Catcher Pop-Up Footwork',
'Teaches catchers to locate and catch pop-ups near backstop.',
'1. Catcher in receiving position
2. Coach tosses ball straight up
3. Catcher removes mask, tosses away
4. Locate ball, turn back to field
5. Catch ball in fair territory
6. Complete 10-15 reps

Coaching Points:
- Remove mask immediately
- Throw mask away from play
- Turn back to field (ball spins back)
- Catch with two hands',
null,
10,
null,
'Fielding',
'advanced',
ARRAY['Baseballs', 'catcher gear', 'mask'],
2),

('First Baseman Scoops',
'Teaches first basemen to handle short hops and low throws.',
'1. First baseman on base, in stretch position
2. Partner throws mix of good and short-hop throws
3. Fielder practices scooping low throws
4. Keep foot on base when possible
5. Complete 20-25 reps
6. Mix heights and speeds

Coaching Points:
- Stay down on low throws
- Scoop up, don''t stab down
- Foot stays on base
- Soft hands absorb short hops',
null,
10,
null,
'Fielding',
'intermediate',
ARRAY['Baseballs', 'gloves', 'first base'],
2),

('Cut-Off and Relay Drill',
'Teaches proper positioning and execution of cut-off and relay throws.',
'1. Set up full defense
2. Coach hits ball to outfield
3. Outfielder fields and throws to cut-off man
4. Cut-off man (infielder) lines up properly
5. Either cuts or lets ball through
6. Practice all scenarios (runner at 2nd, 3rd, etc.)

Coaching Points:
- Cut-off man in direct line
- Outfielder throws to cut-off''s head
- Cut-off listens for "cut" or "through"
- Quick decisions based on runner position',
null,
15,
null,
'Fielding',
'advanced',
ARRAY['Baseballs', 'gloves', 'full field'],
6),

('Infield Communication Drill',
'Develops communication skills on pop-ups and ground balls.',
'1. Infielders at positions
2. Coach hits pop-ups between positions
3. Players call "I got it!" or "You take it!"
4. Repeat with various locations
5. Add priority rules (SS over 2B, etc.)
6. Practice until automatic

Coaching Points:
- Loud, clear calls
- Establish priority system
- Take command with voice
- Back up after call',
null,
12,
null,
'Fielding',
'intermediate',
ARRAY['Baseballs', 'gloves'],
5),

('Outfield One-Hop Throws',
'Improves throwing accuracy and arm strength for outfielders.',
'1. Outfielder starts at normal depth
2. Field ground ball or fly ball
3. Crow hop and throw to base
4. Goal: ball bounces once before reaching base
5. Aim for top of cut-off man''s head
6. Complete 15-20 throws

Coaching Points:
- Strong, accurate throws
- Proper crow hop for momentum
- Follow through toward target
- Hit cut-off man in chest/head area',
null,
15,
null,
'Fielding',
'advanced',
ARRAY['Baseballs', 'gloves', 'bases'],
3),

('Bunt Defense Drill',
'Teaches infielders and pitcher proper positioning and execution on bunts.',
'1. Full infield in bunt defense positions
2. Coach or player bunts ball
3. Pitcher, 1B, 3B crash appropriately
4. Fielder calls ball, makes throw
5. Practice throws to all bases
6. Rotate positions

Coaching Points:
- Pitcher breaks on pitch
- Corners crash hard
- Call ball loudly
- Make accurate throw to proper base',
null,
15,
null,
'Fielding',
'advanced',
ARRAY['Baseballs', 'bats', 'gloves'],
6);

-- Instructions for coaches:
-- After running this seed file, you can query drills by division, category, or difficulty
-- Examples:
-- SELECT * FROM drills WHERE skill_category = 'Hitting' AND difficulty_level = 'beginner';
-- SELECT * FROM drills WHERE difficulty_level = 'intermediate' ORDER BY skill_category;
-- SELECT title, description FROM drills WHERE 'baseballs' = ANY(equipment_needed);
