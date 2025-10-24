export default function Home() {
  return (
    <div className="min-h-screen bg-white">
      {/* Navigation */}
      <nav className="fixed top-0 w-full bg-white/80 backdrop-blur-xl border-b border-gray-100 z-50">
        <div className="max-w-7xl mx-auto px-6 lg:px-8">
          <div className="flex items-center justify-between h-16">
            <div className="flex items-center gap-2">
              <div className="w-2 h-2 rounded-full bg-primary-blue"></div>
              <span className="text-lg font-semibold">Coaching Buddy</span>
            </div>
            <div className="flex items-center gap-4">
              <a href="/auth/login" className="text-sm font-medium text-gray-600 hover:text-gray-900 transition-colors">
                Log in
              </a>
              <a href="/auth/register" className="px-5 py-2.5 text-sm font-medium bg-primary-blue text-white rounded-full hover:bg-primary-slate transition-all hover:scale-105">
                Sign up
              </a>
            </div>
          </div>
        </div>
      </nav>

      {/* Hero Section */}
      <section className="pt-32 pb-20 px-6 lg:px-8 relative overflow-hidden">
        {/* Background decoration */}
        <div className="absolute top-0 right-0 w-[500px] h-[500px] bg-primary-blue/5 rounded-full blur-3xl"></div>
        <div className="absolute bottom-0 left-0 w-[400px] h-[400px] bg-primary-green/5 rounded-full blur-3xl"></div>

        <div className="max-w-7xl mx-auto relative">
          <div className="max-w-4xl mx-auto text-center">
            <div className="inline-flex items-center gap-2 px-4 py-2 bg-primary-cream rounded-full mb-8">
              <span className="text-sm font-medium text-primary-blue">✨ Built for Pony Baseball Coaches</span>
            </div>

            <h1 className="text-6xl md:text-7xl lg:text-8xl font-bold tracking-tight mb-8 leading-none">
              Practice planning
              <span className="block bg-gradient-to-r from-primary-blue via-primary-slate to-primary-green bg-clip-text text-transparent">
                made simple
              </span>
            </h1>

            <p className="text-xl md:text-2xl text-gray-600 mb-12 max-w-3xl mx-auto leading-relaxed">
              Create professional practice plans in minutes. Tailored for every Pony Baseball division with age-appropriate drills and expert guidance.
            </p>

            <div className="flex flex-col sm:flex-row gap-4 justify-center items-center">
              <a href="/auth/register" className="group relative px-8 py-4 bg-primary-blue text-white rounded-full font-semibold overflow-hidden hover:scale-105 transition-transform">
                <span className="relative z-10 flex items-center gap-2">
                  Get started free
                  <svg className="w-5 h-5 group-hover:translate-x-1 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17 8l4 4m0 0l-4 4m4-4H3" />
                  </svg>
                </span>
              </a>
              <a href="#features" className="px-8 py-4 bg-gray-50 text-gray-900 rounded-full font-semibold hover:bg-gray-100 transition-all">
                See how it works
              </a>
            </div>
          </div>
        </div>
      </section>

      {/* Visual showcase cards */}
      <section className="py-16 px-6 lg:px-8">
        <div className="max-w-7xl mx-auto">
          <div className="grid md:grid-cols-2 gap-6">
            {/* Card 1 - Large featured */}
            <div className="md:col-span-2 relative overflow-hidden rounded-3xl bg-gradient-to-br from-primary-blue to-primary-slate p-12 text-white">
              <div className="relative z-10 max-w-2xl">
                <h3 className="text-3xl font-bold mb-4">500+ Age-Appropriate Drills</h3>
                <p className="text-lg text-white/90 mb-6">From Shetland to Thorobred, every drill is carefully selected for each division's skill level and development goals.</p>
                <div className="flex gap-3">
                  <span className="px-4 py-2 bg-white/20 backdrop-blur-sm rounded-full text-sm font-medium">Video tutorials</span>
                  <span className="px-4 py-2 bg-white/20 backdrop-blur-sm rounded-full text-sm font-medium">Step-by-step</span>
                  <span className="px-4 py-2 bg-white/20 backdrop-blur-sm rounded-full text-sm font-medium">Equipment lists</span>
                </div>
              </div>
              <div className="absolute top-0 right-0 w-64 h-64 bg-white/10 rounded-full blur-3xl"></div>
            </div>

            {/* Card 2 */}
            <div className="relative overflow-hidden rounded-3xl bg-primary-cream p-8 border border-gray-200 hover:shadow-xl transition-all duration-300 hover:-translate-y-1">
              <div className="text-5xl mb-4">⚡</div>
              <h3 className="text-2xl font-bold mb-3">Lightning Fast</h3>
              <p className="text-gray-600 leading-relaxed">Generate a complete practice plan in under 60 seconds. No more spending hours on planning.</p>
            </div>

            {/* Card 3 */}
            <div className="relative overflow-hidden rounded-3xl bg-gradient-to-br from-primary-green to-primary-yellow p-8 text-white hover:shadow-xl transition-all duration-300 hover:-translate-y-1">
              <div className="text-5xl mb-4">📱</div>
              <h3 className="text-2xl font-bold mb-3">Works Everywhere</h3>
              <p className="text-white/90 leading-relaxed">Access your plans from any device. Mobile-optimized for on-field use.</p>
            </div>
          </div>
        </div>
      </section>

      {/* Divisions Grid */}
      <section className="py-24 px-6 lg:px-8 bg-gray-50">
        <div className="max-w-7xl mx-auto">
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold mb-4">All 8 Pony Baseball Divisions</h2>
            <p className="text-xl text-gray-600">Comprehensive support from beginner to advanced</p>
          </div>

          <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
            {[
              { name: "Shetland", age: "5-6", color: "from-primary-blue to-blue-600" },
              { name: "Pinto", age: "7-8", color: "from-primary-slate to-blue-500" },
              { name: "Mustang", age: "9-10", color: "from-primary-green to-green-600" },
              { name: "Bronco", age: "11-12", color: "from-primary-yellow to-yellow-500" },
              { name: "Pony", age: "13-14", color: "from-primary-blue to-primary-slate" },
              { name: "Colt", age: "15-16", color: "from-primary-slate to-primary-green" },
              { name: "Palomino", age: "17-18", color: "from-primary-green to-primary-yellow" },
              { name: "Thorobred", age: "17-23", color: "from-primary-yellow to-primary-blue" },
            ].map((division, i) => (
              <div key={i} className="group relative overflow-hidden rounded-2xl aspect-[4/5] hover:scale-105 transition-all duration-300 cursor-pointer">
                <div className={`absolute inset-0 bg-gradient-to-br ${division.color}`}></div>
                <div className="absolute inset-0 bg-black/20 group-hover:bg-black/10 transition-colors"></div>
                <div className="relative h-full flex flex-col items-center justify-center text-white p-6 text-center">
                  <div className="text-3xl font-bold mb-2">{division.name}</div>
                  <div className="text-sm font-medium opacity-90">Ages {division.age}</div>
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Features Grid */}
      <section id="features" className="py-24 px-6 lg:px-8">
        <div className="max-w-7xl mx-auto">
          <div className="grid md:grid-cols-3 gap-8">
            {[
              { icon: "📋", title: "Smart Plans", desc: "AI-powered practice plans that adapt to your team's needs" },
              { icon: "🎯", title: "Skill Tracking", desc: "Monitor player development with interactive skill checklists" },
              { icon: "📊", title: "PDF Export", desc: "Print professional plans to bring to the field" },
              { icon: "👥", title: "Community", desc: "Share tips and drills with coaches worldwide" },
              { icon: "🎥", title: "Video Library", desc: "Watch tutorials for every drill in the database" },
              { icon: "⚙️", title: "Customizable", desc: "Drag and drop to adjust your practice flow" },
            ].map((feature, i) => (
              <div key={i} className="group p-8 rounded-2xl bg-white border border-gray-200 hover:border-primary-blue hover:shadow-lg transition-all duration-300">
                <div className="text-4xl mb-4">{feature.icon}</div>
                <h3 className="text-xl font-bold mb-3">{feature.title}</h3>
                <p className="text-gray-600 leading-relaxed">{feature.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-24 px-6 lg:px-8 bg-gradient-to-br from-primary-blue via-primary-slate to-primary-green relative overflow-hidden">
        <div className="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48ZGVmcz48cGF0dGVybiBpZD0iZ3JpZCIgd2lkdGg9IjQwIiBoZWlnaHQ9IjQwIiBwYXR0ZXJuVW5pdHM9InVzZXJTcGFjZU9uVXNlIj48cGF0aCBkPSJNIDQwIDAgTCAwIDAgMCA0MCIgZmlsbD0ibm9uZSIgc3Ryb2tlPSJ3aGl0ZSIgc3Ryb2tlLW9wYWNpdHk9IjAuMSIgc3Ryb2tlLXdpZHRoPSIxIi8+PC9wYXR0ZXJuPjwvZGVmcz48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyaWQpIi8+PC9zdmc+')] opacity-30"></div>

        <div className="max-w-4xl mx-auto text-center relative z-10">
          <h2 className="text-5xl md:text-6xl font-bold text-white mb-6">
            Ready to transform your coaching?
          </h2>
          <p className="text-xl text-white/90 mb-10">
            Join coaches who are creating better practices with Coaching Buddy
          </p>
          <a href="/auth/register" className="inline-flex items-center gap-2 px-10 py-5 bg-white text-primary-blue rounded-full font-bold text-lg hover:scale-105 transition-transform shadow-2xl">
            Get started for free
            <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17 8l4 4m0 0l-4 4m4-4H3" />
            </svg>
          </a>
          <p className="text-white/70 text-sm mt-6">No credit card required • Free forever</p>
        </div>
      </section>

      {/* Footer */}
      <footer className="py-12 px-6 lg:px-8 bg-gray-50 border-t border-gray-200">
        <div className="max-w-7xl mx-auto">
          <div className="flex flex-col md:flex-row justify-between items-center gap-4">
            <div className="flex items-center gap-2">
              <div className="w-2 h-2 rounded-full bg-primary-blue"></div>
              <span className="font-semibold">Coaching Buddy</span>
            </div>
            <div className="text-sm text-gray-600">
              © 2025 Coaching Buddy. All rights reserved.
            </div>
            <div className="flex gap-6 text-sm text-gray-600">
              <a href="#" className="hover:text-gray-900 transition-colors">Privacy</a>
              <a href="#" className="hover:text-gray-900 transition-colors">Terms</a>
              <a href="#" className="hover:text-gray-900 transition-colors">Contact</a>
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
}
