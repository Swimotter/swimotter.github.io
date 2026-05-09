import type { Metadata } from "next";
import Image from "next/image";
import { JSX } from "react";

import PDF from "@/public/resume/pdf.svg";
import {
  getResume,
  ResumeConfig,
  BasicConfig,
  EducationConfig,
  ExperienceConfig,
  ProjectConfig,
  SkillConfig,
} from "@/lib/resume";

export const metadata: Metadata = {
  title: "Resume | Jackson (Swimotter) Rubiano",
  description: "Jackson (Swimotter) Rubiano's Resume",
};

// FIXME: Page doesn't scroll to top if loading from a page that is scrolled down
export default function Home() {
  const resume = getResume();

  return (
    <div className="w-full flex flex-row">
      <div className="hidden sm:block sm:w-1/4">
        <nav className="sticky top-24 flex flex-col text-xs">
          <ul className="flex flex-col">
            {Object.keys(resume).map((section) => {
              return (
                <li key={section}>
                  <a
                    href={`#${section}`}
                    className="hidden-link p-1.5 block w-full text-left capitalize transition-colors not-hover:font-semibold"
                  >
                    {section}
                  </a>
                </li>
              );
            })}
          </ul>
        </nav>
      </div>
      <div className="w-full sm:w-3/4">
        <article>
          <header className="flex flex-row items-center">
            <h1 className="text-4xl">Resume</h1>
            <a
              className="ml-auto"
              download="jackson_rubiano_resume.pdf"
              href="/resume/jackson_rubiano_resume.pdf"
              target="_blank"
              rel="noopener noreferrer"
            >
              <Image
                className="dark:invert"
                src={PDF}
                alt={"Download PDF"}
                width={50}
                height={50}
                priority
              />
            </a>
          </header>
          <div>
            {Object.keys(resume).map((section) => {
              return (
                <section
                  key={section}
                  className="mt-6 p-4 rounded-sm bg-background"
                >
                  <h2
                    id={section}
                    className="scroll-mt-24 text-lg font-semibold capitalize"
                  >
                    {section}
                  </h2>
                  {renderSection(resume, section as keyof ResumeConfig)}
                </section>
              );
            })}
          </div>
        </article>
      </div>
    </div>
  );
}

type Renderers = {
  [K in keyof ResumeConfig]: (data: ResumeConfig[K]) => JSX.Element;
};

const renderers: Renderers = {
  basics: renderBasics,
  education: renderEducation,
  experience: renderExperience,
  projects: renderProjects,
  skills: renderSkills,
};

type ResumeKeys = keyof ResumeConfig;

function renderSection<K extends ResumeKeys>(resume: ResumeConfig, key: K) {
  const renderer = renderers[key];
  const data = resume[key];

  return renderer(data);
}

function renderBasic(k: string, v: string) {
  if (k === "phone") {
    return (
      <a className="link link-hover" href={`tel:${v}`}>
        {v}
      </a>
    );
  } else if (k === "email") {
    return (
      <a className="link link-hover" href={`mailto:${v}`}>
        {v}
      </a>
    );
  } else if (k === "linkedin" || k === "github" || k === "website") {
    return (
      <a
        className="link link-hover"
        href={`https://${v}`}
        target="_blank"
        rel="noopener noreferrer"
      >
        {v}
      </a>
    );
  } else {
    return <>{v}</>;
  }
}

function renderBasics(basics: BasicConfig) {
  return (
    <>
      <dl className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        {Object.entries(basics).map(([k, v]) => (
          <div key={k}>
            <dt className="font-medium capitalize">{k}</dt>
            <dd>{renderBasic(k, v)}</dd>
          </div>
        ))}
      </dl>
    </>
  );
}

function renderEducation(education: EducationConfig[]) {
  return (
    <>
      <div className="space-y-4">
        {education.map((ed) => (
          <div key={ed.school} className="border rounded p-4">
            <div className="flex justify-between">
              <div>
                <div className="font-bold">{ed.school}</div>
                <div className="text-sm">{ed.degree}</div>
              </div>
              <div className="text-sm">{ed.graduation}</div>
            </div>

            <div className="mt-2 text-sm">
              {ed.gpa !== undefined && <div>GPA: {ed.gpa}</div>}
              {ed.egpa !== undefined && <div>Engineering GPA: {ed.egpa}</div>}
            </div>

            <div className="mt-2">
              <div className="font-medium">Awards</div>
              <ul className="list-disc ml-6">
                {ed.awards.map((a) => (
                  <li key={a}>{a}</li>
                ))}
              </ul>
            </div>

            <div className="mt-2">
              <div className="font-medium">Coursework</div>
              <ul className="list-disc ml-6">
                {ed.coursework.map((c) => (
                  <li key={c}>{c}</li>
                ))}
              </ul>
            </div>
          </div>
        ))}
      </div>
    </>
  );
}

function renderReference(name: string, link?: string) {
  if (link) {
    return (
      <a
        className="link link-hover"
        href={link}
        target="_blank"
        rel="noopener noreferrer"
      >
        {name}
      </a>
    );
  } else {
    return <>{name}</>;
  }
}

function renderTitle(title: string | string[]) {
  const titles = Array.isArray(title) ? title : [title];
  return titles.join(", ");
}

function renderExperience(experience: ExperienceConfig[]) {
  return (
    <div className="space-y-4">
      {experience.map((job) => (
        <div key={job.company + job.title} className="border rounded p-4">
          <div className="flex justify-between">
            <div>
              <div className="font-bold">{renderTitle(job.title)}</div>
              <div className="text-sm">
                {renderReference(job.company, job.link)}
              </div>
              <div className="text-sm">{job.location}</div>
            </div>
            <div className="text-sm">
              {job.start_date} — {job.end_date}
            </div>
          </div>

          <ul className="mt-2 list-disc ml-6">
            {job.bullets.map((b) => (
              <li key={b}>{b}</li>
            ))}
          </ul>
        </div>
      ))}
    </div>
  );
}

function renderProjects(projects: ProjectConfig[]) {
  return (
    <div className="space-y-4">
      {projects.map((project) => (
        <div key={project.name} className="border rounded p-4">
          <div className="flex justify-between">
            <div>
              <div className="font-bold">
                {renderReference(project.name, project.link)}
              </div>
              <div className="text-sm">{renderTitle(project.title)}</div>
              <div className="text-sm">{project.location}</div>
            </div>
            <div className="text-sm">
              {project.start_date} — {project.end_date}
            </div>
          </div>

          <ul className="mt-2 list-disc ml-6">
            {project.bullets.map((bullet) => (
              <li key={bullet}>{bullet}</li>
            ))}
          </ul>
        </div>
      ))}
    </div>
  );
}

function renderSkillCategory(name: string, items?: string[]) {
  if (!items || items.length === 0) return null;

  return (
    <div key={name}>
      <h3 className="font-medium capitalize">{name}</h3>
      <ul className="flex flex-wrap gap-2">
        {items.map((item) => (
          <li key={item} className="px-2 py-1 rounded bg-foreground">
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

function renderSkills(skills: SkillConfig) {
  return (
    <>
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        {renderSkillCategory("languages", skills.languages)}
        {renderSkillCategory("technologies", skills.technologies)}
        {renderSkillCategory("libraries", skills.libraries)}
        {renderSkillCategory("testing", skills.testing)}
      </div>
    </>
  );
}
