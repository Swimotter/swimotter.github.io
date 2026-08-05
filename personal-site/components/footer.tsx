import { externalLinks } from "@/lib/links";

import Image from "next/image";

function Footer() {
  return (
    <footer className="bg-muted-background bottom-0 border-t">
      <nav className="mx-auto flex justify-center gap-4 p-5 md:w-4/5 xl:w-2/3">
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
                <Image
                  src={item.image!}
                  alt={item.alt!}
                  width={50}
                  height={50}
                  priority
                />
              </a>
            );
          })}
      </nav>
    </footer>
  );
}

export { Footer };
