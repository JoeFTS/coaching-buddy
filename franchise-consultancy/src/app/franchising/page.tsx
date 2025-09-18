import Button from '@/components/ui/Button';
import Card from '@/components/ui/Card';
import { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Is Franchising Right for Your Business? | Franchise Overview',
  description: 'Define franchising in business terms and guide next steps. Understand franchisor vs franchisee responsibilities, benefits, trade-offs, and compliance requirements.',
  keywords: 'franchising guide, franchisor responsibilities, franchise business model, franchise expansion'
};

export default function FranchisingPage() {
  const franchisorVsFranchisee = [
    {
      role: 'Franchisor (You)',
      responsibilities: [
        'Develop and maintain the franchise system',
        'Provide training and ongoing support',
        'Maintain brand standards and quality control',
        'Handle marketing and advertising programs',
        'Ensure compliance with legal requirements',
        'Recruit and qualify new franchisees'
      ]
    },
    {
      role: 'Franchisee (Your Partners)',
      responsibilities: [
        'Invest capital to open and operate location',
        'Follow established systems and procedures',
        'Pay initial fees and ongoing royalties',
        'Maintain brand standards and quality',
        'Participate in training and support programs',
        'Focus on local market execution and growth'
      ]
    }
  ];

  const benefits = [
    {
      title: 'Accelerated Growth',
      description: 'Expand faster with franchisee capital investment and local market expertise.'
    },
    {
      title: 'Reduced Capital Requirements',
      description: 'Scale without the full capital burden of company-owned expansion.'
    },
    {
      title: 'Local Market Knowledge',
      description: 'Franchisees bring deep understanding of their local markets and communities.'
    },
    {
      title: 'Motivated Operators',
      description: 'Owner-operators typically show higher commitment than hired managers.'
    }
  ];

  const tradeoffs = [
    {
      title: 'Reduced Direct Control',
      description: 'Must work through franchisees rather than direct employee management.'
    },
    {
      title: 'Ongoing Support Requirements',
      description: 'Continuous obligation to provide training, support, and system improvements.'
    },
    {
      title: 'Regulatory Compliance',
      description: 'Complex legal requirements including FDD disclosure and state registrations.'
    },
    {
      title: 'Brand Risk Management',
      description: 'Your brand reputation depends on franchisee performance and consistency.'
    }
  ];

  const unitEconomics = [
    {
      component: 'Initial Franchise Fee',
      description: 'One-time payment typically ranging from $25,000 to $75,000 depending on industry and brand strength.'
    },
    {
      component: 'Ongoing Royalty',
      description: 'Monthly payment usually 4-8% of gross revenue, providing sustainable income as the system grows.'
    },
    {
      component: 'Marketing Fund',
      description: 'Additional 1-3% contribution for system-wide advertising and marketing programs.'
    },
    {
      component: 'Franchisee Investment',
      description: 'Total investment for franchisees typically ranges from $100,000 to $500,000+ depending on concept.'
    }
  ];

  return (
    <div>
      {/* Hero Section */}
      <section className="relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-warm-cream via-warm-sand to-warm-white"></div>
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_50%_50%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-20 lg:py-28">
          <div className="text-center max-w-5xl mx-auto">
            <h1 className="text-5xl md:text-6xl font-bold text-deep-charcoal mb-8 leading-tight">
              Is franchising the right{' '}
              <span className="text-slate-blue">
                growth model
              </span>{' '}
              for your brand?
            </h1>
            <p className="text-xl text-soft-gray mb-8 leading-relaxed max-w-4xl mx-auto">
              Franchising can accelerate growth and reduce capital requirements, but it requires the right business model, operational maturity, and long-term commitment to franchisee success.
            </p>
          </div>
        </div>
      </section>

      {/* What Franchising Is */}
      <section className="py-24 bg-white relative">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_30%_70%,rgba(244,162,97,0.05),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold text-deep-charcoal mb-6">
              What franchising{' '}
              <span className="text-slate-blue">
                really means
              </span>
            </h2>
          </div>

          <div className="max-w-6xl mx-auto">
            <Card variant="warm" className="mb-12">
              <div className="text-center mb-12">
                <p className="text-xl text-soft-gray leading-relaxed">
                  Franchising is a business expansion model where you (the franchisor) grant others (franchisees) the right to operate businesses using your brand, systems, and support in exchange for fees and ongoing royalties. It&rsquo;s a partnership that allows rapid growth while maintaining brand consistency.
                </p>
              </div>

              <div className="grid md:grid-cols-2 gap-12">
                {franchisorVsFranchisee.map((party) => (
                  <Card
                    key={party.role}
                    variant="glass"
                    className="h-full"
                  >
                    <h3 className="text-2xl font-bold text-deep-charcoal mb-6">{party.role}</h3>
                    <ul className="space-y-4">
                      {party.responsibilities.map((responsibility, index) => (
                        <li key={index} className="flex items-start">
                          <div className="flex-shrink-0 w-3 h-3 bg-slate-blue rounded-full mt-2 mr-4"></div>
                          <span className="text-soft-gray leading-relaxed">{responsibility}</span>
                        </li>
                      ))}
                    </ul>
                  </Card>
                ))}
              </div>
            </Card>
          </div>
        </div>
      </section>

      {/* Benefits and Trade-offs */}
      <section className="py-16 bg-light">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-semibold text-navy mb-4">Benefits and trade-offs</h2>
            <p className="text-xl text-slate max-w-2xl mx-auto">
              Franchising offers significant advantages but requires careful consideration of the responsibilities and challenges.
            </p>
          </div>

          <div className="grid lg:grid-cols-2 gap-12">
            <div>
              <h3 className="text-2xl font-semibold text-navy mb-8 text-center">Key Benefits</h3>
              <div className="space-y-6">
                {benefits.map((benefit) => (
                  <Card key={benefit.title}>
                    <h4 className="font-semibold text-navy mb-2 flex items-center">
                      <span className="text-accent-emerald mr-2">✓</span>
                      {benefit.title}
                    </h4>
                    <p className="text-slate">{benefit.description}</p>
                  </Card>
                ))}
              </div>
            </div>

            <div>
              <h3 className="text-2xl font-semibold text-navy mb-8 text-center">Important Trade-offs</h3>
              <div className="space-y-6">
                {tradeoffs.map((tradeoff) => (
                  <Card key={tradeoff.title}>
                    <h4 className="font-semibold text-navy mb-2 flex items-center">
                      <span className="text-amber-500 mr-2">⚠</span>
                      {tradeoff.title}
                    </h4>
                    <p className="text-slate">{tradeoff.description}</p>
                  </Card>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Unit Economics */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-semibold text-navy mb-4">Understanding franchise economics</h2>
            <p className="text-xl text-slate max-w-2xl mx-auto">
              Franchise financial models involve multiple revenue streams and investment requirements for both parties.
            </p>
          </div>

          <div className="grid md:grid-cols-2 gap-8">
            {unitEconomics.map((item) => (
              <Card key={item.component}>
                <h3 className="text-lg font-semibold text-navy mb-3">{item.component}</h3>
                <p className="text-slate">{item.description}</p>
              </Card>
            ))}
          </div>

          <div className="mt-12 text-center">
            <Card className="max-w-2xl mx-auto">
              <h3 className="text-xl font-semibold text-navy mb-4">Franchisee Payback Period</h3>
              <p className="text-slate">
                Successful franchise systems typically offer franchisees a path to recover their initial investment within 2-4 years, with strong unit economics supporting sustainable profitability thereafter.
              </p>
            </Card>
          </div>
        </div>
      </section>

      {/* Compliance Overview */}
      <section className="py-16 bg-light">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-semibold text-navy mb-4">Compliance at a glance</h2>
          </div>

          <div className="grid md:grid-cols-2 gap-8">
            <Card>
              <h3 className="text-xl font-semibold text-navy mb-4">Federal Requirements</h3>
              <div className="space-y-3">
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                  <span className="text-slate">FTC Franchise Rule compliance and disclosure</span>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                  <span className="text-slate">Franchise Disclosure Document (FDD) preparation</span>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                  <span className="text-slate">14-day disclosure period before signing</span>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                  <span className="text-slate">Annual FDD updates and amendments</span>
                </div>
              </div>
            </Card>

            <Card>
              <h3 className="text-xl font-semibold text-navy mb-4">State Registrations</h3>
              <div className="space-y-3">
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                  <span className="text-slate">14 states require franchise registration</span>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                  <span className="text-slate">Filing fees and annual renewals</span>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                  <span className="text-slate">State-specific disclosure requirements</span>
                </div>
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                  <span className="text-slate">Ongoing compliance monitoring</span>
                </div>
              </div>
            </Card>
          </div>

          <div className="mt-8 text-center">
            <p className="text-slate mb-6">
              We coordinate with your franchise attorney and CPA throughout the compliance process to ensure all requirements are properly addressed.
            </p>
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-16 bg-navy text-white">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl font-semibold mb-4">Ready to evaluate your franchise potential?</h2>
          <p className="text-xl text-slate-300 mb-8">
            Start with our comprehensive assessment to understand your readiness and identify the key steps for successful franchise development.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Button href="/services/franchise-assessment">
              Take the Readiness Assessment
            </Button>
          </div>

          <div className="mt-12 max-w-sm mx-auto bg-white/10 rounded-lg p-6">
            <h3 className="font-semibold mb-4">Speak with a compliance-minded advisor</h3>
            <Button href="/contact" variant="outline">
              Request a Consultation
            </Button>
          </div>
        </div>
      </section>
    </div>
  );
}