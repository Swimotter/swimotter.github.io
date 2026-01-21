export default function Project({
  title,
  description,
  children,
}: Readonly<{
  title: string;
  description: React.ReactNode;
  children: React.ReactNode;
}>) {
  return (
    <article className="w-full">
      <header>
        <h1 className="text-5xl">{title}</h1>
        <section className="mt-2">{description}</section>
      </header>
      <section className="mt-6">{children}</section>
    </article>
  );
}
