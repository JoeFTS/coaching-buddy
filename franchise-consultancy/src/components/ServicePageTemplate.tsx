import Button from '@/components/ui/Button';
import Card from '@/components/ui/Card';
import Link from 'next/link';

interface ServiceData {
  title: string;
  subhead: string;
  overview: string;
  outcomes: string[];
  scope: string[];
  approach: {
    title: string;
    description: string;
    duration: string;
  }[];
  timeline: string;
  clientResponsibilities: string[];
  exclusions: string[];
  whoItsFor: string[];
  whoItsNotFor: string[];
  pricingNote: string;
  faqs: {
    question: string;
    answer: string;
  }[];
  testimonial?: {
    name: string;
    role: string;
    company: string;
    quote: string;
  };
}

interface ServicePageTemplateProps {
  service: ServiceData;
  slug: string;
}

const ServicePageTemplate = ({ service, slug }: ServicePageTemplateProps) => {
  const breadcrumbs = [
    { label: 'Services', href: '/services' },
    { label: service.title, href: `/services/${slug}` }
  ];

  return (
    <div>
      {/* Breadcrumbs */}
      <nav className="bg-warm-sand/30 py-6" aria-label="Breadcrumb">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center space-x-3 text-sm">
            <Link href="/" className="text-soft-gray hover:text-slate-blue transition-colors">Home</Link>
            <span className="text-soft-gray">›</span>
            {breadcrumbs.map((crumb, index) => (
              <div key={crumb.href} className="flex items-center space-x-3">
                {index === breadcrumbs.length - 1 ? (
                  <span className="text-deep-charcoal font-semibold">{crumb.label}</span>
                ) : (
                  <>
                    <Link href={crumb.href} className="text-soft-gray hover:text-slate-blue transition-colors">
                      {crumb.label}
                    </Link>
                    <span className="text-soft-gray">›</span>
                  </>
                )}
              </div>
            ))}
          </div>
        </div>
      </nav>

      {/* Hero Section */}
      <section className="relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-warm-cream via-warm-sand to-warm-white"></div>
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_60%_40%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-20 lg:py-24">
          <div className="grid lg:grid-cols-3 gap-12">
            <div className="lg:col-span-2">
              <h1 className="text-5xl md:text-6xl font-bold text-deep-charcoal mb-8 leading-tight">
                {service.title}
              </h1>
              <p className="text-xl text-soft-gray mb-10 leading-relaxed">
                {service.subhead}
              </p>
              <div className="flex flex-col sm:flex-row gap-6">
                <Button href="/contact" size="lg" className="animate-float">
                  Request a Consultation
                </Button>
                <Button href="#" variant="outline" size="lg">
                  Download Scope (PDF)
                </Button>
              </div>
            </div>

            {/* Sidebar */}
            <div className="lg:col-span-1">
              <Card variant="warm" className="sticky top-24">
                <h3 className="text-xl font-bold text-deep-charcoal mb-6">Service Overview</h3>
                <div className="space-y-6">
                  <div className="bg-warm-sand/50 rounded-lg p-4">
                    <span className="text-sm font-bold text-deep-charcoal block mb-2">Timeline:</span>
                    <p className="text-soft-gray">{service.timeline}</p>
                  </div>
                  <div className="bg-warm-sand/50 rounded-lg p-4">
                    <span className="text-sm font-bold text-deep-charcoal block mb-2">Pricing:</span>
                    <p className="text-soft-gray">{service.pricingNote}</p>
                  </div>
                  <div className="pt-6 border-t border-slate-blue/20">
                    <p className="text-sm text-soft-gray mb-6 leading-relaxed">
                      We coordinate closely with your franchise attorney and CPA throughout the engagement.
                    </p>
                    <Button href="/contact" className="w-full">
                      Get Started
                    </Button>
                  </div>
                </div>
              </Card>
            </div>
          </div>
        </div>
      </section>

      {/* Overview & Outcomes */}
      <section className="py-16 bg-light">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid lg:grid-cols-2 gap-12">
            <div>
              <h2 className="text-2xl font-semibold text-navy mb-6">Overview</h2>
              <p className="text-slate leading-relaxed">{service.overview}</p>
            </div>
            <div>
              <h2 className="text-2xl font-semibold text-navy mb-6">Outcomes</h2>
              <ul className="space-y-3">
                {service.outcomes.map((outcome, index) => (
                  <li key={index} className="flex items-start">
                    <div className="flex-shrink-0 w-2 h-2 bg-accent-emerald rounded-full mt-2 mr-3"></div>
                    <span className="text-slate">{outcome}</span>
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* Scope of Work */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <h2 className="text-3xl font-semibold text-navy mb-8">Scope of Work</h2>
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            {service.scope.map((item, index) => (
              <div key={index} className="bg-light rounded-lg p-6">
                <div className="flex items-start">
                  <div className="flex-shrink-0 w-6 h-6 bg-accent-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                    <span className="text-white text-xs font-semibold">{index + 1}</span>
                  </div>
                  <span className="text-charcoal font-medium">{item}</span>
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Approach & Timeline */}
      <section className="py-16 bg-light">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <h2 className="text-3xl font-semibold text-navy mb-8">Approach & Timeline</h2>
          <div className="space-y-8">
            {service.approach.map((phase, index) => (
              <div key={index} className="flex items-start">
                <div className="flex-shrink-0">
                  <div className="w-12 h-12 bg-accent-blue rounded-full flex items-center justify-center mr-6">
                    <span className="text-white font-semibold">{index + 1}</span>
                  </div>
                </div>
                <div className="bg-white rounded-lg p-6 flex-1 shadow-sm">
                  <div className="flex justify-between items-start mb-2">
                    <h3 className="text-lg font-semibold text-navy">{phase.title}</h3>
                    <span className="text-sm text-accent-blue font-medium bg-blue-50 px-3 py-1 rounded-full">
                      {phase.duration}
                    </span>
                  </div>
                  <p className="text-slate">{phase.description}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Client Responsibilities & Dependencies */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid lg:grid-cols-2 gap-12">
            <div>
              <h2 className="text-2xl font-semibold text-navy mb-6">Client Responsibilities</h2>
              <ul className="space-y-3">
                {service.clientResponsibilities.map((responsibility, index) => (
                  <li key={index} className="flex items-start">
                    <div className="flex-shrink-0 w-2 h-2 bg-accent-blue rounded-full mt-2 mr-3"></div>
                    <span className="text-slate">{responsibility}</span>
                  </li>
                ))}
              </ul>
            </div>
            <div>
              <h2 className="text-2xl font-semibold text-navy mb-6">Exclusions & Assumptions</h2>
              <ul className="space-y-3">
                {service.exclusions.map((exclusion, index) => (
                  <li key={index} className="flex items-start">
                    <div className="flex-shrink-0 w-2 h-2 bg-slate-400 rounded-full mt-2 mr-3"></div>
                    <span className="text-slate">{exclusion}</span>
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* Who It's For / Not For */}
      <section className="py-16 bg-light">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid lg:grid-cols-2 gap-12">
            <Card className="h-full">
              <h2 className="text-xl font-semibold text-navy mb-4 flex items-center">
                <span className="text-accent-emerald mr-2">✓</span>
                This service is right for you if:
              </h2>
              <ul className="space-y-3">
                {service.whoItsFor.map((item, index) => (
                  <li key={index} className="flex items-start">
                    <div className="flex-shrink-0 w-2 h-2 bg-accent-emerald rounded-full mt-2 mr-3"></div>
                    <span className="text-slate">{item}</span>
                  </li>
                ))}
              </ul>
            </Card>

            <Card className="h-full">
              <h2 className="text-xl font-semibold text-navy mb-4 flex items-center">
                <span className="text-red-500 mr-2">✗</span>
                This service may not be suitable if:
              </h2>
              <ul className="space-y-3">
                {service.whoItsNotFor.map((item, index) => (
                  <li key={index} className="flex items-start">
                    <div className="flex-shrink-0 w-2 h-2 bg-red-400 rounded-full mt-2 mr-3"></div>
                    <span className="text-slate">{item}</span>
                  </li>
                ))}
              </ul>
            </Card>
          </div>
        </div>
      </section>

      {/* FAQs */}
      <section className="py-16 bg-white">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <h2 className="text-3xl font-semibold text-navy mb-8 text-center">Frequently Asked Questions</h2>
          <div className="space-y-6">
            {service.faqs.map((faq, index) => (
              <Card key={index}>
                <h3 className="text-lg font-semibold text-navy mb-3">{faq.question}</h3>
                <p className="text-slate leading-relaxed">{faq.answer}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Testimonial */}
      {service.testimonial && (
        <section className="py-16 bg-light">
          <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
            <Card className="text-center">
              <blockquote className="text-xl text-slate mb-6 leading-relaxed">
                &ldquo;{service.testimonial.quote}&rdquo;
              </blockquote>
              <div className="border-t border-slate-200 pt-6">
                <div className="font-semibold text-navy">{service.testimonial.name}</div>
                <div className="text-slate">{service.testimonial.role}</div>
                <div className="text-slate">{service.testimonial.company}</div>
              </div>
            </Card>
          </div>
        </section>
      )}

      {/* CTA Band */}
      <section className="py-16 bg-navy text-white">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl font-semibold mb-4">Ready to get started?</h2>
          <p className="text-xl text-slate-300 mb-8">
            Let&rsquo;s discuss your specific needs and develop a custom approach.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Button href="/contact">
              Request a Consultation
            </Button>
            <Button href="#" variant="outline">
              Download Scope Overview
            </Button>
          </div>
        </div>
      </section>
    </div>
  );
};

export default ServicePageTemplate;