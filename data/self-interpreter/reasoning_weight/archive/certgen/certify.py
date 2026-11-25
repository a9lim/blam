#!/usr/bin/env python3
r"""Discover and independently check one finite regular divergence certificate.

Examples:
 python certify.py '(\x.x x)(\x.x x)' --out tmp/round4/certgen/Demo
 python certify.py --file SOURCE.lam --zero-probe --mode site --context 2
 python certify.py --check tmp/round4/certgen/Case01.json

A rejection or cap is UNKNOWN, never a halting verdict. Lean's theorem concerns
concrete closure-machine nontermination; see SOUNDNESS.md for the handwritten
translation to lambda head reduction and arbitrary scoped hole fillings.
"""
import argparse,json,sys,time,resource
from pathlib import Path
sys.dont_write_bytecode=True
from flow_probe import cert
from regular import discover,Limit
from portable import portable,check,lean
p=argparse.ArgumentParser(description=__doc__,formatter_class=argparse.RawDescriptionHelpFormatter)
p.add_argument('source',nargs='?');p.add_argument('--file',type=Path);p.add_argument('--check',type=Path)
p.add_argument('--zero-probe',action='store_true');p.add_argument('--context',type=int,default=2)
p.add_argument('--mode',choices=['site','lambda','arg','both','env','argenv'],default='site');p.add_argument('--out',type=Path)
a=p.parse_args();start=time.monotonic()
if a.check:
 ok=check(json.loads(a.check.read_text()));print(json.dumps(dict(valid=ok)));raise SystemExit(0 if ok else 1)
if a.context<0 or a.context>12:p.error('context must be between 0 and 12')
s=a.file.read_text() if a.file else a.source
if not s:p.error('provide a source term or --file')
t=cert.parse_show(s)
if a.zero_probe:t=('A',t,cert.law_io(0)[0])
if cert.size(t)>1000:p.error('source-node cap is 1000')
try:r=discover(t,a.context,cap=45000,seconds=90,mode=a.mode)
except Limit as e:r={'ok':False,'reason':str(e)}
summary={k:v for k,v in r.items() if k not in ['nodes','vals','konts','invariant','start']}
if r['ok']:
 c=portable(r);summary.update(status='CERTIFIED',certificate_states=len(c['states']))
 if a.out:
  name=a.out.name
  if not name.isidentifier():p.error('--out basename must be a Lean identifier')
  a.out.with_suffix('.json').write_text(json.dumps(c,separators=(',',':'))+'\n')
  a.out.with_suffix('.lean').write_text(lean(c,name))
else:summary['status']='UNKNOWN'
summary['seconds']=time.monotonic()-start
summary['peak_rss_bytes']=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss*(1 if sys.platform=='darwin' else 1024)
print(json.dumps(summary))
