"""Fixed stream algebra for shallow-readers.md; no source enumeration."""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import json, time
from checks import lc, V, L, A, normal_step, normal, lean, PREAMBLE, op

HERE = Path(__file__).resolve().parent

def nf(t):
    for k in range(100):
        q = normal_step(t)
        if q is None:
            assert normal(t)
            return k, t
        t = q
    raise RuntimeError("unresolved fixed identity")

# Free frame: c,j,N,r. Every right-hand side below is stated independently
# of the normalizer, including the full 5 by 5 functional-value algebra.
N, r, c, j = V(2), V(3), V(0), V(1)
S = lc.bitlist('10', N)
P = lc.bitlist('0', N)
F, I, W = lc.FALSE, L(V(0)), L(V(3))
vals = dict(S=S, F=F, P=P, I=I, W=W)
table = {
    'S': [W, P, A(N, P), I, A(N, P)],
    'F': [I, I, I, I, I],
    'P': [I, N, W, W, A(N, N)],
    'I': [S, F, P, I, W],
    'W': [N, N, N, N, N],
}

rows = []
out = PREAMBLE.replace('import Blc.Wire', 'import Blc.Wire\nimport Blc.SelfintWireCost')

def check(label, t, expected):
    global out
    steps, got = nf(t)
    assert got == expected, (label, lc.show(got), lc.show(expected))
    rows.append(dict(name=label, steps=steps, lhs=lc.enc(t), rhs=lc.enc(expected)))
    out += f'theorem {label} : Betas {lean(t)} {lean(expected)} ∧ NFt {lean(expected)} :=\n'
    out += f'  ⟨normalSteps_sound (by decide : normalSteps {steps} {lean(t)} = some {lean(expected)}), by decide⟩\n\n'

start = time.monotonic()
for x, v in vals.items():
    for y, expected in zip(vals, table[x]):
        check('shallow_' + x + '_' + y, A(v, vals[y]), expected)

Z, Wr = lc.pair(lc.TRUE, r), L(V(4))
check('shallow_zero_square', A(Z, Z), Wr)
check('shallow_zero_constant', A(Z, Wr), A(r, r))
check('shallow_zero_erase', A(Wr, c), r)
check('shallow_zero_neutral', A(Z, A(c, j)), A(A(A(c, j), lc.TRUE), r))
check('shallow_one_neutral', A(S, A(c, j)), A(A(A(c, j), F), P))

# Complete blocks in the depth-two f=3, V=7, X=3 corner: the live
# binder is innermost, and every other binder is vacuous.
delta = L(A(V(0), V(0)))
for q, want_linear, want_binary in [(1, Wr, lc.TRUE), (2, r, A(r, r)), (3, I, delta)]:
    d, e = V(0), A(V(0), V(0))
    for _ in range(q):
        d, e = L(d), L(e)
    check(f'closed_linear_callback_{q}', A(Z, d), want_linear)
    check(f'closed_binary_callback_{q}', A(Z, e), want_binary)
check('hole_callback_on_zero', A(Z, L(V(2))), A(j, r))

# The existing two-lambda correlated reader: an upper witness only for
# the lambda-count discussion, not a new interpreter or an optimality claim.
known = op(r'\s.s (\b.b (b (b (s s s j))) c) (s s s)', ('c', 'j'))
check('known_two_lambda_zero', A(known, Z), A(r, j))
for n in (1, 2, 4, 9):
    check(f'known_two_lambda_{n}', A(known, lc.bitlist('1' * n + '0', N)),
          A(A(c, lc.bitlist('1' * (n-1) + '0', N)), N))

# General, unbounded capture-accounting consequences. These are about
# literal wire length, and allow an arbitrary argument, including NEXT.
out += r'''
open SelfintWireCost SelfintLowerBound

theorem shallow_linear_beta_shrinks (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 7)
    (hd : occDepth 0 b ≤ 1) (hb : 1 ≤ freeLeaves 1 b) :
    wire (contract b a) < wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hD : occDepth 0 b = 0 ∨ occDepth 0 b = 1 := by omega
  rcases hD with hD | hD
  · rw [hD] at h
    simp only [Int.natCast_zero, Int.mul_zero] at h
    omega
  · rw [hD] at h
    simp only [Int.natCast_one, Int.mul_one] at h
    omega

theorem shallow_linear_beta_nonincrease (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 4)
    (hd : occDepth 0 b ≤ 2) :
    wire (contract b a) ≤ wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hD : occDepth 0 b = 0 ∨ occDepth 0 b = 1 ∨ occDepth 0 b = 2 := by omega
  rcases hD with hD | hD | hD
  · rw [hD] at h
    simp only [Int.natCast_zero, Int.mul_zero] at h
    omega
  · rw [hD] at h
    simp only [Int.natCast_one, Int.mul_one] at h
    omega
  · rw [hD] at h
    change (wire (contract b a) : Int) - wire (.app (.lam b) a) =
      ((freeLeaves 0 a : Int) - 1) * 2 - 6 - freeLeaves 1 b at h
    omega

theorem shallow_linear_beta_nonincrease_one (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 7)
    (hd : occDepth 0 b ≤ 1) :
    wire (contract b a) ≤ wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hD : occDepth 0 b = 0 ∨ occDepth 0 b = 1 := by omega
  rcases hD with hD | hD
  · rw [hD] at h
    simp only [Int.natCast_zero, Int.mul_zero] at h
    omega
  · rw [hD] at h
    simp only [Int.natCast_one, Int.mul_one] at h
    omega

-- Pure arithmetic completeness for the remaining f=3, depth-two strip.
-- The source-count and semantic exclusion hypotheses are handwritten.
theorem depth_two_three_c_lambda_inventory (l v x w : Nat)
    (hl : 3 ≤ l) (hv : 7 ≤ v) (hx : 3 ≤ x)
    (hw0 : 43 ≤ w) (hw1 : w ≤ 45)
    (he : w + 4 = 2*l + 4*v + x + 8)
    (h4 : ¬ (l = 4 ∧ v = 7 ∧ x = 3))
    (h5 : ¬ (l = 5 ∧ v = 7 ∧ x = 3)) :
    (l = 3 ∧ v = 7 ∧ x = 5) ∨
    (l = 3 ∧ v = 7 ∧ x = 6) ∨
    (l = 3 ∧ v = 7 ∧ x = 7) ∨
    (l = 3 ∧ v = 8 ∧ x = 3) ∨
    (l = 4 ∧ v = 7 ∧ x = 4) ∨
    (l = 4 ∧ v = 7 ∧ x = 5) := by omega

theorem depth_two_three_c_app_inventory (l v x w : Nat)
    (hl : 3 ≤ l) (hv : 8 ≤ v)
    (hw0 : 43 ≤ w) (hw1 : w ≤ 45)
    (he : w + 4 = 2*l + 4*v + x + 8) :
    (l = 3 ∧ v = 8 ∧ x = 1) ∨
    (l = 3 ∧ v = 8 ∧ x = 2) ∨
    (l = 3 ∧ v = 8 ∧ x = 3) ∨
    (l = 4 ∧ v = 8 ∧ x = 0) ∨
    (l = 4 ∧ v = 8 ∧ x = 1) := by omega

end Blc.Round3Floor
'''
(HERE / 'ShallowFacts.lean').write_text(out)
(HERE / 'shallow-facts.json').write_text(json.dumps(dict(
    fixed_facts=len(rows), max_steps=max(z['steps'] for z in rows),
    seconds=time.monotonic()-start, rows=rows), indent=2) + '\n')
print(json.dumps(dict(fixed_facts=len(rows), max_steps=max(z['steps'] for z in rows),
                     seconds=time.monotonic()-start)))
