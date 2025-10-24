export default function Home() {
  return (
    <div className="min-h-screen bg-[#F5F1E8] font-mono">
      {/* Navigation */}
      <nav className="bg-black border-b-4 border-black">
        <div className="max-w-6xl mx-auto px-4">
          <div className="flex items-center justify-between h-12">
            <div className="flex items-center gap-2">
              <div className="text-sm font-bold text-[#FF6B35] uppercase tracking-wide">Coaching Buddy</div>
            </div>
            <div className="flex items-center gap-2">
              <a href="/create" className="px-3 py-2 text-xs font-bold bg-[#FF6B35] text-white uppercase hover:bg-white hover:text-black transition-colors">
                Create Plan
              </a>
              <a href="/auth/login" className="px-3 py-2 text-xs font-bold text-white uppercase hover:text-[#FF6B35] transition-colors">
                Login
              </a>
            </div>
          </div>
        </div>
      </nav>

      {/* Main Content */}
      <main className="py-8 px-4">
        <div className="max-w-6xl mx-auto">
          {/* Hero */}
          <div className="text-center mb-8">
            <h1 className="text-4xl md:text-5xl font-bold uppercase tracking-tight mb-3">
              Practice Plans
            </h1>
            <p className="text-sm max-w-2xl mx-auto mb-6">
              Create professional baseball practice plans in minutes. Built for all 8 Pony Baseball divisions.
            </p>
            <a href="/create" className="inline-block px-6 py-3 bg-black text-white font-bold uppercase text-sm border-2 border-black hover:bg-[#FF6B35] transition-colors">
              Create Your First Plan →
            </a>
          </div>

          {/* Main Feature */}
          <div className="mb-8">
            <div className="border-4 border-black bg-white">
              <div className="bg-[#FFE5D9] border-b-4 border-black p-3">
                <span className="text-xs font-bold uppercase">No Login Required</span>
              </div>
              <div className="p-6">
                <h2 className="text-2xl font-bold uppercase mb-3">Generate Plans Instantly</h2>
                <p className="text-sm mb-4 leading-relaxed">
                  Select your division, practice duration, and get a complete practice plan with age-appropriate drills. Export to PDF and take it to the field.
                </p>
                <div className="flex flex-wrap gap-2">
                  <span className="px-3 py-1 bg-black text-white text-xs font-bold uppercase">PDF Export</span>
                  <span className="px-3 py-1 bg-black text-white text-xs font-bold uppercase">500+ Drills</span>
                  <span className="px-3 py-1 bg-black text-white text-xs font-bold uppercase">Video Tutorials</span>
                </div>
              </div>
            </div>
          </div>

          {/* Divisions Grid */}
          <div className="mb-8">
            <div className="border-4 border-black bg-white">
              <div className="bg-black text-white p-3 border-b-4 border-black">
                <h3 className="text-sm font-bold uppercase">Pony Baseball Divisions</h3>
              </div>
              <div className="p-4">
                <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
                  {[
                    { name: "Shetland", age: "5-6" },
                    { name: "Pinto", age: "7-8" },
                    { name: "Mustang", age: "9-10" },
                    { name: "Bronco", age: "11-12" },
                    { name: "Pony", age: "13-14" },
                    { name: "Colt", age: "15-16" },
                    { name: "Palomino", age: "17-18" },
                    { name: "Thorobred", age: "17-23" },
                  ].map((division, i) => (
                    <a
                      key={i}
                      href="https://cdn1.sportngin.com/attachments/document/9da7-2695417/2025_PONY_Baseball_Rulebook.pdf"
                      target="_blank"
                      rel="noopener noreferrer"
                      className="border-2 border-black bg-white p-3 text-center hover:bg-[#FF6B35] hover:text-white transition-colors group"
                    >
                      <div className="text-sm font-bold uppercase mb-1">{division.name}</div>
                      <div className="text-xs opacity-75">{division.age}</div>
                      <div className="text-xs mt-2 opacity-50 group-hover:opacity-100">View Rules →</div>
                    </a>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>

      {/* Footer */}
      <footer className="py-4 px-4 border-t-4 border-black bg-white">
        <div className="max-w-6xl mx-auto flex flex-col md:flex-row justify-between items-center gap-2 text-xs">
          <div className="font-bold uppercase">© 2025 Coaching Buddy</div>
          <div className="flex gap-4">
            <a href="#" className="font-bold uppercase hover:text-[#FF6B35] transition-colors">Privacy</a>
            <a href="#" className="font-bold uppercase hover:text-[#FF6B35] transition-colors">Terms</a>
            <a href="#" className="font-bold uppercase hover:text-[#FF6B35] transition-colors">Contact</a>
          </div>
        </div>
      </footer>
    </div>
  );
}
