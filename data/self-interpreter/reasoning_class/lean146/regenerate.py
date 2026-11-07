#!/usr/bin/env python3
"""Regenerate the recorded 3484 certificates using reader29_lean.py.
No search: only the archived literal layouts/traces are read. All writes
are confined to this lane; importing archived helpers disables bytecode.
"""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
SOURCE = ROOT / 'data/self-interpreter/reasoning_162/floor'
sys.path.insert(0, str(SOURCE))
generator = SOURCE / 'reader29_lean.py'
source = generator.read_text()
write_line = "(HERE/'ReaderChecks.lean').write_text(src)"
assert source.count(write_line) == 1
source = source.replace(write_line, '# output intercepted by lane wrapper')
namespace = {'__file__': str(generator), '__name__': '__lane_export__'}
exec(compile(source, str(generator), 'exec'), namespace)
text = namespace['src']
start = text.index('theorem reader29_reject_0')
preamble = text[:start].replace('import Blc.SelfintKnot', 'import Blc.SelfintClass')
preamble = preamble.replace('The size theorem itself remains handwritten.',
    'Recorded layout refutations; global coverage is not claimed.')
body = text[start:text.rindex('end Blc.Round3Floor')]
blocks = re.split(r'(?=theorem reader29_reject_\d+)', body)
blocks = [b for b in blocks if b.strip()]
assert len(blocks) == 3484
rows = namespace['result']['rows']
lean = namespace['lean']
lc = namespace['lc']
files = []
for lo in range(0, len(blocks), 256):
    hi = min(lo+256, len(blocks))
    out = preamble
    for i in range(lo, hi):
        out += blocks[i]
        r, _ = lc.decode(rows[i]['reader'])
        law = 'zero' if rows[i]['probe'] == 'zero' else 'one'
        out += f'theorem reader29_reader_reject_{i} : ¬ SelfintClass.Reader {lean(r)} := by\n'
        out += f'  intro h; exact reader29_reject_{i} h.{law}\n\n'
        out += f'#print axioms reader29_reader_reject_{i}\n\n'
    out += 'end Blc.Round3Floor\n'
    path = HERE / f'ReaderChecks{lo//256:02}.lean'
    path.write_text(out)
    files.append(path.name)
(HERE / 'generated-files.json').write_text(json.dumps(files, indent=2)+'\n')
print(f'Wrote {len(files)} chunks, {len(blocks)} Reader refutations, no searches.')
