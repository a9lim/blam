#!/usr/bin/env python3
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import trace
rd = trace.rd
names=['mixed50','mixed58','local_absorber','sourceF','F52']
def lean(t,env):
 if t[0]=='V': return f'(.var {env.index(t[1])})'
 if t[0]=='L': return f'(.lam {lean(t[2],[t[1]]+env)})'
 return f'(.app {lean(t[1],env)} {lean(t[2],env)})'
lines=['import Blc.SelfintSourceCost', '',
'namespace Blc.JEraseWitnesses','open Term SelfintClass SelfintSourceCost',
'set_option maxRecDepth 8192', 'set_option maxHeartbeats 4000000', '']
for name in names:
 src=trace.CASES[name]; t=rd.parse(src); w=rd.weight(t)
 lines += [f'/- {src} -/',f'def {name} : Term := {lean(t,["c","j"])}',
 f'theorem {name}_price : cost {name} = {w[1]} ∧ depth {name} = {w[2]} ∧ occ 1 {name} = 1 ∧ FreeUnder 2 {name} := by decide','']
lines += ['theorem mixed58_normal : NormalForm mixed58 := fun _ hb => nft_no_beta (by decide) hb',
          'theorem local_absorber_normal : NormalForm local_absorber := fun _ hb => nft_no_beta (by decide) hb',
          'theorem sourceF_normal : NormalForm sourceF := fun _ hb => nft_no_beta (by decide) hb','']
out=Path('tmp/round4/jerase/Witnesses.lean')
old=out.read_text() if out.exists() else ''
marker='/-- A unary stream'
tail=old[old.index(marker):] if marker in old else ''
lines.insert(1, 'import Blc.SelfintControl')
out.write_text('\n'.join(lines)+'\n'+tail)
for name in names:
 Path(f'tmp/round4/jerase/{name}.reader.lam').write_text(trace.CASES[name]+'\n')
