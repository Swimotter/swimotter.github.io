import type { Metadata } from "next";

import ProjectIcon from "@/components/project-icon";
import { projects } from "@/app/projects/projects.generated";

export const metadata: Metadata = {
  title: "Projects | Jackson (Swimotter) Rubiano",
  description: "Projects worked on by Jackson (Swimotter) Rubiano",
};

export default function Home() {
  return (
    <section
      className="
        w-full
        flex gap-4 overflow-x-auto
        snap-x snap-mandatory
        scroll-smooth
        scrollbar-hidden
        touch-pan-x
        px-[calc(50vw-120px)]
        sm:px-0
        sm:touch-pan-y
        sm:grid sm:grid-cols-[repeat(auto-fit,minmax(0,240px))]
        sm:overflow-visible sm:justify-center
      "
    >
      {projects
        .filter((project) => project.public)
        .sort((a, b) => a.priority - b.priority)
        .map((project) => {
          return (
            <ProjectIcon
              className="min-w-60 snap-center"
              key={project.page}
              title={project.title}
              description={project.shortDescription}
              img={project.img}
              page={`projects/${project.page}`}
            />
          );
        })}
    </section>
  );
}
