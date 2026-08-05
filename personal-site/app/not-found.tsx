import type { Metadata } from "next";
import Link from "next/link";

export const metadata: Metadata = {
  title: "Not found",
  description: "Page not found",
};

export default function NotFound() {
  return (
    <section className="mx-auto flex h-full flex-col justify-center gap-4 text-center">
      <h1>Oops! We couldn&apos;t find that page.</h1>
      <p className="text-blue-700 underline hover:text-blue-900">
        <Link href="/">Maybe try looking around the home page?</Link>
      </p>
    </section>
  );
}
