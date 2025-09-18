import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";
import Navigation from "@/components/layout/Navigation";
import Footer from "@/components/layout/Footer";
import StructuredData from "@/components/StructuredData";

const inter = Inter({
  subsets: ["latin"],
  variable: "--font-inter",
  weight: ["400", "600"],
});

export const metadata: Metadata = {
  title: "Franchise Advisory | Launch, Comply, Grow Responsibly",
  description: "Advisory for franchise launch, compliance, and growth—built around the FTC Rule and state requirements. Trusted by emerging franchisors.",
  keywords: "franchise consulting, franchise compliance, FDD registration, franchise launch, franchise attorney coordination",
  openGraph: {
    title: "Franchise Advisory | Launch, Comply, Grow Responsibly",
    description: "Advisory for franchise launch, compliance, and growth—built around the FTC Rule and state requirements.",
    type: "website",
    locale: "en_US",
  },
};

export const viewport = {
  width: 'device-width',
  initialScale: 1,
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={`${inter.variable} antialiased`}>
        <StructuredData
          type="organization"
          data={{
            name: "Franchise Advisory",
            description: "Advisory for franchise launch, compliance, and growth—built around the FTC Rule and state requirements.",
            url: "https://franchiseadvisory.com",
            contactPoint: {
              telephone: "+1-555-FRANCHISE",
              contactType: "Business",
              email: "info@franchiseadvisory.com"
            }
          }}
        />
        <a href="#main-content" className="sr-only focus:not-sr-only focus:absolute focus:top-0 focus:left-0 bg-accent-blue text-white px-4 py-2 z-50">
          Skip to main content
        </a>
        <Navigation />
        <main id="main-content">
          {children}
        </main>
        <Footer />
      </body>
    </html>
  );
}
