import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'

export default async function DashboardPage() {
  const supabase = await createClient()

  const {
    data: { user },
  } = await supabase.auth.getUser()

  // Fetch user profile
  const { data: profile } = await supabase
    .from('users')
    .select('*, pony_divisions(*)')
    .eq('id', user!.id)
    .single()

  // Fetch user's practice plans count
  const { count: plansCount } = await supabase
    .from('practice_plans')
    .select('*', { count: 'exact', head: true })
    .eq('user_id', user!.id)

  // Fetch user's favorite drills count
  const { count: favoritesCount } = await supabase
    .from('drill_favorites')
    .select('*', { count: 'exact', head: true })
    .eq('user_id', user!.id)

  return (
    <div className="container mx-auto px-4 py-8">
      <div className="mb-8">
        <h1 className="text-3xl font-bold text-gray-900">
          Welcome back, {profile?.full_name || 'Coach'}!
        </h1>
        <p className="text-gray-600 mt-2">
          {profile?.team_name || 'Ready to plan your next practice?'}
        </p>
      </div>

      <div className="grid md:grid-cols-3 gap-6 mb-8">
        <Card>
          <CardHeader>
            <CardTitle className="text-4xl font-bold text-blue-600">
              {plansCount || 0}
            </CardTitle>
            <CardDescription>Practice Plans</CardDescription>
          </CardHeader>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle className="text-4xl font-bold text-blue-600">
              {favoritesCount || 0}
            </CardTitle>
            <CardDescription>Favorite Drills</CardDescription>
          </CardHeader>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle className="text-lg font-semibold">
              {profile?.pony_divisions?.name || 'Not Set'}
            </CardTitle>
            <CardDescription>
              {profile?.pony_divisions?.age_min && profile?.pony_divisions?.age_max
                ? `Ages ${profile.pony_divisions.age_min}-${profile.pony_divisions.age_max}`
                : 'Your Division'}
            </CardDescription>
          </CardHeader>
        </Card>
      </div>

      <div className="grid md:grid-cols-2 gap-6">
        <Card>
          <CardHeader>
            <CardTitle>Quick Actions</CardTitle>
            <CardDescription>Get started with these common tasks</CardDescription>
          </CardHeader>
          <CardContent className="space-y-3">
            <Link href="/dashboard/plans/new">
              <Button className="w-full" size="lg">
                Create New Practice Plan
              </Button>
            </Link>
            <Link href="/dashboard/drills">
              <Button className="w-full" variant="outline" size="lg">
                Browse Drills
              </Button>
            </Link>
            <Link href="/dashboard/resources">
              <Button className="w-full" variant="outline" size="lg">
                View Coaching Resources
              </Button>
            </Link>
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle>Your Practice Plans</CardTitle>
            <CardDescription>View and manage your saved plans</CardDescription>
          </CardHeader>
          <CardContent>
            <Link href="/dashboard/plans">
              <Button className="w-full" variant="outline">
                View All Plans
              </Button>
            </Link>
          </CardContent>
        </Card>
      </div>
    </div>
  )
}
