#!/usr/bin/env python3
"""Pin a finite beta trace and source counts for the shared-S counterexample."""
from pathlib import Path
import sys
sys.dont_write_bytecode = True
from residual_checks import HERE, lc, parse, I, S, A, L, V


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


t = parse((HERE / 'shared_s_remainder.lam').read_text())
trace = []
current = t
while (z := step(current)) is not None:
    trace.append(z[0])
    current = z[1]
    assert len(trace) < 4000
reference = parse((HERE / 'reference70.lam').read_text())
assert current == lc.nf(reference, [20000])
paths = '[' + ',\n  '.join('[' + ', '.join('.' + p for p in path) + ']'
                           for path in trace) + ']'
text = '''/-
647-bit exact remainder extractor with two nonlinear binders, two live
capturing binders, and exactly one width-three subterm. The generated trace
is checked by Lean's kernel; the Python generator is not trusted.
-/
import RemainderChain
import Blc.SelfintSharp

namespace Blc.RemainderSharedS
open Term SelfintControl RemainderLane SelfintSharp
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def body : Term := BODY
def sComb : Term := SCOMB
def reader : Term := .app (.lam body) sComb
def common : Term := .lam (.app (.app (.var 0) SelfintRemainder.context)
  SelfintRemainder.context)
def trace : List (List Direction) := TRACE

theorem checked_trace : replay trace reader = some common := by decide
theorem reader_reduces : Betas reader common := replay_sound checked_trace
theorem reference_reduces : Betas SelfintRemainder.rem70 common :=
  replay_sound (by decide : replay [[.under]] SelfintRemainder.rem70 = some common)

theorem reader_closed : Closed reader := by decide
theorem reader_size : (blcCode reader).length = 647 := by decide
theorem reader_two_nonlinear : SelfintLowerBound.nonlinear reader = 2 := by decide

/-- A live lambda captures when it is not closed as a standalone subterm. -/
def liveCaptures : Term → Nat
  | .var _ => 0
  | .app f a => liveCaptures f + liveCaptures a
  | .lam b => liveCaptures b +
      if 0 < occ 0 b ∧ ¬ Closed (.lam b) then 1 else 0

/-- Distinct free de Bruijn indices, relative to this subterm. -/
def freeVars : Term → List Nat
  | .var n => [n]
  | .app f a => (freeVars f ++ freeVars a).eraseDups
  | .lam b => (freeVars b).filterMap (fun n => if n = 0 then none else some (n - 1))

def widthWitnesses : Term → Nat
  | .var _ => 0
  | .lam b => widthWitnesses b + if 3 ≤ (freeVars (.lam b)).length then 1 else 0
  | .app f a => widthWitnesses f + widthWitnesses a +
      if 3 ≤ (freeVars (.app f a)).length then 1 else 0

theorem reader_two_live_captures : liveCaptures reader = 2 := by decide
theorem reader_one_width_three_subterm : widthWitnesses reader = 1 := by decide
theorem body_no_width_three_subterm : widthWitnesses body = 0 := by decide
theorem sComb_one_width_three_subterm : widthWitnesses sComb = 1 := by decide

/-- Full beta-exact contract, with open sources and arbitrary suffixes. -/
theorem reader_contract (M N : Term) :
    BetaJoin (.app reader (streamOf (blcCode M) N)) N := by
  have hsame : BetaJoin reader SelfintRemainder.rem70 :=
    ⟨common, reader_reduces, reference_reduces⟩
  exact join_trans (join_appL _ hsame)
    (join_of_betas (SelfintRemainder.rem70_contract M N))

theorem reader_isRemainder : IsRemainder reader :=
  ⟨reader_closed, fun M _ N => reader_contract M N⟩

#print axioms reader_contract
#print axioms reader_two_nonlinear
#print axioms reader_two_live_captures
#print axioms reader_one_width_three_subterm

end Blc.RemainderSharedS
'''
text = text.replace('BODY', lean(t[1][1])).replace('SCOMB', lean(S)).replace('TRACE', paths)
(HERE / 'SharedS647.lean').write_text(text)
print(f'Pinned {len(trace)} beta steps, {lc.size(current)}-bit common normal form.')
