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
