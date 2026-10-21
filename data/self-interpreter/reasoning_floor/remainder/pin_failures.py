#!/usr/bin/env python3
"""Generate four fixed counterexample traces; no term search."""
import sys
sys.dont_write_bytecode = True
from residual_checks import HERE, parse, lc, A, L, V


def step(t):
    if t[0] == 'A':
        if t[1][0] == 'L':
            return [], lc.beta(t[1], t[2])
        z = step(t[1])
        if z is not None:
            return ['left'] + z[0], A(z[1], t[2])
        z = step(t[2])
        if z is not None:
            return ['right'] + z[0], A(t[1], z[1])
    elif t[0] == 'L':
        z = step(t[1])
        if z is not None:
            return ['under'] + z[0], L(z[1])
    return None


def lean(t):
    if t[0] == 'V':
        return f'(.var {t[1]})'
    if t[0] == 'L':
        return f'(.lam {lean(t[1])})'
    return f'(.app {lean(t[1])} {lean(t[2])})'


source = parse(r'\x.x x')
chunks = ['''/- Fixed beta-exact failure witnesses for application parsing. -/
import ResidualControl

namespace Blc.RemainderFailures
open Term SelfintControl RemainderLane RemainderResidual SelfintSharp
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def dupSource : Term := .lam (.app (.var 0) (.var 0))
''']
for stem, name in [('tower45', 'tower'), ('drop_second_skip_failed', 'near66'),
                   ('pack_tail65', 'tail65'), ('pack_handler65', 'handler65')]:
    term = parse((HERE / (stem + '.lam')).read_text())
    current = A(term, lc.bitlist(lc.enc(source), V(0)))
    trace = []
    while (z := step(current)) is not None:
        trace.append(z[0])
        current = z[1]
        assert len(trace) < 4000
    assert current[0] == 'L'
    paths = '[' + ', '.join('[' + ', '.join('.' + p for p in ps) + ']'
                           for ps in trace) + ']'
    chunks.append(f'''
def {name} : Term := {lean(term)}
def {name}Result : Term := {lean(current)}
def {name}Trace : List (List Direction) := {paths}
theorem {name}_checked : replay {name}Trace
    (.app {name} (streamOf (blcCode dupSource) (.var 0))) = some {name}Result := by decide
theorem {name}_not_remainder : ¬ IsRemainder {name} := by
  intro h
  have hs := h.2 dupSource (by decide) (.var 0)
  have ht := join_of_betas (replay_sound {name}_checked)
  exact lam_not_join_var _ _ (join_trans (join_symm ht) hs)
#print axioms {name}_not_remainder
''')
    print(stem, len(trace), 'beta steps; result', lc.show(current))
chunks.append('end Blc.RemainderFailures\n')
(HERE / 'FixedResiduals.lean').write_text('\n'.join(chunks))
