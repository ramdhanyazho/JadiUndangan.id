'use client'
import { useState, useEffect } from 'react';
export default function ThemesAdmin(){
  const [themes,setThemes]=useState([]);
  const [name,setName]=useState('');
  const [jsonText,setJsonText]=useState('{}');
  useEffect(()=>{ fetch('/api/themes').then(r=>r.json()).then(setThemes) },[]);
  const submit=async(e)=>{ e.preventDefault();
    const res=await fetch('/api/themes',{method:'POST',headers:{'content-type':'application/json'},body:JSON.stringify({name,json:jsonText})});
    if(res.ok){ setName(''); setJsonText('{}'); setThemes(await res.json()) }
  }
  return (<div><h2>Themes</h2><form onSubmit={submit}><input value={name} onChange={e=>setName(e.target.value)} placeholder="name" /><textarea value={jsonText} onChange={e=>setJsonText(e.target.value)} rows={6} /><button>Import Theme</button></form><ul>{themes.map(t=> <li key={t.id}>{t.name}</li>)}</ul></div>)
}
