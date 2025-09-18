"use client";
import { useState } from "react";
import { signIn } from "next-auth/react";
import { useRouter } from "next/navigation";

export default function LoginPage() {
  const [email, setEmail] = useState("admin@example.com");
  const [pw, setPw] = useState("password");
  const [error, setError] = useState(null);
  const router = useRouter();

  const submit = async (e) => {
    e.preventDefault();
    setError(null);

    const res = await signIn("credentials", {
      redirect: false,
      email,
      password: pw,
    });

    if (res?.ok) {
      router.push("/admin");
    } else {
      setError("Login gagal. Periksa email/password.");
    }
  };

  return (
    <div style={{ maxWidth: 480, margin: "2rem auto" }}>
      <h2>Login Admin</h2>
      <form onSubmit={submit} style={{ display: "grid", gap: 8 }}>
        <input
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          placeholder="email"
        />
        <input
          type="password"
          value={pw}
          onChange={(e) => setPw(e.target.value)}
          placeholder="password"
        />
        <button type="submit">Login</button>
      </form>
      {error && <p style={{ color: "red" }}>{error}</p>}
      <p>
        Default example: <b>admin@example.com / password</b> — buat user ini
        lewat seed SQL atau endpoint <code>/api/setup-seed</code>.
      </p>
    </div>
  );
}
