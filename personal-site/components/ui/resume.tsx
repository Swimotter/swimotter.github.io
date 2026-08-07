"use client";

import { download_resume_analytics } from "@/lib/analytics";
import { cn } from "@/lib/utils";

import React, { useState } from "react";

const SCROLL_OFFSET = 140;

interface SectionInfo {
  id: string;
  label: string;
}

interface ResumeContextValue {
  activeId: string | null;
  registerRef: (id: string, el: HTMLElement | null) => void;
}

const ResumeContext = React.createContext<ResumeContextValue | null>(null);
function useResumeContext() {
  const context = React.useContext(ResumeContext);
  if (!context) {
    throw new Error("Resume components must be used within <Resume>");
  }
  return context;
}

function Resume({
  sections,
  className,
  ...props
}: React.ComponentProps<"div"> & { sections: SectionInfo[] }) {
  const [activeId, setActiveId] = React.useState<string | null>(
    sections[0]?.id ?? null,
  );
  const refs = React.useRef(new Map<string, HTMLElement>());

  const registerRef = React.useCallback(
    (id: string, el: HTMLElement | null) => {
      if (el) {
        refs.current.set(id, el);
      } else {
        refs.current.delete(id);
      }
    },
    [],
  );

  React.useEffect(() => {
    let ticking = false;

    const computeActive = () => {
      ticking = false;

      const atBottom =
        window.innerHeight + window.scrollY >=
        document.documentElement.scrollHeight - 2;

      if (atBottom) {
        setActiveId(sections[sections.length - 1]?.id ?? null);
        return;
      }

      let current: string | null = sections[0]?.id ?? null;
      for (const section of sections) {
        const el = refs.current.get(section.id);
        if (!el) continue;
        const top = el.getBoundingClientRect().top;
        if (top <= SCROLL_OFFSET) {
          current = section.id;
        } else {
          break;
        }
      }
      setActiveId(current);
    };

    const onScroll = () => {
      if (!ticking) {
        ticking = true;
        requestAnimationFrame(computeActive);
      }
    };

    computeActive();
    window.addEventListener("scroll", onScroll, { passive: true });
    window.addEventListener("resize", onScroll);
    return () => {
      window.removeEventListener("scroll", onScroll);
      window.removeEventListener("resize", onScroll);
    };
  }, [sections]);

  return (
    <ResumeContext.Provider value={{ activeId, registerRef }}>
      <div
        data-slot="resume"
        className={cn("flex flex-col items-start gap-4 sm:flex-row", className)}
        {...props}
      />
    </ResumeContext.Provider>
  );
}

function ResumeNav({
  sections,
  className,
  ...props
}: React.ComponentProps<"nav"> & { sections: SectionInfo[] }) {
  const { activeId } = useResumeContext();
  const itemRefs = React.useRef(new Map<string, HTMLElement>());
  const suppressRef = React.useRef(false);

  const scrollNavToActive = React.useCallback((id: string | null) => {
    if (!id) return;
    const el = itemRefs.current.get(id);
    el?.scrollIntoView({
      behavior: "smooth",
      block: "nearest",
      inline: "center",
    });
  }, []);

  // Update scrollbar to current page location
  React.useEffect(() => {
    if (suppressRef.current) return;
    scrollNavToActive(activeId);
  }, [activeId, scrollNavToActive]);

  // Prevent scrollbar updating until page arrived at clicked section
  React.useEffect(() => {
    let fallbackTimer: ReturnType<typeof setTimeout>;

    const release = () => {
      suppressRef.current = false;
      scrollNavToActive(activeId);
    };

    const onScroll = () => {
      if (!suppressRef.current) return;
      clearTimeout(fallbackTimer);
      fallbackTimer = setTimeout(release, 150);
    };

    window.addEventListener("scroll", onScroll, { passive: true });
    window.addEventListener("scrollend", release);

    return () => {
      clearTimeout(fallbackTimer);
      window.removeEventListener("scroll", onScroll);
      window.removeEventListener("scrollend", release);
    };
  }, [activeId, scrollNavToActive]);

  const handleLinkClick = () => {
    suppressRef.current = true;
  };

  return (
    <div className="sticky top-20.5 left-0 z-10 -mx-[50vw] w-screen px-4 sm:top-26 sm:left-auto sm:mx-0 sm:w-90 sm:px-0">
      <nav
        data-slot="resume-nav"
        className={cn(
          "bg-background flex w-full overflow-x-auto py-2",
          "scrollbar-none sm:py-0",
          className,
        )}
        {...props}
      >
        <div className="mx-auto flex gap-4 sm:mx-0 sm:flex-col sm:px-0">
          {sections.map((section) => (
            <p
              key={section.id}
              ref={(el) => {
                if (el) itemRefs.current.set(section.id, el);
                else itemRefs.current.delete(section.id);
              }}
              data-active={activeId === section.id}
              className="shrink-0 data-[active=true]:font-medium data-[active=true]:underline"
            >
              <a href={`#${section.id}`} onClick={handleLinkClick}>
                {section.label}
              </a>
            </p>
          ))}
        </div>
      </nav>
    </div>
  );
}

function ResumeTitle({ className, ...props }: React.ComponentProps<"h1">) {
  return (
    <h1 data-slot="resume-title" className={cn("", className)} {...props} />
  );
}

function ResumeDownload({ onClick, ...props }: React.ComponentProps<"a">) {
  const [isTracking, setIsTracking] = useState<boolean>(false);

  const handleClick = async (e: React.MouseEvent<HTMLAnchorElement>) => {
    // Prevent spam clicks sending multiple analytics
    if (isTracking) {
      e.preventDefault();
      return;
    }

    try {
      setIsTracking(true);

      await download_resume_analytics();
    } catch (err) {
      console.error("Analytics failed:", err);
    } finally {
      setIsTracking(false);
    }

    // Call any user supplied onClick
    if (onClick) {
      onClick(e);
    }
  };

  return (
    <a
      target="_blank"
      rel="noopener noreferrer"
      onClick={handleClick}
      {...props}
    />
  );
}

function ResumeHeader({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="resume-header"
      className={cn(
        "flex flex-col items-baseline justify-between sm:flex-row",
        className,
      )}
      {...props}
    />
  );
}

function ResumeContent({ className, ...props }: React.ComponentProps<"div">) {
  return <div className={cn("flex flex-col gap-4", className)} {...props} />;
}

function ResumeSection({
  id,
  className,
  ...props
}: React.ComponentProps<"section"> & { id: string }) {
  const { registerRef } = useResumeContext();

  return (
    <section
      ref={(el) => registerRef(id, el)}
      id={id}
      data-slot="resume-section"
      className={cn(
        "bg-surface flex scroll-mt-34 flex-col gap-4 rounded-md border border-solid border-[#e7e5e4] p-4 sm:scroll-mt-24",
        className,
      )}
      {...props}
    />
  );
}

function ResumeSectionTitle({
  className,
  ...props
}: React.ComponentProps<"h2">) {
  return (
    <h2
      data-slot="resume-section-title"
      className={cn("", className)}
      {...props}
    />
  );
}

function ResumeFact({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="resume-fact"
      className={cn("flex flex-col", className)}
      {...props}
    />
  );
}

function ResumeFactLabel({
  className,
  ...props
}: React.ComponentProps<"span">) {
  return (
    <span
      data-slot="resume-fact-label"
      className={cn("font-semibold", className)}
      {...props}
    />
  );
}

function ResumeFactValue({
  className,
  ...props
}: React.ComponentProps<"span">) {
  return (
    <span data-slot="resume-fact-value" className={className} {...props} />
  );
}

function ResumeGroup({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="resume-group"
      className={cn("flex flex-col gap-0", className)}
      {...props}
    />
  );
}

function ResumeGrid({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="resume-grid"
      className={cn(
        "grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3",
        className,
      )}
      {...props}
    />
  );
}

function ResumeGridItem({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="resume-grid-item"
      className={cn("flex flex-col", className)}
      {...props}
    />
  );
}

function ResumeTags({ className, ...props }: React.ComponentProps<"ul">) {
  return (
    <ul
      data-slot="resume-tags"
      className={cn("flex flex-wrap gap-2", className)}
      {...props}
    />
  );
}

function ResumeTagItem({ className, ...props }: React.ComponentProps<"li">) {
  return (
    <li
      data-slot="resume-tag-item"
      className={cn("bg-muted-surface rounded px-2 py-1", className)}
      {...props}
    />
  );
}

function ResumeEntry({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="resume-entry"
      className={cn("flex flex-col gap-2 rounded border p-4", className)}
      {...props}
    />
  );
}

function ResumeEntryTitle({ className, ...props }: React.ComponentProps<"h3">) {
  return (
    <h3
      data-slot="resume-entry-title"
      className={cn("font-bold", className)}
      {...props}
    />
  );
}

function ResumeEntryRole({ className, ...props }: React.ComponentProps<"p">) {
  return <p data-slot="resume-entry-role" className={className} {...props} />;
}

function ResumeEntryDates({
  className,
  ...props
}: React.ComponentProps<"span">) {
  return (
    <span data-slot="resume-entry-dates" className={className} {...props} />
  );
}

function ResumeLabel({ className, ...props }: React.ComponentProps<"p">) {
  return (
    <p data-slot="resume-label" className={cn("", className)} {...props} />
  );
}

function ResumeBullets({ className, ...props }: React.ComponentProps<"ul">) {
  return (
    <ul
      data-slot="resume-bullets"
      className={cn("list-disc pl-6", className)}
      {...props}
    />
  );
}

function ResumeBulletItem({ className, ...props }: React.ComponentProps<"li">) {
  return <li data-slot="resume-bullet" className={className} {...props} />;
}

export {
  Resume,
  ResumeNav,
  ResumeTitle,
  ResumeDownload,
  ResumeHeader,
  ResumeContent,
  ResumeSection,
  ResumeSectionTitle,
  ResumeFact,
  ResumeFactLabel,
  ResumeFactValue,
  ResumeLabel,
  ResumeBullets,
  ResumeBulletItem,
  ResumeGroup,
  ResumeGrid,
  ResumeGridItem,
  ResumeTags,
  ResumeTagItem,
  ResumeEntry,
  ResumeEntryTitle,
  ResumeEntryRole,
  ResumeEntryDates,
};
