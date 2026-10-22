import os,subprocess,time,json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]
SRC=ROOT/'tmp/round3/floor38'
OUT=HERE/'lean'
toolchain=(ROOT/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---')
prefix=Path.home()/'.elan/toolchains'/toolchain
env=os.environ.copy()
env['LEAN_PATH']=':'.join(map(str,[OUT,ROOT/'lean/.lake/build/lib/lean',prefix/'lib/lean']))
env['LEAN_NUM_THREADS']='2'
rows=[]
deadline=time.monotonic()+110
modules=['Proofs', 'Checks', 'RankRealization', 'Protected461', 'Residuals', 'OneArgument38', 'Families38', 'Size38Sources', 'Size38Pumps', 'WGrammar38', 'Payload38', 'Size38Residuals', 'Finite38Base', 'Size38Finite', 'Pair39', 'Sources39Literal', 'Sources39Four', 'Sources39Five', 'Shapes39', 'Finite39Base', 'Finite39Literal', 'Finite39Four', 'Finite39Five', 'Residuals39', 'AxiomAudit']
for name in modules:
    start=time.monotonic()
    proc=subprocess.run([str(prefix/'bin/lean'),'-j2','--root='+str(OUT),str(OUT/(name+'.lean')),'-o',str(OUT/(name+'.olean'))],cwd=ROOT,env=env,text=True,capture_output=True,timeout=max(1,deadline-start))
    elapsed=time.monotonic()-start
    (HERE/(name+'-build.log')).write_text(proc.stdout+proc.stderr)
    rows.append(dict(module=name,exit_code=proc.returncode,seconds=elapsed))
    print(name,proc.returncode,f'{elapsed:.3f}s',flush=True)
    (HERE/'lean-rebuild.json').write_text(json.dumps(rows,indent=2)+'\n')
    if proc.returncode:
        print(proc.stdout+proc.stderr)
        raise SystemExit(proc.returncode)
