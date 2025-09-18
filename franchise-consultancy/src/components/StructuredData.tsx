interface OrganizationData {
  name: string;
  description: string;
  url: string;
  logo?: string;
  contactPoint?: {
    telephone: string;
    contactType: string;
    email: string;
  };
}

interface ServiceData {
  name: string;
  description: string;
  url: string;
  provider: string;
}

interface FAQData {
  question: string;
  answer: string;
}

interface BreadcrumbItem {
  name: string;
  url: string;
}

interface StructuredDataProps {
  type: 'organization' | 'service' | 'faq' | 'breadcrumb' | 'article';
  data: OrganizationData | ServiceData | FAQData[] | BreadcrumbItem[] | ArticleData;
}

interface ArticleData {
  title: string;
  description: string;
  datePublished?: string;
  dateModified?: string;
}

const StructuredData = ({ type, data }: StructuredDataProps) => {
  const generateStructuredData = () => {
    switch (type) {
      case 'organization':
        const orgData = data as OrganizationData;
        return {
          "@context": "https://schema.org",
          "@type": "Organization",
          "name": orgData.name,
          "description": orgData.description,
          "url": orgData.url,
          "logo": orgData.logo,
          "contactPoint": orgData.contactPoint ? {
            "@type": "ContactPoint",
            "telephone": orgData.contactPoint.telephone,
            "contactType": orgData.contactPoint.contactType,
            "email": orgData.contactPoint.email
          } : undefined,
          "serviceArea": {
            "@type": "Country",
            "name": "United States"
          },
          "areaServed": {
            "@type": "Country",
            "name": "United States"
          }
        };

      case 'service':
        const serviceData = data as ServiceData;
        return {
          "@context": "https://schema.org",
          "@type": "Service",
          "name": serviceData.name,
          "description": serviceData.description,
          "url": serviceData.url,
          "provider": {
            "@type": "Organization",
            "name": serviceData.provider
          },
          "areaServed": {
            "@type": "Country",
            "name": "United States"
          },
          "serviceType": "Business Consulting"
        };

      case 'faq':
        const faqData = data as FAQData[];
        return {
          "@context": "https://schema.org",
          "@type": "FAQPage",
          "mainEntity": faqData.map((faq) => ({
            "@type": "Question",
            "name": faq.question,
            "acceptedAnswer": {
              "@type": "Answer",
              "text": faq.answer
            }
          }))
        };

      case 'breadcrumb':
        const breadcrumbData = data as BreadcrumbItem[];
        return {
          "@context": "https://schema.org",
          "@type": "BreadcrumbList",
          "itemListElement": breadcrumbData.map((item, index) => ({
            "@type": "ListItem",
            "position": index + 1,
            "name": item.name,
            "item": item.url
          }))
        };

      case 'article':
        const articleData = data as ArticleData;
        return {
          "@context": "https://schema.org",
          "@type": "Article",
          "headline": articleData.title,
          "description": articleData.description,
          "author": {
            "@type": "Organization",
            "name": "Franchise Advisory"
          },
          "publisher": {
            "@type": "Organization",
            "name": "Franchise Advisory"
          },
          "datePublished": articleData.datePublished || new Date().toISOString(),
          "dateModified": articleData.dateModified || new Date().toISOString()
        };

      default:
        return null;
    }
  };

  const structuredData = generateStructuredData();

  if (!structuredData) return null;

  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: JSON.stringify(structuredData) }}
    />
  );
};

export default StructuredData;