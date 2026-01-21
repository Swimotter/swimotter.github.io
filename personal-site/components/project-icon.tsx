import { StaticImport } from "next/dist/shared/lib/get-img-props";
import Image from "next/image";
import Link from "next/link";

export default function ProjectIcon({
  title,
  description,
  img,
  page,
}: Readonly<{
  title: string;
  description?: string;
  img: StaticImport;
  page: string;
}>) {
  return (
    <section className="max-w-60 rounded-sm bg-light1 dark:bg-dark1">
      <Link href={page}>
        <Image className="rounded-tl-sm rounded-tr-sm" src={img} alt={title} />
        <div className="p-4">
          <h2 className="text-3xl">{title}</h2>
          {description && (
            <p className="mt-4 font-normal text-sm">{description}</p>
          )}
        </div>
      </Link>
    </section>
  );
}
