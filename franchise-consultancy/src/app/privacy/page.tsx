import Card from '@/components/ui/Card';
import { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Privacy Policy | Franchise Advisory',
  description: 'Privacy policy for Franchise Advisory services and website usage.',
  robots: 'noindex, nofollow'
};

export default function PrivacyPage() {
  return (
    <div className="py-16 bg-white">
      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <h1 className="text-4xl font-semibold text-navy mb-8">Privacy Policy</h1>

        <Card>
          <div className="prose prose-slate max-w-none">
            <p className="text-slate-600 mb-6">
              <strong>Last Updated:</strong> {new Date().toLocaleDateString()}
            </p>

            <h2 className="text-2xl font-semibold text-navy mb-4">Information We Collect</h2>
            <p className="text-slate mb-6">
              We collect information you provide directly to us through our contact forms, consultation requests,
              and resource downloads. This may include your name, email address, phone number, company information,
              and business details relevant to franchise consulting services.
            </p>

            <h2 className="text-2xl font-semibold text-navy mb-4">How We Use Your Information</h2>
            <ul className="text-slate mb-6 space-y-2">
              <li>• Respond to your inquiries and provide requested information</li>
              <li>• Schedule and conduct consultation meetings</li>
              <li>• Provide franchise advisory services and support</li>
              <li>• Send relevant educational content and updates (with your consent)</li>
              <li>• Improve our services and website functionality</li>
            </ul>

            <h2 className="text-2xl font-semibold text-navy mb-4">Information Sharing</h2>
            <p className="text-slate mb-6">
              We do not sell, trade, or otherwise transfer your personal information to third parties.
              We may share information with qualified franchise attorneys or CPAs when coordinating
              services on your behalf, with your explicit consent.
            </p>

            <h2 className="text-2xl font-semibold text-navy mb-4">Data Security</h2>
            <p className="text-slate mb-6">
              We implement appropriate security measures to protect your personal information against
              unauthorized access, alteration, disclosure, or destruction.
            </p>

            <h2 className="text-2xl font-semibold text-navy mb-4">Contact Information</h2>
            <p className="text-slate">
              If you have questions about this Privacy Policy, please contact us at
              <a href="mailto:privacy@franchiseadvisory.com" className="text-accent-blue hover:underline ml-1">
                privacy@franchiseadvisory.com
              </a>
            </p>
          </div>
        </Card>
      </div>
    </div>
  );
}