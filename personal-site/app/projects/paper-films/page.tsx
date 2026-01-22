import type { Metadata } from "next";
import Image from "next/image";

import Project from "@/components/project";
import Scanner from "@/public/projects/paper-films/scanner.jpg";
import FilmRoll from "@/public/projects/paper-films/film-roll.jpg";
import FilmStripBack from "@/public/projects/paper-films/film-strip-back.jpg";
import Team from "@/public/projects/paper-films/team.jpg";
import Software from "@/public/projects/paper-films/software.gif";

export const metadata: Metadata = {
  title: "Paper Films | Jackson (Swimotter) Rubiano",
  description:
    "The Japanese Paper Film Project contributions and highlights of Jackson (Swimotter) Rubiano",
};

export default function Home() {
  return (
    <Project
      title="The Japanese Paper Film Project"
      description={
        <>
          <p>
            <a
              href="https://kamifirumu.scholar.bucknell.edu/"
              target="_blank"
              rel="noopener noreferrer"
            >
              <span className="text-blue-500 hover:underline">
                The Japanese Paper Film Project
              </span>
            </a>{" "}
            is a research and preservation initiative dedicated to protecting
            and digitizing rare Japanese films produced on paper rather than
            celluloid from the 1930s &mdash; &quot;kami firmu&quot;. These
            films, consisting of primarily animated and live-action, were for
            the most part lost to history due to their fragile material. Based
            out of Bucknell University, the project combines skill sets from
            Japanese (Language & History), Film/Media Studies, Mechanical
            Engineering, and Computer Science to develop custom scanning and
            software tools to capture these unique artifacts from history and
            prevent their disappearance, presenting them in digital forms while
            maintaining their worn characteristics.
          </p>
        </>
      }
    >
      <section className="flex flex-row gap-2 items-start">
        <figure className="relative text-center w-1/2">
          <Image
            className="object-contain shadow-2xl rounded-md"
            src={FilmRoll}
            alt="Film roll"
            priority
          />
          <figcaption className="mt-2">
            A film roll depicting the title card.
          </figcaption>
        </figure>
        <figure className="relative text-center w-1/2">
          <Image
            className="object-contain shadow-2xl rounded-md"
            src={FilmStripBack}
            alt="Back of a film strip"
            priority
          />
          <figcaption className="mt-2">
            The back of the rolls contain information about the film.
          </figcaption>
        </figure>
      </section>
      <section className="mt-6">
        <figure className="flex flex-col sm:flex-row gap-2 items-center sm:items-start">
          <figcaption className="flex-1">
            <p>
              The first part of the preservation process begins with the
              scanning of films. Once the film is placed in the rig, we record a
              few seconds with a color calibration chart so that our film
              editors can later color grade the resulting films. After this,
              it&apos;s simply a matter of waiting until the entire roll is
              scanned.
            </p>
            <p className="mt-2">
              We record all of our films in 6K at 60fps with a shutter speed of
              1/480th of a second to ensure that we can get the most accurate
              color data without worrying about any motion blur.
            </p>
            <p className="mt-2">
              Once the film data has been recorded it then needs to be converted
              back into a watchable film. To accomplish this, we pass films
              through custom software that I designed, based upon the framework
              set forth by Yuhan Chen (via a plugin created for DaVinci
              Resolve). This process overcomes the inconsistencies in the
              films&apos; frame size, perforation locations, and condition.
            </p>
          </figcaption>
          <Image
            className="w-full sm:w-1/2 lg:w-7/12 xl:w-1/2 2xl:w-1/3 h-auto object-contain shadow-2xl rounded-md order-last sm:order-first"
            src={Scanner}
            alt="Film scanner"
            priority
          />
        </figure>
      </section>
      <section className="mt-6">
        <figure className="flex flex-col gap-2">
          <figcaption>
            <p>
              To accomplish this, the software uses a combination of filters and
              rankings to determine what is a &apos;good frame&apos;. The first
              thing that the software attempts to look for are perforations
              (assuming that the film has them).
            </p>
            <p className="mt-2">
              All the films are recorded with a specific color in the background
              that is not present in any films to our knowledge; with this, we
              can filter out any frames that don&apos;t contain perforations on
              both the top and bottom of the frame.
            </p>
            <p className="mt-2">
              From here though, things get mildly trickier&mdash;due to the
              often poor condition of the films, tears can occasionally be
              misidentified as perforations. To reduce the occurrences of these
              in the cleaned videos, we get the image gradients of all remaining
              frames to identify horizontal lines. Based upon these, we score
              each image on how much it matches what we expect a frame line to
              look like.
            </p>
            <p className="mt-2">
              Then, all these frames can be extracted and have some light
              stabilization applied before being sent to our film editors who
              add title cards, intertitles, subtitles, and do the final color
              grading.
            </p>
          </figcaption>
          <Image
            className="w-full h-auto shadow-2xl rounded-md"
            src={Software}
            alt="Film scanner"
            priority
          />
        </figure>
      </section>
      <section className="mt-6">
        <figure className="flex flex-col gap-2">
          <figcaption>
            Throughout my time working on this project, I&apos;ve had the
            amazing opportunity to meet and work with many wonderful, smart,
            witty, and fun people; I will ever be grateful for this experience,
            the knowledge I gained, and the friends made along the way. While I
            don&apos;t have a photo with everyone involved, these are some of
            the people with whom I worked very closely my first year on the
            project.
          </figcaption>
          <Image
            className="w-full h-auto shadow-2xl rounded-md"
            src={Team}
            alt="The team"
            priority
          />
        </figure>
      </section>
    </Project>
  );
}
