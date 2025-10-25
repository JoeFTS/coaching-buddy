export default function Home() {
  return (
    <div className="min-h-screen bg-[#EBF2FA]">
      {/* Navigation */}
      <nav className="fixed top-0 w-full bg-white/90 backdrop-blur-sm border-b border-gray-200 z-50">
        <div className="max-w-6xl mx-auto px-6">
          <div className="flex items-center justify-between h-14">
            <div className="flex items-center gap-2">
              <div className="text-lg font-bold tracking-tight">Coaching Buddy</div>
            </div>
            <div className="flex items-center gap-3">
              <a href="/create" className="px-4 py-2 text-sm font-medium bg-[#064789] text-white rounded-lg hover:bg-[#427AA1] transition-colors">
                Create Plan
              </a>
              <a href="/auth/login" className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-gray-900 transition-colors">
                Login
              </a>
            </div>
          </div>
        </div>
      </nav>

      {/* Main Content - Single Screen */}
      <main className="pt-20 pb-12 px-6">
        <div className="max-w-6xl mx-auto">
          {/* Hero */}
          <div className="text-center mb-12">
            <h1 className="text-5xl md:text-6xl font-bold tracking-tight mb-4">
              Practice Plans
            </h1>
            <p className="text-xl text-gray-700 max-w-2xl mx-auto mb-8">
              Create professional baseball practice plans in minutes. Built for all 8 Pony Baseball divisions.
            </p>
            <a href="/create" className="inline-flex items-center gap-2 px-6 py-3 bg-[#064789] text-white rounded-lg font-medium hover:bg-[#427AA1] transition-colors">
              Create Your First Plan
              <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17 8l4 4m0 0l-4 4m4-4H3" />
              </svg>
            </a>
          </div>

          {/* Feature Cards Grid */}
          <div className="grid md:grid-cols-3 gap-4 mb-12">
            {/* Main Feature */}
            <div className="md:col-span-2 bg-white rounded-2xl p-8 border border-gray-200">
              <div className="mb-6">
                <div className="inline-block px-3 py-1 bg-[#EBF2FA] text-[#064789] text-sm font-medium rounded-full mb-4">
                  No Login Required
                </div>
                <h2 className="text-3xl font-bold mb-3">Generate Plans Instantly</h2>
                <p className="text-gray-600 text-lg leading-relaxed">
                  Select your division, practice duration, and get a complete practice plan with age-appropriate drills. Export to PDF and take it to the field.
                </p>
              </div>
              <div className="flex flex-wrap gap-2">
                <span className="px-3 py-1 bg-[#EBF2FA] text-sm font-medium rounded-full">PDF Export</span>
                <span className="px-3 py-1 bg-[#EBF2FA] text-sm font-medium rounded-full">500+ Drills</span>
                <span className="px-3 py-1 bg-[#EBF2FA] text-sm font-medium rounded-full">Video Tutorials</span>
              </div>
            </div>

            {/* Side Card */}
            <div className="bg-gradient-to-br from-[#679436] to-[#A5BE00] rounded-2xl p-8 text-white">
              <h3 className="text-2xl font-bold mb-3">8 Divisions</h3>
              <p className="text-white/90 mb-4">
                From Shetland (5-6) to Thorobred (17-23). Every drill is tailored for each age group.
              </p>
              <div className="text-sm font-medium">Ages 5-23 covered</div>
            </div>
          </div>

          {/* Divisions Grid */}
          <div className="mb-12">
            <h3 className="text-2xl font-bold mb-4">Pony Baseball Divisions</h3>
            <p className="text-gray-600 mb-4">Click any division to view official rules and field specifications</p>
            <div className="grid grid-cols-4 md:grid-cols-8 gap-2">
              {[
                { name: "Shetland", age: "5-6", slug: "shetland" },
                { name: "Pinto", age: "7-8", slug: "pinto" },
                { name: "Mustang", age: "9-10", slug: "mustang" },
                { name: "Bronco", age: "11-12", slug: "bronco" },
                { name: "Pony", age: "13-14", slug: "pony" },
                { name: "Colt", age: "15-16", slug: "colt" },
                { name: "Palomino", age: "17-18", slug: "palomino" },
                { name: "Thorobred", age: "17-23", slug: "thorobred" },
              ].map((division, i) => (
                <a
                  key={i}
                  href={`/divisions/${division.slug}`}
                  className="bg-white rounded-xl p-4 border border-gray-200 text-center hover:border-[#064789] hover:shadow-md transition-all cursor-pointer group"
                >
                  <div className="text-sm font-bold mb-1 group-hover:text-[#064789] transition-colors">{division.name}</div>
                  <div className="text-xs text-gray-600">{division.age}</div>
                </a>
              ))}
            </div>
          </div>

          {/* Bottom Features */}
          <div className="grid md:grid-cols-3 gap-4">
            <div className="bg-white rounded-xl p-6 border border-gray-200">
              <div className="text-3xl mb-3">⚡</div>
              <h4 className="font-bold mb-2">Fast</h4>
              <p className="text-sm text-gray-600">Generate plans in under 60 seconds</p>
            </div>
            <div className="bg-white rounded-xl p-6 border border-gray-200">
              <div className="text-3xl mb-3">📱</div>
              <h4 className="font-bold mb-2">Mobile Ready</h4>
              <p className="text-sm text-gray-600">Works on any device, anywhere</p>
            </div>
            <div className="bg-white rounded-xl p-6 border border-gray-200">
              <div className="text-3xl mb-3">👥</div>
              <h4 className="font-bold mb-2">Community</h4>
              <p className="text-sm text-gray-600">Login to share drills & save plans</p>
            </div>
          </div>
        </div>
      </main>

      {/* Footer */}
      <footer className="py-6 px-6 border-t border-gray-200 bg-white">
        <div className="max-w-6xl mx-auto flex flex-col md:flex-row justify-between items-center gap-3 text-sm text-gray-600">
          <div className="font-medium">© 2025 Coaching Buddy</div>
          <div className="flex gap-4">
            <a href="#" className="hover:text-gray-900 transition-colors">Privacy</a>
            <a href="#" className="hover:text-gray-900 transition-colors">Terms</a>
            <a href="#" className="hover:text-gray-900 transition-colors">Contact</a>
          </div>
        </div>
      </footer>
    </div>
  );
}
