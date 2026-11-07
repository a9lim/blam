"""Rebuild this lane in dependency order, two threads and 110s total."""
import os,subprocess,time,json,sys
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]
toolchain=(ROOT/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---')
prefix=Path.home()/'.elan/toolchains'/toolchain
env=os.environ.copy()
env['LEAN_PATH']=':'.join(map(str,[HERE,ROOT/'lean/.lake/build/lib/lean',prefix/'lib/lean']))
env['LEAN_NUM_THREADS']='2'
rows=[]
deadline=time.monotonic()+110
modules=sys.argv[1:] or [
    'Proofs','Checks','RankRealization','Protected461','Residuals',
    'OneArgument38','Families38','Size38Sources','Size38Pumps','WGrammar38',
    'Payload38','Size38Residuals','Finite38Base','Size38Finite',
    'Pair39','Sources39Literal','Sources39Four','Sources39Five','Shapes39',
    'Finite39Base','Finite39Literal','Finite39Four','Finite39Five','Residuals39','AxiomAudit',
]
for name in modules:
    start=time.monotonic()
    remaining=deadline-start
    if remaining<=0:
        raise SystemExit('110-second total deadline reached')
    proc=subprocess.run([str(prefix/'bin/lean'),'-j2','--root='+str(HERE),
                         str(HERE/(name+'.lean')),'-o',str(HERE/(name+'.olean'))],
                        cwd=ROOT,env=env,text=True,capture_output=True,timeout=remaining)
    elapsed=time.monotonic()-start
    (HERE/(name.lower()+'-final.log')).write_text(proc.stdout+proc.stderr)
    rows.append(dict(module=name,exit_code=proc.returncode,seconds=elapsed))
    print(name,proc.returncode,f'{elapsed:.3f}s',flush=True)
    if proc.returncode:
        print(proc.stdout+proc.stderr)
        raise SystemExit(proc.returncode)
record='lean-validation.json' if not sys.argv[1:] else 'lean-'+ '-'.join(modules)+'-validation.json'
(HERE/record).write_text(json.dumps(rows,indent=2)+'\n')
