"use client";

import "@/app/globals.css";

import localFont from "next/font/local";
import { Inter } from "next/font/google";

import { Header } from "@/components/header";
import { Footer } from "@/components/footer";

const cabinetGrotesk = localFont({
  src: "../fonts/CabinetGrotesk-Variable.woff2",
  variable: "--font-cabinet",
  weight: "100 900",
  display: "swap",
});

const inter = Inter({
  subsets: ["latin"],
  variable: "--font-inter",
  display: "swap",
});

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className={`${cabinetGrotesk.variable} ${inter.variable}`}>
      <body>
        <div className="flex min-h-screen w-full flex-col">
          <Header />
          <div className="mx-auto flex flex-1 justify-center p-5 md:w-4/5 xl:w-2/3">
            <main>{children}</main>
          </div>
          <Footer />
        </div>
      </body>
    </html>
  );
}
