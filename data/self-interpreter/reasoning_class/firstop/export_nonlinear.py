"""Export all finite exception certificates by source cell and certificate kind."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
from collections import defaultdict
H=Path(__file__).resolve().parent

def tup(t):return tuple(tup(x) if isinstance(x,list) else x for x in t)
def lean(t,depth=0,source=False):
 tag=t[0]
 if tag=='v':return f'(.var {t[1]})'
 if tag=='k':
  i=(2 if source else 1) if t[1]=='j' else {'c':0,'N':2,'r':3}[t[1]]
  return f'(.var {depth+i})'
 if tag=='l':return f'(.lam {lean(t[1],depth+1,source)})'
 return f'(.app {lean(t[1],depth,source)} {lean(t[2],depth,source)})'
def lst(xs):return '['+', '.join(lean(tup(x)) for x in xs)+']'
def paths(xs):return '['+', '.join('['+', '.join(map(str,p))+']' for p in xs)+']'

def main():
 manifest=[];files=[]
 for q,mode in [(1,'root'),(1,'nested'),(2,'all'),(3,'all'),(4,'all')]:
  name=f'nonlinear_{q}_{mode}';r=json.loads((H/(name+'.json')).read_text());audit=json.loads((H/(name+'_audit.json')).read_text());groups=defaultdict(list)
  assert len(audit['certificates'])+len(audit.get('families',[]))+len(audit['open'])==len(r['exceptions'])
  for f in audit.get('families',[]):manifest.append(dict(q=q,mode=mode,index=f['index'],module=f['module'],theorem=f['theorem'],kind=f['kind'],probe='zero'))
  assert len(set(e['index'] for e in audit['certificates']))==len(audit['certificates'])
  for a in audit['certificates']:groups[a['certificate']['kind']].append(a)
  for kind,es in groups.items():
   module=f'NonlinearQ{q}{mode.title()}{kind.title()}';s=f'''import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q{q}{mode.title()}{kind.title()}
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
'''
   for ae in es:
    i=ae['index'];e=r['exceptions'][i];c=ae['certificate'];probe=ae.get('probe',e['probe']);z='true' if probe=='zero' else 'false'
    s+=f'\ndef r{i} : Term := (.lam {lean(tup(e["body"]),source=True)})\n'
    s+=f'theorem reject{i} : ¬ Reader r{i} := by\n'
    if kind=='missing':
     j={'c':0,'j':1,'N':2,'r':3}[c['variable']]
     s+=f'  exact absent_reduct {z} {c["steps"]+1} {j} (by decide) (by decide)\n'
    elif kind=='head':
     j={'c':0,'j':1,'N':2,'r':3}[c['head']]
     s+=f'  exact head_reduct {z} {c["steps"]+1} ({j},{c["arity"]}) (by decide) (by decide)\n'
    elif kind=='loop':
     l=c['loop'];s+=f'  exact loop_reduct {z} {c["steps"]+1} {l["steps"]} {lean(tup(l["core"]))} {lst(l["extra"])} {lst(l["rest"])} (by decide) (by decide) (by decide)\n'
    else:
     assert kind=='mixed';l=c['cycle'];s+=f'  exact mixed_reduct {z} {paths([[]]+c["prep"])} {paths(l["paths"])} {lean(tup(l["core"]))} {lst(l["extra"])} {lst(c["rest"])} (by decide) (by decide)\n'
    s+=f'#print axioms reject{i}\n';manifest.append(dict(q=q,mode=mode,index=i,module=module,theorem=f'Blc.FirstopNonlinear.Q{q}{mode.title()}{kind.title()}.reject{i}',kind=kind,probe=probe))
   s+=f'\nend Blc.FirstopNonlinear.Q{q}{mode.title()}{kind.title()}\n';(H/(module+'.lean')).write_text(s);files.append(module+'.lean')
 (H/'nonlinear_manifest.json').write_text(json.dumps(manifest,indent=2)+'\n');(H/'nonlinear_modules.json').write_text(json.dumps(files,indent=2)+'\n');print('exported',len(manifest),'certificates',len(files),'modules')
if __name__=='__main__':main()
