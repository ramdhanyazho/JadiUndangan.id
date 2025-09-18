'use client'
import { useState, useEffect } from 'react';
export default function GalleryAdmin(){
  const [files,setFiles]=useState(null);
  const [items,setItems]=useState([]);
  useEffect(()=>{ fetch('/api/gallery').then(r=>r.json()).then(setItems) },[]);
  const submit=async(e)=>{ e.preventDefault();
    if(!files) return alert('Pilih file');
    const fd = new FormData();
    fd.append('file', files[0]);
    fd.append('invitation_id','0');
    const res = await fetch('/api/gallery/upload',{ method:'POST', body: fd });
    if(res.ok){ setItems(await res.json()) }
  }
  return (<div><h2>Gallery</h2><form onSubmit={submit}><input type="file" onChange={e=>setFiles(e.target.files)} /><button>Upload</button></form><ul>{items.map(i=><li key={i.id}><a href={i.url} target="_blank">{i.url}</a></li>)}</ul></div>)
}
