# jerase notes

## 0. Read boundary
Read BRIEF, BRIEF5, class-bound sections 2--4, adv5 REPORT,
d1open REPORT, integrate2 namespace map, loop/Shield.lean and zcore NOTES.
No delegation/consultation. Write ownership is this directory only.
No enumeration planned; any checks will evaluate explicit constructions.

## 1. Main distinction (handwritten, in progress)
The proposed trichotomy mixes a valid provenance exhaustion with unproved
source-shape restrictions. In ordinary beta reduction, disappearance of a
marked rigid j leaf occurs only when an unused lambda parameter discards
an argument containing it. A lambda comes from R or the input. Input cons
binders are linear and cannot erase; bit F can erase its first argument;
terminal K its second. This makes SOURCE / INPUT-F / INPUT-K exhaustive
for individual residual death events, but does not put a source eraser
above the unary core's s/c leaves or force K to arise from s s.

A one-source-j reader can duplicate j, so a single erasure event need not
cover all residuals. Minimality may eliminate some such readers, but that
needs a theorem, not the one-source premise. Likewise the source binder
need only be vacuous when contracted; its source body need not be vacuous.

zcore already owns hygienic zero-r anchors and local deletion/core bounds.
This lane will focus on residual-origin precision and constructive tests
of the stronger erasure/price claims, with all-n proofs.

## 2. Decisive counterexamples to the proposed pricing categories
The 162's lambda-u is NOT an erasing beta redex: u occurs once in s s u.
Its application to j moves j into the skip, whose terminal input-K drops
it. Thus the 162 belongs to provenance INPUT-K, and contradicts a blanket
INPUT-K >= 48 claim. The 47-bit variant with s s s in lambda-u's body
really does erase j at the source lambda-u. Operational erasure and
"unary-dispensable binder use" are different classifications.

The known 165 (weight 49, depth 0) erases j by the first input-F, which
discards the whole zero-arm lambda-u-t.t j. Thus INPUT-F >= 53 also fails
without a restriction to a direct, separate j/N operand. This already
uses cross-role sharing: the same dispatch selects c r and destroys j.

Explicit new mixed witness (all-n handwritten proof below):
  (lambda n s. s (lambda b. b (lambda u t. t n) c) (s s n)) j
weight 50, depth 0, one source j, two let uses. Zero gives r j, unary
c r N. On unary one j residual dies in input-F's discarded zero arm,
the other in terminal input-K. This refutes "exactly one mechanism per
reader" even if cases are widened to binder origin.

Six explicit reader probes checked n=1..8 (probes.py): all pass, no search.
Additional source-erasure witnesses:
  lambda s. s (lambda b.b I c) (s (lambda b t.b I (lambda u.t t t)) j)
weight 64, beta-normal, depth 1; source lambda-u contains no s/c leaves,
its body only needs cell-tail t. The c output provider is elsewhere.
  lambda s. s I (s (lambda q.c)) (s (lambda b t.b K F) j (s s s))
weight 70, beta-normal, depth 1; the literal source-F discards j with no
needed s/c leaf under its source binder. It is neither an INPUT-F nor an
INPUT-K erasure. This is a source selector, not a core-wide absorber.
No complete interpreter assembled yet.

## 3. Operational validation and formal target
trace.py labels every source lambda and each input cell/bit lambda, performs
full normal-order beta reduction, and checks the exact j-count identity at
every contraction. trace.log (n=1,2,8) verifies:
- 162: source u transfers j once, terminal K erases it;
- 47: source u erases it;
- 165: input leading F erases the j-bearing zero-arm function;
- mixed50: n copies j twice, leading F and terminal K each erase one;
- local_absorber64 / sourceF70: erasure at the specified source lambda;
- mixed67: leading F + terminal K at depth 1 (already in adv5).
All outputs equal the rigid unary target. 21 explicit traces, no search.

Erasure.lean formalizes the exact local statement and arbitrary finite-run
existence: a loss in free-j count is equivalent to zero uses of the
contracted binder and a positive j count in its argument. A finite run to
j-count zero contains such a step, with an explicit intermediate source
context. It deliberately does not call this one event for the whole run.
Initial compile invoked root's default Lean and hit an incompatible olean
header; rerun from lean/ uses the repository toolchain (no library edits).

## 4. Final formal witnesses and scope
Added a beta-normal depth-1 mixed-erasure reader:
  lambda s. s (lambda b t n. b (t n) (c t (t t n))) j
weight 58. Its n binder copies j; leading F erases t j and terminal K
erases the second j in r r j. Thus beta-normality plus depth 1 does not
make the eraser categories exclusive. No global-minimality claim.
The adv5 redex-handler reader at depth 1 has weight 52 and loses j only
to leading F, also contradicting the proposed blanket 53 at depth 1.

Witnesses.lean now kernel-checks the exact prices and ALL unary lengths,
plus the zero law, for mixed50, mixed58, local_absorber64, sourceF70,
and F52. It checks beta-normality of mixed58, local_absorber64, sourceF70.
All-n proofs use a symbolic-tail reduction followed by the existing
skip_self induction; not bounded probes. Axioms of law proofs are only
propext and Quot.sound; price proofs use no axioms.
Erasure.lean compiles with only propext, Classical.choice, Quot.sound.

No complete interpreter assembled, no full battery or polish invoked:
these are literal reader counterexamples, not new minimum-algorithm claims.
No term enumeration at all. All generated files remain in this lane.
The sibling zcore notes are now further along on anchors and deletion;
this lane has not duplicated that approach.

## 5. Final verification and deliverable
REPORT.md is complete in the requested four-part format. The corrected
classification is per residual-death event; proposed source-shape/price
implications fail on known readers and the kernel-checked constructions.
No w>=46 theorem. No sub-162. No full interpreter assembled.
Final verify.py: Erasure 0.321 s, Witnesses 0.400 s, probes 0.048 s, traces
0.053 s; sampled peak total RSS <=449,396,736 bytes; no cap hit. The five
all-n witness proofs have only propext/Quot.sound, and exact prices have
no axioms. The generic erasure proof additionally uses Classical.choice.
All theorem statements and final source files were checked before reporting.
