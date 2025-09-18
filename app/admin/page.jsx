'use client'
import { useEffect, useState } from 'react';
export default function AdminPage(){
  const [ok,setOk]=useState(false);
  const [list,setList]=useState([]);
  useEffect(()=>{ fetch('/api/auth/me').then(r=>r.json()).then(d=>{ if(d?.email) setOk(true); else location.href='/login' }) },[]);
  useEffect(()=>{ fetch('/api/invitations').then(r=>r.json()).then(setList) },[]);
  return ok ? (<div><h2>Admin Dashboard</h2><a href="/admin/themes">Manage Themes</a> | <a href="/admin/gallery">Gallery</a>
    <section><h3>Undangan</h3><ul>{list.map(i=><li key={i.id}>{i.nama_pria} & {i.nama_wanita} — <a href={'/invitation/'+i.slug}>{i.slug}</a></li>)}</ul></section></div>) : <div>Memeriksa otentikasi...</div>;
}
