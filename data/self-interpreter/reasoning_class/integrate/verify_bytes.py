"""Normalized comparison: source (renamed) vs promoted module, ignoring the
header comment, #print lines, and blank lines. Prints every remaining diff."""
import re, difflib
from pathlib import Path
R = Path('/Users/a9lim/Work/blam'); S = R/'tmp/round4'; D = R/'lean/Blc'
def norm(t):
    L = t.split('\n')
    i = next(k for k,l in enumerate(L) if l.startswith('import '))
    return [l for l in L[i:] if l.strip() and not l.startswith('#print')]
def ren(t, pairs):
    for p, n in pairs: t = re.sub(p, n, t)
    return t
def lines(p, a, b): return '\n'.join(Path(p).read_text().split('\n')[a-1:b])
specs = [
 ('SelfintWiden', (S/'widen/Widen.lean').read_text(), [(r'\bRound3Reader\b','SelfintWidenHoist')]),
 ('SelfintProbe', (S/'probelean/Probe.lean').read_text(), [(r'\bDivergentProbe\b','SelfintProbe')]),
 ('SelfintProbeSlots', 'import X\n' + lines(S/'escape/Slots.lean', 921, 993), [(r'\bDivergentProbe\b','SelfintProbeSlots')]),
 ('SelfintProbeDerive', 'import X\n' + lines(S/'probelean/Derive.lean', 976, 1475), [(r'\bProbeInterface\b','SelfintProbeDerive')]),
 ('SelfintValuesTransfer', (S/'values/LemmaT.lean').read_text(), [(r'\bValuesLemmaT\b','SelfintValuesTransfer')]),
 ('SelfintValues', (S/'values/lean/ValuesH3.lean').read_text(), [(r'\bValuesH3\b','SelfintValues'),(r'\bRound3Reader\b','SelfintWidenHoist')]),
 ('SelfintKnotHeads', (S/'knot/KnotHeads.lean').read_text(), [(r'\bKnotHeads\b','SelfintKnotHeads')]),
 ('SelfintReader30', (S/'lean146/Final146.lean').read_text(), [(r'\bLean146','SelfintReader30')]),
 ('SelfintGlobalBarriers', (S/'global/GlobalBarriers.lean').read_text(), [(r'\bRound4Global\b','SelfintGlobalBarriers')]),
 ('SelfintSpineBarriers', (S/'global/SpineBarriers.lean').read_text(), [(r'\bRound4Spines\b','SelfintSpineBarriers')]),
 ('SelfintTowerBarriers', (S/'global/TowerBarriers.lean').read_text(), [(r'\bRound4Towers\b','SelfintTowerBarriers')]),
 ('SelfintChead', (S/'chead/lean/ModeNext.lean').read_text(), [(r'\bChead\b','SelfintChead')]),
]
for m, src, pairs in specs:
    a = norm(ren(src, pairs)); b = norm((D/f'{m}.lean').read_text())
    d = [l for l in difflib.unified_diff(a, b, lineterm='', n=0) if not l.startswith(('---','+++'))]
    print(f'== {m}: {len(a)} vs {len(b)} nonblank lines, {sum(1 for l in d if l[:1] in "+-")} differing')
    for l in d: print('   ', l[:150])
