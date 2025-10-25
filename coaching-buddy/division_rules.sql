-- Division-Specific Rules and Resources for Pony Baseball
-- This script adds official PONY Baseball rules and specifications for each division
-- Based on official PONY Baseball 2025 Rulebook and pony.org resources

-- ============================================================
-- SHETLAND DIVISION (Ages 5-6)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Shetland Division Rules (Ages 5-6)',
  'Complete rules and specifications for Shetland Division: Batting tee recommended. Focuses totally on instruction of beginning players. Players are not permitted to pitch. Free substitution on defense. Games are 6 innings. Base Distance: 50 feet.',
  'https://www.pony.org/Default.aspx?tabid=1026027',
  'rulebook',
  id,
  1
FROM pony_divisions WHERE name = 'Shetland';

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Shetland Field Specifications',
  'Official field dimensions for Shetland Division: Base Distance: 50 feet. Fair play area: within 150 feet from home plate. Home run distance: 125-200 feet (min/max). No pitcher''s mound - uses batting tee or coach pitch.',
  'https://www.pony.org/Default.aspx?tabid=1026013',
  'field_specs',
  id,
  2
FROM pony_divisions WHERE name = 'Shetland';

-- ============================================================
-- PINTO DIVISION (Ages 7-8)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Pinto Division Rules (Ages 7-8)',
  'Complete rules and specifications for Pinto Division: Coach-pitch recommended. Teaches basic fundamentals of baseball. No player participation rules apply - free substitution on defense. Games are 6 innings. Base Distance: 50 feet. Pitching Distance: 38 feet.',
  'https://www.pony.org/Default.aspx?tabid=1026027',
  'rulebook',
  id,
  1
FROM pony_divisions WHERE name = 'Pinto';

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Pinto Field Specifications',
  'Official field dimensions for Pinto Division: Base Distance: 50 feet. Pitching Distance: 38 feet (when using player pitchers). Coach pitch from 30-35 feet recommended for beginners.',
  'https://www.pony.org/Default.aspx?tabid=1026013',
  'field_specs',
  id,
  2
FROM pony_divisions WHERE name = 'Pinto';

-- ============================================================
-- MUSTANG DIVISION (Ages 9-10)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Mustang Division Rules (Ages 9-10)',
  'Complete rules and specifications for Mustang Division: Begins players training in the complete game of baseball. Tournament play through World Series level. Games are 6 innings. Base Distance: 60 feet. Pitching Distance: 46 feet. Player re-entry allowed (one time). Pitch Smart rules apply.',
  'https://www.pony.org/Default.aspx?tabid=1026027',
  'rulebook',
  id,
  1
FROM pony_divisions WHERE name = 'Mustang';

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Mustang Field Specifications',
  'Official field dimensions for Mustang Division: Base Distance: 60 feet. Pitching Distance: 46 feet. Fair play area: 200 feet from home plate. Recommended home run distance: 200 feet.',
  'https://www.pony.org/Default.aspx?tabid=1025850',
  'field_specs',
  id,
  2
FROM pony_divisions WHERE name = 'Mustang';

-- ============================================================
-- BRONCO DIVISION (Ages 11-12)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Bronco Division Rules (Ages 11-12)',
  'Complete rules and specifications for Bronco Division: Full game of baseball with no restrictions on base stealing. Tournament play through World Series level. Games are 7 innings. Base Distance: 70 feet. Pitching Distance: 50 feet. Player re-entry allowed (one time). Pitch Smart rules apply.',
  'https://www.pony.org/Default.aspx?tabid=1026027',
  'rulebook',
  id,
  1
FROM pony_divisions WHERE name = 'Bronco';

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Bronco Field Specifications',
  'Official field dimensions for Bronco Division: Base Distance: 70 feet. Pitching Distance: 50 feet. Recommended home run distance: 225 feet at foul lines, 275 feet in center field (min 175 feet, max 275 feet).',
  'https://www.pony.org/Default.aspx?tabid=1025868',
  'field_specs',
  id,
  2
FROM pony_divisions WHERE name = 'Bronco';

-- ============================================================
-- PONY DIVISION (Ages 13-14)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Pony Division Rules (Ages 13-14)',
  'Complete rules and specifications for Pony Division: Advanced play with tournament competition through World Series level. Games are 7 innings. Base Distance: 80 feet. Pitching Distance: 54 feet. Player re-entry allowed (one time). Pitch Smart rules apply. Standard high school/college rules.',
  'https://www.pony.org/Default.aspx?tabid=1026027',
  'rulebook',
  id,
  1
FROM pony_divisions WHERE name = 'Pony';

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Pony Field Specifications',
  'Official field dimensions for Pony Division: Base Distance: 80 feet. Pitching Distance: 54 feet. Recommended home run distance: 280 feet at foul lines, 320 feet in center field.',
  'https://www.pony.org/Default.aspx?tabid=1026013',
  'field_specs',
  id,
  2
FROM pony_divisions WHERE name = 'Pony';

-- ============================================================
-- COLT DIVISION (Ages 15-16)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Colt Division Rules (Ages 15-16)',
  'Complete rules and specifications for Colt Division: Enables high school players to fine-tune skills before advancing to open competition. Games are 7 innings. Base Distance: 90 feet. Pitching Distance: 60 feet 6 inches. Only 2-⅝" -3 BBCOR certified bats allowed. Player re-entry allowed (one time). Pitch Smart rules apply.',
  'https://www.pony.org/Default.aspx?tabid=1026027',
  'rulebook',
  id,
  1
FROM pony_divisions WHERE name = 'Colt';

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Colt Field Specifications',
  'Official field dimensions for Colt Division: Base Distance: 90 feet. Pitching Distance: 60 feet 6 inches. Standard high school baseball field dimensions. Recommended home run distance: 300 feet at foul lines, 350 feet in center field.',
  'https://www.pony.org/Default.aspx?tabid=1026013',
  'field_specs',
  id,
  2
FROM pony_divisions WHERE name = 'Colt';

-- ============================================================
-- PALOMINO DIVISION (Ages 17-18)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Palomino Division Rules (Ages 17-18)',
  'Complete rules and specifications for Palomino Division: Enables high school and beginning college players to fine-tune skills before advancing to open competition. Games are 7 or 9 innings. Base Distance: 90 feet. Pitching Distance: 60 feet 6 inches. Only 2-⅝" -3 BBCOR certified bats allowed. Player re-entry allowed (one time). Pitch Smart rules apply.',
  'https://www.pony.org/Default.aspx?tabid=1026027',
  'rulebook',
  id,
  1
FROM pony_divisions WHERE name = 'Palomino';

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Palomino Field Specifications',
  'Official field dimensions for Palomino Division: Base Distance: 90 feet. Pitching Distance: 60 feet 6 inches. College-level field dimensions. Recommended home run distance: 300 feet at foul lines, 350 feet in center field.',
  'https://www.pony.org/Default.aspx?tabid=1026013',
  'field_specs',
  id,
  2
FROM pony_divisions WHERE name = 'Palomino';

-- ============================================================
-- THOROBRED DIVISION (Ages 17-23)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Thorobred Division Rules (Ages 17-23)',
  'Complete rules and specifications for Thorobred Division: For players ages 17-23. Open competition level. Games are 7 or 9 innings. Base Distance: 90 feet. Pitching Distance: 60 feet 6 inches. Wooden bats ONLY (as specified by Major League Baseball). Player re-entry allowed (one time). Pitch Smart rules apply.',
  'https://www.pony.org/Default.aspx?tabid=1026027',
  'rulebook',
  id,
  1
FROM pony_divisions WHERE name = 'Thorobred';

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Thorobred Field Specifications',
  'Official field dimensions for Thorobred Division: Base Distance: 90 feet. Pitching Distance: 60 feet 6 inches. Professional-level field dimensions. Recommended home run distance: 300 feet at foul lines, 350 feet in center field (same as MLB recommendations).',
  'https://www.pony.org/Default.aspx?tabid=1026013',
  'field_specs',
  id,
  2
FROM pony_divisions WHERE name = 'Thorobred';

-- ============================================================
-- GENERAL RESOURCES (All Divisions)
-- ============================================================

INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
VALUES
  (
    '2025 PONY Baseball Official Rulebook',
    'Complete official rulebook for all PONY Baseball divisions. Includes detailed rules, regulations, and specifications for tournament play.',
    'https://cdn1.sportngin.com/attachments/document/9da7-2695417/2025_PONY_Baseball_Rulebook.pdf',
    'rulebook',
    NULL,
    1
  ),
  (
    'PONY Baseball Field Specifications - All Divisions',
    'Comprehensive field specifications and drawings for all PONY Baseball divisions from Shetland (5-6) through Thorobred (17-23).',
    'https://www.pony.org/Default.aspx?tabid=1026013',
    'field_specs',
    NULL,
    2
  ),
  (
    'Pitch Smart Guidelines',
    'Official Pitch Smart guidelines for youth baseball. Required for Pinto 8U, Mustang 10U, Bronco 12U, Pony 14U, Colt 16U, Palomino 19U, and Thorobred 23U divisions.',
    'https://www.mlb.com/pitch-smart/pitching-guidelines',
    'coaching_guide',
    NULL,
    3
  );

-- Display summary
SELECT 'Division-specific rules and resources successfully added!' as message;
SELECT
  COALESCE(pd.name, 'All Divisions') as division,
  COUNT(*) as resource_count,
  STRING_AGG(DISTINCT r.resource_type, ', ' ORDER BY r.resource_type) as resource_types
FROM resources r
LEFT JOIN pony_divisions pd ON r.division_id = pd.id
GROUP BY pd.name, pd.display_order
ORDER BY COALESCE(pd.display_order, 999);
