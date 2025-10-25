'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/client'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'

export default function LoginPage() {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const router = useRouter()
  const supabase = createClient()

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault()
    setError('')
    setLoading(true)

    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      })

      if (error) throw error

      router.push('/dashboard')
      router.refresh()
    } catch (error: any) {
      setError(error.message || 'Failed to log in')
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
            <h1 className="text-sm font-bold uppercase text-center">Welcome Back</h1>
            <p className="text-xs text-center mt-1 opacity-90">Sign in to your account</p>
          </div>
          <form onSubmit={handleLogin}>
            <div className="p-6 space-y-4">
              {error && (
                <div className="p-3 text-xs bg-[#FFE5D9] border-2 border-black">
                  <span className="font-bold uppercase">Error: </span>{error}
                </div>
              )}
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
                  className="border-2 border-black rounded-none font-mono text-sm focus:ring-0 focus:border-[#FF6B35]"
                />
              </div>
            </div>
            <div className="p-6 pt-0 space-y-3">
              <Button
                type="submit"
                className="w-full bg-black hover:bg-[#FF6B35] text-white font-bold uppercase text-sm py-3 border-2 border-black rounded-none transition-colors"
                disabled={loading}
              >
                {loading ? '...' : 'Sign In'}
              </Button>
              <p className="text-xs text-center">
                <span className="opacity-75">Don't have an account? </span>
                <Link href="/auth/register" className="font-bold uppercase underline hover:text-[#FF6B35]">
                  Sign up
                </Link>
              </p>
            </div>
          </form>
        </div>
      </div>
    </div>
  )
}
