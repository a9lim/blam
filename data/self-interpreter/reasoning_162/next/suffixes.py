#!/usr/bin/env python3
"""Three fixed divergent-source suffix probes for each construction."""
import json
import os
from pathlib import Path
import sys
import tempfile

LANE=Path(__file__).resolve().parent
ROOT=LANE.parents[3]
os.environ['TMPDIR']=str(LANE)
os.environ['RAYON_NUM_THREADS']='2'
tempfile.tempdir=str(LANE)
sys.dont_write_bytecode=True
sys.path.insert(0,str(ROOT/'tools/self-interpreter'))
import battery

omega=r'(\x.x x) (\x.x x)'
programs=[omega,rf'\y.({omega})',f'({omega}) ({omega})']
out=[]
for name in ['variable_mode.lam','embedded162.lam','embedded162_direct.lam']:
    E=battery.compile_lam((LANE/name).read_text())
    for source in programs:
        M=battery.compile_lam(source)
        code=battery.enc(M)
        got=('L',('A',('A',battery.shift(E,1),battery.FALSE),
                      battery.bitlist(code,('V',0))))
        nf=battery.normalize(battery.enc(got),1<<18)
        assert nf=='0010',(name,source,nf)
        out.append({'interpreter':name,'source':source,'source_bits':code,
                    'normal_form':nf,'verdict':'exact rigid suffix'})
(LANE/'suffixes.json').write_text(json.dumps(out,indent=2)+'\n')
print(f'{len(out)} fixed divergent-source suffix probes passed')
