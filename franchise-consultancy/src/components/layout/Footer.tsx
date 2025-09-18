import Link from 'next/link';

const Footer = () => {
  const currentYear = new Date().getFullYear();

  const footerSections = [
    {
      title: 'Services',
      links: [
        { label: 'Franchise Launch Program', href: '/services/franchise-launch-program' },
        { label: 'Compliance System', href: '/services/franchise-compliance-system' },
        { label: 'Growth Counsel', href: '/services/franchise-growth-counsel' },
        { label: 'Trademark Protection', href: '/services/trademark-protection' }
      ]
    },
    {
      title: 'Resources',
      links: [
        { label: 'Franchising 101', href: '/franchising-101' },
        { label: 'Resources', href: '/resources' },
        { label: 'FTC Franchise Rule', href: 'https://www.ftc.gov/legal-library/browse/rules/franchise-rule', external: true },
        { label: 'State Regulators', href: '/resources/state-regulators' }
      ]
    },
    {
      title: 'Company',
      links: [
        { label: 'About', href: '/about' },
        { label: 'Contact', href: '/contact' },
        { label: 'Request Consultation', href: '/contact' }
      ]
    }
  ];

  return (
    <footer className="bg-gradient-to-br from-deep-charcoal to-warm-charcoal text-white relative overflow-hidden">
      <div className="absolute inset-0 bg-[radial-gradient(circle_at_20%_80%,rgba(217,151,87,0.1),transparent_50%)]"></div>
      <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
        <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
          <div className="md:col-span-1">
            <div className="mb-4">
              <span className="text-xl font-semibold">Franchise Advisory</span>
            </div>
            <p className="text-slate-300 text-sm leading-relaxed mb-4">
              Advisory for franchise launch, compliance, and growth. We coordinate closely with your franchise attorney and CPA.
            </p>
            <div className="text-sm text-slate-300">
              <p>Professional Services Firm</p>
              <p>United States</p>
            </div>
          </div>

          {footerSections.map((section) => (
            <div key={section.title}>
              <h3 className="font-semibold mb-4 text-white">{section.title}</h3>
              <ul className="space-y-2">
                {section.links.map((link) => (
                  <li key={link.label}>
                    {link.external ? (
                      <a
                        href={link.href}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-slate-300 hover:text-white transition-colors duration-200 text-sm"
                      >
                        {link.label}
                      </a>
                    ) : (
                      <Link
                        href={link.href}
                        className="text-slate-300 hover:text-white transition-colors duration-200 text-sm"
                      >
                        {link.label}
                      </Link>
                    )}
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </div>

        <div className="border-t border-slate-600 mt-12 pt-8">
          <div className="flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0">
            <div className="text-sm text-slate-300">
              <p className="mb-2">
                Information on this site is for educational purposes only and does not constitute legal advice.
                Services are delivered in coordination with your attorney and CPA.
              </p>
            </div>
          </div>

          <div className="flex flex-col md:flex-row justify-between items-center mt-4 space-y-4 md:space-y-0">
            <div className="text-sm text-slate-300">
              © {currentYear} Franchise Advisory. All rights reserved.
            </div>

            <div className="flex space-x-6">
              <Link href="/privacy" className="text-slate-300 hover:text-white transition-colors duration-200 text-sm">
                Privacy Policy
              </Link>
              <Link href="/terms" className="text-slate-300 hover:text-white transition-colors duration-200 text-sm">
                Terms of Service
              </Link>
              <Link href="/accessibility" className="text-slate-300 hover:text-white transition-colors duration-200 text-sm">
                Accessibility
              </Link>
              <Link href="/cookies" className="text-slate-300 hover:text-white transition-colors duration-200 text-sm">
                Cookie Notice
              </Link>
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;