import { externalLinks } from "@/lib/links";

import { LucideIcon } from "lucide-react";

import Image from "next/image";

function Footer() {
  return (
    <footer className="bg-muted-background bottom-0 border-t">
      <nav className="mx-auto flex w-full justify-center gap-4 p-4 md:w-4/5 xl:w-2/3">
        {externalLinks
          .filter((item) => item.image && item.alt)
          .map((item) => {
            return (
              <a
                key={item.name}
                href={item.href}
                target="_blank"
                rel="noopener noreferrer"
              >
                {/* Static import object */}
                {typeof item.image === "object" && "src" in item.image ? (
                  <Image
                    src={item.image!}
                    alt={item.alt!}
                    width={50}
                    height={50}
                    priority
                  />
                ) : (
                  (() => {
                    const IconComponent = item.image as LucideIcon;
                    return <IconComponent size={50} />;
                  })()
                )}
              </a>
            );
          })}
      </nav>
    </footer>
  );
}

export { Footer };
