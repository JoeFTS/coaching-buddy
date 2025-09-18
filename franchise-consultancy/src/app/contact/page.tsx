'use client';

import Button from '@/components/ui/Button';
import Card from '@/components/ui/Card';
import Link from 'next/link';
import { useState } from 'react';

export default function ContactPage() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    company: '',
    website: '',
    currentUnits: '',
    targetStates: '',
    timeline: '',
    message: '',
    consent: false
  });

  const [isSubmitting, setIsSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement | HTMLSelectElement>) => {
    const { name, value, type } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: type === 'checkbox' ? (e.target as HTMLInputElement).checked : value
    }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);

    // Simulate form submission
    await new Promise(resolve => setTimeout(resolve, 1000));

    setSubmitted(true);
    setIsSubmitting(false);
  };

  if (submitted) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-warm-cream to-warm-sand flex items-center justify-center px-4 relative overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_50%_50%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <Card variant="warm" className="max-w-lg mx-auto text-center relative z-10">
          <div className="text-6xl mb-6">
            <span className="text-slate-blue">✓</span>
          </div>
          <h1 className="text-3xl font-bold text-deep-charcoal mb-6">Thank you for your inquiry</h1>
          <p className="text-soft-gray mb-8 leading-relaxed">
            We&rsquo;ve received your consultation request and will respond within 24 hours to schedule a time to discuss your franchise development needs.
          </p>
          <div className="space-y-6">
            <h3 className="text-xl font-bold text-deep-charcoal">Next Steps:</h3>
            <ul className="text-soft-gray space-y-4 text-left">
              <li className="flex items-start">
                <div className="flex-shrink-0 w-3 h-3 bg-slate-blue rounded-full mt-2 mr-4"></div>
                Review our <Link href="/resources" className="text-slate-blue hover:text-warm-peach transition-colors font-medium">Resource Center</Link>
              </li>
              <li className="flex items-start">
                <div className="flex-shrink-0 w-3 h-3 bg-slate-blue rounded-full mt-2 mr-4"></div>
                Download our <Link href="/resources/franchise-readiness-checklist" className="text-slate-blue hover:text-warm-peach transition-colors font-medium">Franchise Readiness Checklist</Link>
              </li>
              <li className="flex items-start">
                <div className="flex-shrink-0 w-3 h-3 bg-slate-blue rounded-full mt-2 mr-4"></div>
                Prepare financial statements for the past 3 years
              </li>
            </ul>
          </div>
        </Card>
      </div>
    );
  }

  return (
    <div>
      {/* Hero Section */}
      <section className="relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-warm-cream via-warm-sand to-warm-white"></div>
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_60%_40%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <div className="relative max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-20 lg:py-28 text-center">
          <h1 className="text-5xl md:text-6xl font-bold text-deep-charcoal mb-8 leading-tight">
            Request a{' '}
            <span className="text-slate-blue">
              Consultation
            </span>
          </h1>
          <p className="text-xl text-soft-gray mb-8 leading-relaxed max-w-3xl mx-auto">
            Schedule a confidential discussion about your franchise development needs. We&rsquo;ll review your business and provide initial guidance on next steps.
          </p>
        </div>
      </section>

      {/* Contact Form */}
      <section className="py-16 bg-white">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid lg:grid-cols-3 gap-12">
            <div className="lg:col-span-2">
              <Card>
                <form onSubmit={handleSubmit} className="space-y-6">
                  <div className="grid md:grid-cols-2 gap-6">
                    <div>
                      <label htmlFor="name" className="block text-sm font-medium text-charcoal mb-2">
                        Full Name *
                      </label>
                      <input
                        type="text"
                        id="name"
                        name="name"
                        value={formData.name}
                        onChange={handleInputChange}
                        className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                        required
                      />
                    </div>
                    <div>
                      <label htmlFor="email" className="block text-sm font-medium text-charcoal mb-2">
                        Email Address *
                      </label>
                      <input
                        type="email"
                        id="email"
                        name="email"
                        value={formData.email}
                        onChange={handleInputChange}
                        className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                        required
                      />
                    </div>
                  </div>

                  <div className="grid md:grid-cols-2 gap-6">
                    <div>
                      <label htmlFor="phone" className="block text-sm font-medium text-charcoal mb-2">
                        Phone Number
                      </label>
                      <input
                        type="tel"
                        id="phone"
                        name="phone"
                        value={formData.phone}
                        onChange={handleInputChange}
                        className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                      />
                    </div>
                    <div>
                      <label htmlFor="company" className="block text-sm font-medium text-charcoal mb-2">
                        Company Name *
                      </label>
                      <input
                        type="text"
                        id="company"
                        name="company"
                        value={formData.company}
                        onChange={handleInputChange}
                        className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                        required
                      />
                    </div>
                  </div>

                  <div className="grid md:grid-cols-2 gap-6">
                    <div>
                      <label htmlFor="website" className="block text-sm font-medium text-charcoal mb-2">
                        Website
                      </label>
                      <input
                        type="url"
                        id="website"
                        name="website"
                        value={formData.website}
                        onChange={handleInputChange}
                        className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                        placeholder="https://"
                      />
                    </div>
                    <div>
                      <label htmlFor="currentUnits" className="block text-sm font-medium text-charcoal mb-2">
                        Current Units/Locations
                      </label>
                      <select
                        id="currentUnits"
                        name="currentUnits"
                        value={formData.currentUnits}
                        onChange={handleInputChange}
                        className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                      >
                        <option value="">Select...</option>
                        <option value="1">1 location</option>
                        <option value="2-3">2-3 locations</option>
                        <option value="4-10">4-10 locations</option>
                        <option value="11-25">11-25 locations</option>
                        <option value="25+">25+ locations</option>
                      </select>
                    </div>
                  </div>

                  <div className="grid md:grid-cols-2 gap-6">
                    <div>
                      <label htmlFor="targetStates" className="block text-sm font-medium text-charcoal mb-2">
                        Target States for Expansion
                      </label>
                      <input
                        type="text"
                        id="targetStates"
                        name="targetStates"
                        value={formData.targetStates}
                        onChange={handleInputChange}
                        className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                        placeholder="e.g., TX, FL, CA"
                      />
                    </div>
                    <div>
                      <label htmlFor="timeline" className="block text-sm font-medium text-charcoal mb-2">
                        Timeline
                      </label>
                      <select
                        id="timeline"
                        name="timeline"
                        value={formData.timeline}
                        onChange={handleInputChange}
                        className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                      >
                        <option value="">Select...</option>
                        <option value="immediate">Ready to start immediately</option>
                        <option value="3-months">Within 3 months</option>
                        <option value="6-months">3-6 months</option>
                        <option value="12-months">6-12 months</option>
                        <option value="exploring">Just exploring options</option>
                      </select>
                    </div>
                  </div>

                  <div>
                    <label htmlFor="message" className="block text-sm font-medium text-charcoal mb-2">
                      Tell us about your franchise goals and any specific questions
                    </label>
                    <textarea
                      id="message"
                      name="message"
                      value={formData.message}
                      onChange={handleInputChange}
                      rows={4}
                      className="w-full px-4 py-3 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-accent-blue focus:border-transparent"
                      placeholder="Describe your business, expansion goals, and any specific challenges or questions..."
                    ></textarea>
                  </div>

                  <div className="flex items-start space-x-3">
                    <input
                      type="checkbox"
                      id="consent"
                      name="consent"
                      checked={formData.consent}
                      onChange={handleInputChange}
                      className="mt-1 h-4 w-4 text-accent-blue border-slate-300 rounded focus:ring-accent-blue"
                      required
                    />
                    <label htmlFor="consent" className="text-sm text-slate">
                      I agree to be contacted about franchise advisory services and consent to receive marketing communications. I understand this inquiry does not create an attorney-client relationship.
                      <Link href="/privacy" className="text-accent-blue hover:underline ml-1">
                        View Privacy Policy
                      </Link>
                    </label>
                  </div>

                  <Button
                    type="submit"
                    size="lg"
                    className="w-full"
                    disabled={isSubmitting}
                  >
                    {isSubmitting ? 'Submitting...' : 'Request Consultation'}
                  </Button>
                </form>
              </Card>
            </div>

            {/* Sidebar */}
            <div className="lg:col-span-1 space-y-8">
              <Card>
                <h3 className="text-lg font-semibold text-navy mb-4">What to expect</h3>
                <div className="space-y-4">
                  <div className="flex items-start">
                    <div className="flex-shrink-0 w-6 h-6 bg-accent-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">1</span>
                    </div>
                    <div>
                      <div className="font-medium text-charcoal text-sm">Initial Response</div>
                      <div className="text-slate text-sm">We&rsquo;ll respond within 24 hours to schedule a call.</div>
                    </div>
                  </div>
                  <div className="flex items-start">
                    <div className="flex-shrink-0 w-6 h-6 bg-accent-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">2</span>
                    </div>
                    <div>
                      <div className="font-medium text-charcoal text-sm">Discovery Call</div>
                      <div className="text-slate text-sm">20-30 minute discussion about your goals and challenges.</div>
                    </div>
                  </div>
                  <div className="flex items-start">
                    <div className="flex-shrink-0 w-6 h-6 bg-accent-blue rounded-full flex items-center justify-center mr-3 mt-0.5">
                      <span className="text-white text-xs">3</span>
                    </div>
                    <div>
                      <div className="font-medium text-charcoal text-sm">Next Steps</div>
                      <div className="text-slate text-sm">We&rsquo;ll recommend the best path forward for your situation.</div>
                    </div>
                  </div>
                </div>
              </Card>

              <Card>
                <h3 className="text-lg font-semibold text-navy mb-4">Coordination approach</h3>
                <p className="text-slate text-sm mb-4">
                  We coordinate closely with your franchise attorney and CPA throughout any engagement to ensure consistency and avoid duplicated effort.
                </p>
                <p className="text-slate text-sm">
                  All consultations are confidential and create no obligations for either party.
                </p>
              </Card>
            </div>
          </div>
        </div>
      </section>

      {/* Alternative Contact */}
      <section className="py-16 bg-light">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-2xl font-semibold text-navy mb-8">Prefer to start with an assessment?</h2>
          <Card className="max-w-2xl mx-auto">
            <h3 className="text-lg font-semibold text-navy mb-3">Franchise Readiness Assessment</h3>
            <p className="text-slate mb-6">
              Get an objective evaluation of your franchise readiness with a detailed score and 90-day improvement roadmap.
            </p>
            <Button href="/services/franchise-assessment">
              Learn About Our Assessment
            </Button>
          </Card>
        </div>
      </section>
    </div>
  );
}