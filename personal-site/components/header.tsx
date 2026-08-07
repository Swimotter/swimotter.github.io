import { cn } from "@/lib/utils";

import { headerLinks } from "@/lib/links";

import { Button } from "@/components/ui/button";

import { Menu, X } from "lucide-react";

import { usePathname } from "next/navigation";
import Link from "next/link";
import { useState } from "react";

const links = (pathname: string) =>
  headerLinks.map((item) => {
    const isActive = pathname === item.href;

    return (
      <h2 key={item.name} className="font-normal">
        <Link
          href={item.href}
          className={cn(isActive && "font-medium underline")}
        >
          {item.name}
        </Link>
      </h2>
    );
  });

function Header() {
  const [menuActive, setMenuActive] = useState<boolean>(false);

  const pathname = usePathname();

  return (
    <header className="bg-muted-background sticky top-0 z-50 h-20.5 md:border-b">
      <nav className="mx-auto flex h-full w-full flex-col justify-center md:w-4/5 xl:w-2/3">
        <div className="bg-muted-background flex h-full flex-row items-center justify-between p-4 not-md:border-b">
          <h2 className="font-bold">
            <Link href="/">
              Jackson <span className="hidden sm:inline">(Swimotter)</span>{" "}
              Rubiano
            </Link>
          </h2>

          {/* Links */}
          <div className="hidden gap-4 md:flex">{links(pathname)}</div>

          {/* Menu links */}
          <div className="md:hidden">
            <Button
              variant="ghost"
              size="icon"
              aria-label="Toggle page links"
              onClick={() => setMenuActive(!menuActive)}
            >
              {menuActive ? <X /> : <Menu />}
            </Button>
          </div>
        </div>
        <div
          className={cn(
            "bg-muted-background absolute top-full -z-10 flex w-full flex-col gap-4 border-b p-4 md:hidden",
            "transform transition-transform duration-300 ease-in-out",
            menuActive
              ? "pointer-events-auto translate-y-0"
              : "pointer-events-none -translate-y-full",
          )}
        >
          {links(pathname)}
        </div>
      </nav>
      {/* Close header on click outside*/}
      {menuActive && (
        <div
          className="fixed inset-0 -z-50 md:hidden"
          onClick={() => setMenuActive(false)}
        />
      )}
    </header>
  );
}

export { Header };
