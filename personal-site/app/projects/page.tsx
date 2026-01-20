import type { Metadata } from "next";

import Project from "@/components/project";
import FilmRoll from "@/public/projects/paper-films/film-roll.jpg";

export const metadata: Metadata = {
  title: "Projects | Jackson (Swimotter) Rubiano",
  description: "Projects worked on by Jackson (Swimotter) Rubiano",
};

const projects = [
  {
    title: "The Japanese Paper Film Project",
    description: "Some photos and highlights from my time on the project",
    img: FilmRoll,
    page: "paper-films",
  },
];

export default function Home() {
  return (
    <section className="w-4/5 grid grid-cols-[repeat(auto-fit,minmax(0,240))] gap-4 justify-center items-start">
      {projects.map((item) => {
        return (
          <Project
            key={item.page}
            title={item.title}
            description={item.description}
            img={item.img}
            page={`projects/${item.page}`}
          />
        );
      })}
    </section>
  );
}
