#!/usr/bin/env python3
from pathlib import Path
HERE = Path(__file__).resolve().parent
parts = ['import Blc.SelfintClass\n']
for name in ['Minimum.lean', 'Live.lean']:
    src = (HERE/name).read_text()
    assert src.startswith('import Blc.SelfintClass\n')
    parts.append(src.removeprefix('import Blc.SelfintClass\n'))
parts.append((HERE/'BridgeTail.txt').read_text())
(HERE/'All.lean').write_text('\n'.join(parts))
