import type { Metadata } from "next";
import Image from "next/image";

export const metadata: Metadata = {
  title: "Jackson (Swimotter) Rubiano",
  description: "Personal site for Jackson (Swimotter) Rubiano",
};

export default function Home() {
  return (
    <main className="flex w-full flex-col items-center justify-between py-8 px-8 bg-light2 dark:bg-dark2">
      <section className="mx-auto px-4 py-12 sm:px-6 flex flex-col md:flex-row items-start gap-8">
        <div className="flex-1 text-left">
          <p className="text-2xl mb-4 text-light3 dark:text-dark3">
            Hello everyone! You will find some of the cool things that I&apos;ve
            worked on and been a part of on this site. Many of these are the
            result of my schooling at Bucknell University, with some being
            personal works.
          </p>
        </div>
        <div className="flex flex-col items-end">
          <Image
            className="shadow-2xl rounded-md aspect-square"
            src="/profile.png"
            alt="Profile Picture"
            width={250}
            height={250}
            priority
          />
          <p className="w-full text-light3 dark:text-dark3 text-left md:text-left max-w-sm">
            Jackson (Swimotter) Rubiano
            <br />
            Bucknell University
          </p>
        </div>
      </section>
    </main>
  );
}
