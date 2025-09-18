import Button from '@/components/ui/Button';
import Card from '@/components/ui/Card';
import Image from 'next/image';
import { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'About Franchise Advisory | Compliance-First Franchise Development',
  description: 'Learn about our compliance-first approach to franchise development, built for operators. Meet our team and understand our methodology.',
  keywords: 'franchise consultants, franchise advisory team, franchise development experts'
};

export default function AboutPage() {
  const teamMembers = [
    {
      name: 'Sarah Johnson',
      role: 'Managing Director',
      credentials: 'Former franchise operations executive, MBA, 15+ years franchise experience',
      bio: 'Sarah spent 12 years building franchise systems for multi-brand restaurant and service companies. She specializes in operational compliance and franchisee success metrics.',
      image: '/images/SJHeadshot.png'
    },
    {
      name: 'Michael Chen',
      role: 'Senior Advisor',
      credentials: 'Ex-Big 4 consultant, Certified Franchise Executive (CFE), Former franchisor COO',
      bio: 'Michael led franchise development for two successful service brands and has consulted on over 100 franchise launches. He focuses on unit economics and growth strategy.',
      image: '/images/MCHeadshot.png'
    },
    {
      name: 'Jennifer Martinez',
      role: 'Compliance Director',
      credentials: 'Former franchise attorney, 10+ years FDD development, State registration specialist',
      bio: 'Jennifer transitioned from franchise law practice to consulting, bringing deep regulatory knowledge and practical compliance experience to every engagement.',
      image: '/images/JMheadshot.png'
    }
  ];

  const advisoryPartners = [
    {
      category: 'Legal Network',
      description: 'Vetted franchise attorneys in major markets for FDD development and state registrations.'
    },
    {
      category: 'Accounting Partners',
      description: 'CPAs with franchise expertise for financial statement preparation and Item 19 discipline.'
    },
    {
      category: 'Technology Specialists',
      description: 'Systems integrators and software providers for franchise management platforms.'
    }
  ];

  const outcomes = [
    {
      metric: '150+',
      description: 'Franchise assessments completed',
      detail: 'Comprehensive readiness evaluations across diverse industries'
    },
    {
      metric: '85+',
      description: 'Successful franchise launches',
      detail: 'Systems launched with proper compliance and operational foundations'
    },
    {
      metric: '95%',
      description: 'Client satisfaction rate',
      detail: 'Based on post-engagement surveys and ongoing relationships'
    },
    {
      metric: '14',
      description: 'Average state registrations',
      detail: 'Multi-state expansion support for growing franchise systems'
    }
  ];

  return (
    <div>
      {/* Hero Section */}
      <section className="relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-warm-cream via-warm-sand to-warm-white"></div>
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_40%_60%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <div className="relative max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-20 lg:py-28 text-center">
          <h1 className="text-5xl md:text-6xl font-bold text-deep-charcoal mb-8 leading-tight">
            <span className="text-slate-blue">
              Compliance-first
            </span>{' '}
            franchising, built for operators
          </h1>
          <p className="text-xl text-soft-gray mb-8 leading-relaxed max-w-4xl mx-auto">
            We help established businesses become successful franchisors through systematic development, legal coordination, and ongoing compliance support.
          </p>
        </div>
      </section>

      {/* Origin and Methodology */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid lg:grid-cols-2 gap-12">
            <div>
              <h2 className="text-3xl font-semibold text-navy mb-6">Our approach</h2>
              <p className="text-slate mb-6 leading-relaxed">
                Franchise Advisory was founded on the principle that successful franchising requires more than just documentation—it demands operational excellence, legal compliance, and sustainable business models.
              </p>
              <p className="text-slate mb-6 leading-relaxed">
                We developed our methodology through years of franchise operations experience, witnessing both spectacular successes and costly failures. The common thread among successful franchisors: they prioritized compliance, invested in proper systems, and maintained discipline around unit economics.
              </p>
              <p className="text-slate leading-relaxed">
                Our compliance-first approach ensures every franchise system we help develop can withstand regulatory scrutiny while supporting franchisee success.
              </p>
            </div>

            <div>
              <h2 className="text-3xl font-semibold text-navy mb-6">Core values</h2>
              <div className="space-y-6">
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-3 h-3 bg-accent-blue rounded-full mt-2 mr-4"></div>
                  <div>
                    <h3 className="font-semibold text-charcoal mb-2">Compliance First</h3>
                    <p className="text-slate text-sm">Every recommendation prioritizes regulatory compliance and franchisee protection.</p>
                  </div>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-3 h-3 bg-accent-blue rounded-full mt-2 mr-4"></div>
                  <div>
                    <h3 className="font-semibold text-charcoal mb-2">Systematic Development</h3>
                    <p className="text-slate text-sm">Proven processes and frameworks ensure consistent, high-quality outcomes.</p>
                  </div>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-3 h-3 bg-accent-blue rounded-full mt-2 mr-4"></div>
                  <div>
                    <h3 className="font-semibold text-charcoal mb-2">Professional Coordination</h3>
                    <p className="text-slate text-sm">We work seamlessly with your attorney and CPA to avoid duplication and ensure consistency.</p>
                  </div>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-3 h-3 bg-accent-blue rounded-full mt-2 mr-4"></div>
                  <div>
                    <h3 className="font-semibold text-charcoal mb-2">Long-term Perspective</h3>
                    <p className="text-slate text-sm">Building sustainable systems that support franchise growth for decades, not just initial launch.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Team */}
      <section className="py-16 bg-light">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-semibold text-navy mb-4">Meet our team</h2>
            <p className="text-xl text-slate max-w-2xl mx-auto">
              Experienced franchise professionals with operational, legal, and strategic expertise.
            </p>
          </div>

          <div className="grid md:grid-cols-3 gap-8">
            {teamMembers.map((member) => (
              <Card key={member.name}>
                <div className="text-center mb-4">
                  <div className="w-24 h-24 mx-auto mb-4 relative overflow-hidden rounded-full shadow-lg">
                    <Image
                      src={member.image}
                      alt={`${member.name} headshot`}
                      fill
                      className="object-cover object-center"
                      sizes="96px"
                    />
                  </div>
                  <h3 className="text-lg font-semibold text-navy">{member.name}</h3>
                  <p className="text-accent-blue font-medium text-sm">{member.role}</p>
                  <p className="text-slate text-xs mt-1">{member.credentials}</p>
                </div>
                <p className="text-slate text-sm leading-relaxed">{member.bio}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Advisory Partners */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-semibold text-navy mb-4">Advisory network</h2>
            <p className="text-xl text-slate max-w-2xl mx-auto">
              We maintain relationships with qualified professionals to ensure comprehensive support for every engagement.
            </p>
          </div>

          <div className="grid md:grid-cols-3 gap-8">
            {advisoryPartners.map((partner) => (
              <Card key={partner.category} hover>
                <h3 className="text-lg font-semibold text-navy mb-3">{partner.category}</h3>
                <p className="text-slate">{partner.description}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Outcomes */}
      <section className="py-16 bg-light">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-semibold text-navy mb-4">Track record</h2>
          </div>

          <div className="grid md:grid-cols-4 gap-8">
            {outcomes.map((outcome) => (
              <Card key={outcome.metric} className="text-center">
                <div className="text-3xl font-semibold text-accent-blue mb-2">{outcome.metric}</div>
                <div className="font-semibold text-navy mb-2">{outcome.description}</div>
                <p className="text-slate text-sm">{outcome.detail}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Client Testimonials */}
      <section className="py-16 bg-white">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-semibold text-navy mb-4">What clients say</h2>
          </div>

          <div className="space-y-8">
            <Card>
              <blockquote className="text-lg text-slate mb-6 leading-relaxed text-center">
                &ldquo;They helped us avoid the common pitfalls that sink new franchise systems. Their coordination with our attorney was seamless, and the compliance framework they built has served us well through three years of growth.&rdquo;
              </blockquote>
              <div className="text-center border-t border-slate-200 pt-6">
                <div className="font-semibold text-navy">Robert Kim</div>
                <div className="text-slate">Founder & CEO</div>
                <div className="text-slate">Elite Fitness Concepts • 28 units</div>
              </div>
            </Card>

            <Card>
              <blockquote className="text-lg text-slate mb-6 leading-relaxed text-center">
                &ldquo;The franchise assessment was incredibly thorough and identified gaps we hadn&apos;t considered. The 90-day roadmap gave us clear priorities and helped us launch confidently in multiple states.&rdquo;
              </blockquote>
              <div className="text-center border-t border-slate-200 pt-6">
                <div className="font-semibold text-navy">Maria Gonzalez</div>
                <div className="text-slate">President</div>
                <div className="text-slate">Premier Learning Centers • 15 units</div>
              </div>
            </Card>
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="py-16 bg-navy text-white">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl font-semibold mb-4">Ready to explore franchise development?</h2>
          <p className="text-xl text-slate-300 mb-8">
            Start with a confidential consultation to discuss your goals and evaluate your franchise readiness.
          </p>
          <Button href="/contact">
            Request a Consultation
          </Button>
        </div>
      </section>
    </div>
  );
}