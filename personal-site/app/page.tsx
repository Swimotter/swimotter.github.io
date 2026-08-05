import Profile from "@/public/about/profile.png";

import type { Metadata } from "next";
import Image from "next/image";

export const metadata: Metadata = {
  title: "Jackson (Swimotter) Rubiano",
  description: "The personal site for Jackson (Swimotter) Rubiano",
};

export default function Home() {
  return (
    <section className="mx-auto flex flex-col gap-4 lg:flex-row">
      <div className="flex flex-1 flex-col gap-4">
        <p>
          Hi, I&apos;m Jackson! I&apos;m a senior at Bucknell studying computer
          science & engineering. Much of the work I do centers around the arts,
          creative works, and interdisciplinary projects.
        </p>
        <p>
          Academically, I&apos;ve pursued these interests in several ways:
          designing software to preserve rare 1930s Japanese paper films,
          creating a program to analyze the color in films, running a study to
          understand different teaching mediums and their effectiveness.
        </p>
        <p>
          Outside of the classroom, these interests most prominently express
          themselves through game development, be it designing game engines,
          creating quick weeklong games, or working on more longform projects.
        </p>
        <p>
          Most currently, I am working on creating a high-performance game
          engine to run a large scale falling sand simulation with complex
          interactions between particles.
        </p>
      </div>
      <Image
        className="w-xs rounded-md shadow-2xl lg:w-sm xl:w-lg"
        src={Profile}
        alt="Profile Picture"
        width={800}
        height={800}
        priority
      />
    </section>
  );
}
