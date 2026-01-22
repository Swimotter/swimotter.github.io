import fs from "fs";
import path from "path";
import yaml from "js-yaml";

export interface BasicConfig {
  name: string;
  email: string;
  linkedin: string;
  github: string;
  website: string;
}

export interface EducationConfig {
  school: string;
  degree: string;
  graduation: string;
  gpa: number;
  egpa: number;
  awards: string[];
  coursework: string[];
}

export interface ExperienceConfig {
  company: string;
  location: string;
  title: string | string[];
  start_date: string;
  end_date: string;
  bullets: string[];
  link?: string;
}

export interface ProjectConfig {
  name: string;
  location: string;
  title: string | string[];
  start_date: string;
  end_date: string;
  bullets: string[];
  link?: string;
}

export interface SkillConfig {
  languages: string[];
  technologies: string[];
  libraries: string[];
  testing: string[];
}

export interface ResumeConfig {
  basics: BasicConfig;
  education: EducationConfig[];
  experience: ExperienceConfig[];
  projects: ProjectConfig[];
  skills: SkillConfig;
}

export function getResume() {
  const filePath = path.join(process.cwd(), "..", "resume", "resume.yaml");
  const file = fs.readFileSync(filePath, "utf8");
  return yaml.load(file) as ResumeConfig;
}
