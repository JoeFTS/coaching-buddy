import Button from '@/components/ui/Button';
import Card from '@/components/ui/Card';
import Image from 'next/image';
import Link from 'next/link';

export default function Home() {
  const pillars = [
    {
      title: 'Launch Right',
      description: 'Build your franchise offering with proper documentation, compliance, and operational systems from day one.',
      href: '/services/franchise-launch-program',
      icon: '🚀'
    },
    {
      title: 'Stay Compliant',
      description: 'Maintain ongoing compliance with FTC requirements, state registrations, and disclosure obligations.',
      href: '/services/franchise-compliance-system',
      icon: '⚖️'
    },
    {
      title: 'Grow Responsibly',
      description: 'Scale with the right franchisees, territories, and performance metrics to build sustainable growth.',
      href: '/services/franchise-growth-counsel',
      icon: '📈'
    }
  ];

  const processSteps = [
    {
      step: '01',
      title: 'Discovery',
      description: 'We analyze your business model, unit economics, and franchise readiness to identify opportunities and gaps.'
    },
    {
      step: '02',
      title: 'Assessment & Roadmap',
      description: 'Receive a detailed roadmap with prioritized recommendations, compliance requirements, and timeline milestones.'
    },
    {
      step: '03',
      title: 'Build & Comply',
      description: 'Execute the plan with proper documentation, legal coordination, and system development for launch readiness.'
    },
    {
      step: '04',
      title: 'Launch & Support',
      description: 'Go to market with ongoing compliance support, performance monitoring, and growth optimization.'
    }
  ];

  const services = [
    {
      title: 'Franchise Launch Program',
      description: 'From proven concept to compliant franchise offering with a defined schedule.',
      href: '/services/franchise-launch-program'
    },
    {
      title: 'Franchise Compliance System',
      description: 'A durable compliance rhythm that protects your brand and franchisees.',
      href: '/services/franchise-compliance-system'
    },
    {
      title: 'Franchise Growth Counsel',
      description: 'Sustainable growth with the right candidates and KPIs.',
      href: '/services/franchise-growth-counsel'
    },
    {
      title: 'Trademark Protection',
      description: 'Protect the marks you are scaling with proper filing and enforcement.',
      href: '/services/trademark-protection'
    },
    {
      title: 'FDD Registration Services',
      description: 'Navigate multi-state registrations on time with proper documentation.',
      href: '/services/fdd-registration-services'
    },
    {
      title: 'Franchise Assessment',
      description: 'Readiness score, gap analysis, and a prioritized 90-day roadmap.',
      href: '/services/franchise-assessment'
    }
  ];

  const testimonials = [
    {
      name: 'Sarah Chen',
      role: 'CEO & Founder',
      company: 'Premium Pet Care',
      units: '12 units',
      testimonial: 'The compliance system saved us months of work and gave us confidence in our multi-state expansion. Their coordination with our attorney was seamless.'
    },
    {
      name: 'Michael Rodriguez',
      role: 'President',
      company: 'Urban Fitness Studios',
      units: '8 units',
      testimonial: 'Their franchise assessment identified critical gaps we hadn\'t considered. The 90-day roadmap was exactly what we needed to move forward responsibly.'
    }
  ];

  const industries = ['Health & Wellness', 'Professional Services', 'Food & Beverage', 'Education', 'Automotive', 'Home Services'];

  return (
    <div>
      {/* Hero Section */}
      <section className="relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-warm-cream via-warm-sand to-warm-white"></div>
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_70%_30%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 sm:py-20 lg:py-24 xl:py-32">
          <div className="text-center max-w-5xl mx-auto">
            <div className="animate-fade-in">
              {/* Logo */}
              <div className="mb-4">
                <Image
                  src="/images/FClogo.svg"
                  alt="Franchise Consultancy Logo"
                  width={400}
                  height={160}
                  className="mx-auto w-64 h-auto sm:w-80 md:w-96 lg:w-full max-w-md"
                  priority
                />
              </div>
              <h1 className="text-3xl sm:text-4xl md:text-5xl lg:text-6xl xl:text-7xl font-bold text-deep-charcoal mb-6 sm:mb-8 leading-tight">
                Franchise with{' '}
                <span className="text-slate-blue">
                  confidence
                </span>
              </h1>
              <p className="text-lg sm:text-xl lg:text-2xl text-soft-gray mb-8 sm:mb-10 lg:mb-12 leading-relaxed max-w-3xl mx-auto px-4 sm:px-0">
                Advisory for launch, compliance, and growth—built around the FTC Rule and state requirements.
              </p>
              <div className="flex flex-col sm:flex-row gap-4 sm:gap-6 justify-center items-center px-4 sm:px-0">
                <Button href="/contact" size="lg" className="animate-float w-full sm:w-auto">
                  Request a Consultation
                </Button>
                <Button href="/resources/franchise-readiness-checklist" variant="outline" size="lg" className="w-full sm:w-auto">
                  Download Readiness Checklist
                </Button>
              </div>
            </div>
          </div>

          <div className="mt-12 sm:mt-16 lg:mt-20 text-center px-4 sm:px-0">
            <p className="text-soft-gray mb-6 sm:mb-8 text-base sm:text-lg">Trusted by emerging franchisors across</p>
            <div className="flex flex-wrap justify-center items-center gap-3 sm:gap-4">
              {industries.map((industry, index) => (
                <span
                  key={industry}
                  className="text-deep-charcoal font-medium px-4 sm:px-6 py-2 sm:py-3 text-sm sm:text-base bg-white/80 backdrop-blur-sm rounded-full border border-slate-blue/20 shadow-soft hover:shadow-medium transition-all duration-300"
                >
                  {industry}
                </span>
              ))}
            </div>
          </div>
        </div>
      </section>

      {/* Three Pillars Section */}
      <section className="py-16 sm:py-20 lg:py-24 bg-white relative">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_30%_70%,rgba(244,162,97,0.05),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12 sm:mb-16 lg:mb-20">
            <h2 className="text-3xl sm:text-4xl lg:text-5xl font-bold text-deep-charcoal mb-4 sm:mb-6">
              Built for franchise{' '}
              <span className="text-slate-blue">
                success
              </span>
            </h2>
            <p className="text-lg sm:text-xl text-soft-gray max-w-3xl mx-auto leading-relaxed px-4 sm:px-0">
              Three foundational pillars support your franchise journey from concept to sustainable growth.
            </p>
          </div>

          <div className="grid sm:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8">
            {pillars.map((pillar, index) => (
              <Card
                key={pillar.title}
                hover
                variant="warm"
                className="text-center group"
              >
                <div className="text-5xl mb-6 transition-transform duration-300 group-hover:scale-110">
                  {pillar.icon}
                </div>
                <h3 className="text-2xl font-bold text-deep-charcoal mb-4">{pillar.title}</h3>
                <p className="text-soft-gray mb-8 leading-relaxed">{pillar.description}</p>
                <Button href={pillar.href} variant="ghost">
                  Learn More →
                </Button>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Process Section */}
      <section className="py-16 sm:py-20 lg:py-24 bg-gradient-to-br from-warm-sand to-light-gray relative overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_80%_20%,rgba(217,151,87,0.08),transparent_60%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-20">
            <h2 className="text-4xl md:text-5xl font-bold text-deep-charcoal mb-6">
              Our proven{' '}
              <span className="text-slate-blue">
                process
              </span>
            </h2>
            <p className="text-xl text-soft-gray max-w-3xl mx-auto leading-relaxed">
              A systematic approach to franchise development that ensures compliance and sustainable growth.
            </p>
          </div>

          <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-6 sm:gap-8">
            {processSteps.map((step, index) => (
              <div key={step.step} className="relative group">
                <Card
                  variant="glass"
                  className="h-full transition-all duration-500 group-hover:scale-105"
                >
                  <div className="text-center">
                    <div className="inline-flex items-center justify-center w-12 h-12 bg-slate-blue rounded-full text-white font-bold text-lg mb-4">
                      {step.step}
                    </div>
                    <h3 className="text-xl font-bold text-deep-charcoal mb-4">{step.title}</h3>
                    <p className="text-soft-gray leading-relaxed">{step.description}</p>
                  </div>
                </Card>
                {/* Connection arrow for desktop */}
                {step.step !== '04' && (
                  <div className="hidden lg:flex absolute top-12 -right-4 w-8 h-0.5 items-center justify-center">
                    <div className="w-8 h-0.5 bg-slate-blue opacity-60"></div>
                    <div className="absolute right-0 w-2 h-2 bg-slate-blue rounded-full transform translate-x-1"></div>
                  </div>
                )}
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Featured Services */}
      <section className="py-16 sm:py-20 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12 sm:mb-16">
            <h2 className="text-2xl sm:text-3xl lg:text-4xl font-semibold text-navy mb-4">
              Comprehensive franchise services
            </h2>
            <p className="text-xl text-slate max-w-2xl mx-auto">
              End-to-end support for every stage of your franchise development and growth.
            </p>
          </div>

          <div className="grid sm:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8">
            {services.map((service) => (
              <Card key={service.title} hover>
                <h3 className="text-lg font-semibold text-navy mb-3">{service.title}</h3>
                <p className="text-slate mb-4 text-sm leading-relaxed">{service.description}</p>
                <Link href={service.href} className="text-accent-blue font-medium hover:text-blue-700 transition-colors duration-200">
                  Learn more →
                </Link>
              </Card>
            ))}
          </div>

          <div className="text-center mt-12">
            <Button href="/services" size="lg">
              View All Services
            </Button>
          </div>
        </div>
      </section>

      {/* Testimonials */}
      <section className="py-20 bg-light">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-3xl md:text-4xl font-semibold text-navy mb-4">
              Trusted by franchise leaders
            </h2>
          </div>

          <div className="grid md:grid-cols-2 gap-8">
            {testimonials.map((testimonial) => (
              <Card key={testimonial.name} className="h-full">
                <blockquote className="text-slate mb-6 leading-relaxed">
                  &ldquo;{testimonial.testimonial}&rdquo;
                </blockquote>
                <div className="border-t border-slate-200 pt-6">
                  <div className="font-semibold text-navy">{testimonial.name}</div>
                  <div className="text-slate text-sm">{testimonial.role}</div>
                  <div className="text-slate text-sm">{testimonial.company} • {testimonial.units}</div>
                </div>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Lead Magnet Section */}
      <section className="py-24 bg-gradient-to-br from-deep-charcoal to-soft-gray text-white relative overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_40%_60%,rgba(217,151,87,0.15),transparent_70%)]"></div>
        <div className="relative max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-4xl md:text-5xl font-bold mb-6">
            Start with the{' '}
            <span className="text-slate-blue">
              basics
            </span>
          </h2>
          <p className="text-xl text-gray-300 mb-12 max-w-3xl mx-auto leading-relaxed">
            Download the 12-Point Franchise Readiness Checklist to identify gaps before you scale.
          </p>
          <Card variant="glass" className="max-w-lg mx-auto">
            <h3 className="text-2xl font-bold text-deep-charcoal mb-6">Get your free checklist</h3>
            <form className="space-y-6">
              <input
                type="email"
                placeholder="Enter your email"
                className="w-full px-6 py-4 border border-slate-blue/30 rounded-full text-deep-charcoal focus:outline-none focus:ring-2 focus:ring-warm-coral bg-white/90 backdrop-blur-sm"
                required
              />
              <div className="flex items-start space-x-3 text-left">
                <input
                  type="checkbox"
                  id="consent"
                  className="mt-1 h-5 w-5 text-slate-blue border-slate-blue/30 rounded focus:ring-warm-coral"
                  required
                />
                <label htmlFor="consent" className="text-sm text-soft-gray">
                  I agree to be contacted about franchise advisory services and consent to receive marketing communications.
                  <Link href="/privacy" className="text-slate-blue hover:text-warm-peach transition-colors ml-1">
                    View Privacy Policy
                  </Link>
                </label>
              </div>
              <Button type="submit" size="lg" className="w-full">
                Download Free Checklist
              </Button>
            </form>
          </Card>
        </div>
      </section>
    </div>
  );
}
