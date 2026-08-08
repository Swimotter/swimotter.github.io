"use client";

import "@/app/globals.css";

import localFont from "next/font/local";
import { Inter } from "next/font/google";

import { GoogleTagManager } from "@next/third-parties/google";

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
    <html
      lang="en"
      className={`${cabinetGrotesk.variable} ${inter.variable} scroll-smooth`}
    >
      <GoogleTagManager gtmId={`${process.env.NEXT_PUBLIC_GTM_ID}`} />
      <body className="bg-background m-0 flex min-h-[calc(100vh-1px)] flex-col font-sans">
        <Header />
        <main className="mx-auto grow p-4 md:w-4/5 xl:w-2/3">{children}</main>
        <Footer />
      </body>
    </html>
  );
}
