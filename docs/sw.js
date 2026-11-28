const C='manav-v1';
self.addEventListener('install',e=>{e.waitUntil(caches.open(C).then(c=>c.add('./')).catch(()=>{}));self.skipWaiting()});
self.addEventListener('activate',e=>{e.waitUntil(caches.keys().then(k=>Promise.all(k.filter(x=>x!=C).map(x=>caches.delete(x)))).then(()=>self.clients.claim()))});
self.addEventListener('fetch',e=>{const r=e.request;if(r.method!='GET')return;
e.respondWith(caches.open(C).then(async c=>{const hit=await c.match(r,{ignoreSearch:r.mode=='navigate'});
const net=fetch(r).then(x=>{if(x&&(x.ok||x.type=='opaque'))c.put(r,x.clone());return x}).catch(()=>null);
return hit||(await net)||(r.mode=='navigate'?await c.match('./'):null)||new Response('',{status:504})}))});
