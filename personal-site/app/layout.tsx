"use client";

import { Geist, Geist_Mono } from "next/font/google";
import Link from "next/link";
import { usePathname } from "next/navigation";
import Image from "next/image";
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

const extLinks = [
  {
    name: "Mail",
    href: "mailto:mr.jacksonrubiano@gmail.com",
    alt: "Send me an email!",
  },
  {
    name: "Github",
    href: "https://github.com/swimotter",
    alt: "Check out my GitHub!",
  },
  {
    name: "LinkedIn",
    href: "https://linkedin.com/in/jackson-rubiano",
    alt: "Connect with me on LinkedIn!",
  },
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
        <div className="min-h-screen flex flex-col w-full">
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

          <main className="flex flex-1">{children}</main>

          <footer className="bottom-0 z-50 bg-gray-950 max-h-17.5 overflow-hidden">
            <div className="flex items-center w-full mx-auto px-4 py-3 sm:px-6">
              <nav className="w-full flex items-center justify-center gap-4">
                {extLinks.map((item) => {
                  return (
                    <a
                      key={item.name}
                      href={item.href}
                      target="_blank"
                      rel="noopener noreferrer"
                    >
                      <Image
                        className={`${true ? "invert" : ""}`}
                        src={`/${item.name}.svg`}
                        alt={`${item.alt}`}
                        width={50}
                        height={50}
                        priority
                      />
                    </a>
                  );
                })}
              </nav>
            </div>
          </footer>
        </div>
      </body>
    </html>
  );
}
