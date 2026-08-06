import { getResume } from "@/lib/resume";

import {
  Resume,
  ResumeContent,
  ResumeEntry,
  ResumeBulletItem,
  ResumeBullets,
  ResumeEntryDates,
  ResumeHeader,
  ResumeLabel,
  ResumeEntryRole,
  ResumeEntryTitle,
  ResumeGrid,
  ResumeGridItem,
  ResumeGroup,
  ResumeNav,
  ResumeSection,
  ResumeSectionTitle,
  ResumeFact,
  ResumeFactLabel,
  ResumeFactValue,
  ResumeTagItem,
  ResumeTags,
  ResumeTitle,
} from "@/components/ui/resume";

import { FileDown } from "lucide-react";

import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Resume | Jackson (Swimotter) Rubiano",
  description: "Jackson (Swimotter) Rubiano's Resume",
};

const resume = getResume();

const sections = Object.keys(resume).map((key) => ({
  id: key,
  label: key.charAt(0).toUpperCase() + key.slice(1),
}));

export default function Home() {
  return (
    <Resume sections={sections}>
      <ResumeNav sections={sections} />
      <ResumeContent>
        <ResumeHeader className="flex-row items-center">
          <ResumeTitle>Resume</ResumeTitle>
          <a
            download="jackson_rubiano_resume.pdf"
            href="/resume/jackson_rubiano_resume.pdf"
            target="_blank"
            rel="noopener noreferrer"
          >
            <FileDown size={50} />
          </a>
        </ResumeHeader>

        <ResumeSection id="basics">
          <ResumeSectionTitle>Basics</ResumeSectionTitle>
          <ResumeGrid>
            <ResumeGridItem>
              <ResumeFact>
                <ResumeFactLabel>Name</ResumeFactLabel>
                <ResumeFactValue>{resume.basics.name}</ResumeFactValue>
              </ResumeFact>
            </ResumeGridItem>
            <ResumeGridItem>
              <ResumeFact>
                <ResumeFactLabel>Email</ResumeFactLabel>
                <ResumeFactValue>
                  <a href={`mailto:${resume.basics.email}`}>
                    {resume.basics.email}
                  </a>
                </ResumeFactValue>
              </ResumeFact>
            </ResumeGridItem>
            <ResumeGridItem>
              <ResumeFact>
                <ResumeFactLabel>LinkedIn</ResumeFactLabel>
                <ResumeFactValue>
                  <a
                    href={`https://${resume.basics.linkedin}`}
                    target="_blank"
                    rel="noopener noreferrer"
                  >
                    {resume.basics.linkedin}
                  </a>
                </ResumeFactValue>
              </ResumeFact>
            </ResumeGridItem>
            <ResumeGridItem>
              <ResumeFact>
                <ResumeFactLabel>GitHub</ResumeFactLabel>
                <ResumeFactValue>
                  <a
                    href={`https://${resume.basics.github}`}
                    target="_blank"
                    rel="noopener noreferrer"
                  >
                    {resume.basics.github}
                  </a>
                </ResumeFactValue>
              </ResumeFact>
            </ResumeGridItem>
            <ResumeGridItem>
              <ResumeFact>
                <ResumeFactLabel>Website</ResumeFactLabel>
                <ResumeFactValue>
                  <a
                    href={`https://${resume.basics.website}`}
                    target="_blank"
                    rel="noopener noreferrer"
                  >
                    {resume.basics.website}
                  </a>
                </ResumeFactValue>
              </ResumeFact>
            </ResumeGridItem>
          </ResumeGrid>
        </ResumeSection>

        <ResumeSection id="education">
          <ResumeSectionTitle>Education</ResumeSectionTitle>
          {resume.education.map((education) => (
            <ResumeEntry key={education.school + education.degree}>
              <ResumeGroup>
                <ResumeHeader>
                  <ResumeEntryTitle>{education.school}</ResumeEntryTitle>
                  <ResumeEntryDates>{education.graduation}</ResumeEntryDates>
                </ResumeHeader>

                <ResumeEntryRole>{education.degree}</ResumeEntryRole>
              </ResumeGroup>

              <ResumeGroup>
                <ResumeLabel>GPA: {education.gpa}</ResumeLabel>
                <ResumeLabel>Engineering GPA: {education.egpa}</ResumeLabel>
              </ResumeGroup>

              <ResumeGroup>
                <ResumeLabel>Awards</ResumeLabel>
                <ResumeBullets>
                  {education.awards.map((award) => (
                    <ResumeBulletItem key={award}>{award}</ResumeBulletItem>
                  ))}
                </ResumeBullets>
              </ResumeGroup>

              <ResumeGroup>
                <ResumeLabel>Coursework</ResumeLabel>
                <ResumeBullets>
                  {education.coursework.map((course) => (
                    <ResumeBulletItem key={course}>{course}</ResumeBulletItem>
                  ))}
                </ResumeBullets>
              </ResumeGroup>
            </ResumeEntry>
          ))}
        </ResumeSection>

        <ResumeSection id="experience">
          <ResumeSectionTitle>Experience</ResumeSectionTitle>
          {resume.experience.map((experience) => (
            <ResumeEntry key={experience.company + experience.title}>
              <ResumeGroup>
                <ResumeHeader>
                  <ResumeEntryTitle>
                    {experience.link ? (
                      <a
                        href={experience.link}
                        target="_blank"
                        rel="noopener noreferrer"
                      >
                        {experience.company}
                      </a>
                    ) : (
                      experience.company
                    )}
                  </ResumeEntryTitle>
                  <ResumeEntryDates>
                    {experience.start_date} — {experience.end_date}
                  </ResumeEntryDates>
                </ResumeHeader>

                <ResumeEntryRole>
                  {Array.isArray(experience.title)
                    ? experience.title.join(", ")
                    : experience.title}
                </ResumeEntryRole>
              </ResumeGroup>

              <ResumeBullets>
                {experience.bullets.map((bullet) => (
                  <ResumeBulletItem key={bullet}>{bullet}</ResumeBulletItem>
                ))}
              </ResumeBullets>
            </ResumeEntry>
          ))}
        </ResumeSection>

        <ResumeSection id="projects">
          <ResumeSectionTitle>Projects</ResumeSectionTitle>
          {resume.projects.map((project) => (
            <ResumeEntry key={project.name}>
              <ResumeGroup>
                <ResumeHeader>
                  <ResumeEntryTitle>
                    {project.link ? (
                      <a
                        href={project.link}
                        target="_blank"
                        rel="noopener noreferrer"
                      >
                        {project.name}
                      </a>
                    ) : (
                      project.name
                    )}
                  </ResumeEntryTitle>
                  <ResumeEntryDates>
                    {project.start_date} — {project.end_date}
                  </ResumeEntryDates>
                </ResumeHeader>

                <ResumeEntryRole>
                  {Array.isArray(project.title)
                    ? project.title.join(", ")
                    : project.title}
                </ResumeEntryRole>
              </ResumeGroup>

              <ResumeBullets>
                {project.bullets.map((bullet) => (
                  <ResumeBulletItem key={bullet}>{bullet}</ResumeBulletItem>
                ))}
              </ResumeBullets>
            </ResumeEntry>
          ))}
        </ResumeSection>

        <ResumeSection id="skills">
          <ResumeSectionTitle>Skills</ResumeSectionTitle>
          <ResumeGrid>
            <ResumeGridItem>
              <ResumeLabel className="font-semibold">Languages</ResumeLabel>
              <ResumeTags>
                {resume.skills.languages.map((language) => (
                  <ResumeTagItem key={language}>{language}</ResumeTagItem>
                ))}
              </ResumeTags>
            </ResumeGridItem>

            <ResumeGridItem>
              <ResumeLabel className="font-semibold">Technologies</ResumeLabel>
              <ResumeTags>
                {resume.skills.technologies.map((technology) => (
                  <ResumeTagItem key={technology}>{technology}</ResumeTagItem>
                ))}
              </ResumeTags>
            </ResumeGridItem>

            <ResumeGridItem>
              <ResumeLabel className="font-semibold">Libraries</ResumeLabel>
              <ResumeTags>
                {resume.skills.libraries.map((library) => (
                  <ResumeTagItem key={library}>{library}</ResumeTagItem>
                ))}
              </ResumeTags>
            </ResumeGridItem>

            <ResumeGridItem>
              <ResumeLabel className="font-semibold">Testing</ResumeLabel>
              <ResumeTags>
                {resume.skills.testing.map((test) => (
                  <ResumeTagItem key={test}>{test}</ResumeTagItem>
                ))}
              </ResumeTags>
            </ResumeGridItem>
          </ResumeGrid>
        </ResumeSection>
      </ResumeContent>
    </Resume>
  );
}
