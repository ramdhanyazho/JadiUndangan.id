'use client'
import { useEffect, useState } from 'react';
export default function Invitation({params}){
  const slug = params.slug;
  const [data,setData]=useState(null);
  useEffect(()=>{ fetch('/api/invitations/'+slug).then(r=>r.json()).then(setData) },[slug]);
  if(!data) return <div>Memuat...</div>;
  return (<div><h2>{data.nama_pria} & {data.nama_wanita}</h2><p>{data.tanggal} @ {data.tempat}</p>
    <section><h3>Gallery</h3>{data.gallery?.map(g=> <img key={g.id} src={g.url} style={{maxWidth:200}} />)}</section>
    <section><h3>Ucapkan Selamat</h3><CommentBox slug={slug} /></section>
  </div>)
}

function CommentBox({slug}){
  const [name,setName]=useState(''); const [msg,setMsg]=useState(''); const [list,setList]=useState([]);
  useEffect(()=>{ fetch('/api/comments/'+slug).then(r=>r.json()).then(setList) },[slug]);
  const send=async()=>{ await fetch('/api/comments',{method:'POST',headers:{'content-type':'application/json'},body:JSON.stringify({slug,nama:name,pesan:msg})}); setList(await (await fetch('/api/comments/'+slug)).json()); setName(''); setMsg('') }
  return (<div><input placeholder="Nama" value={name} onChange={e=>setName(e.target.value)} /><textarea placeholder="Pesan" value={msg} onChange={e=>setMsg(e.target.value)}></textarea><button onClick={send}>Kirim</button><ul>{list.map(c=><li key={c.id}><strong>{c.nama}</strong>: {c.pesan}</li>)}</ul></div>)
}
