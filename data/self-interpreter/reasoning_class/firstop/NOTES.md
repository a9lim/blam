# Firstop lane, wave 5

## Orientation and source of truth

Read BRIEF, BRIEF5, current class-bound section 3 (also sections 1,2,4,5),
handlerlet, d1open, adv5 and loop sections 5-6, and current STATUS.
Writes restricted to this directory; no consults or delegation.
The task is a global lex-minimum exclusion, not a theorem about every
reader of a syntactic family. All inherited finite exclusions are being
used as stated, not independently rerun.

## Initial exact-cost audit

The identity s (s Q) Y... = s (lambda b t. Q b t b t) Y... is valid on
cells, including when Q mentions s (hygienic shifting). But its displayed
right side costs 18+2F MORE before beta-reduction when Q is j-free, where
F counts Q's free leaves. The claim that the left side necessarily costs
at least 8 more than an equivalent literal handler does not follow from
this identity. adv5/NOTES section 10 constructs a particular Q from H;
that does not classify all Q. A useful lower-cost equivalent may still
exist for reader-compatible Q, but needs proof.

## Head-redex source budget

For R=lambda s. s (((lambda x.D) A) P1...Pp) T1...Tq, depth(j)=1,
if j is outside D,A, t=p+q>=1 and local tail prices S put j at zero:
  w = 14+2t+|A|+|D|+S.
No hole lies in D because its x binder would make depth at least two.
The exact contraction delta is
  (m-1)|A|+(F_A-1)M-4-2m-G_D.
A minimum requires delta>=0, and delta=0 with lambdaCount(A)=0 is
forbidden. If j lies in A, that formula must be replaced by the weighted
one and a hole-restoring hoist for nonlinear contraction.

## Closed pinned subcase: every linear redex inside a j-free first operand

R=lambda s. s H T1...Tq, q>=1, H j-free, exactly one j in the tails at
any depth. Mark H=C[(lambda x.D) A], local context depth ell. The exact
source budget is w=14+2q+a+d+k+p, with k the context price and p the
local weighted tail sum. A minimum's linear redex has
  (F_A-1) M -6-G_D >= 1.
The constructor recurrence, retaining arbitrary C,A,D and all tails,
leaves 727 sources: (q,ell)=(1,0):673; (1,1):38; (2,0):16.
Every source is unique. 712 fail zero, 15 fail n=1. No resource cutoff,
cycle or unknown. Run: 0.061 seconds, 26 MB, one compute thread plus
watchdog. linear_count.py, linear_check.py, linear_check.json and full
refutation manifest retained. Each concrete refutation exported to Lean;
proof uses exact beta reductions to a distinct normal form, not eta.
Completeness is handwritten induction on source constructors, not a Lean
exhaustion theorem. It uses the existing exact minimum-linear-price lemma.

## Count-only obstruction; not candidate searches

The unrefined direct-head-redex inventory with j in pending operands
has 366,864 base layouts, 853,044 after splitting pending operands into
inside/outside-the-first-operand lists. This is an upper inventory because
the tails permit deeper j. No such sources were instantiated or checked.
Restricting flat arguments to their known contextual representatives
still leaves 707,568 layouts. The counts only diagnose that this is not
a permissible finite closure under BRIEF5.

## Hole-bearing argument: exact new contextual hoist formula

Let the marked redex lie at binder depth one, its A have the unique j at
local depth zero, and every other part of the reader be j-free. Write m
for x multiplicity, M for the sum of its local depths in D, sA/cA for
A's s/c leaves, sD for D's s leaves, and cC for c leaves outside the redex.
Contract and hoist all resulting j copies to the reader root. The change is
  (m-1)|A| + (sA+cA)M -3m-sD+cC+m*cA.
D's c leaves cancel exactly. This uses raw |A| in frame [s,c,j], where j
costs four, not the local zero-priced hole convention. The source weight
is raw wire exactly because its unique j is at global depth one.
This is a price constraint, not a semantic exhaustion theorem.

## Kernel verification

All 727 concrete refutations compile: LinearInventory.lean, 10.642s,
708,018,176-byte sampled RSS, two threads. Every printed dependency list is
[propext, Quot.sound]. The generator's completeness remains handwritten.
Prices.lean proves the source price, linear filter, reification price,
let-sink price, and depth-one contextual contract-and-hoist identity. Its
final check is 0.445s, 454,115,328-byte sampled RSS, two threads; no sorry.

## Stronger lambda-sink restriction

For a j-free first operand ((lambda x. lambda b.B) A), with no pending
operands inside it, move the x let beneath b. The result is a literal first
handler, has the same number of lambdas, preserves hole depth, and changes
weight by F_A + occ_b(B) - occ_x(B). Hence the inherited exclusion of
literal-handler GLOBAL minima upgrades the ordinary nonnegative sink
constraint to the STRICT inequality
  occ_x(B) < F_A + occ_b(B).
At equality the transformed reader is another global minimum (all three
ordering components agree), so handlerlet applies. This deduction uses
handlerlet's reviewed exclusion as a premise, not H_nf.

## High multiplicity in an arbitrary j-free first operand

For H=C[(lambda x.D) A], w<=45, q>=1, H<=33. If m>=6, body counting gives
|D|>=4m-2 and redex cost>=4m+2+|A|. With source c outside A:
- in D: extra c leaf+join costs >=6, giving H>=34;
- in C: context costs >=5 (plus 2 per lambda on the hole path), forcing
  m=6, A=s, and no contextual lambda; contraction then saves >=6;
- only in the tails: H<=28, forcing m=6, A=s, empty C and a pure x tree;
  contraction again saves >=6.
Thus c must occur in A. The source budget leaves m=7 with A=c, pure D,
empty C; or m=6 with A among c, lambda u.c, c s, s c (at context depth
zero), or A=c under one context lambda. No other c-containing term fits:
A<=7-2ell, c costs ell+3, a lambda adds 3 to that occurrence, and a joining
application plus another leaf adds at least4. With A=c, D has at most four
bits beyond its pure-x tree; every additional leaf would need at least5
(external) or6 (local after introducing its binder), so only x leaves and
vacuous lambdas remain. Its head cannot be such a vacuous source redex in a
minimum, nor a leading lambda (would cost 2+m>=8). Hence its head is x,
which becomes rigid c. The possible <=4-bit contexts cannot repair that:
empty, an application with s, or one lambda. For A=lambda u.c the body is a
pure x tree and applies A, exposing c. For A=c s or s c the body is a pure
x tree and A has rigid c head on zero. All violate zero's r head.
Therefore every source redex anywhere in a j-free first operand of a
minimum reader below46 has multiplicity2..5, after the linear inventory.
This extension is handwritten, with the exact price identities in Lean.

## Final status

REPORT.md saved in the requested four-part format. The full lane target
is explicitly open. No reader<=45, no complete interpreter, no H_nf use.
New closure: every redex in a j-free first operand of a global minimum
below46 has multiplicity2..5; linear exhaustion has727 individual Lean
refutations, high multiplicity is handwritten. Added strict lambda-sink
necessary condition and kernel-checked contextual hole-restoring price.
Final Price check:0.554s,464,568,320-byte sampled peak. verification.json
records hashes and checks all727 printed axiom lists and final Price log.
No live child run remains from this lane.
