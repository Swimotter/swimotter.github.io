"use client";

import { useState, useEffect } from "react";
import { useTheme } from "next-themes";
import Image from "next/image";
import "@/app/globals.css";

import Sun from "@/public/sun.svg";
import Moon from "@/public/moon.svg";

const ThemeSwitch = () => {
  const [mounted, setMounted] = useState(false);
  const { theme, setTheme } = useTheme();

  useEffect(() => {
    setMounted(true);
  }, []);

  if (!mounted) {
    return null;
  }

  const isDark = theme === "dark";

  const toggleTheme = () => {
    setTheme(isDark ? "light" : "dark");
  };

  return (
    <button
      onClick={toggleTheme}
      className="ml-4 p-2 rounded-full bg-light2 dark:bg-dark2 hover:ring-2 ring-gray-500 transition-all"
      aria-label="Toggle theme"
      suppressHydrationWarning
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
