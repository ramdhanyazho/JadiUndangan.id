import './globals.css';

export const metadata = {
title: 'JadiUndangan.id v3',
description: 'Aplikasi undangan digital dengan tema dinamis',
};

export default function RootLayout({ children }) {
return (
<html lang="id">
<body style={{ fontFamily: 'Inter, sans-serif', padding: 20 }}>
<header style={{ display: 'flex', alignItems: 'center', gap: 12 }}>
<h1>JadiUndangan.id</h1>
<nav style={{ marginLeft: 20 }}>
<a href="/admin" style={{ marginRight: 10 }}>Admin</a>
<a href="/login">Login</a>
</nav>
</header>
<main style={{ marginTop: 20 }}>{children}</main>
</body>
</html>
);
}