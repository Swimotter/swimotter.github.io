import { LucideIcon, Mail } from "lucide-react";
import Github from "@/public/common/github.svg";
import LinkedIn from "@/public/common/linkedin.svg";

import { StaticImport } from "next/dist/shared/lib/get-img-props";

type Link = {
  name: string;
  href: string;
  image?: StaticImport | LucideIcon;
  alt?: string;
};

const headerLinks: Link[] = [
  // { name: "Research", href: "/research" },
  { name: "Projects", href: "/projects" },
  { name: "Resume", href: "/resume" },
];

const externalLinks: Link[] = [
  {
    name: "mail",
    image: Mail,
    href: "mailto:mr.jacksonrubiano@gmail.com",
    alt: "Send me an email!",
  },
  {
    name: "github",
    image: Github,
    href: "https://github.com/swimotter",
    alt: "Check out my GitHub!",
  },
  {
    name: "linkedin",
    image: LinkedIn,
    href: "https://linkedin.com/in/jackson-rubiano",
    alt: "Connect with me on LinkedIn!",
  },
];

export { headerLinks, externalLinks };
