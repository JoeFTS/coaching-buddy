import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Coaching Buddy - Baseball Practice Planning for Pony League",
  description: "Create customized baseball practice plans for Pony Baseball coaches with age-appropriate drills, skill checklists, and coaching resources.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className="antialiased">
        {children}
      </body>
    </html>
  );
}
