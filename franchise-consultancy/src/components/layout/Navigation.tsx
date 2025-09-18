'use client';

import Link from 'next/link';
import { useState } from 'react';

const Navigation = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  const navItems = [
    { label: 'Home', href: '/' },
    { label: 'Franchising', href: '/franchising' },
    { label: 'Services', href: '/services' },
    { label: 'Franchising 101', href: '/franchising-101' },
    { label: 'Resources', href: '/resources' },
    { label: 'About', href: '/about' }
  ];

  return (
    <nav className="bg-white/90 backdrop-blur-lg border-b border-soft-gray/20 sticky top-0 z-50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-20">
          <div className="flex items-center">
            <Link href="/" className="flex items-center">
              <span className="text-xl font-semibold text-deep-charcoal">
                Franchise Advisory
              </span>
            </Link>
          </div>

          <div className="hidden lg:flex items-center space-x-8">
            {navItems.map((item) => (
              <Link
                key={item.label}
                href={item.href}
                className="text-soft-gray hover:text-slate-blue transition-colors duration-300 font-medium"
              >
                {item.label}
              </Link>
            ))}
          </div>

          <div className="hidden lg:flex">
            <Link
              href="/contact"
              className="bg-slate-blue text-white px-8 py-3 rounded-full font-medium hover:bg-slate-blue-light hover:scale-105 transition-all duration-300 shadow-lg hover:shadow-xl"
            >
              Request a Consultation
            </Link>
          </div>

          <div className="lg:hidden">
            <button
              onClick={() => setIsMenuOpen(!isMenuOpen)}
              className="text-charcoal hover:text-accent-blue p-2"
              aria-label="Toggle menu"
            >
              <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                {isMenuOpen ? (
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
                ) : (
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
                )}
              </svg>
            </button>
          </div>
        </div>

        {isMenuOpen && (
          <div className="lg:hidden border-t border-slate-200 bg-white/95 backdrop-blur-lg">
            <div className="px-4 pt-4 pb-6 space-y-2">
              {navItems.map((item) => (
                <Link
                  key={item.label}
                  href={item.href}
                  className="block px-4 py-3 text-charcoal hover:text-slate-blue hover:bg-warm-cream rounded-lg transition-colors duration-200 font-medium"
                  onClick={() => setIsMenuOpen(false)}
                >
                  {item.label}
                </Link>
              ))}
              <div className="pt-6 border-t border-slate-200 mt-4">
                <Link
                  href="/contact"
                  className="block w-full text-center bg-slate-blue text-white px-6 py-4 rounded-lg font-medium hover:bg-slate-blue-light transition-colors duration-200 shadow-lg"
                  onClick={() => setIsMenuOpen(false)}
                >
                  Request a Consultation
                </Link>
              </div>
            </div>
          </div>
        )}
      </div>
    </nav>
  );
};

export default Navigation;