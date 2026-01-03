"use client";

import { useEffect } from "react";
import { useRouter } from "next/navigation";

const redirectTime = 3000;

export default function NotFound() {
  const router = useRouter();

  useEffect(() => {
    const timer = setTimeout(() => {
      router.push("/");
    }, redirectTime);

    return () => clearTimeout(timer);
  });

  return (
    <div className="flex flex-col items-center justify-center w-full bg-light2 dark:bg-dark2">
      <h1 className="text-4xl font-bold mb-4 text-light3 dark:text-dark3">
        404: Page Not Found
      </h1>
      <p className="text-xl mb-6 text-light3 dark:text-dark3text-light3 dark:text-dark3">
        We couldn&apos;t find the requested page.
        <br />
        You will be redirected to the home page in 3 seconds.
      </p>
    </div>
  );
}
