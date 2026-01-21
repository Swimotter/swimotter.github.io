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
    <section className="flex flex-col items-center justify-center w-full">
      <h1 className="text-4xl font-bold mb-4">404: Page Not Found</h1>
      <p className="text-xl mb-6">
        We couldn&apos;t find the requested page.
        <br />
        You will be redirected to the home page in 3 seconds.
      </p>
    </section>
  );
}
