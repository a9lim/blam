#!/usr/bin/env python3
"""Regenerate only archived layouts and assemble standalone Lean sources.
No searches, olean output, or writes outside this lane.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import runpy
HERE=Path(__file__).resolve().parent
for script in ['regenerate.py','combine.py','coverage_generate.py']:
    runpy.run_path(str(HERE/script),run_name='__main__')
alltext=(HERE/'All.lean').read_text()
enum=(HERE/'Enum.lean').read_text().replace('import Blc.SelfintClass\n','',1)
(HERE/'EnumBridge.lean').write_text(alltext+enum+(HERE/'EnumBridgeTail.txt').read_text())
nonlambda=(HERE/'NonLambdaTail.txt').read_text()
account=(HERE/'AccountingTail.txt').read_text()
(HERE/'NonLambda.lean').write_text(alltext+nonlambda)
(HERE/'Accounting.lean').write_text(alltext.replace('import Blc.SelfintClass','import Blc.SelfintClass\nimport Blc.SelfintInert',1)+nonlambda+account)
runpy.run_path(str(HERE/'compact_generate.py'),run_name='__main__')
full=(HERE/'Coverage.lean').read_text().replace('import Blc.SelfintClass','import Blc.SelfintClass\nimport Blc.SelfintInert',1)
(HERE/'Final146.lean').write_text(full+nonlambda+account+(HERE/'FinalTail.txt').read_text())
print('Assembled Final146.lean; every finite check uses decide +kernel.')
