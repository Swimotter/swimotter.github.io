import type { Metadata } from "next";
import Image from "next/image";

import Profile from "@/public/about/profile.png";

export const metadata: Metadata = {
  title: "Jackson (Swimotter) Rubiano",
  description: "Personal site for Jackson (Swimotter) Rubiano",
};

export default function Home() {
  return (
    <div className="flex flex-col items-center justify-between">
      <section className="mx-auto flex flex-col md:flex-row items-start gap-8">
        <div className="flex-1 text-left">
          <p className="text-2xl mb-4">
            Hello everyone! You will find some of the cool things that I&apos;ve
            worked on and been a part of on this site. Many of these are the
            result of my schooling at Bucknell University, with some being
            personal works.
          </p>
        </div>
        <figure>
          <Image
            className="shadow-2xl rounded-md aspect-square"
            src={Profile}
            alt="Profile Picture"
            width={250}
            height={250}
            priority
          />
          <figcaption className="w-full text-left max-w-sm">
            Jackson (Swimotter) Rubiano
            <br />
            Bucknell University
          </figcaption>
        </figure>
      </section>
    </div>
  );
}
