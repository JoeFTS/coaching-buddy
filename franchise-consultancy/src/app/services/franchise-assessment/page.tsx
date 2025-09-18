import ServicePageTemplate from '@/components/ServicePageTemplate';
import { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Franchise Assessment | Readiness Score & 90-Day Roadmap',
  description: 'Comprehensive franchise readiness evaluation with actionable 90-day improvement plan. Get your readiness score and gap analysis.',
  keywords: 'franchise assessment, franchise readiness, franchise evaluation, franchise consulting'
};

export default function FranchiseAssessmentPage() {
  const serviceData = {
    title: 'Franchise Assessment',
    subhead: 'Readiness score, gap analysis, and a prioritized 90-day roadmap.',
    overview: 'Our comprehensive franchise assessment evaluates your business across six critical dimensions to determine franchise readiness. You receive a detailed score (0-100), red/yellow/green gap analysis, and a prioritized 90-day action plan. This assessment is the logical starting point for any franchise development initiative, helping you understand exactly where you stand and what needs to be addressed before moving forward.',
    outcomes: [
      'Franchise readiness score (0-100) with detailed breakdown',
      'Red/Yellow/Green gap analysis across all key areas',
      'Prioritized 90-day roadmap with specific action items',
      'Quick wins identification for immediate implementation',
      'Must-fix issues highlighted with recommended solutions',
      'Resource requirements and investment planning guidance'
    ],
    scope: [
      'Unit economics and financial performance analysis',
      'Business model differentiation and competitive positioning',
      'Operational maturity and systems evaluation',
      'Brand strength and intellectual property assessment',
      'Management and support model review',
      'Compliance readiness and legal preparedness',
      'Market opportunity and territory analysis',
      'Franchisee profile and ideal candidate definition',
      'Training and onboarding capability assessment',
      'Marketing and lead generation evaluation',
      'Technology and operational systems review',
      'Growth capacity and management bandwidth analysis'
    ],
    approach: [
      {
        title: 'Data Collection',
        description: 'Comprehensive review of financial statements, operational documents, brand materials, and management systems. Stakeholder interviews to understand capabilities and objectives.',
        duration: '3-5 days'
      },
      {
        title: 'Analysis & Scoring',
        description: 'Detailed evaluation against franchise readiness criteria. Scoring across all six dimensions with specific gap identification and benchmarking against successful franchise systems.',
        duration: '1 week'
      },
      {
        title: 'Roadmap Development',
        description: 'Creation of prioritized 90-day action plan with quick wins, must-fixes, and longer-term recommendations. Resource requirements and timeline estimation for each initiative.',
        duration: '2-3 days'
      }
    ],
    timeline: 'Data Collection (3-5 days) → Analysis & Scoring (1 week) → Roadmap Development (2-3 days)',
    clientResponsibilities: [
      'Provide complete financial and operational documentation',
      'Participate in stakeholder interviews and assessment meetings',
      'Grant access to operational systems and key personnel',
      'Respond to assessment questionnaires within agreed timeframes',
      'Provide honest feedback on internal capabilities and challenges',
      'Commit to implementing recommended priority actions'
    ],
    exclusions: [
      'Legal advice or compliance services',
      'Financial statement preparation or accounting services',
      'Implementation of recommended actions',
      'Ongoing consulting or support services',
      'Franchise development or documentation services',
      'Marketing materials or brand development'
    ],
    whoItsFor: [
      'Business owners considering franchise expansion',
      'Companies with 2-5 locations exploring franchise options',
      'Organizations needing objective franchise readiness evaluation',
      'Businesses seeking data-driven expansion planning',
      'Companies recommended to assess readiness by advisors',
      'Organizations wanting to understand franchise requirements before committing'
    ],
    whoItsNotFor: [
      'Single-location businesses without expansion experience',
      'Companies unwilling to share detailed financial information',
      'Organizations not seriously considering franchising',
      'Businesses seeking franchise sales or lead generation services',
      'Companies looking for immediate franchise development without assessment',
      'Organizations unwilling to address identified gaps'
    ],
    pricingNote: 'Fixed-fee assessment with transparent pricing. No ongoing commitments required.',
    faqs: [
      {
        question: 'What makes a business franchise-ready?',
        answer: 'Franchise readiness requires proven profitability, replicable systems, strong unit economics, differentiated market position, management bandwidth, and commitment to supporting franchisees. Our assessment evaluates all these factors systematically.'
      },
      {
        question: 'How detailed is the readiness score?',
        answer: 'We provide scores across six major categories with subcategory breakdowns. Each area includes specific gap analysis, benchmark comparisons, and detailed recommendations for improvement.'
      },
      {
        question: 'What if our score is low?',
        answer: 'Lower scores simply mean more preparation is needed before franchising. Our 90-day roadmap prioritizes the most impactful improvements, and many issues can be addressed relatively quickly with focused effort.'
      },
      {
        question: 'Do you guarantee franchise success if we follow the roadmap?',
        answer: 'While we cannot guarantee success, following our recommendations significantly improves your franchise development prospects. The assessment identifies the most critical success factors for your specific situation.'
      },
      {
        question: 'Can we use the assessment with other franchise consultants?',
        answer: 'Absolutely. The assessment and roadmap are designed to be valuable regardless of who you work with for franchise development. Many clients use our assessment to evaluate different service providers.'
      },
      {
        question: 'How current is the franchise readiness criteria?',
        answer: 'Our assessment criteria are updated regularly based on current FTC requirements, market conditions, and analysis of successful franchise launches. We benchmark against recent franchise registrations and industry best practices.'
      }
    ],
    testimonial: {
      name: 'Jennifer Martinez',
      role: 'President',
      company: 'Wellness Solutions Group',
      quote: 'The assessment was eye-opening. We thought we were ready to franchise, but the detailed analysis showed critical gaps in our operations manual and training systems. The 90-day roadmap helped us address these issues systematically before moving forward.'
    }
  };

  return <ServicePageTemplate service={serviceData} slug="franchise-assessment" />;
}