"use client";

import { Geist, Geist_Mono } from "next/font/google";
import Link from "next/link";
import { usePathname } from "next/navigation";
import Image from "next/image";
import { ThemeProvider } from "next-themes";

import ThemeSwitcher from "@/components/theme-switcher";
import "@/app/globals.css";
import Mail from "@/public/mail.svg";
import Github from "@/public/github.svg";
import LinkedIn from "@/public/linkedin.svg";

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
    name: "mail",
    svg: Mail,
    href: "mailto:mr.jacksonrubiano@gmail.com",
    alt: "Send me an email!",
  },
  {
    name: "github",
    svg: Github,
    href: "https://github.com/swimotter",
    alt: "Check out my GitHub!",
  },
  {
    name: "linkedin",
    svg: LinkedIn,
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
    <html lang="en" suppressHydrationWarning>
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased`}
        suppressHydrationWarning
      >
        <ThemeProvider
          attribute="class"
          defaultTheme="system"
          enableSystem
          disableTransitionOnChange
        >
          <div className="min-h-screen flex flex-col w-full">
            <header className="sticky top-0 z-50 bg-light1 dark:bg-dark1">
              <div className="flex items-center min-h-16 w-full mx-auto px-4 py-3 sm:px-6">
                <Link
                  href="/"
                  className="font-extrabold text-light3 dark:text-dark3"
                >
                  Jackson (Swimotter) Rubiano
                </Link>
                <div className="flex items-center gap-4 ml-auto min-w-[269.87px]">
                  <nav className="flex items-center gap-4">
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
                                : "text-light3 dark:text-dark3 hover:text-cyan-800 border-transparent"
                            }
                          `}
                        >
                          {item.name}
                        </Link>
                      );
                    })}
                  </nav>
                  <ThemeSwitcher />
                </div>
              </div>
            </header>

            <main className="w-full flex flex-1 py-8 px-8 bg-light2 dark:bg-dark2">
              {children}
            </main>

            <footer className="bottom-0 z-50 max-h-17.5 overflow-hidden bg-light1 dark:bg-dark1">
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
                          className="dark:invert"
                          src={item.svg}
                          alt={item.alt}
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
        </ThemeProvider>
      </body>
    </html>
  );
}
