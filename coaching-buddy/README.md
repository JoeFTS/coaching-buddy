# Coaching Buddy

A comprehensive baseball practice planning web application for Pony Baseball coaches.

## Features

- **Custom Practice Plans**: Generate age-appropriate practice plans tailored to your team's division and available time
- **Drill Library**: Access hundreds of drills with video tutorials designed for each Pony Baseball division
- **Skill Checklists**: Interactive skill checklists for each Pony Baseball division
- **Coach Community**: Share tips, drills, and advice with other coaches in the community feed
- **Resource Center**: Quick access to official Pony Baseball rules, field specifications, and coaching guides
- **PDF Export**: Export practice plans as formatted PDFs
- **User Dashboard**: Save, organize, edit, and duplicate practice plans

## Tech Stack

- **Framework**: Next.js 16 with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS with shadcn/ui components
- **Database**: Supabase (PostgreSQL)
- **Authentication**: Supabase Auth
- **PDF Generation**: react-pdf (to be implemented)
- **Deployment**: Designed for Hostinger at coaching.fctools.cloud

## Getting Started

### Prerequisites

- Node.js 18+ installed
- A Supabase account (free tier works great)

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd coaching-buddy
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up Supabase**
   - Create a new project at [https://supabase.com](https://supabase.com)
   - Go to Settings > API to find your project URL and anon key
   - Go to the SQL Editor and run the complete schema from `DATABASE_SCHEMA.md`

4. **Configure environment variables**
   - Rename `.env.example` to `.env.local`
   - Update with your Supabase credentials:
     ```
     NEXT_PUBLIC_SUPABASE_URL=your-project-url
     NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
     ```

5. **Run the development server**
   ```bash
   npm run dev
   ```

6. **Open your browser**
   - Navigate to [http://localhost:3000](http://localhost:3000)

## Project Structure

```
coaching-buddy/
├── app/                        # Next.js app router
│   ├── (auth)/                # Auth routes
│   │   ├── login/
│   │   └── register/
│   ├── dashboard/             # Protected dashboard routes
│   │   ├── plans/             # Practice plans
│   │   ├── drills/            # Drill library
│   │   ├── community/         # Social feed
│   │   └── resources/         # Resource center
│   ├── api/                   # API routes
│   ├── layout.tsx
│   └── page.tsx               # Landing page
├── components/
│   ├── ui/                    # shadcn/ui components
│   ├── layout/                # Layout components
│   ├── practice/              # Practice plan components
│   ├── drills/                # Drill components
│   └── social/                # Feed components
├── lib/
│   ├── supabase/              # Supabase clients
│   ├── pdf/                   # PDF generation
│   └── utils/                 # Utilities
├── types/                     # TypeScript types
├── public/                    # Static assets
└── DATABASE_SCHEMA.md         # Complete database schema
```

## Database Setup

The complete database schema is documented in `DATABASE_SCHEMA.md`. This includes:

- **10 tables**: Users, divisions, drills, practice plans, social feed, etc.
- **Row Level Security (RLS)**: All tables have proper security policies
- **Indexes**: Performance-optimized queries
- **Triggers**: Auto-updating timestamps

Follow the instructions in `DATABASE_SCHEMA.md` to set up your Supabase database.

## Pony Baseball Divisions

The app supports all 8 Pony Baseball divisions:

1. **Shetland** (Ages 5-6)
2. **Pinto** (Ages 7-8)
3. **Mustang** (Ages 9-10)
4. **Bronco** (Ages 11-12)
5. **Pony** (Ages 13-14)
6. **Colt** (Ages 15-16)
7. **Palomino** (Ages 17-18)
8. **Thorobred** (Ages 17-23)

Each division has age-appropriate drills, skill requirements, and field specifications.

## Deployment

### Deploying to Hostinger

1. **Build the application**
   ```bash
   npm run build
   ```

2. **Configure your Hostinger hosting**
   - Set up Node.js hosting
   - Configure subdomain: coaching.fctools.cloud
   - Set environment variables in hosting panel
   - Upload build files or use Git deployment

3. **Enable SSL**
   - Configure SSL certificate for coaching.fctools.cloud
   - Ensure all API calls use HTTPS

### Environment Variables for Production

Make sure to set these in your Hostinger environment:
- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`

## Next Steps (To Be Implemented)

### Phase 1: Complete Core Features
- [ ] Practice plan detail/edit page with drill selection
- [ ] Drag-and-drop drill reordering
- [ ] PDF export functionality
- [ ] Seed database with initial drills

### Phase 2: Social Features
- [ ] Community feed implementation
- [ ] Post creation and liking
- [ ] Drill sharing
- [ ] User profiles

### Phase 3: Resource Center
- [ ] Division-specific resources
- [ ] Official Pony Baseball rule links
- [ ] Field specification diagrams
- [ ] Coaching guides

### Phase 4: Polish
- [ ] Mobile responsiveness testing
- [ ] Performance optimization
- [ ] SEO improvements
- [ ] Analytics integration

## Contributing

This is a private project for Pony Baseball coaches. If you'd like to contribute:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

MIT License - feel free to use and modify for your coaching needs.

## Support

For questions or issues:
- Check the `DATABASE_SCHEMA.md` for database questions
- Review Next.js documentation for framework questions
- Check Supabase documentation for auth/database questions

## Acknowledgments

- Pony Baseball for division structure and resources
- shadcn/ui for beautiful UI components
- Supabase for the backend infrastructure
- Next.js team for the excellent framework
