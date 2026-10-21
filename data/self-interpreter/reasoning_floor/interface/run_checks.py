"""Run the requested unmodified polish.py; archive exact sizes and checks."""
from pathlib import Path
import os, subprocess, sys, time, json, re
ROOT=Path(__file__).resolve().parents[3]
LANE=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'tools/self-interpreter'))
import battery, lc

def named(t, names=()):
    if t[0]=='V': return names[t[1]]
    if t[0]=='L':
        v='v'+str(len(names))
        return '(\\'+v+'. '+named(t[1],(v,)+names)+')'
    return '('+named(t[1],names)+' '+named(t[2],names)+')'

names=['delayed_drop','third_operand_thunk','delayed_drop_thunk',
       'thunk_input_output','delayed_drop_function_env','root_next_thunk']
records=[]
for name in names:
    env=dict(os.environ, INTERFACE_CAPTURE=name, PYTHONDONTWRITEBYTECODE='1',
             PYTHONPATH=str(LANE), TMPDIR=str(LANE), RAYON_NUM_THREADS='2')
    start=time.monotonic()
    run=subprocess.run([sys.executable,str(ROOT/'tools/self-interpreter/polish.py'),
                        str(LANE/(name+'.lam'))],env=env,cwd=ROOT,
                       capture_output=True,text=True,timeout=110)
    elapsed=time.monotonic()-start
    log=run.stdout+run.stderr
    (LANE/(name+'.polish.log')).write_text(log+f'elapsed_seconds={elapsed:.3f}\n')
    print(log, end='',flush=True)
    assert run.returncode==0 and 'fail=0' in log
    minimum=int(re.search(r'smallest (\d+)',log)[1])
    rendering=subprocess.run([str(ROOT/'target/release/blam'),'golf','letopt',
        '--bits',(LANE/(name+'.blc')).read_text().strip(),
        '--max-cuts','2','--report-le',str(minimum),'--threads','2'],
        cwd=ROOT,capture_output=True,text=True,timeout=30)
    (LANE/(name+'.render.log')).write_text(rendering.stdout+rendering.stderr)
    match=re.search(r'best (\d+) ([01]+)',rendering.stdout)
    assert match and int(match[1])==minimum
    bits=match[2]
    best=LANE/(name+'.best.blc')
    best.write_text(bits+'\n')
    term,end=lc.decode(bits)
    assert end==len(bits)
    (LANE/(name+'.best.lam')).write_text(named(term)+'\n')
    ok,skip,bad=battery.check(term,threads=2)
    line=f'{len(bits)} bits  ok={ok} skip={skip} fail={len(bad)}  {name}.best.lam'
    print(line,flush=True)
    assert not bad
    records.append(dict(name=name,source_bits=len((LANE/(name+'.blc')).read_text().strip()),
                        best_bits=len(bits),best_battery=line,seconds=elapsed))
(LANE/'checks.json').write_text(json.dumps(records,indent=2)+'\n')
