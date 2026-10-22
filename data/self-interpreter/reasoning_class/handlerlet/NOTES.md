# Handlerlet wave 5

## Orientation and initial reduction

Read BRIEF, BRIEF5, current class-bound §§2–4, loop §6 / Prices.lean,
needbinder §§3–5 and its source/check/certificate scripts, adv5 §3, d1open.
The older memory snapshot predates the canonical 162; live sources govern.

Task: literal lambda first handlers with nonlinear source lets, j outside,
in a global minimum under (weight, lambda count, j depth). Write only here.
No consultation or delegation; hard per-check caps 100k / 120s / 1GB / 2 threads.

Exact whole-source price, with local j tax in the operands:
  w = 12 + 2q + |B| + sum_i weighted(Ti).
For a depth-one minimum, j is not under any operand lambda. The budget is
|B|+sum_i weighted(Ti)<=33-2q. A nonlinear redex costs >=12, while the
operand list costs >=2(q-1); thus q<=5. Every source redex in B has m=2..5
by loop §6; erasing/linear ones excluded only under global minimality.
The d1open theorem already allows arbitrary off-path source redexes. Its
unclosed part is a source redex reached on the first-dispatch path.

The adv5 arity table is a list of specific semantic handler values, NOT a
classification of all nonlinear handlers. It cannot justify importing the
listed q values for arbitrary B. We must retain every q=1..5 or prove an
additional reduction.

A stronger minimum-only filter is available for each j-free source redex:
if m uses of x have total local depth M, A has F outward leaves and size a,
and D has T other outward leaves (relative to x), then contraction changes
weight by Δ=(m-1)a+(F-1)M-4-2m-T. Minimality forces Δ>=1: Δ<0 decreases
weight; Δ=0 keeps weight but removes at least one lambda. This will be
used only after its lambda-count qualification is checked (nonlinear
contraction can duplicate lambdas of A, so Δ=0 does NOT in general lower
lambda count). Safe unconditional filter is Δ>=0; equality needs exact
lambda difference (m-1)L(A)-1.

## Exact minimum contraction filter and count-only preflight

Checked the lambda tie-break: delta-lambda=(m-1)L(A)-1. Thus the safe
necessary condition is Δ>=0, and when Δ=0 it requires L(A)>=1.
No assumptions about A or D being normal. Since the source hole is outside
B, contracting inside B keeps one j, keeps its depth, and preserves all laws.

The actual count allows j at ANY depth in a trailing Ti (weighted leaf
4 times its local depth), so no reliance on the older depth-reduction theorem
is needed for the new exclusion. We mark ANY occurrence of a nonlinear
redex in B, not only the head path, and retain arbitrary surrounding C.
Multiple marks of one source overcount it safely. The c-priority classes
are A, then D, then surrounding context, then the tail list.

Count-only DP with the exact non-improving-redex filter gives:
q=1 85,765 marked sources; q=2 28,022; q=3 3,234; q=4 68; q=5 zero.
Each whole q domain is under100k, and each (q,m,c-location) cell smaller.
This count is not an evaluation sweep; no ASTs were generated. Runtime
<0.04s each, peakRSS<22MB. The count recurrence and tables are count.py
and count1.json...count5.json. With unbounded j placement q1/q2 supersede
the initial depth-one-only counts (those preliminary files were replaced).

## Full source checks and the exception certificates

The four checks completed: q1=85,765 markings/85,735 unique sources in32.788s;
q2=28,022/28,022 in23.716s; q3=3,234/3,234 in5.239s; q4=68/68 in0.006s.
PeakRSS respectively62.5MB/42.6MB/33.7MB/24.4MB. One compute thread and one
watchdog thread; no passing probes. Each check asserts the generated block
counts against the count-only DP, exact whole-reader weights, multiplicity,
and the contraction-price equality on every marked source.

There are1,868 normalizer exceptions, including1 n=1 exception and1,867 zero
exceptions. They are NOT discarded. An exact certificate builder found:
410 missing required free variables after finite reduction;224 wrong rigid
head/arity;1,205 finite weak-head prefix cycles;29 mixed cycles (one genuine
weak-head contraction followed by arbitrary finite beta reductions back to
the same head, possibly with extra operands). The mixed search examined668
finite reduct states,0.022s/34MB, with no open result. No eta reasoning used.

The generic Lean certificate library Certificates.lean proves the missing
variable, rigid-head/arity and both cycle rules. A finite weak-head clock
for f A contains one for f of no greater length; a head contraction
strictly decreases the clock; arbitrary beta reductions cannot increase
it. Thus a cycle back to a previous head, even with extra pending arguments,
is impossible for a term with a normal form. The certificate does not
mistake arbitrary beta cycles inside erased arguments for divergence.

export_certificates.py maps all1,868 original exception readers to concrete
Lean `not Reader` declarations in Exceptions1..4.lean. Reader here is the
repository's weaker zero+n=1 contract, so these refute the full laws too.
At this checkpoint Exceptions3 and4 have compiled (2.04s/481MB and
0.43s/434MB); larger modules are in progress. The aggregate source inventory
and its non-exception failures are still a Python check with handwritten
completeness, not a kernel enumeration theorem.

## Final verification and deliverable

Every certificate compiled: Exceptions1=12.68s/850,837,504B;
Exceptions2=7.66s/697,417,728B; Exceptions3=2.04s/480,772,096B;
Exceptions4=0.43s/434,143,232B. All1,868 axiom lists are exactly
[propext, Quot.sound]. Certificates.lean and Prices.lean also compile with
that axiom set. No sorry/native-decision trust axiom remains.

Changed duplicate suppression from SHA256 keys to exact AST equality, so
finite completeness has no collision assumption. Re-ran all four source
checks once on this final implementation. Counts, exception order and
all generated Lean source files are byte-identical. No repeated Lean
compilation was needed for unchanged certificate files. Final source
measurements: q1 30.567s/119,619,584B; q2 16.758s/54,607,872B;
q3 2.344s/33,587,200B; q4 0.0056s/22,855,680B. Each has two threads at
most (one compute plus watchdog). All source/Lean runs remain within caps.

validate.py independently checks the source-count features on1,384 small
unfiltered terms; accepts known w46 and beta-expanded w59 reader controls;
and reconciles all117,059 unique sources:112,385 wrong zero NFs,2,806
wrong n=1 NFs,1,868 Lean-refuted exceptions,zero survivors. Hashes and
resources are recorded in verification.json. REPORT.md has the complete
proof, all cell counts, exact minimum hypothesis, proof boundaries and
reproduction commands. No work was written outside this lane, no
interpreter was built, and no battery/polish/commit/publication occurred.
