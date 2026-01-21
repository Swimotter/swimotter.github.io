import type { Metadata } from "next";

import ProjectIcon from "@/components/project-icon";
import FilmRoll from "@/public/projects/paper-films/film-roll.jpg";

export const metadata: Metadata = {
  title: "Projects | Jackson (Swimotter) Rubiano",
  description: "Projects worked on by Jackson (Swimotter) Rubiano",
};

// Priority on a scale of 1-5
// 1: Highest priority
// 5: Lowest priority
const projects = [
  {
    title: "The Japanese Paper Film Project",
    description: "Some photos and highlights from my time on the project",
    img: FilmRoll,
    page: "paper-films",
    priority: 1,
  },
];

export default function Home() {
  return (
    <section className="w-full grid grid-cols-[repeat(auto-fit,minmax(0,240))] gap-4 justify-center items-start">
      {projects
        .sort((a, b) => a.priority - b.priority)
        .map((item) => {
          return (
            <ProjectIcon
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
