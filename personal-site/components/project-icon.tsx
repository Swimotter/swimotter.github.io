import Image from "next/image";
import Link from "next/link";
import { HTMLAttributes } from "react";

export default function ProjectIcon({
  className,
  title,
  description,
  img,
  page,
}: HTMLAttributes<HTMLDivElement> &
  Readonly<{
    title: string;
    description?: string;
    img: string;
    page: string;
  }>) {
  return (
    <section className={`rounded-sm bg-background ${className}`}>
      <Link href={page}>
        <Image
          className="rounded-tl-sm rounded-tr-sm"
          src={img}
          alt={title}
          width={240}
          height={320}
        />
        <div className="p-4">
          <h2 className="text-3xl">{title}</h2>
          {description && (
            <p className="mt-4 font-normal text-sm hide-on-short">
              {description}
            </p>
          )}
        </div>
      </Link>
    </section>
  );
}
