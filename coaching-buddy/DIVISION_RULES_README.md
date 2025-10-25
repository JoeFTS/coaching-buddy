# Division-Specific Rules Feature

This feature adds division-specific rules and resources for all 8 Pony Baseball divisions to the Coaching Buddy application.

## Overview

Each Pony Baseball division (Shetland through Thorobred) now has its own dedicated rules page showing:
- Official division rules and specifications
- Field dimensions (base distance, pitching distance)
- Links to official PONY Baseball rulebooks
- Division-specific coaching resources

## What Was Added

### 1. Division Rules SQL Script (`division_rules.sql`)

This SQL script populates the `resources` table with division-specific information for all 8 divisions:

**For Each Division:**
- Official rules and specifications
- Field dimension specifications
- Links to pony.org official pages

**General Resources (All Divisions):**
- 2025 PONY Baseball Official Rulebook (PDF)
- PONY Baseball Field Specifications
- Pitch Smart Guidelines

### 2. Division Rules Page (`app/divisions/[slug]/page.tsx`)

A dynamic Next.js page that displays division-specific information:
- Shows division name, age range, and description
- Displays field dimensions (base distance and pitching distance)
- Lists all resources for that division with icons and descriptions
- Links to official PONY Baseball resources
- Call-to-action to create practice plans

### 3. Updated Landing Page (`app/page.tsx`)

The front page now has clickable division cards:
- Each division card is now a link to its rules page
- Added hover effects and visual feedback
- Includes instruction text: "Click any division to view official rules and field specifications"

## How to Use

### Installation

1. **Run the SQL script in Supabase:**
   ```bash
   # Open Supabase SQL Editor
   # Copy contents of division_rules.sql
   # Paste and run
   ```

2. **Verify the data:**
   ```sql
   SELECT
     COALESCE(pd.name, 'All Divisions') as division,
     COUNT(*) as resource_count
   FROM resources r
   LEFT JOIN pony_divisions pd ON r.division_id = pd.id
   GROUP BY pd.name, pd.display_order
   ORDER BY COALESCE(pd.display_order, 999);
   ```

### User Experience

**From Landing Page:**
1. User sees 8 division cards in a grid
2. User clicks on any division (e.g., "Mustang")
3. User is taken to `/divisions/mustang`
4. User sees:
   - Division name and age range
   - Field dimensions in highlighted boxes
   - List of official resources with descriptions
   - Links to official PONY Baseball materials
   - Button to create practice plans

## Division Information

### Field Dimensions by Division

| Division | Ages | Base Distance | Pitching Distance | Game Length |
|----------|------|---------------|-------------------|-------------|
| Shetland | 5-6 | 50 feet | Tee/Coach Pitch | 6 innings |
| Pinto | 7-8 | 50 feet | 38 feet | 6 innings |
| Mustang | 9-10 | 60 feet | 46 feet | 6 innings |
| Bronco | 11-12 | 70 feet | 50 feet | 7 innings |
| Pony | 13-14 | 80 feet | 54 feet | 7 innings |
| Colt | 15-16 | 90 feet | 60'6" | 7 innings |
| Palomino | 17-18 | 90 feet | 60'6" | 7-9 innings |
| Thorobred | 17-23 | 90 feet | 60'6" | 7-9 innings |

### Key Rules by Division

**Shetland (5-6):**
- Batting tee recommended
- No pitching allowed
- Focus on instruction
- Free substitution

**Pinto (7-8):**
- Coach-pitch recommended
- Basic fundamentals
- Free substitution
- No player participation rules

**Mustang (9-10):**
- Complete game training
- Tournament play through World Series
- Player re-entry allowed (once)
- Pitch Smart rules apply

**Bronco (11-12):**
- Full game of baseball
- No stealing restrictions
- Tournament play through World Series
- Player re-entry allowed (once)

**Pony (13-14):**
- Advanced play
- Standard high school rules
- Tournament play through World Series
- Player re-entry allowed (once)

**Colt (15-16):**
- High school level
- BBCOR bats only (2-⅝" -3)
- Player re-entry allowed (once)
- Pitch Smart rules apply

**Palomino (17-18):**
- High school/college level
- BBCOR bats only (2-⅝" -3)
- Player re-entry allowed (once)
- 7 or 9 inning games

**Thorobred (17-23):**
- Open competition
- **Wooden bats ONLY**
- Player re-entry allowed (once)
- MLB specifications

## Data Structure

### Resources Table

```sql
CREATE TABLE resources (
  id UUID PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  url VARCHAR(500) NOT NULL,
  resource_type VARCHAR(50) NOT NULL, -- rulebook, field_specs, coaching_guide, video
  division_id UUID REFERENCES pony_divisions(id), -- null = applies to all
  display_order INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
```

### Resource Types

- **`rulebook`**: Official rules and regulations
- **`field_specs`**: Field dimensions and specifications
- **`coaching_guide`**: Coaching resources and guides
- **`video`**: Instructional videos

## Official Sources

All information is sourced from official PONY Baseball resources:

- **Official Website**: https://www.pony.org
- **2025 Rulebook**: https://cdn1.sportngin.com/attachments/document/9da7-2695417/2025_PONY_Baseball_Rulebook.pdf
- **Field Specifications**: https://www.pony.org/Default.aspx?tabid=1026013
- **Pitch Smart Guidelines**: https://www.mlb.com/pitch-smart/pitching-guidelines

## Maintenance

### Adding New Resources

To add additional resources for a division:

```sql
INSERT INTO resources (title, description, url, resource_type, division_id, display_order)
SELECT
  'Resource Title',
  'Detailed description of the resource',
  'https://url-to-resource.com',
  'rulebook', -- or field_specs, coaching_guide, video
  id,
  3 -- display order
FROM pony_divisions WHERE name = 'Mustang';
```

### Updating Rules

When PONY Baseball releases updated rulebooks:

1. Update the general rulebook URL:
```sql
UPDATE resources
SET url = 'https://new-rulebook-url.pdf',
    title = '2026 PONY Baseball Official Rulebook'
WHERE title LIKE '%Official Rulebook%' AND division_id IS NULL;
```

2. Update division-specific descriptions if rules change:
```sql
UPDATE resources
SET description = 'Updated description with new rules'
WHERE title = 'Bronco Division Rules (Ages 11-12)';
```

## URL Structure

- Landing page: `/`
- Division rules: `/divisions/{slug}`
  - Example: `/divisions/shetland`
  - Example: `/divisions/mustang`
  - Example: `/divisions/thorobred`

## Future Enhancements

Potential improvements for this feature:

1. **Printable Format**: Add "Print Rules" button for each division
2. **Downloadable PDFs**: Generate division-specific rule PDFs
3. **Rule Comparisons**: Side-by-side comparison of rules between divisions
4. **Local League Rules**: Allow leagues to add their own local rules
5. **Rule Search**: Search functionality across all division rules
6. **Rule Updates**: Notification system when rules are updated
7. **Mobile App**: Deep linking to division rules in mobile app
8. **Translations**: Multi-language support for international leagues

## Technical Notes

- Uses Next.js 16 dynamic routes with `[slug]` parameter
- Client-side rendering for dynamic content
- Fetches data from Supabase on page load
- Responsive design for mobile and desktop
- Proper error handling and loading states
- SEO-friendly URLs

## Support

For questions or issues:
1. Check the official PONY Baseball website: https://www.pony.org
2. Review the 2025 PONY Baseball Rulebook
3. Contact your local PONY Baseball league

---

**Created:** October 2025
**Last Updated:** October 2025
**Version:** 1.0
**Divisions Covered:** All 8 (Shetland through Thorobred)
