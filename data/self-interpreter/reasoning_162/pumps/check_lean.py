import os,subprocess,time,json,sys
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]
toolchain=(ROOT/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---')
prefix=Path.home()/'.elan/toolchains'/toolchain
env=os.environ.copy();env['LEAN_PATH']=':'.join(map(str,[HERE,ROOT/'lean/.lake/build/lib/lean',prefix/'lib/lean']));env['LEAN_NUM_THREADS']='1'
for name in sys.argv[1:] or ['PumpLemmas']:
    start=time.monotonic()
    p=subprocess.run([str(prefix/'bin/lean'),'-j1','--root='+str(HERE),str(HERE/(name+'.lean')),'-o',str(HERE/(name+'.olean'))],cwd=ROOT,env=env,text=True,capture_output=True,timeout=110)
    (HERE/(name+'.log')).write_text(p.stdout+p.stderr);print(name,p.returncode,round(time.monotonic()-start,3));print(p.stdout+p.stderr)
    if p.returncode:raise SystemExit(p.returncode)
