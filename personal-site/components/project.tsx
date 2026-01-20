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
    <div className="w-4/5">
      <header className="mb-6">
        <h1 className="text-5xl mb-2">{title}</h1>
        <div>{description}</div>
      </header>
      <article>{children}</article>
    </div>
  );
}
