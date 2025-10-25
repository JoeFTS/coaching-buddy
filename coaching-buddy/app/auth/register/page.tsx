'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/client'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'

export default function RegisterPage() {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [fullName, setFullName] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const router = useRouter()
  const supabase = createClient()

  const handleRegister = async (e: React.FormEvent) => {
    e.preventDefault()
    setError('')
    setLoading(true)

    try {
      // Register user with Supabase Auth
      const { data: authData, error: authError } = await supabase.auth.signUp({
        email,
        password,
        options: {
          data: {
            full_name: fullName,
          },
        },
      })

      if (authError) throw authError

      // Create user profile
      if (authData.user) {
        const { error: profileError } = await supabase
          .from('users')
          .insert({
            id: authData.user.id,
            email: authData.user.email!,
            full_name: fullName,
          })

        if (profileError) {
          console.error('Profile creation error:', profileError)
          // Don't throw error - user can complete profile later
        }
      }

      router.push('/dashboard')
      router.refresh()
    } catch (error: any) {
      setError(error.message || 'Failed to create account')
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="min-h-screen flex items-center justify-center bg-[#F5F1E8] px-4 font-mono">
      {/* Header */}
      <nav className="fixed top-0 w-full bg-black border-b-4 border-black z-50">
        <div className="max-w-6xl mx-auto px-4">
          <div className="flex items-center justify-between h-12">
            <Link href="/" className="text-sm font-bold text-[#FF6B35] uppercase tracking-wide">
              ← Coaching Buddy
            </Link>
          </div>
        </div>
      </nav>

      <div className="w-full max-w-md mt-12">
        <div className="border-4 border-black bg-white">
          <div className="bg-black text-white p-3 border-b-4 border-black">
            <h1 className="text-sm font-bold uppercase text-center">Create Account</h1>
            <p className="text-xs text-center mt-1 opacity-90">Start planning better practices</p>
          </div>
          <form onSubmit={handleRegister}>
            <div className="p-6 space-y-4">
              {error && (
                <div className="p-3 text-xs bg-[#FFE5D9] border-2 border-black">
                  <span className="font-bold uppercase">Error: </span>{error}
                </div>
              )}
              <div>
                <label className="block text-xs font-bold uppercase mb-1">Full Name</label>
                <Input
                  id="fullName"
                  type="text"
                  placeholder="Coach Smith"
                  value={fullName}
                  onChange={(e) => setFullName(e.target.value)}
                  required
                  className="border-2 border-black rounded-none font-mono text-sm focus:ring-0 focus:border-[#FF6B35]"
                />
              </div>
              <div>
                <label className="block text-xs font-bold uppercase mb-1">Email</label>
                <Input
                  id="email"
                  type="email"
                  placeholder="coach@example.com"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  required
                  className="border-2 border-black rounded-none font-mono text-sm focus:ring-0 focus:border-[#FF6B35]"
                />
              </div>
              <div>
                <label className="block text-xs font-bold uppercase mb-1">Password</label>
                <Input
                  id="password"
                  type="password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  required
                  minLength={6}
                  className="border-2 border-black rounded-none font-mono text-sm focus:ring-0 focus:border-[#FF6B35]"
                />
                <p className="text-xs opacity-75 mt-1">
                  Min 6 characters
                </p>
              </div>
            </div>
            <div className="p-6 pt-0 space-y-3">
              <Button
                type="submit"
                className="w-full bg-black hover:bg-[#FF6B35] text-white font-bold uppercase text-sm py-3 border-2 border-black rounded-none transition-colors"
                disabled={loading}
              >
                {loading ? '...' : 'Create Account'}
              </Button>
              <p className="text-xs text-center">
                <span className="opacity-75">Already have an account? </span>
                <Link href="/auth/login" className="font-bold uppercase underline hover:text-[#FF6B35]">
                  Sign in
                </Link>
              </p>
            </div>
          </form>
        </div>
      </div>
    </div>
  )
}
