'use client';

import Button from '@/components/ui/Button';
import Card from '@/components/ui/Card';
import { useState } from 'react';

export default function Franchising101Page() {
  const [openFaq, setOpenFaq] = useState<number | null>(null);

  const toggleFaq = (index: number) => {
    setOpenFaq(openFaq === index ? null : index);
  };

  const commonQuestions = [
    {
      category: "Getting Started",
      icon: "🚀",
      questions: [
        {
          question: "What exactly is franchising?",
          answer: "Franchising is a business model where a company (franchisor) grants others (franchisees) the right to operate under their brand name and business system. The franchisee pays fees and royalties in exchange for training, support, and the use of proven business methods."
        },
        {
          question: "How much money do I need to start franchising my business?",
          answer: "Initial costs typically range from $100,000 to $500,000, including legal fees ($15,000-$40,000), FDD preparation, operations manual development, training systems, and working capital. The exact amount depends on your business complexity and expansion goals."
        },
        {
          question: "How long does it take to franchise a business?",
          answer: "The franchising process typically takes 6-12 months from start to launch. This includes business assessment (30-60 days), legal documentation (60-90 days), operations manual creation (60-90 days), and pilot testing (30-60 days)."
        }
      ]
    },
    {
      category: "Requirements",
      icon: "📋",
      questions: [
        {
          question: "What makes a business franchisable?",
          answer: "A franchisable business needs: proven profitability for 12+ months, systemized operations that can be replicated, strong unit economics, distinctive brand or competitive advantage, and scalable business model that doesn't rely on the owner's personal relationships."
        },
        {
          question: "Do I need multiple locations before franchising?",
          answer: "While not legally required, having 2-3 successful locations demonstrates your business model's replicability and provides valuable operational insights. Most successful franchisors start with proven multi-unit experience."
        },
        {
          question: "What legal requirements must I meet?",
          answer: "You must comply with the FTC Franchise Rule, which requires providing a Franchise Disclosure Document (FDD) to prospective franchisees at least 14 days before signing. Additionally, 14 states require franchise registration before selling franchises."
        }
      ]
    },
    {
      category: "Financial Aspects",
      icon: "💰",
      questions: [
        {
          question: "How do franchise royalties work?",
          answer: "Franchisees typically pay 4-8% of gross revenue as ongoing royalties, plus 1-3% for marketing funds. These payments provide sustainable revenue for the franchisor and fund ongoing support, training, and system improvements."
        },
        {
          question: "What should I charge for franchise fees?",
          answer: "Initial franchise fees typically range from $25,000 to $75,000, depending on industry, brand strength, and support provided. The fee should reflect the value of your brand, training, and ongoing support system."
        },
        {
          question: "How much can I expect to earn as a franchisor?",
          answer: "Franchisor revenue comes from initial fees and ongoing royalties. A system with 50 franchisees paying 6% royalties on $500,000 annual revenue each would generate $1.5M annually. However, you must factor in ongoing support costs."
        }
      ]
    },
    {
      category: "Operations",
      icon: "⚙️",
      questions: [
        {
          question: "What support must I provide to franchisees?",
          answer: "Franchisors must provide initial training, ongoing support, marketing assistance, operational guidance, quality control, and system updates. The level of support should match what's promised in your FDD."
        },
        {
          question: "How do I maintain quality control?",
          answer: "Quality control is maintained through detailed operations manuals, regular inspections, training programs, performance standards, and enforcement of brand guidelines. You'll need systems to monitor and address compliance issues."
        },
        {
          question: "Can I terminate a franchise agreement?",
          answer: "Yes, franchise agreements include termination clauses for specific breaches such as non-payment, brand violations, or failure to meet standards. However, termination must follow proper legal procedures and contract terms."
        }
      ]
    }
  ];

  const faqs = [
    {
      question: "Is franchising right for every business?",
      answer: "No. Franchising works best for businesses with proven profitability, systemized operations, and scalable models. Service businesses, retail concepts, and food service often franchise successfully, while highly technical or relationship-dependent businesses may not be suitable."
    },
    {
      question: "What&apos;s the difference between franchising and licensing?",
      answer: "Franchising involves a comprehensive business relationship with ongoing support, training, and system compliance. Licensing typically grants use of intellectual property with minimal ongoing involvement. Franchising is more regulated and requires FDD disclosure."
    },
    {
      question: "How do I find qualified franchisees?",
      answer: "Qualified franchisees are found through franchise brokers, trade shows, online portals, and targeted marketing. Look for candidates with adequate capital, relevant experience, commitment to your system, and alignment with your brand values."
    },
    {
      question: "What happens if my franchisee fails?",
      answer: "Franchise agreements should address failure scenarios, including territory rights reversion, asset purchase options, and non-compete enforcement. Support struggling franchisees when possible, but be prepared to protect your brand through proper legal channels."
    },
    {
      question: "Can I franchise internationally?",
      answer: "Yes, but international franchising involves additional complexity including foreign laws, currency considerations, cultural adaptation, and often requires master franchise or area development agreements. Start domestically to prove your model first."
    },
    {
      question: "How often must I update my FDD?",
      answer: "The FDD must be updated annually, with material changes requiring amendments within 90 days. Regular updates ensure compliance and provide current information to prospective franchisees about your system's performance and changes."
    },
    {
      question: "What insurance do I need as a franchisor?",
      answer: "Franchisors typically need general liability, professional liability, cyber liability, and errors & omissions insurance. Your attorney and insurance agent can recommend specific coverage based on your industry and business model."
    },
    {
      question: "How do I handle franchisee disputes?",
      answer: "Most franchise agreements include dispute resolution procedures starting with direct negotiation, followed by mediation, and finally arbitration. Maintain clear documentation, follow contract procedures, and involve legal counsel when necessary."
    },
    {
      question: "Can I buy back franchise locations?",
      answer: "Franchise agreements may include buyback provisions under certain circumstances. However, these must be clearly defined in the original agreement and comply with franchise laws. Buybacks require fair valuation and proper documentation."
    },
    {
      question: "What ongoing training must I provide?",
      answer: "Ongoing training requirements vary by industry but typically include new employee training, refresher courses, new product/service training, and management development. Training requirements should be specified in your franchise agreement and operations manual."
    }
  ];

  return (
    <div>
      {/* Hero Section */}
      <section className="relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-warm-cream via-warm-sand to-warm-white"></div>
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_60%_40%,rgba(217,151,87,0.1),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-20 lg:py-28">
          <div className="text-center max-w-5xl mx-auto">
            <h1 className="text-5xl md:text-6xl font-bold text-deep-charcoal mb-8 leading-tight">
              <span className="text-slate-blue">
                Franchising 101
              </span>
              <br />
              Everything you need to know
            </h1>
            <p className="text-xl text-soft-gray mb-10 leading-relaxed max-w-4xl mx-auto">
              Get answers to the most common questions about franchising your business. From legal requirements to financial considerations, we cover everything you need to make informed decisions.
            </p>
            <div className="flex flex-col sm:flex-row gap-6 justify-center">
              <Button href="/contact" size="lg" className="animate-float">
                Get Expert Guidance
              </Button>
              <Button href="/services/franchise-assessment" variant="outline" size="lg">
                Take Our Assessment
              </Button>
            </div>
          </div>
        </div>
      </section>

      {/* Common Questions by Category */}
      <section className="py-24 bg-white relative">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_30%_70%,rgba(244,162,97,0.05),transparent_50%)]"></div>
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold text-deep-charcoal mb-6">
              Most{' '}
              <span className="text-slate-blue">
                common questions
              </span>
            </h2>
            <p className="text-xl text-soft-gray max-w-3xl mx-auto">
              We&apos;ve organized the most frequently asked questions by topic to help you understand every aspect of franchising.
            </p>
          </div>

          <div className="space-y-16">
            {commonQuestions.map((category) => (
              <div key={category.category} className="max-w-6xl mx-auto">
                <div className="text-center mb-12">
                  <div className="text-6xl mb-4">{category.icon}</div>
                  <h3 className="text-3xl font-bold text-deep-charcoal">{category.category}</h3>
                </div>

                <div className="grid md:grid-cols-1 gap-8">
                  {category.questions.map((item, questionIndex) => (
                    <Card
                      key={questionIndex}
                      variant="warm"
                      className="hover:shadow-xl transition-all duration-300"
                    >
                      <h4 className="text-xl font-bold text-deep-charcoal mb-4">{item.question}</h4>
                      <p className="text-soft-gray leading-relaxed">{item.answer}</p>
                    </Card>
                  ))}
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* FAQ Section with Accordion */}
      <section className="py-24 bg-gradient-to-br from-warm-sand to-light-gray relative overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_50%_50%,rgba(217,151,87,0.08),transparent_60%)]"></div>
        <div className="relative max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold text-deep-charcoal mb-6">
              Frequently Asked{' '}
              <span className="text-slate-blue">
                Questions
              </span>
            </h2>
            <p className="text-xl text-soft-gray max-w-3xl mx-auto">
              Additional questions and detailed answers to help you navigate the franchising landscape with confidence.
            </p>
          </div>

          <div className="space-y-4">
            {faqs.map((faq, index) => (
              <Card key={index} variant="glass" className="overflow-hidden">
                <button
                  onClick={() => toggleFaq(index)}
                  className="w-full text-left p-6 focus:outline-none focus:ring-2 focus:ring-warm-coral focus:ring-opacity-50"
                >
                  <div className="flex justify-between items-center">
                    <h3 className="text-lg font-semibold text-deep-charcoal pr-4">{faq.question}</h3>
                    <span className={`text-slate-blue text-2xl font-bold transition-transform duration-300 ${
                      openFaq === index ? 'rotate-45' : ''
                    }`}>
                      +
                    </span>
                  </div>
                </button>

                {openFaq === index && (
                  <div className="px-6 pb-6 pt-0">
                    <div className="border-t border-slate-blue/20 pt-4">
                      <p className="text-soft-gray leading-relaxed">{faq.answer}</p>
                    </div>
                  </div>
                )}
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Key Takeaways */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-semibold text-navy mb-4">Key takeaways</h2>
          </div>

          <div className="grid md:grid-cols-3 gap-8">
            <Card className="text-center">
              <div className="text-4xl mb-4">🎯</div>
              <h3 className="text-xl font-semibold text-navy mb-3">Preparation is Critical</h3>
              <p className="text-slate">
                Successful franchising requires thorough preparation, proven systems, and adequate capital. Don&apos;t rush the process.
              </p>
            </Card>

            <Card className="text-center">
              <div className="text-4xl mb-4">⚖️</div>
              <h3 className="text-xl font-semibold text-navy mb-3">Compliance is Non-Negotiable</h3>
              <p className="text-slate">
                FTC regulations and state requirements are complex. Work with experienced franchise attorneys and consultants.
              </p>
            </Card>

            <Card className="text-center">
              <div className="text-4xl mb-4">🤝</div>
              <h3 className="text-xl font-semibold text-navy mb-3">Partnership Mindset</h3>
              <p className="text-slate">
                Successful franchising is about creating win-win partnerships where both franchisor and franchisees thrive.
              </p>
            </Card>
          </div>
        </div>
      </section>

      {/* Assessment CTA */}
      <section className="py-16 bg-navy text-white">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl font-semibold mb-4">Ready to assess your franchise potential?</h2>
          <p className="text-xl text-slate-300 mb-8">
            Take our comprehensive assessment to understand your readiness and get a customized roadmap for franchise development.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Button href="/services/franchise-assessment">
              Take the Assessment
            </Button>
            <Button href="/contact" variant="outline">
              Schedule a Consultation
            </Button>
          </div>

          <div className="mt-12 max-w-sm mx-auto bg-white/10 rounded-lg p-6">
            <h3 className="font-semibold mb-4">Still have questions?</h3>
            <p className="text-slate-300 text-sm mb-4">
              Our compliance-focused advisors are here to help you navigate the franchising process.
            </p>
            <Button href="/contact" variant="outline" size="sm">
              Get Expert Answers
            </Button>
          </div>
        </div>
      </section>
    </div>
  );
}