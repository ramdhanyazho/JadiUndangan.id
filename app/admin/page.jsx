"use client";

import { useEffect, useState } from "react";
import { useSession } from "next-auth/react";
import Link from "next/link";

export default function AdminPage() {
  // Ambil session dengan cara aman
  const sessionData = useSession();
  const session = sessionData?.data;
  const status = sessionData?.status;

  const [list, setList] = useState([]);

  // Fetch data undangan hanya jika sudah login
  useEffect(() => {
    if (status === "authenticated") {
      fetch("/api/invitations")
        .then((r) => r.json())
        .then(setList)
        .catch((err) => console.error("Error fetching invitations:", err));
    }
  }, [status]);

  // Loading state
  if (status === "loading") {
    return <div>Memeriksa otentikasi...</div>;
  }

  // Redirect jika belum login
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
          {list.length > 0 ? (
            list.map((i) => (
              <li key={i.id}>
                {i.nama_pria} &amp; {i.nama_wanita} —{" "}
                <Link href={`/invitation/${i.slug}`}>{i.slug}</Link>
              </li>
            ))
          ) : (
            <li>Tidak ada undangan ditemukan.</li>
          )}
        </ul>
      </section>
    </div>
  );
}
