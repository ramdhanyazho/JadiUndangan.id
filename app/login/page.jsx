'use client'
import { useState } from 'react';
export default function LoginPage(){
  const [email,setEmail]=useState('admin@example.com'); const [pw,setPw]=useState('password');
  const submit=async(e)=>{ e.preventDefault();
    const res = await fetch('/api/auth/callback/credentials', {method:'POST', headers:{'Content-Type':'application/json'}, body: JSON.stringify({email,password:pw})});
    if (res.ok) { alert('Login sukses'); location.href='/admin' } else { alert('Login gagal') }
  }
  return (
    <div style={{maxWidth:480}}>
      <h2>Login Admin</h2>
      <form onSubmit={submit} style={{display:'grid',gap:8}}>
        <input value={email} onChange={e=>setEmail(e.target.value)} placeholder="email" />
        <input type="password" value={pw} onChange={e=>setPw(e.target.value)} placeholder="password" />
        <button type="submit">Login</button>
      </form>
      <p>Default example: admin@example.com / password — create this user via DB insert or use API /api/setup-seed</p>
    </div>
  )
}
