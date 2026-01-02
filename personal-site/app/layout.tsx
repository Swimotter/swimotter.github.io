"use client";

import { Geist, Geist_Mono } from "next/font/google";
import Link from "next/link";
import { usePathname } from "next/navigation";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

const navItems = [
  { name: "Research", href: "/research" },
  { name: "Projects", href: "/projects" },
  { name: "Resume", href: "/resume" },
];

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const pathname = usePathname();

  return (
    <html lang="en">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased`}
      >
        <header className="sticky top-0 z-50 bg-gray-900">
          <div className="flex items-center w-full mx-auto px-4 py-3 sm:px-6">
            <Link href="/" className="font-extrabold text-white">
              Jackson (Swimotter) Rubiano
            </Link>
            <nav className="flex items-center gap-4 ml-auto">
              {navItems.map((item) => {
                const isActive = pathname === item.href;

                return (
                  <Link
                    key={item.name}
                    href={item.href}
                    className={`flex items-center transition-colors
                      ${
                        isActive
                          ? "text-cyan-600 font-medium border-blue-600"
                          : "text-gray-200 hover:text-cyan-800 border-transparent"
                      }
                    `}
                  >
                    {item.name}
                  </Link>
                );
              })}
            </nav>
          </div>
        </header>
        <main>{children}</main>
      </body>
    </html>
  );
}
