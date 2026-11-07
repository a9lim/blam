#!/usr/bin/env python3
"""Fixed divergent-source suffix checks for the new correct protocols."""
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
sys.path.insert(0, str(Path(__file__).resolve().parent))
import check

omega = r'(\x.x x) (\x.x x)'
programs = [omega, rf'\y.({omega})', f'({omega}) ({omega})']
records = []
for name in ['marker_late', 'marker_dual', 'marker_bit', 'stream_second']:
    for suffix in ['.lam', '.polished0.blc']:
        file = check.LANE/(name+suffix)
        if suffix == '.lam':
            E = check.battery.compile_lam(file.read_text())
        else:
            E,end = check.lc.decode(file.read_text().strip())
            assert end == len(file.read_text().strip())
            lam = check.lc.show(E)+'\n'
            (check.LANE/(name+'.polished.lam')).write_text(lam)
            assert check.battery.enc(check.battery.compile_lam(lam)) == check.battery.enc(E)
        for source in programs:
            M = check.battery.compile_lam(source)
            code = check.battery.enc(M)
            got = ('L',('A',('A',check.battery.shift(E,1),check.battery.FALSE),
                            check.battery.bitlist(code,('V',0))))
            nf = check.battery.normalize(check.battery.enc(got),1<<18)
            assert nf == '0010', (file.name,source,nf)
            records.append(dict(file=file.name,source=source,source_bits=code,
                                normal_form=nf,verdict='exact rigid suffix'))
(check.LANE/'followup_suffixes.json').write_text(json.dumps(records,indent=2)+'\n')
print(f'{len(records)} fixed divergent-source suffix probes passed; polished sources round-trip exactly')
