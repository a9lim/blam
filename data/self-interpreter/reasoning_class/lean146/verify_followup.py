#!/usr/bin/env python3
"""Regenerate the recorded evidence and check the complete unconditional proof.
Every child is limited to 110 seconds; Lean runs -j2 with no -o output.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import hashlib,json,os,re,subprocess,time
from datetime import datetime,timezone
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]
LEAN=ROOT/'lean'
env=dict(os.environ,LEAN_PATH=str(LEAN/'.lake/build/lib/lean'),PYTHONDONTWRITEBYTECODE='1')
records=[]
start=time.monotonic()
for cmd,cwd,log in [([sys.executable,str(HERE/'generate_followup.py')],ROOT,'generate_followup.py.log'),
                    (['lean','-j2',str(HERE/'Final146.lean')],LEAN,'Final146.lean.log')]:
    t=time.monotonic()
    p=subprocess.run(cmd,cwd=cwd,env=env,capture_output=True,text=True,timeout=110)
    output=p.stdout+p.stderr
    (HERE/log).write_text(output)
    record=dict(command=cmd,cwd=str(cwd),seconds=time.monotonic()-t,returncode=p.returncode,log=log)
    records.append(record)
    if p.returncode or 'sorryAx' in output or 'error:' in output:
        raise RuntimeError(output)
    if cmd[0]=='lean':
        audits=re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]",output)
        allowed={'propext','Classical.choice','Quot.sound'}
        for name,axs in audits:
            if not {a.strip() for a in axs.split(',') if a.strip()}<=allowed:
                raise RuntimeError(f'Unexpected axiom set for {name}: {axs}')
        assert {'Blc.Lean146Final.reader_weight_30','Blc.Lean146Final.class_bound_146'}<={n for n,_ in audits}
        src=(HERE/'Final146.lean').read_bytes()
        assert not re.search(rb'\b(?:sorry|admit|axiom|native_decide)\b',src)
        record.update(sha256=hashlib.sha256(src).hexdigest(),audited_theorems=len(audits),axioms={n:axs for n,axs in audits})
manifest=json.loads((HERE/'coverage-manifest.json').read_text())
files=['Minimum.lean','Live.lean','BridgeTail.txt','Enum.lean','EnumBridgeTail.txt','CertificatesTail.txt','NonLambdaTail.txt','AccountingTail.txt','FinalTail.txt','CoverageFinalTail.txt','compact_generate.py','coverage_generate.py','generate_followup.py','verify_followup.py']
summary=dict(timestamp=datetime.now(timezone.utc).isoformat(),seconds=time.monotonic()-start,
             longest_child=max(r['seconds'] for r in records),lean_files=1,
             recorded_layouts=sum(m['count'] for m in manifest),row_counts=[m['count'] for m in manifest],
             allowed_axioms=sorted(allowed),records=records,
             source_sha256={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in files},
             archive_sha256=hashlib.sha256((ROOT/'data/self-interpreter/reasoning_162/floor/reader29.json').read_bytes()).hexdigest())
(HERE/'verification-followup.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps({k:v for k,v in summary.items() if k not in {'records','source_sha256'}},indent=2))
