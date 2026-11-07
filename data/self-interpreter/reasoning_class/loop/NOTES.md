# Loop lane, wave 5

## Orientation and first obstruction (2026-10-22)

Read BRIEF.md, BRIEF5.md, class-bound.md §§2–4, STATUS.md's current
self-interpreter boundary, and the final third of coord/SYNTHESIS.md.
The old memory's unverified-162 boundary is superseded by the live sources.
No repository edits, delegation, or broad enumeration are planned.

The inference "finite source + arbitrarily long unary input implies a
periodic normal-order run" is not valid without a bounded-state premise.
A finite lambda source has unbounded environments, stacks, and residual
multiplicity. Repeated source origins are not repeated configurations.

Pinned counterexample construction, to check next:

    O = λf x. x
    S = λk f x. f (k f x)
    W = λg t k. t (λb r. b r (k I (g g r (S k))))
    G = W W
    Rslow = λs. s I (λu. s (λq.c) (G s O)) j

For k_i = S^i O, G U_(m+1) k_i ->^(10+4i) G U_m k_(i+1),
and G U_0 k_i ->^8 N. Thus G U_n O -> N for all n, but its normal-order
beta clock is 2n^2+8n+8 and the live counter at cell boundaries is unbounded.
Rslow has exactly one j and obeys both reader laws. This is intended to
refute an exact finite-template/finite-beta-word pump, not all imaginable
abstractions that erase the counter's information.

Useful replacements to develop: (a) deterministic pumping CONDITIONAL on a
finite exact quotient of boundary configurations; (b) causal suffix
exposure and source-origin accounting, charging unions rather than sums;
(c) an explicitly restricted direct-diagonal core price. No 20-bit
unrestricted lower bound or 46-bit reader bound is established yet.

## Targeted checks and provenance correction

`check.py` passed zero and n=1..12 for the 162, w47, 164, both 165
placements, R59, R84, R104, and Rslow. Rslow weighs 221 as written
(cost 217, j-depth 1). The raw depth-4 165 reader weighs 54, its hoist 49.
No full interpreter was assembled, so these are reader checks, not battery
claims. G's exact clock 2n^2+8n+8 passed n=0..16; diagonal skip's clock
4n+6 passed n=0..12. No enumeration. Runtime 0.337 s, RSS 20.8 MB,
one worker plus one watchdog thread. macOS rejected AS/DATA rlimits; the
final script uses a CPU limit and a time/RSS watchdog instead.

An independent flaw in the requested source-period wording: on the
diagonal skip, after the initial source application is contracted,
the applications which build the next U_m U_m come from the INPUT cell's
body. They are not residuals of application nodes of R. Source labels do
not furnish even a nonempty recurring source footprint in this example.
The initial `s s` is a causal seed, not a residual period. Any valid
accounting must preserve causal history of contractions as well as residuals.

The counter does not refute a theorem restricted to minimum readers or
weight <=45. It refutes the general finite-source inference. An exact
finite quotient of live boundary configurations would restore a standard
pumping theorem; proving that quotient exists at small weight is new work,
and quotient existence alone supplies no additive 46-bit charge.

## Kernel check

`Slow.lean` now proves `slow_skip m n N` for every unary length m, every
initial Church counter n, and every suffix term N. It proves the full
zero law and every unary reader law for the literal Rslow. No sorry;
printed axiom sets for both reader theorems are [propext, Quot.sound].
Command: LEAN_PATH=.../lean/.lake/build/lib/lean lean -j2 .../loop/Slow.lean
in lean/. Final check: 18.61 s wall, 0.66 s user, 0.36 s system,
428,294,144 bytes maximum RSS; see lean.log. This proves identities, not
the absence of every conceivable abstract pumping model. The precise
operational non-periodicity statement remains the handwritten argument.

An independent analytic price is available for the explicit diagonal
family T = s H (s s j), with H scoped only in c. No syntax/normality
restriction on H: H must contain c and at least one lambda, hence costs
>=6 in [s,c], so T costs >=20. At cost(T)<=23, the only possible H with
c and a lambda are λq.c (6), λq λv.c (9), I c (9), c I (9); the last
three fail the unary law. This proves uniqueness through 23 IN THIS
FAMILY, not in arbitrary source syntax. Deriving the family by pumping is
precisely the missing bridge, and I will not relabel this as the global fact.

## Final state

REPORT.md contains the requested four-part deliverable: no new complete
interpreter; exact counter-reader identities and clock; conditional
pumping, suffix-exposure, union accounting, and restricted analytic
20/23/46 arguments; required-reader comparisons and the remaining gap.
No unrestricted core lower bound or w>=46 proof is claimed.

Added ReaderSlow.lam with all macros expanded; direct check n=1..3 and
zero PASS, free variables exactly c,j, weight 221. Added kernel theorem
slow_price (cost 217, depth 1, one j). The final Lean run, replacing the
earlier log, passed in 0.45 s wall with 429,539,328-byte max RSS and the
same two axiom sets. All work and writes are confined to this lane.
No term enumeration, external consult, interpreter battery, or commit ran.

## Follow-up: source separation for explicit shared configurations

The useful invariant is rigid shielding, not mere occurrence erasure. The
proposed lemma 'a small N-returning operand loses j on zero' is false:
B = s (λb t.t t) j has weighted operand cost 16, B(U_n)=N for all n>=1,
and B(Z(r))=r r j. A context that has no other j cannot extract this j:
the rigid r spine of arity two persists whenever its j survives.

Pinned family S = λs.s (λb.b A c) B, arbitrary source terms A,B (including
redexes) in their lexical frames, exactly one j. Exact prices are
24+raw(A)+weighted(B) if j is in B, and
28+weighted(A)+raw(B) if j is in A. Unary dispatch forces B(U_n)=N;
zero forces A[K/b,Z/s] r B[Z/s]=r j. Small helper cases now prove S>=48,
sharp at 164. All sources <=17 in the rest-operand frame with the necessary
unary sample property have zero NF r or r r j, so an arbitrary j-free
context cannot recover r j. For S<=47 this forces B>=18 and A<=5; among
those five A only I could work, but then B[Z]=j, excluded through cost19.
If j is in A, B>=10, so A<=9; its zero behavior has wrong rigid head or
loses j, independently of the j-free B.

The hoisted family H=(λa s.s (λb.b A c)B)j has exact w=25+raw(A)+raw(B).
It permits arbitrary multiplicity of a in either/both operands, not just
linear a. Necessary B cost>=10 (>=11 when it mentions a). For H<=48,
A<=13; every positive-a A in that range has an impossible zero head/arity,
or acts as I with cost>=12, forcing B<=11 and B[Z]=j, which is impossible.
If A has no a, B has a and the rigid shielding cases force B>=21, while
zero forces A>=4; hence H>=50 on that branch. Therefore H>=49 overall,
sharp at the hoisted165. This does not assume global minimality.

split_check.py closes these bounded helper cases, never enumerates readers,
and uses constructor-complete source enumeration (no normality assumption).
Final run so far: 19,554 candidate sources total, 0 cutoffs, 0.297s,
25,116,672-byte RSS. Every unknown would abort. An attempted unnecessary
extension to marker-free rest operands hit Omega; marker-free operands
already satisfy shielding syntactically, so the final check skips that
semantic evaluation rather than classifying the cutoff as a failure.
No global exhaustion of shared configurations is claimed.

Follow-up completed in REPORT.md §5. The final family theorem for H permits
arbitrary a multiplicity in A and B. The additional functional-zero
assertion in the existing cost-19 rest check gives RX>=70 (not just68).
The R104 wrapper has exact price47+raw(X)>=49. These are syntactic-family
bounds, not an exhaustion of all minimum readers.

Shield.lean kernel-checks substitution/reduction preservation and arbitrary
safe-context non-recovery, in a lambda syntax with named rigid free atoms;
no axioms. Prices.lean kernel-checks four generic source price identities
in the repository Term representation; only propext and Quot.sound.
The finite helper enumeration and assembled family bounds remain
handwritten/computer-assisted, not Lean theorems. Final helper run:
19,554 sources, zero cutoffs,0.481s,25,067,520 bytes maxRSS. Final bounded
Lean checks: shield0.704s/groupRSS490,110,976 bytes; prices0.324s/groupRSS
471,662,592 bytes; -j2. Every new file/write stayed in tmp/round4/loop.

## S-spine follow-up: live boundary and first reduction

The requested universal s-spine theorem is stronger than excluding the
s-spine branch of a global minimum: the depth>=2 result in class-bound is
minimum-only. I retain that distinction. d1open's current sec17 has closed
q=3 of s (λb.b X) T1..Tq, but q=2 remains open under its pool gate; its
redex-free-handler headline still depends on this exception. No existing
enumerations will be rerun here.

A sharper one-hole budget puts the remaining q=2 helper case under the cap.
R=λs.s(λb.b X) A B has w=20+weighted(X)+weighted(A)+weighted(B), with X's
hole taxed an additional4 for the handler binder. Unary replacement by
s F A B preserves all unary laws, and the existing core inventory gives
weighted(X)<=16 below46. If A contains j, X and B cost >=2 each, so A<=21;
if A has no j, its maximum is23 (the other operand may be bare j). Same
for B. The shared [s,c] pool therefore needs 53,537 no-j terms through23
and35,974 one-j terms through21, not one-j through23. X needs1,252 no-j
terms through16 plus its small taxed one-j pool. This is <100k sources in
one pinned check, even before using the stronger depth-one assumption.
This closes a specific missing second-cell-handler case if its finite
obligations pass; it is not a proposed whole-reader search.

General-theorem obstruction remains handler-head redexes: first literal
cell dispatch does not prevent a nonlinear sharing redex inside the first
operand. Lifting it to the body head adds the captures of the enclosing
spine; normalization is not source-cost-monotone. The previous shielding
lemma prices some overlaps but does not classify these generated handlers.

The partial-selector case closed more strongly than expected: no unary
pair survives, so X and the zero law need not be searched at all. For
r=U_(n-1), r A[U_n] B[U_n]=c r N requires |A|+|B|>=24 with one j across
them, or>=22 with none. The source price is20+X+A+B; X costs>=2 without
j, >=4 when it contains j beneath λb. Either location gives w>=46.
All A/B source redexes are included. One shared pool has89,511 sources,
27,437 four-probe meanings and2,945 concrete unary-pair checks; no unary
survivor. Nineteen nonnormal operand sources have explicit unsolvability
certificates (9 universal patterns,2 additional all-four-probe patterns).
No unresolved cutoff. Pruning is justified by genericity and minimizing
within the finite-probe unary-pair class; if a pruned subterm contains j,
replace it by bare j, preserving the one-hole count at a lower price.
The final script has a positive control λb t.c(sF), ssj, with sum31.

New uniform handwritten lemma: in a global lex-minimum R=λs.s(λb.B)T1..Tq
with w<=45 and j outside the handler, EVERY source redex inside B has
multiplicity2..5. This does not classify the nonlinear cases away.
Exact price12+2q+|B|+ΣW(Ti), q>=1, gives|B|<=31. If c is outside B,
Σtails>=5 for q1, >=2q-1 for q>=2, hence|B|<=26. A linear redex with F
argument free leaves and sole-use depth d must satisfy(F-1)d>=7, so it
costs>=4F+3d+4>=28: impossible when c outside. If c is in D or elsewhere
in B but not A, adding its leaf/connecting application gives>=32. If c
is in A, its index>=2 gives>=4F+3d+6>=30. This forcesq1,T=j,B<=31;
only(F,d)=(3,4),(4,3)fit. At most1bit slack forces the redex to be all B,
with D=λ^d.x. Its zero run still has d-2>=1 lambdas, contradiction.
HandlerLinear.lean checks these arithmetic endpoints and rejects both
arbitrary-A tower sources in the existing Term/Reader semantics.

For m>=6 nonlinear: c outside B contradicts|B|<=26 via4m+4; c in B but
outside A contradicts31 via4m+8. If c in A,4m+2+|A|<=31 forcesm6,A<=5,
q1,Tj,and B the whole redex. OnlyA=c fits; D is a pure six-x application
tree (slack<=1). Contracting makes the zero head rigid c. Thusm<=5.
Erasing redexes are already excluded by the minimum-source theorem.

Final s-spine follow-up is in REPORT.md §6. The partial-selector check used
89,511 source operands and 2,945 concrete pairs (92,456 candidates), took
14.687 s, and peaked at 151,945,216 bytes RSS with one compute thread and
one watchdog thread. There were 19 certified nonnormal-source exceptions
and no unresolved cutoffs. Prices and HandlerLinear passed Lean with -j2;
their process-group peaks were 480,952,320 and 493,338,624 bytes. Printed
dependencies are propext and Quot.sound, with no sorry or native_decide.

The full s-spine theorem remains open, including for minimum readers.
The partial-selector family bound is handwritten/computer-assisted; the
uniform handler restriction is handwritten with kernel-checked arithmetic
and tower refutations. Neither assembled result is fully formalized.
Remaining dispatch behaviors are nonlinear handler lets with 2..5 uses,
and generated handlers whose redex lies outside the literal-lambda region.
The depth reduction is minimum-only. The d1open coverage inventory was
read but not independently re-audited or rerun. All writes stayed in this
lane; no consult, delegation, commit, or whole-reader search was used.
