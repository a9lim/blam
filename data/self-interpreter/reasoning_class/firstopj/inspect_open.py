import sys
sys.dont_write_bytecode=True
from pathlib import Path
import importlib.util,json,time
H=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('firstopj_check',H/'check.py');g=importlib.util.module_from_spec(spec);spec.loader.exec_module(g)
sys.path.insert(0,str(H.parent/'handlerlet'));import loop_audit as la

def pp(t,ctx=('s','c')):
 if t[0]=='v':return ctx[t[1]]
 if t[0]=='k':return t[1]
 if t[0]=='l':
  v='x'+str(len(ctx));return '(lambda '+v+'. '+pp(t[1],(v,)+ctx)+')'
 return '('+pp(t[1],ctx)+' '+pp(t[2],ctx)+')'
for e in json.loads((H/'audit.json').read_text())['open']:
 body=la.old.tup(json.loads((H/f'check_{e["name"]}.json').read_text())['exceptions'][e['index']]['body'])
 print(e,pp(body))
 for name,stream,target in [('zero',g.D.Z(),g.D.A(g.D.Kc('r'),g.D.Kc('j'))),('unary',g.D.U(1),g.D.A(g.D.A(g.D.Kc('c'),g.D.U(0)),g.D.Kc('N')))]:
  t=g.D.inst(body,stream);cert=la.cert(t,target)
  try:
   actual=g.nf(t,[1500]);print(name,'NF',actual==target,pp(actual,()))
  except(g.Cycle,g.Cutoff,RecursionError):print(name,'exception',None if cert is None else cert['kind'])
