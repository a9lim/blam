from pathlib import Path
for nm in ('run','plan','cert','inspect','hard','regular','model','split','audit','polycert','sat','family','nat','indexed','stages'):
 p=Path('w44'+nm+'.py');s=p.read_text().replace('44','45').replace('819916','1544876')
 if nm=='cert':s=s.replace("   if i==16601 and k=='diagonal power':pf=(D/'power-replay.txt').read_text()","   if k=='diagonal power' and ad.tup(e['source'])[1][2][0]!='k':\n    opened.append(i);continue")
 if nm=='family':s=s.replace("[(P/'w43','type", "[(P/'w44','type[0-9]*.json'),(P/'w43','type")
 if nm=='nat':s=s.replace('if a<cut else','if cut==100 or a<cut else')
 if nm=='run':
  stem=s[s.index(' probes=['):s.index(' with (P/',s.index(' probes=['))]
  s=s.replace(stem,' probes=probe_inputs(d)\n').replace('def probe(i):','def probe_inputs(d):\n'+stem+' return probes\ndef compare(ck,d,term,inp,want):return ck.matches(d.A(term,inp),want,[120])\ndef probe(i):').replace('try:ok=ck.matches(d.A(term,inp),want,[120])','try:ok=compare(ck,d,term,inp,want)')
  s=s.replace(" assert 0<nwant<=100000"," digest=hashlib.sha256()\n assert 0<nwant<=100000").replace('   L,T,b,a,cs,bf,af,t=key;emitted=0',"   digest.update((repr((key,n,mult))+'\\n').encode())\n   L,T,b,a,cs,bf,af,t=key;emitted=0").replace(' assert len(seen)==nwant'," assert digest.hexdigest()==part['block_sha256']\n assert len(seen)==nwant")
 if nm=='plan':
  s=s.replace('  f.K,f.JD=k,j','  unique=set();f.K,f.JD=k,j').replace('blocks[c].append(m)','sig=(repr((key,n,m))+"\\n").encode();uid=hashlib.sha256(repr(key).encode()).digest();assert uid not in unique;unique.add(uid);blocks[c].append((m,sig))').replace('ns=blocks[c];','block=blocks[c];ns=[n for n,s in block];').replace('hi=hi,total=tot)','hi=hi,total=tot,block_sha256=hashlib.sha256(b"".join(s for n,s in block[lo:hi])).hexdigest())')
 Path('w45'+nm+'.py').write_text(s)
