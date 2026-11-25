import hashlib,json,os,pathlib,re,subprocess,time
P=pathlib.Path(__file__).resolve().parent;ROOT=P.parents[2]
env=dict(os.environ,LEAN_PATH=str(P)+':'+str(ROOT/'lean/.lake/build/lib/lean'))
rec=[]
for name in ['General','Factor','Dependent','Constant','Multiple','ExtendedCases']:
 cmd=['/usr/bin/time','-lp','lean','-j2','-M1800']
 if name!='ExtendedCases':cmd+=['-R',str(P),'-o',str(P/(name+'.olean'))]
 cmd+=[str(P/(name+'.lean'))]
 start=time.monotonic();p=subprocess.run(cmd,cwd=ROOT/'lean',env=env,capture_output=True,text=True,timeout=110)
 out=p.stdout+p.stderr;(P/(name+'.log')).write_text(out)
 assert p.returncode==0,(name,out)
 assert 'sorryAx' not in out and 'error:' not in out,(name,out)
 rss=int(re.search(r'(\d+)\s+maximum resident set size',out)[1])
 assert rss<2_000_000_000
 axioms=sorted(set(a.strip() for xs in re.findall(r'depends on axioms: \[(.*?)\]',out) for a in xs.split(',') if a.strip()))
 assert set(axioms)<=set(['propext','Quot.sound','Classical.choice'])
 rec.append(dict(module=name,seconds=time.monotonic()-start,rss_bytes=rss,returncode=p.returncode,axioms=axioms))
 print(name,round(rec[-1]['seconds'],3),rss)
hashes={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in P.iterdir() if p.suffix in ['.lean','.py','.json','.tsv'] and p.name!='extension_verification.json'}
(P/'extension_verification.json').write_text(json.dumps(dict(checks_passed=True,lean=rec,sha256=hashes),indent=2)+'\n')
