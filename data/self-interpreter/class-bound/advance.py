from pathlib import Path
import sys,json,subprocess
P=Path(__file__).resolve().parent
def step(script,*args):
 subprocess.run([sys.executable,'-B',str(P/(script+'.py')),*map(str,args)],check=True)
for w in range(int(sys.argv[1]),46):
 if not (P/f'probe{w}.json').exists():step('probe',w)
 if not (P/f'cert{w}.json').exists():step('cert',w)
 r=json.loads((P/f'cert{w}.json').read_text())
 for mod in r['modules']:
  if not (P/'proofs'/(mod+'.resources.json')).exists():step('leancheck',mod)
 if r['open']:break
