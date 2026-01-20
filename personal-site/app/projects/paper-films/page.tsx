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
              <span className="text-blue-400 underline">
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
      <div className="flex flex-row gap-6 mb-6 items-start">
        <div className="flex flex-col gap-2 w-1/2 items-center">
          <figure className="relative">
            <Image
              className="object-contain shadow-2xl rounded-md"
              src={FilmRoll}
              alt="Film roll"
              priority
            />
          </figure>
          <figcaption>A film roll depicting the title card.</figcaption>
        </div>
        <div className="flex flex-col gap-2 w-1/2 items-center">
          <figure className="relative">
            <Image
              className="object-contain shadow-2xl rounded-md"
              src={FilmStripBack}
              alt="Back of a film strip"
              priority
            />
          </figure>
          <figcaption>
            The back of the rolls contain information about the film.
          </figcaption>
        </div>
      </div>
      <div className="flex flex-row gap-4 mb-6 items-start">
        <div className="max-w-1/2">
          <Image
            className="h-auto shadow-2xl rounded-md"
            src={Scanner}
            alt="Film scanner"
            priority
          />
        </div>
        <div className="flex-1">
          <p className="mb-3">
            The first part of the preservation process begins with the scanning
            of films. Once the film is placed in the rig, we record a few
            seconds with a color calibration chart so that our film editors can
            later color grade the resulting films. After this, it&apos;s simply
            a matter of waiting until the entire roll is scanned.
          </p>
          <p className="mb-3">
            We record all of our films in 6K at 60fps with a shutter speed of
            1/480th of a second to ensure that we can get the most accurate
            color data without worrying about any motion blur.
          </p>
          <p className="mb-3">
            Once the film data has been recorded it then needs to be converted
            back into a watchable film. To accomplish this, we pass films
            through custom software that I designed, based upon the framework
            set forth by Yuhan Chen (via a plugin created for DaVinci Resolve).
            This process overcomes the inconsistencies in the films&apos; frame
            size, perforation locations, and condition.
          </p>
          <p>
            We record all of our films in 6K at 60fps with a shutter speed of
            1/480th of a second to ensure that we can get the most accurate
            color data without worrying about any motion blur.
          </p>
        </div>
      </div>
      <p className="mb-6">
        To accomplish this, the software uses a combination of filters and
        rankings to determine what is a &apos;good frame&apos;. The first thing
        that the software attempts to look for are perforations (assuming that
        the film has them). All the films are recorded with a specific color in
        the background that is not present in any films to our knowledge; with
        this, we can filter out any frames that don&apos;t contain perforations
        on both the top and bottom of the frame. From here though, things get
        mildly trickier&mdash;due to the often poor condition of the films,
        tears can occasionally be misidentified as perforations. To reduce the
        occurrences of these in the cleaned videos, we get the image gradients
        of all remaining frames to identify horizontal lines. Based upon these,
        we score each image on how much it matches what we expect a frame line
        to look like. Then, all these frames can be extracted and have some
        light stabilization applied before being sent to our film editors who
        add title cards, intertitles, subtitles, and do the final color grading.
      </p>
      <div className="flex flex-row gap-4 mb-6 items-start">
        <Image
          className="flex-2 shadow-2xl rounded-md"
          src={Software}
          alt="Film scanner"
          priority
        />
      </div>
      <div>
        <figure>
          <Image
            className="object-contain shadow-2xl rounded-md mb-2"
            src={Team}
            alt="The team"
            priority
          />
        </figure>
        <figcaption className="text-center">
          Some of the amazing people that I&apos;ve had the honor to work with
          throughout the course of this project.
        </figcaption>
      </div>
    </Project>
  );
}
