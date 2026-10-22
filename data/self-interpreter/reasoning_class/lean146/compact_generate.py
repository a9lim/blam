#!/usr/bin/env python3
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]
SRC=ROOT/'data/self-interpreter/reasoning_162/floor'
sys.path.insert(0,str(SRC))
from checks import lc,lean
rows=json.loads((SRC/'reader29.json').read_text())['rows']
manifest=json.loads((HERE/'coverage-manifest.json').read_text())
base=(HERE/'Enum.lean').read_text()+(HERE/'CertificatesTail.txt').read_text()
alltails=[]
for m in manifest:
    k=m['row'];inds=m['indices']
    data=[]
    for i in inds:
        r=rows[i];t,_=lc.decode(r['reader']);nf,_=lc.decode(r['nf'])
        data.append(f'⟨{lean(t)}, {"true" if r["probe"]=="zero" else "false"}, {r["steps"]}, {lean(nf)}⟩')
    s='\nnamespace Blc.Lean146Enum\nset_option maxRecDepth 100000\nset_option maxHeartbeats 8000000\n'
    s+=f'def certificates{k} : List Certificate := [\n'+',\n'.join(data)+'\n]\n'
    s+=f'theorem row{k}_exact : row {m["l"]} {m["v"]} {m["x"]} {m["d"]} = certificates{k}.map Certificate.reader := by decide +kernel\n'
    s+=f'theorem row{k}_valid : certificates{k}.all Certificate.check = true := by decide +kernel\n'
    s+=f'theorem row{k}_reject {{t : Term}} (h : t ∈ row {m["l"]} {m["v"]} {m["x"]} {m["d"]}) : ¬ SelfintClass.Reader t :=\n'
    s+=f'  certificates_reject certificates{k} row{k}_valid (row{k}_exact ▸ h)\n'
    s+=f'#print axioms row{k}_exact\n#print axioms row{k}_reject\nend Blc.Lean146Enum\n'
    (HERE/f'CompactRow{k}.lean').write_text(base+s)
    (HERE/f'CompactRow{k}Tail.txt').write_text(s)
    alltails.append(s)
full=(HERE/'EnumBridge.lean').read_text()+(HERE/'CertificatesTail.txt').read_text()+''.join(alltails)+(HERE/'CoverageFinalTail.txt').read_text()
(HERE/'Coverage.lean').write_text(full)
