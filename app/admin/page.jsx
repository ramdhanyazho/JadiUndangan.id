"use client";

import { useEffect, useState } from "react";
import { useSession } from "next-auth/react";
import Link from "next/link";

export default function AdminPage() {
  const { data: session, status } = useSession();
  const [list, setList] = useState([]);

  useEffect(() => {
    if (status === "authenticated") {
      fetch("/api/invitations")
        .then((r) => r.json())
        .then(setList)
        .catch((err) => console.error("Error fetching invitations:", err));
    }
  }, [status]);

  if (status === "loading") {
    return <div>Memeriksa otentikasi...</div>;
  }

  if (status === "unauthenticated") {
    if (typeof window !== "undefined") {
      window.location.href = "/login";
    }
    return null;
  }

  return (
    <div style={{ padding: "1rem" }}>
      <h2>Admin Dashboard</h2>
      <nav style={{ marginBottom: "1rem" }}>
        <Link href="/admin/themes">Manage Themes</Link> |{" "}
        <Link href="/admin/gallery">Gallery</Link>
      </nav>

      <section>
        <h3>Undangan</h3>
        <ul>
          {list.map((i) => (
            <li key={i.id}>
              {i.nama_pria} &amp; {i.nama_wanita} —{" "}
              <Link href={`/invitation/${i.slug}`}>{i.slug}</Link>
            </li>
          ))}
        </ul>
      </section>
    </div>
  );
}
