"use client";

import { Geist, Geist_Mono } from "next/font/google";
import Link from "next/link";
import { usePathname } from "next/navigation";
import Image from "next/image";
import { ThemeProvider } from "next-themes";

import ThemeSwitcher from "@/components/theme-switcher";
import "@/app/globals.css";
import Mail from "@/public/common/mail.svg";
import Github from "@/public/common/github.svg";
import LinkedIn from "@/public/common/linkedin.svg";

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
      >
        <ThemeProvider
          attribute="class"
          defaultTheme="system"
          enableSystem
          disableTransitionOnChange
        >
          <div className="w-full min-h-screen flex flex-col bg-light1 dark:bg-dark1 text-light3 dark:text-dark3">
            <header className="sticky top-0 z-50">
              <div className="flex items-center min-h-16 w-full mx-auto px-4 py-3 sm:px-6">
                <Link href="/" className="font-extrabold">
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
                                : "hover:text-cyan-800 border-transparent"
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

            <div className="w-full flex flex-1 justify-center py-8 px-8 bg-light2 dark:bg-dark2">
              <main className="w-4/5">{children}</main>
            </div>

            <footer className="bottom-0 z-50 max-h-17.5 overflow-hidden">
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
