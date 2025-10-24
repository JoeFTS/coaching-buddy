'use client'

import Link from 'next/link'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import { Button } from '@/components/ui/button'
import { User } from '@/types'

interface NavbarProps {
  user: User | null
}

export function Navbar({ user }: NavbarProps) {
  const router = useRouter()
  const supabase = createClient()

  const handleSignOut = async () => {
    await supabase.auth.signOut()
    router.push('/')
    router.refresh()
  }

  return (
    <nav className="border-b border-gray-200 bg-white">
      <div className="container mx-auto px-4">
        <div className="flex h-16 items-center justify-between">
          <Link href="/" className="text-xl font-bold text-blue-600">
            Coaching Buddy
          </Link>

          {user ? (
            <div className="flex items-center gap-6">
              <Link
                href="/dashboard"
                className="text-sm font-medium text-gray-700 hover:text-blue-600 transition"
              >
                Dashboard
              </Link>
              <Link
                href="/dashboard/plans"
                className="text-sm font-medium text-gray-700 hover:text-blue-600 transition"
              >
                Practice Plans
              </Link>
              <Link
                href="/dashboard/drills"
                className="text-sm font-medium text-gray-700 hover:text-blue-600 transition"
              >
                Drills
              </Link>
              <Link
                href="/dashboard/community"
                className="text-sm font-medium text-gray-700 hover:text-blue-600 transition"
              >
                Community
              </Link>
              <Link
                href="/dashboard/resources"
                className="text-sm font-medium text-gray-700 hover:text-blue-600 transition"
              >
                Resources
              </Link>
              <Button
                onClick={handleSignOut}
                variant="outline"
                size="sm"
              >
                Sign Out
              </Button>
            </div>
          ) : (
            <div className="flex items-center gap-4">
              <Link href="/auth/login">
                <Button variant="outline" size="sm">
                  Sign In
                </Button>
              </Link>
              <Link href="/auth/register">
                <Button size="sm">
                  Get Started
                </Button>
              </Link>
            </div>
          )}
        </div>
      </div>
    </nav>
  )
}
