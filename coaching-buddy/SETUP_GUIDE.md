# Coaching Buddy - Complete Setup Guide

This guide will walk you through setting up Coaching Buddy from scratch.

## Table of Contents
1. [Supabase Setup](#supabase-setup)
2. [Environment Configuration](#environment-configuration)
3. [Database Schema](#database-schema)
4. [Initial Data Population](#initial-data-population)
5. [Running the Application](#running-the-application)
6. [Testing the Application](#testing-the-application)
7. [Deployment to Hostinger](#deployment-to-hostinger)

---

## 1. Supabase Setup

### Create a Supabase Project

1. Go to [https://supabase.com](https://supabase.com)
2. Click "Start your project"
3. Sign in with GitHub or email
4. Click "New Project"
5. Fill in the details:
   - **Name**: coaching-buddy
   - **Database Password**: Create a strong password (save this!)
   - **Region**: Choose closest to your users
   - **Pricing Plan**: Free tier is fine to start
6. Click "Create new project"
7. Wait 2-3 minutes for your project to be set up

### Get Your API Credentials

1. Once the project is created, go to **Settings** (gear icon in left sidebar)
2. Click **API** in the settings menu
3. You'll see two important values:
   - **Project URL**: Something like `https://xxxxx.supabase.co`
   - **anon/public key**: A long JWT token
4. **Copy these values** - you'll need them next

---

## 2. Environment Configuration

1. **Open your project folder** in VS Code or your editor
   ```
   d:/VS Code/coaching-buddy
   ```

2. **Find the `.env.local` file**

3. **Update it with your Supabase credentials:**
   ```
   NEXT_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
   NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key-here
   ```

4. **Save the file**

⚠️ **IMPORTANT**: Never commit `.env.local` to Git. It's already in `.gitignore`.

---

## 3. Database Schema

### Run the SQL Script

1. **Go back to your Supabase dashboard**
2. Click **SQL Editor** in the left sidebar
3. Click **New Query**
4. **Open `DATABASE_SCHEMA.md`** in your project
5. **Copy ALL the SQL code** from that file
6. **Paste it into the SQL Editor** in Supabase
7. Click **Run** (or press Ctrl/Cmd + Enter)
8. You should see "Success. No rows returned" - this is correct!

### Verify the Setup

1. Click **Table Editor** in the left sidebar
2. You should see all these tables:
   - `pony_divisions`
   - `users`
   - `drills`
   - `practice_plans`
   - `practice_plan_drills`
   - `feed_posts`
   - `post_likes`
   - `drill_favorites`
   - `division_skills`
   - `resources`

3. Click on `pony_divisions` table
4. You should see 8 rows with divisions (Shetland, Pinto, Mustang, etc.)

---

## 4. Initial Data Population

### Add Sample Drills

For now, let's add a few drills manually to test the system. Go back to SQL Editor and run:

```sql
-- Insert sample drills for different divisions
INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Tee Ball Basics',
  'Introduction to hitting from a tee for young players.',
  '1. Set up tee at appropriate height\n2. Player takes proper stance\n3. Coach demonstrates swing path\n4. Player practices 10 swings\n5. Provide encouragement and corrections',
  'https://www.youtube.com/watch?v=example',
  15,
  id,
  'hitting',
  'beginner',
  ARRAY['Batting tee', 'Bat', 'Balls', 'Helmet'],
  1
FROM pony_divisions WHERE name = 'Shetland';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Ground Ball Fundamentals',
  'Teaching proper fielding mechanics for ground balls.',
  '1. Players line up in ready position\n2. Coach rolls ball\n3. Field with glove down, butt down\n4. Secure ball with throwing hand\n5. Come up throwing\n6. Repeat 10 times per player',
  'https://www.youtube.com/watch?v=example',
  20,
  id,
  'fielding',
  'beginner',
  ARRAY['Gloves', 'Baseballs'],
  2
FROM pony_divisions WHERE name = 'Pinto';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Base Running - Reading Fly Balls',
  'Teaching runners how to tag up and advance on fly balls.',
  '1. Runner on base\n2. Coach hits/throws fly ball\n3. Runner reads depth of ball\n4. Tag up if deep, halfway if shallow\n5. Sprint on catch\n6. Practice both scenarios',
  'https://www.youtube.com/watch?v=example',
  15,
  id,
  'baserunning',
  'intermediate',
  ARRAY['Bases', 'Baseballs', 'Bat'],
  3
FROM pony_divisions WHERE name = 'Mustang';

INSERT INTO drills (title, description, instructions, video_url, duration_minutes, division_id, skill_category, difficulty_level, equipment_needed, min_players)
SELECT
  'Pitching Mechanics - Four Seam Fastball',
  'Proper grip and mechanics for throwing a four seam fastball.',
  '1. Demonstrate proper four-seam grip\n2. Review wind-up or stretch position\n3. Focus on balance point\n4. Drive toward plate\n5. Follow through with arm and body\n6. Throw 20-30 pitches with feedback',
  'https://www.youtube.com/watch?v=example',
  25,
  id,
  'pitching',
  'intermediate',
  ARRAY['Baseballs', 'Mound', 'Catcher gear'],
  2
FROM pony_divisions WHERE name = 'Bronco';
```

### Add Resource Links

```sql
-- Insert official Pony Baseball resources
INSERT INTO resources (title, description, url, resource_type, division_id, display_order) VALUES
  ('Official 2025 Pony Baseball Rulebook', 'Complete rulebook for all divisions', 'https://www.pony.org/Default.aspx?tabid=1026027', 'rulebook', NULL, 1),
  ('Baseball Field Specifications', 'Official field dimensions by division', 'https://www.pony.org/Default.aspx?tabid=1026013', 'field_specs', NULL, 2),
  ('PONY Coaching Education Center', 'Online training and certification courses', 'https://www.ponycoaching.org', 'coaching_guide', NULL, 3),
  ('MOJO Coaching App', 'Practice plans and instructional videos (Pony Baseball partner)', 'https://www.mojo.sport', 'coaching_guide', NULL, 4);
```

### Add Sample Skills

```sql
-- Insert skill checklists for Shetland division
INSERT INTO division_skills (division_id, skill_name, skill_category, description, display_order)
SELECT id, 'Proper batting stance', 'hitting', 'Feet shoulder-width apart, knees slightly bent, bat on shoulder', 1
FROM pony_divisions WHERE name = 'Shetland'
UNION ALL
SELECT id, 'Throwing grip', 'throwing', 'Four-seam grip across the seams', 2
FROM pony_divisions WHERE name = 'Shetland'
UNION ALL
SELECT id, 'Ready position', 'fielding', 'Knees bent, glove down, eyes on ball', 3
FROM pony_divisions WHERE name = 'Shetland';

-- Add more skills for other divisions as needed
```

---

## 5. Running the Application

### Start the Development Server

1. **Open terminal** in your project folder
2. **Run the dev server:**
   ```bash
   npm run dev
   ```
3. **Open your browser** to http://localhost:3000

You should see the Coaching Buddy landing page!

---

## 6. Testing the Application

### Test User Registration

1. Click **"Get Started"** or **"Sign Up"**
2. Fill in the form:
   - **Full Name**: Coach Test
   - **Email**: your-email@example.com
   - **Password**: test123456
3. Click **"Create Account"**
4. You should be redirected to the dashboard

### Test Practice Plan Creation

1. From the dashboard, click **"Create New Practice Plan"**
2. Fill in the form:
   - **Title**: Week 1 Practice
   - **Division**: Choose any division (e.g., Bronco)
   - **Duration**: 60 minutes
   - **Date**: Pick today's date
3. Click **"Create Plan"**

### Verify in Supabase

1. Go back to Supabase dashboard
2. Click **Table Editor** > **users**
3. You should see your user record
4. Click **practice_plans**
5. You should see your practice plan

---

## 7. Deployment to Hostinger

### Build for Production

1. **Test the production build locally:**
   ```bash
   npm run build
   npm run start
   ```

2. **Verify everything works** at http://localhost:3000

### Prepare for Hostinger

1. **Check Hostinger requirements:**
   - Node.js version support (check current version: `node -v`)
   - SSH access or Git deployment options

2. **Build output location:**
   - Next.js builds to `.next/` folder
   - Production files are in `.next/standalone/` (if configured)

### Option A: Git Deployment (Recommended)

1. **Initialize Git** (if not already):
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   ```

2. **Push to GitHub/GitLab:**
   ```bash
   git remote add origin <your-repo-url>
   git push -u origin main
   ```

3. **In Hostinger:**
   - Enable Git deployment
   - Connect to your repository
   - Set build command: `npm install && npm run build`
   - Set start command: `npm run start`

### Option B: FTP Upload

1. **Build the project:**
   ```bash
   npm run build
   ```

2. **Upload these files via FTP:**
   - `.next/` folder
   - `node_modules/` folder
   - `package.json`
   - `package-lock.json`
   - `public/` folder
   - Any config files

3. **On the server:**
   - Install Node.js if not available
   - Run `npm run start`

### Configure Subdomain

1. **In Hostinger control panel:**
   - Go to Domains > Subdomains
   - Add: `coaching.fctools.cloud`
   - Point to your application directory

2. **Set up SSL:**
   - Enable free SSL certificate for subdomain
   - Force HTTPS redirects

### Set Environment Variables

In Hostinger, add these environment variables:
```
NEXT_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
NODE_ENV=production
```

### Test Production Deployment

1. Visit `https://coaching.fctools.cloud`
2. Test registration and login
3. Test creating a practice plan
4. Verify all features work

---

## Troubleshooting

### "Failed to connect to Supabase"
- Check `.env.local` has correct URL and key
- Verify Supabase project is active
- Check for typos in environment variables

### "Table doesn't exist"
- Re-run the SQL schema from `DATABASE_SCHEMA.md`
- Verify all tables appear in Table Editor

### "Authentication failed"
- Check Supabase Auth settings
- Verify email confirmations are disabled (Settings > Auth > Email Auth > Confirm email = OFF for testing)

### Build errors
- Run `npm install` again
- Delete `node_modules` and `.next` folders
- Run `npm install` fresh
- Try `npm run build` again

---

## Next Steps

Now that your application is set up, you can:

1. **Add more drills** to the database
2. **Customize the UI** colors and branding
3. **Implement remaining features** (see TODO list below)
4. **Invite coaches** to test the application

## Feature TODO List

### High Priority
- [ ] Practice plan edit page with drill selection
- [ ] Drag-and-drop drill reordering
- [ ] PDF export functionality
- [ ] Bulk drill import (CSV or JSON)

### Medium Priority
- [ ] Community feed page
- [ ] User profile editing
- [ ] Drill search and filtering
- [ ] Practice plan templates

### Low Priority
- [ ] Dark mode
- [ ] Email notifications
- [ ] Coach-to-coach messaging
- [ ] Mobile app (PWA)

---

## Support

If you encounter issues:
1. Check this guide first
2. Review `README.md` for general info
3. Check Supabase logs in your dashboard
4. Review Next.js documentation: https://nextjs.org/docs

Good luck with Coaching Buddy! 🎉⚾
