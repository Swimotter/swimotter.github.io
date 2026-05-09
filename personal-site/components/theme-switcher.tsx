"use client";

import { useState, useEffect } from "react";
import { useTheme } from "next-themes";
import Image from "next/image";
import { ButtonHTMLAttributes } from "react";

import Sun from "@/public/common/sun.svg";
import Moon from "@/public/common/moon.svg";

const ThemeSwitch = ({
  className,
}: ButtonHTMLAttributes<HTMLButtonElement>) => {
  const [mounted, setMounted] = useState(false);
  const { setTheme, resolvedTheme } = useTheme();

  useEffect(() => {
    // eslint-disable-next-line react-hooks/set-state-in-effect
    setMounted(true);
  }, []);

  if (!mounted) {
    return (
      <button
        className={`p-2 rounded-full ${className ?? ""}`}
        aria-label="Toggle theme"
        disabled
        style={{ visibility: "hidden" }}
      />
    );
  }

  const isDark = resolvedTheme === "dark";

  return (
    <button
      onClick={() => setTheme(isDark ? "light" : "dark")}
      className={`p-2 rounded-full bg-foreground hover:ring-2 ring-gray-500 transition-all ${className ?? ""}`}
      aria-label="Toggle theme"
    >
      <Image
        className="dark:invert"
        src={isDark ? Moon : Sun}
        alt={isDark ? "Dark Mode" : "Light Mode"}
        width={20}
        height={20}
        priority
      />
    </button>
  );
};

export default ThemeSwitch;
