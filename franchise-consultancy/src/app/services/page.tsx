import Card from '@/components/ui/Card';
import Button from '@/components/ui/Button';
import { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Franchise Advisory Services | Launch, Compliance & Growth',
  description: 'Comprehensive franchise services from launch through compliance and growth. Professional advisory across the franchise lifecycle.',
  keywords: 'franchise services, franchise launch, compliance, growth counsel, trademark protection, FDD registration'
};

export default function ServicesPage() {
  const services = [
    {
      title: 'Franchise Launch Program',
      slug: 'franchise-launch-program',
      description: 'From proven concept to compliant franchise offering with a defined schedule.',
      outcome: 'Complete franchise system with legal documentation, operational standards, and launch readiness.',
      scope: ['Business model review', 'Unit economics & fees structure', 'FDD inputs coordination', 'Brand standards starter', 'Operations manual outline', 'Training plan development'],
      timeline: '8-12 weeks',
      pricing: 'Fixed-fee tiers available'
    },
    {
      title: 'Franchise Compliance System',
      slug: 'franchise-compliance-system',
      description: 'A durable compliance rhythm that protects your brand and franchisees.',
      outcome: 'Automated compliance monitoring with quarterly reviews and audit-ready documentation.',
      scope: ['Disclosure calendar', 'State registration tracker', 'Item 19 discipline', 'Communication templates', 'Update checklists', 'File structure'],
      timeline: '6-8 weeks',
      pricing: 'Custom scope on request'
    },
    {
      title: 'Franchise Growth Counsel',
      slug: 'franchise-growth-counsel',
      description: 'Sustainable growth with the right candidates and KPIs.',
      outcome: 'Strategic growth framework with candidate qualification and performance systems.',
      scope: ['Ideal candidate profile', 'Territory strategy', 'Discovery day kit', 'KPI dashboard', 'Marketing guardrails', 'Performance reviews'],
      timeline: '4-6 weeks',
      pricing: 'Fixed-fee tiers available'
    },
    {
      title: 'Trademark Protection',
      slug: 'trademark-protection',
      description: 'Protect the marks you are scaling with proper filing and enforcement.',
      outcome: 'Comprehensive trademark protection with ongoing monitoring and enforcement protocols.',
      scope: ['Search & watch setup', 'Filing coordination', 'Usage guidelines', 'Enforcement playbook', 'Brand compliance checklists'],
      timeline: '2-4 weeks',
      pricing: 'Fixed-fee with filing costs'
    },
    {
      title: 'FDD Registration Services',
      slug: 'fdd-registration-services',
      description: 'Navigate multi-state registrations on time with proper documentation.',
      outcome: 'Multi-state registration compliance with renewal tracking and document management.',
      scope: ['State matrix analysis', 'Filing checklist', 'Submission prep', 'Response coordination', 'Renewal calendar', 'Document tracking'],
      timeline: '6-10 weeks',
      pricing: 'Custom scope on request'
    },
    {
      title: 'Franchise Assessment',
      slug: 'franchise-assessment',
      description: 'Readiness score, gap analysis, and a prioritized 90-day roadmap.',
      outcome: 'Comprehensive franchise readiness evaluation with actionable improvement plan.',
      scope: ['Unit economics review', 'Differentiation analysis', 'Operational maturity', 'Brand/IP assessment', 'Support model evaluation', 'Compliance readiness'],
      timeline: '2-3 weeks',
      pricing: 'Fixed-fee assessment'
    }
  ];

  return (
    <div>
      {/* Hero Section */}
      <section className="relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-warm-cream via-warm-sand to-warm-white"></div>
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_60%_40%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-20 lg:py-28">
          <div className="text-center max-w-4xl mx-auto">
            <h1 className="text-5xl md:text-6xl font-bold text-deep-charcoal mb-8 leading-tight">
              Advisory services across the{' '}
              <span className="text-slate-blue">
                franchise lifecycle
              </span>
            </h1>
            <p className="text-xl text-soft-gray mb-8 leading-relaxed max-w-3xl mx-auto">
              From initial assessment through launch and growth, we coordinate with your legal and accounting team to ensure compliance-first franchise development.
            </p>
          </div>
        </div>
      </section>

      {/* Services Grid */}
      <section className="py-24 bg-white relative">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_30%_70%,rgba(244,162,97,0.05),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            {services.map((service, index) => (
              <Card
                key={service.slug}
                hover
                variant="warm"
                className="h-full flex flex-col group"
              >
                <div className="flex-1">
                  <h2 className="text-2xl font-bold text-deep-charcoal mb-4">{service.title}</h2>
                  <p className="text-soft-gray mb-6 leading-relaxed">{service.description}</p>

                  <div className="mb-6">
                    <h3 className="font-bold text-deep-charcoal text-sm mb-3">Outcome</h3>
                    <p className="text-soft-gray text-sm leading-relaxed">{service.outcome}</p>
                  </div>

                  <div className="mb-6">
                    <h3 className="font-bold text-deep-charcoal text-sm mb-3">Key Deliverables</h3>
                    <ul className="text-soft-gray text-sm space-y-2">
                      {service.scope.slice(0, 3).map((item, index) => (
                        <li key={index} className="flex items-start">
                          <span className="text-slate-blue mr-3 font-bold">•</span>
                          {item}
                        </li>
                      ))}
                      {service.scope.length > 3 && (
                        <li className="text-slate-blue font-medium">
                          +{service.scope.length - 3} more deliverables
                        </li>
                      )}
                    </ul>
                  </div>

                  <div className="grid grid-cols-2 gap-4 text-sm mb-6">
                    <div className="bg-warm-sand/50 rounded-lg p-3">
                      <span className="font-bold text-deep-charcoal block">Timeline</span>
                      <span className="text-soft-gray">{service.timeline}</span>
                    </div>
                    <div className="bg-warm-sand/50 rounded-lg p-3">
                      <span className="font-bold text-deep-charcoal block">Pricing</span>
                      <span className="text-soft-gray">{service.pricing}</span>
                    </div>
                  </div>
                </div>

                <div className="pt-6 border-t border-slate-blue/20">
                  <Button
                    href={`/services/${service.slug}`}
                    className="w-full"
                  >
                    View Details
                  </Button>
                </div>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Pricing Section */}
      <section className="py-24 bg-gradient-to-br from-warm-sand to-light-gray relative overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_50%_50%,rgba(217,151,87,0.08),transparent_60%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold text-deep-charcoal mb-6">
              Choose your{' '}
              <span className="text-slate-blue">
                franchise path
              </span>
            </h2>
            <p className="text-xl text-soft-gray max-w-3xl mx-auto leading-relaxed">
              Flexible pricing options designed to support your franchise journey at every stage.
            </p>

            <div className="mt-8 flex justify-center">
              <div className="bg-white/80 backdrop-blur-sm rounded-full p-2 border border-slate-blue/20">
                <div className="flex">
                  <button className="px-6 py-2 rounded-full bg-slate-blue text-white font-medium">
                    Monthly
                  </button>
                  <button className="px-6 py-2 rounded-full text-soft-gray font-medium hover:text-slate-blue transition-colors">
                    Yearly <span className="text-slate-blue text-sm">(Save 20%)</span>
                  </button>
                </div>
              </div>
            </div>
          </div>

          <div className="grid md:grid-cols-3 gap-8 max-w-6xl mx-auto">
            {/* Essentials Plan */}
            <Card variant="default" hover className="relative">
              <div className="text-center">
                <h3 className="text-2xl font-bold text-deep-charcoal mb-2">ESSENTIALS</h3>
                <div className="mb-6">
                  <span className="text-5xl font-bold text-deep-charcoal">$500</span>
                  <span className="text-soft-gray"> per month</span>
                </div>
                <p className="text-soft-gray mb-8">Perfect for businesses exploring franchising</p>

                <ul className="text-left space-y-4 mb-8">
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Franchise Assessment</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Trademark Protection</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Basic compliance guidance</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">90-day roadmap</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Email support</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Resource library access</span>
                  </li>
                </ul>

                <Button href="/contact" className="w-full" variant="outline">
                  GET STARTED
                </Button>
              </div>
            </Card>

            {/* Professional Plan */}
            <Card variant="warm" hover className="relative border-2 border-slate-blue">
              <div className="absolute -top-4 left-1/2 transform -translate-x-1/2">
                <span className="bg-slate-blue text-white px-4 py-2 rounded-full text-sm font-medium">
                  Most Popular
                </span>
              </div>
              <div className="text-center">
                <h3 className="text-2xl font-bold text-deep-charcoal mb-2">PROFESSIONAL</h3>
                <div className="mb-6">
                  <span className="text-5xl font-bold text-deep-charcoal">$1,000</span>
                  <span className="text-soft-gray"> per month</span>
                </div>
                <p className="text-soft-gray mb-8">Ideal for established businesses ready to franchise</p>

                <ul className="text-left space-y-4 mb-8">
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Everything in Essentials</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Franchise Launch Program</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">FDD Registration Services</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Compliance System setup</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Attorney/CPA coordination</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Priority support</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Quarterly check-ins</span>
                  </li>
                </ul>

                <Button href="/contact" className="w-full">
                  LAUNCH YOUR FRANCHISE
                </Button>
              </div>
            </Card>

            {/* Enterprise Plan */}
            <Card variant="default" hover className="relative">
              <div className="text-center">
                <h3 className="text-2xl font-bold text-deep-charcoal mb-2">ENTERPRISE</h3>
                <div className="mb-6">
                  <span className="text-5xl font-bold text-deep-charcoal">$3,000</span>
                  <span className="text-soft-gray"> per month</span>
                </div>
                <p className="text-soft-gray mb-8">For franchisors scaling across multiple markets</p>

                <ul className="text-left space-y-4 mb-8">
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Everything in Professional</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Franchise Growth Counsel</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Multi-state registrations</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Dedicated account manager</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Custom compliance solutions</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">24-hour support</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Ongoing advisory relationship</span>
                  </li>
                  <li className="flex items-start">
                    <div className="flex-shrink-0 w-5 h-5 bg-slate-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">✓</span>
                    </div>
                    <span className="text-soft-gray">Performance optimization</span>
                  </li>
                </ul>

                <Button href="/contact" className="w-full" variant="outline">
                  SCALE YOUR SYSTEM
                </Button>
              </div>
            </Card>
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-24 bg-gradient-to-br from-warm-sand to-light-gray relative overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_70%_30%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <div className="relative max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-4xl md:text-5xl font-bold text-deep-charcoal mb-6">
            Ready to start your{' '}
            <span className="text-slate-blue">
              franchise journey?
            </span>
          </h2>
          <p className="text-xl text-soft-gray mb-12 max-w-3xl mx-auto leading-relaxed">
            Schedule a consultation to discuss your specific needs and develop a custom approach.
          </p>
          <div className="flex flex-col sm:flex-row gap-6 justify-center">
            <Button href="/contact" size="lg" className="animate-float">
              Request a Consultation
            </Button>
            <Button href="/services/franchise-assessment" variant="outline" size="lg">
              Start with an Assessment
            </Button>
          </div>
        </div>
      </section>
    </div>
  );
}