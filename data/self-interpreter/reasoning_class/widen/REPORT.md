# Widen lane: source-price tradeoffs replace the false four-capture bound

**No sub-162 algorithm found. The main new theorem is a kernel-checked
widening of the separated class that admits arbitrary NEXT source syntax
whenever its source price lies above a small frontier. It has exactly the
same minimum over readers as the original class. In particular, every
arbitrary NEXT of at least 98 bits is covered.**

The new source certificate in section 9 proves sharp 92/98/99-bit bounds
for an unbounded family with structural Boolean pruning and one designated
let, including preceding administrative cleanup. Arbitrary-source H2
remains open; the exact projected-normality restriction is part of the theorem.

The proposed arbitrary-source claim “at least four free c/p leaves” is
false, even if NEXT remains beta-normal and only the two-arm restriction is
removed. The corresponding fixed-reader inequality `116 + w(R)` is also
false after arbitrary source sharing is admitted. These counterexamples
**do not lower the minimum over readers**: hoisting resolves them, and the
new theorem proves precisely that distinction.

All newly pinned results below are in **`Widen.lean`**, checked with Lean's
kernel. The only auxiliary source incorporated there is the existing
round-3 `floor/ReaderHoist.lean` namespace, copied with its attribution.
No `sorry`, `sorryAx`, or added axioms remain. Dependencies are `propext`,
`Quot.sound`, and, for the hoisting/comparison results, `Classical.choice`.
No other agent was consulted; all writes stayed in this lane.

## 1. Scope and exact notation

Keep H1, H3, and H4:

- `E = T[H/h]`, `H = lambda p c. R[Q/j]`, with any opaque fixed-point
  context `T[h] =beta h T[h]` and any positive number of holes.
- R has free names among c,j, exactly one source occurrence of j, and the
  independent rigid laws `R Z(r) =beta r j` and
  `R U_(n+1)(N) =beta c U_n(N) N` for every n>=0.
- Q has free names among c,p and obeys the canonical rigid branch laws
  `Q K t =beta T0 t`, `Q F t =beta T1 t`, where

  ```text
  T0 = p (lambda f.c Abs(f))
  T1 = p (lambda f.p (lambda g.c App(f,g)))
  Abs(f)   = lambda e a.f (lambda b r.b a (r e))
  App(f,g) = lambda e.f e (g e).
  ```

No access to the reader's stream binder is introduced. This is not the
+17 embedding problem. The reader still cannot use p outside its marked
Q subtree; the knot stays opaque; the value representation stays canonical.

Write `q=|Q|`, `F=freeLeaves(Q)`, `d=depth(j in R)`,
`r=cost(R)` with j priced zero, and `f=occ(c,R)`.
All are literal **source** quantities, before reduction.

`RigidNext` removes normality and every source tag-use restriction.
`FullReader` states all unary laws. Most size proofs only need the weaker
existing `Reader` interface (zero and U1), but the final optimality
corollary uses `FullReader`, so it assumes exactly the original reader
weight conjecture, not an accidentally stronger two-probe conjecture.

## 2. The main widening: the same minimum, with arbitrary source syntax

**Theorem — kernel-checked.** Replace H2 by `RigidNext Q` and the two
source-price inequalities

```text
q >= 92,                 q + 3 F >= 104.                 (P)
```

Then every such assembly is at least as large as an assembly in the old
class using canonical NEXT and its canonical 20-bit knot. Therefore adding
all these NEXTs **does not change the minimum over readers**.

The witness old-class reader is R, `hoist(R)`, or the known 162's reader:

```text
hoist(R) = (lambda a.R[a/j]) j
cost(hoist R) = r + d + 6 + f
depth(hoist R) = 0.
```

Hoisting preserves scope, the single source hole, and **all** independent
reader laws. Its source beta-reduces to R. The equality above reconnects
the round-3 hoisting proof to the authoritative `SelfintClass.cost/depth`.

Formal results:

- `frontier_dominated_below_162`: below 162, either R or `hoist R` with
  canonical NEXT costs no more than the proposed assembly.
- `frontier_dominated_full`: for every size, an old-class canonical assembly
  satisfying **all unary laws** costs no more; at size >=162 use the known
  162. `reader162_fullReader` checks that reader's all-unary laws, using
  one symbolic eight-step head trace and the existing inductive `skip_self`
  theorem. `frontier_dominated` is the weaker two-probe version.
- `frontier_class_bound_138`: the widened class retains the **138-bit
  kernel-checked bound**.
- `frontier_162_of_full_reader_floor`: if every full independent reader has
  `r+4d >=46`, the widened class has size >=162.
- `frontier_optimal_iff_reader_floor`: the converse also holds. The 162 is
  optimal in this widened class **if and only if** the original all-reader
  weight-46 conjecture holds.
- `frontier_inherits_full_reader_floor`: the same transfer for **any**
  established reader floor, without an added bound on the proposed floor.

The old normal/two-arm NEXT class satisfies (P) (`next_frontier`), so it is genuinely
contained in the new class. Conversely the domination theorem supplies the
minimum comparison. Inheriting the recorded handwritten reader bound
`w>=30` also gives **146** for this wider class; that inheritance has the
same handwritten coverage dependency as the old 146 result. This lane does
not claim to have kernel-checked the complete 30 or 46 reader conjecture.

### Proof of the comparison

Three source inequalities, all checked in Lean, do the work:

```text
|E| >= 24 + r + q + F d,
F >= 2,
r >= 8 + 2d + 4f.
```

The first uses the opaque-knot theorem and the existing exact insertion
formula. The second follows because neither rigid p nor c can arise from
an input Church bit or fresh tail. For the third, a reader needs two leaves
owned by a nonlinear binder, f continuation leaves, its one hole, and at
least d source lambdas along the hole path. The source tree count gives the
claimed charge without normalizing anything.

The two old-class comparison sources cost exactly

```text
A = 116 + r + 4d,
B = 122 + r + d + f.
```

Suppose `|E|<162` but both A and B are larger than |E|.

- If F>=4, q>=92 already gives `|E|>=A`, a contradiction.
- If F=2, (P) gives q>=98. The two failed comparisons force d>=4 and
  f>=d+1>=5. Consequently `|E|>=32+q+4d+4f>=166`, a contradiction.
- If F=3, (P) gives q>=95. They force d>=4 and f>=2d-2>=6, hence
  `|E|>=32+q+5d+4f>=171`, also a contradiction.

No syntax inventory, reduction cap, or term enumeration is involved.

### What remains after this widening

Every `RigidNext` with q>=98 automatically satisfies (P). Thus a NEXT
that really improves the minimum over readers must be in one of these
unsettled regions:

```text
q <= 91;   or   F=2 and q<=97;   or   F=3 and q<=94.
```

This is `remaining_next_regions`, combined with the domination theorem.
It is a localization of the missing proof, **not an exclusion** of those
regions. A useful repaired target for full removal of H2 is now
`q>=92` together with `q+3F>=104`, rather than the false requirement F>=4.
Neither inequality is proved here for all arbitrary NEXT sources.

## 3. Explicit counterexamples to the proposed four-leaf argument

### Arbitrary source redexes

Let Q0 be canonical NEXT. Define

```text
Qlet = (lambda p c.Q0) p c.
```

The two local binders own all the occurrences inside Q0. The ambient
parameters occur just once each, in the two arguments. Kernel-checked:

```text
Qlet ->beta^2 Q0,
|Qlet| = 105,
F(Qlet) = 2.
```

`letBoth_laws` checks the rigid branch laws; `letBoth_price` checks the
literal source counts. The general `shareParameters Q` construction has
`|shareParameters Q|=|Q|+13`, F=2, and beta-reduces to Q for every Q scoped
in [c,p]. Its laws and source accounting are checked without enumerating Q.

### Normal source with a longer tag spine

Define closed branch abstractions by binding their displayed p,c names:

```text
Qfour = lambda b.b (lambda p c.T0) (lambda p c.T1) p c.
```

This source is beta-normal. Its tag has four arguments. Kernel-checked:

```text
Qfour K t ->beta^5 T0 t,
Qfour F t ->beta^5 T1 t,
|Qfour| = 113,
F(Qfour) = 2.
```

Thus dropping only the two-arm restriction already invalidates the
four-free-leaf conclusion. `tagFour_normal`, `tagFour_laws`,
`tagFour_price`, and `normal_four_captures_false` check this exactly.
It satisfies (P), so it cannot improve the minimum over readers.

### Failure of the fixed-reader formula

Starting with reader162, wrap its single j hole in six inert wrappers
`(lambda unused.X) I`. The reader beta-reduces back to reader162, so it
still satisfies every reader law, but its source price is now r=90,d=7.
With Qlet and the canonical knot:

```text
|E| = 24 + 90 + 105 + 2*7 = 233,
116 + w(R) = 116 + 90 + 4*7 = 234.
```

`same_reader_price_counterexample` checks these numbers and the two reader
probes; `deepReader_six_fullReader` also checks all unary laws.
`counterexample_reduces_to_162` checks reduction of the **complete
interpreter** to intL162, and `counterexample_is_interpreter` transfers its
full contract, including divergent source programs. The hand-materialized
.lam source is tied byte-for-byte to that term by `materialized_source_code`.

This changes the price for a fixed reader, not the minimum over readers.
`shared_next_dominated_below_162` proves that every hypothetical sub-162
assembly using complete c/p let-sharing is strictly larger than the
hoisted-reader canonical assembly. The general frontier theorem covers it
as well. In the actual 233-bit witness the inserted wrappers and lets simply
polish away.

## 4. A second widening that keeps the same-reader bound

**Theorem — kernel-checked.** Q may have arbitrary source redexes and
arbitrary tag positions, provided it admits a finite sequence of
`AdminBeta` contractions to an old-class normal/two-arm NEXT Q0. Each
contracted binder must be either:

1. vacuous, with arbitrary discarded argument; or
2. linear, and satisfy the exact index condition

   ```text
   (freeLeaves(argument)-1) * occDepth(binder,body)
       <= 6 + freeLeaves(outer references in body).
   ```

All contextual positions are allowed. The linear condition is automatic
when the argument has at most one free leaf, but also permits larger
arguments at shallow substitution positions. Untouched binders elsewhere
in Q may be nonlinear.

Every step preserves rigid laws, cannot increase wire length, and cannot
increase the free occurrence count of any parameter. Therefore the old
92-bit/four-leaf theorem applies backwards through the sequence:

```text
|Q|>=92, F>=4,
|E|>=116+r+4d, and |E|>=138.
```

`administrative_class_bound` is the assembly theorem;
`administrative_next_laws` establishes that its source obeys the rigid
laws. This is a proper source-normality relaxation, although it does not
remove the eventual two-arm normal-form condition. It does not cover the
nonlinear alias contractions in Qlet, or arbitrary normal longer-tag
spines; the price-frontier result handles those examples separately.

The wire condition is essential. This proof uses the exact
`linear_beta_delta` identity from `SelfintWireCost`; it does not infer
wire monotonicity merely from affineness.

## 5. Fully dropping H2: a weaker unconditional separated-class bound

**Theorem — kernel-checked.** With arbitrary `RigidNext Q`, no source
normality, no tag-use restriction, and no price-frontier hypothesis:

```text
|E| >= 47 + cost(R) + 2 depth(j) >= 67.
```

`unrestricted_next_assembly_lower` proves this for every opaque knot and
reader in scope. H1/H3/H4 and the absence of a stream capture stay in force.

The proof establishes F>=2, at least one nonlinear source binder, and a
live local capture in Q. The APP target duplicates its environment and has
a live capture; Church bits and the rigid tail cannot create either
property from a source lacking it. A live capture needs two live binders.
The p occurrence contributes at least one index bit. The general source
count inequality consequently gives q>=23. Reader depth charges give
`r+2d>=20`, completing the bound.

The two-capture floor is sharp, by Qlet/Qfour. The 23-bit NEXT floor and
67-bit assembly floor are weak bounds, not sharpness claims. They are the
fully unrestricted source theorem achieved here; q>=92 remains open.

### Knot multiplicity under fully unrestricted H2

**Theorem — kernel-checked.** Let k be the number of source holes in the
opaque knot. Then

```text
|E| >= 18 + k(26+q) >= 18 + 49k.
```

Consequently a sub-162 assembly has either k=1, or k=2 and q<=45. Three
holes already cost at least 165. In particular, any hypothetical sub-162
with q>=46 necessarily has one knot hole. This leaves H1's opacity
assumption in place; it does not constrain knotless recursion.

Proof: the knot costs at least `18+2k`, and each of its k closed fills costs
`4+r+q+Fd >=24+q` since `r+2d>=20` and F>=2. This gives the first inequality;
q>=23 gives the second. At k=2, `18+2(26+q)<162` implies q<=45.
Formal names: `unrestricted_knot_multiplicity`, `sub162_knot_localization`.

## 6. Complete interpreter ledger and verification

Only one complete source was materialized. It is a proof witness built by
beta-expanding the known algorithm, not a new interpreter design.

| Source | Written | Polished | Exact checks |
|---|---:|---:|---|
| `deep_shared_233.lam` | 233 | 162 | `233 bits  ok=667 skip=1 fail=0`; polished: `162 bits  ok=667 skip=1 fail=0` |

`deep_shared_233.blc` is its wire; `deep_shared_233.optimized.{lam,blc}` is
the actual polished rendering. `polish.log`, `source.json`, and
`verification.json` record the results. `check_artifacts.py` also checks
the source/wire/Lean identity chain and records the final Lean check in
`lean.log` and `proof_check.json`. The unchanged repository
`polish.py` workflow was used with a lane-local runtime shim: two workers,
a frozen binary, temporary files inside the lane, and a 100-second cap on
each subprocess invoking blam. No timeout occurred. `build_counterexample.py`
constructs exactly this one derivation; it performs no term search.

The frozen executable SHA-256 is
`00883f147c7128a1642f323920deef23f0af9c8b742dadb3c0f30cf5478bfaa2`.
The final Lean check takes a few seconds using two threads; its measured
duration is in `proof_check.json`. Only fixed reductions
and arithmetic evaluations are computed in the proofs. The finite battery
is used as a supplemental check, not as the all-program argument.

Reproduce the proof from `lean/`:

```sh
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
  lean -j2 /Users/a9lim/Work/blam/tmp/round4/widen/Widen.lean
```

Or reproduce the proof plus source/wire audit from the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/widen/check_artifacts.py
```

Reproduce the source and its polish from the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/widen/build_counterexample.py
PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1 \
  PYTHONPATH=/Users/a9lim/Work/blam/tmp/round4/widen/runtime \
  TMPDIR=/Users/a9lim/Work/blam/tmp/round4/widen/scratch \
  RAYON_NUM_THREADS=2 \
  python3 tools/self-interpreter/polish.py tmp/round4/widen/deep_shared_233.lam
```

## 7. Failed routes, remaining hypotheses, and next proof step

- **The requested separate minima q>=92 and F>=4:** F>=4 is false;
  trying to prove it would obscure real parameter-sharing sources.
  Normalizing first also loses source capture and wire information.
- **The same `116+w(R)` inequality after arbitrary H2 removal:** false for
  a fixed R. Optimization over readers is the correct comparison, and
  hoisting makes the new source-price frontier sufficient.
- **Full arbitrary-source q>=92:** not proved or refuted. The live source
  reports and these constructions provide no counterexample below 92.
- **H3:** not removed. The round-3 raw-tail and whole-prefix results keep
  uniform lookup/constructor interfaces; they do not establish a lower
  bound over all representation triples or body-dependent ABS operations.
  No sum of their local module bounds was used here.
- **H1:** not removed. The parent-replay witness prevents deriving the
  first-child identity cut from the public contract. No replacement cut
  theorem was obtained.

The most useful next local target is to establish the pair
`q>=92` and `q+3F>=104` for arbitrary stream-independent rigid NEXTs, or
construct a violation in the three remaining regions. The second inequality
is a source price at embedding depth three, so it retains the cost of
sharing rather than forbidding sharing by assumption. A residual/origin
argument that prices small programs generating both rigid branch outputs
could prove it; a proof by simply pruning the beta-normal form cannot.

This lane has not solved 162-optimality. It has widened the class without
changing its minimum, located the remaining H2 difficulty, and replaced a
false necessary condition by a checked sufficient tradeoff.

## 8. Coordinator follow-up: unrestricted cheap-source exclusion

**Status: partial H2 closure, not the requested 92/104 frontier theorem.**
The new theorem `rigidNext_at_least_32` excludes **every arbitrary-source
RigidNext with q<=31**, without a term sweep, fuel bound, normalization
assumption, or restriction on tag arity. It is kernel-checked in `Widen.lean`.
It retains the scope `[c,p]` and the two canonical rigid branch laws from
`RigidNext`. H1, H3, and the independent reader contract are unchanged.

### Three live binders and the 32-bit floor

The proof introduces `localIndex d Q`, the sum of de Bruijn indices on
leaves bound by lambdas inside the source. It proves these facts:

1. A source satisfying the rigid branch laws contains both parameters,
   a nonlinear binder, and an internal live capture (the previous lemmas).
2. It needs **at least three live source binders**. Substituting a term
   without internal live capture for a global preserves absence of internal
   live capture. With at most two live source binders, a live weak-head
   contraction leaves at most one live binder in both body and argument,
   so it cannot preserve the required capture. An erasing head contraction
   strictly shrinks the source. For a lambda source, its tag binder must be
   live (otherwise the distinct branch normal forms coincide); consuming
   that binder leaves the same contradiction. Strong induction on wire
   handles all non-lambda sources. The formal proof uses confluence to
   preserve `RigidNext` across every selected contraction.
3. An internal live capture contributes at least one **local** index bit,
   separate from the parameter occurrences. In frame `[c,p]`, the exact
   index identity is

   ```text
   X(Q) = localIndex(0,Q) + occ(p,Q) + depthSum(c,Q) + depthSum(p,Q).
   ```

   Thus X>=2 in general and X>=4 for a lambda source.
4. The source count inequality
   `4*nonlinear + 6*live + 4*F + X <= q+2` gives q>=30 in general and
   q>=32 for a lambda source. A hypothetical source below32 has exactly
   one nonlinear binder and three live binders. Its weak-head step either
   consumes the sole nonlinear binder, removes a live binder, or erases
   code and strictly decreases q. The first two contradict the uniform
   structural invariants; the last invokes strong induction. A stuck
   non-lambda source is rigid, incompatible with the two branch outputs.

Formal names: `separated_global_subst`, `rigidNext_three_live`,
`parameter_index_identity`, `rigidNext_index_bound`,
`one_nonlinear_weakStep`, `rigidNext_at_least_32`.

This excludes the interval 0..31 in the first requested region. The
remaining frontier gaps are 32<=q<=91, F=2/q<=97, and F=3/q<=94 (subject to
the same lower floor). The following follow-up analysis concerns how to
close those gaps; it does not promote this floor to q>=92.

### Assembly and knot consequences

The same hypotheses as `unrestricted_next_assembly_lower`, with no H2
source-shape premise or numerical price-frontier premise, now give

```text
|E| >= 56 + cost(R) + 2 depth(R) >= 76,
|E| >= 18 + k(26+q) >= 18 + 58k.
```

These are kernel-checked (`unrestricted_next_assembly_lower_76`,
`unrestricted_knot_multiplicity_58`). They supersede the 67/49 figures in
the initial report for this follow-up. Three opaque knot holes cost at
least 192 bits. A sub-162 assembly has one hole, or exactly two holes and
**32<=q<=45** (`sub162_knot_localization_32`). This is a bound for the
stated assembled class, not a new unconditional bound on all interpreters.

### Complete single-parameter alias families

**Theorem — kernel-checked.** For every old normal/two-arm `Next Q0`, both
complete single-parameter aliases satisfy the repaired price frontier:

```text
shareC(Q0) = (lambda c'. Q0[c'/c,p/p]) c,
shareP(Q0) = (lambda p'. Q0[c/c,p'/p]) p.
```

Both satisfy `RigidNext`, by an explicit beta contraction. In de Bruijn
notation `shareC Q0 = app (lam (shift 1 1 Q0)) (var 0)` and
`shareP Q0 = Round3Reader.hoist Q0`. The exact first price is

```text
q(shareC Q0) = q(Q0) + occ(p,Q0) + 6 >= 99.
```

For `shareP`, rebinding swaps the two free parameter indices. Applying the
old unbounded `merged_lower` induction to this renamed source still gives
92 bits; only the four fixed, renamed target pairs are evaluated. Adding
the outer application, lambda, and p leaf gives at least 99 bits. Both
aliases have at least two free leaves by their rigid laws, hence satisfy
`q>=92` and `q+3F>=104`. Formal names: `next_rebound_bits`,
`shareC_next_frontier`, `shareP_next_frontier`.

For the canonical NEXT the exact kernel-checked prices are:

| Source operation | q | F | q+3F |
|---|---:|---:|---:|
| No alias | 92 | 4 | 104 |
| Alias all c occurrences | 100 | 3 | 109 |
| Alias all p occurrences | 99 | 3 | 108 |
| Alias both parameters | 105 | 2 | 111 |

The two-parameter family was already covered in the initial report.
These are complete families over every `Next Q0`, not only checks of the
canonical term. They are not a classification of arbitrary copying redexes:
an argument may be an open function, and sharing may occur in a proper
subterm or at several nested sites.

### Minimum-counterexample route: valid reduction and remaining gap

**Kernel-checked reduction.** Put `J_s(Q)=q+sF`. For each s, there exists
a `RigidNext` of minimum J_s, breaking ties by the fewest source lambdas.
If any Q violates a proposed J_s lower bound, such a minimum also violates
it (`minimum_counterexample`). Use s=0 and s=3 separately for the two
requested inequalities; one minimizer is not presumed to minimize both.

Every such minimum has **no `AdminBeta` redex in any context**. Each
administrative contraction weakly decreases both q and F and strictly
reduces the number of lambdas. Consequently:

- No erasing redex remains anywhere.
- Any remaining linear redex `(lambda x.b) a` must have at least two
  free argument leaves and must satisfy the strict inequality
  `(F_a-1)*D > 6+G`, where `D=occDepth(0,b)` and `G=freeLeaves(1,b)`.
  Here F_a includes references to enclosing local binders, as required by
  the wire-index balance; it is not automatically the whole NEXT's F.

These are `MinimumRigidNext.no_admin`, `.no_erasing`,
`.linear_index_tax`, and `.linear_captures`. Tie-breaking makes the
linear inequality strict. This applies equally to s=0 and s=3 because a
linear contraction preserves free occurrences and an erasing one cannot
increase them.

For a root redex in frame `[c,p]`, with `m=occ(0,b)`, the exact additional
source-price accounting is also kernel-checked (`root_beta_price_delta`):

```text
Delta J_s = (m-1)*q_a + (F_a-1)*D - 2m - 4 - G + s*(m-1)*F_a.
```

At depth d inside a context, the last factor's F_a must count only
argument leaves free outside that context (`freeLeaves d a`); the wire
part still charges every free leaf of the local argument. The contextual
extension of this displayed exact formula is a direct accounting
observation, not an additional formal theorem in this file. The formal
no-admin and linear-tax results already quantify over all contexts.

The missing step is substantive: **minimality does not imply normality,
and it does not imply that the surviving nonlinear arguments are c/p
aliases.** Linear index-hoisting redexes can remain. A fixed, kernel-checked
example is `(lambda x u1 u2 u3 u4. x) (c c c)`: 28 bits before contraction,
30 afterward, with three free leaves on both sides. This example is not a
RigidNext; it shows why the proposed normalization move needs a semantic
argument. Longer tag spines also remain outside the old normal/two-arm
classification even when no source redex remains.

Thus the minimum-counterexample method is now set up and its legitimate
cleanup is formalized, but the claimed exhaustive alternatives are not
proved. The remaining disjoint numerical regions are

```text
32 <= q <= 91;
92 <= q <= 97 with F=2;
92 <= q <= 94 with F=3.
```

A plausible next proof target is a source-origin argument charging the
normal continuations against **all** sharing sites and their index movement,
including code that reduces only after the Boolean selects a branch. The
current lemmas do not supply that argument. H2 is not fully closed; H3 was
not pursued under the follow-up's conditional priority. No new complete
interpreter or sub-162 candidate was constructed during this follow-up.

### Follow-up verification

The combined `Widen.lean` is checked through the same
`check_artifacts.py` command from section 6, using two Lean threads and a
110-second timeout. It audits 76 printed theorem dependency sets, requiring
only `propext`, `Quot.sound`, and `Classical.choice`, and rejects local
proof holes or extra axioms. `lean.log` and `proof_check.json` record the
final result and current source hash. The original 233-to-162 artifact
identity chain is rechecked; its battery was not rerun because the complete
interpreter source is unchanged. This follow-up performed no term search.
The section-8 fixed evaluations are the four renamed target pairs, the
two canonical single-parameter alias prices, and the linear-growth example.
Section 9 adds its four fixed inverse-cut target pairs and explicit NEXT
witnesses; the universal exclusions are structural proofs.

## 9. Source pricing for arbitrary pruning contexts and one explicit let

**Kernel-checked result: an unbounded source family satisfies the entire
frontier `q>=92, q+3F>=104`.** The family permits arbitrary repeated
Boolean tests, choices in function position, one designated sharing let
anywhere inside the tag binder or before it, and any preceding sequence
of cost-safe administrative contractions. Its exact branch-projection
condition is stated below. This closes `q=32..91` for that family and also
excludes its two low-capture frontier regions. It does **not** establish
`q>=92` for arbitrary `RigidNext` sources.

The source bounds are:

| Source form | Required projection condition | Proven bound |
|---|---|---:|
| `lambda b.B`, structural Boolean pruning | Both projections are beta-normal | `q>=92`, `F>=4` |
| `lambda b.B`, one designated let anywhere in B | Both projections are beta-normal after that let substitution | `q>=98` |
| `(lambda h.lambda b.B) A` | Both projections of B are beta-normal after substituting A for h | `q>=99` |

The last two bounds use the already proved `F>=2` to obtain
`q+3F>=104`. No reader floor or reader source-cost claim is assumed. All
three numerical bounds are attained: canonical NEXT is 92 bits; replacing
its initial p with `(lambda x.x) p` gives the 98-bit `identityNext`; and
`shareP canonicalNext` is a 99-bit exterior-let example. Their rigid laws,
source forms, and sizes are kernel-checked in `OneLet.sharp_witnesses`.
These are NEXT components, not new complete interpreters.

### Exact family and the semantic bridge

`OneLet.Plain j B U V` is an inductive relation recording both Boolean
projections while retaining the tag's de Bruijn slot j. Its constructors
are:

- A variable other than the tag projects to itself in both branches.
- Lambda and application project structurally, raising j under a lambda.
- A complete selector `b S T` projects to the true projection of S and
  the false projection of T.

The application constructor is unrestricted: a selector can occupy
function position and receive further arguments. Source size, depth,
capture count, number of selectors, and argument multiplicity are all
unbounded. Bare or partially applied tags are not admitted by this
relation. `Plain` is not itself a source-normality predicate: dead code
can contain beta redexes, and live application nodes can create redexes
in a projection. It is the **final projected normality hypothesis** that
rules out a need to contract such live redexes.

`OneLet.Once` adds one designated let `(lambda h.B) A`. Its body and
argument have `Plain` derivations; the two projections are the literal
capture-avoiding substitutions `B0[A0/h]` and `B1[A1/h]`. The let may occur
under arbitrarily many lambdas, in either side of any application, or in
either arm of any selector, including an arm discarded by a projection.
Other source redexes may be present in discarded code; the projection
performs no live beta contraction beyond this one designated substitution.

`OneLet.Covered` is exactly the union of the three rows of the table, with
their projected-normality hypotheses. The theorem `next_covered` embeds
every old `Next` into it. The widening is strict: the 102-bit normal source
`headChoiceNext` replaces the initial p with `b p p`, followed by the
original continuation argument. It satisfies `RigidNext` and `Covered`,
but fails the old two-arm condition because that tag spine has three
arguments (`headChoice_laws`, `headChoice_covered`, `headChoice_not_old`).

`Plain.semantic`, `Once.semantic`, and `outside_semantic` prove actual beta
reductions after substitution of either Church Boolean. Each projected
tree has no remaining tag occurrence. Normality, scope preservation, the
rigid branch laws, and confluence then force it to be precisely

```text
shift_1(T_i)  or  shift_1(lambda z. T_i z).
```

The single explicit eta-expanded alternative comes from applying a normal
function to the fresh rigid suffix. It does not replace the contract with
eta equality. This is `OneLet.rigid_projection`, using the existing
`normal_applied_fresh` theorem. Consequently there are only four fixed
pairs of output trees to price, despite the unbounded source family.

### Completeness of the source charge

The proof prices the original source rather than adding the sizes of
normal-form obligations. For any source redex with a used argument,
`arguments_complete` proves that its argument is obtained by extruding a
subtree of the substituted result. The partial inverse `unshift` rejects
subtrees that refer to a binder they would cross. The proof is structural
in the original body and makes no bound on occurrence depth or count.

For a fixed candidate argument a and target t, `inverse` lists every body
b with `b[a/h]=t`: an occurrence equal to a can be cut to h, or its outer
constructor can be rebuilt recursively. `inverse_complete` proves this
contains every such b, including unused-hole bodies. Together these give
`cuts_complete`. Thus the finite cuts are complete for the stated source
substitution problem; they are not a sample of short source programs.

The generalized pure merge recurrence prices a source jointly from its
two projections. It can choose a full Boolean selector, a shared lambda,
a shared application, or a shared equal variable. `Plain.merged` proves
its lower bound by induction on every source derivation, for both wire
bits and ambient captures.

At a let whose argument is used in both projections, the decisive charge
is

```text
4 + merge(argument_0, argument_1) + merge(body_0, body_1).
```

The 4 is the original application plus lambda. **The source argument is
charged exactly once** through its paired merge; repeated substitution
occurrences incur no second source charge. `root_lower` proves this case
and the three erasure cases. For one-sided use it charges the used
argument projection and merges the bodies; for no use it uses the
minimum two-bit source argument. `Once.single` supplies the one-projection
bound needed when a Boolean selector discards the branch containing the
let. `Once.merged` then extends the root charge through arbitrary source
contexts.

For a let outside the tag binder, its one argument cannot depend on b.
`outside_lower` therefore uses the **same** candidate argument in both
inverse substitutions, with the correct shift across the Boolean binder.
The semantic proof separately checks the substitution commutation;
assuming that commutation without shifting would give a different class.

`fixed_target_values` kernel-checks the exact recurrence values below.
The first two bit columns price the body inside `lambda b`; add two bits
for that outer lambda. The exterior column already prices the whole Q.

| Eta-expand T0? | Eta-expand T1? | Pure body | Pure captures | One-let body | Exterior whole Q |
|---|---|---:|---:|---:|---:|
| No | No | 90 | 4 | 96 | 99 |
| No | Yes | 106 | 5 | 110 | 112 |
| Yes | No | 105 | 5 | 110 | 113 |
| Yes | Yes | 101 | 4 | 103 | 110 |

These are conservative recurrence values; there is no assertion that
every value in every eta case is attained. The overall 92/98/99 bounds
are sharp by the explicit witnesses above. `one_let_bound.py` and
`one_let_bound.json` provide a readable independent implementation of
the fixed-target calculation. The source theorem and the displayed table
do not trust that Python implementation: both are checked in Lean.

### Consequence and exact remainder

The main reusable entry points, all in namespace
`Blc.SelfintWiden.OneLet`, are:

```text
plain_next_price       : RigidNext + Plain + normal projections -> NextPrice
once_next_bits         : RigidNext + Once + normal projections -> q >= 98
outside_next_bits      : RigidNext + exterior Plain + normal projections -> q >= 99
covered_frontier       : RigidNext Q -> Covered Q -> FrontierPrice Q
covered_admin_frontier : RigidNext Q -> AdminBetas Q Q0 -> Covered Q0 -> FrontierPrice Q
```

The last theorem allows arbitrarily many previously certified
administrative contractions before the covered endpoint; wire bits and
free captures cannot increase along them. It plugs directly into the
existing reader-hoisting/dominance theorem, so the widened family inherits
the same minimum-over-readers comparison as the original class.

The remaining source region is precise: a counterexample with
`32<=q<=91` must have **no** endpoint Q0 reachable by `AdminBetas` for which
`Covered Q0` holds. The same exclusion applies to `q=92..97,F=2` and
`q=92..94,F=3`. The no-administrative-redex minimum construction from
section 8 still applies. No unconditional numerical cutoff above 32 has
been proved for the remaining sources.

The full per-obligation summation remains unjustified because a shared
function can be applied at its use sites, consume surrounding syntax,
and generate several normal-form obligations. Its source argument then
need not survive as an extrudable subtree of the target. The inverse-cut
certificate closes sharing whose projections are normal immediately
after substitution; it does not close arbitrary function sharing, live
beta reductions created by Boolean selection, multiple interacting
non-administrative lets, or bare/partial tag uses. Some such syntax may
still admit administrative cleanup, but no theorem here classifies all
of it. In particular, **this is not a proof for every source that is
beta-normal outside one let**: that description alone does not ensure
normality after the let is substituted.

A further global proof needs to price residual applications of shared
functions, with the substitutions and capture movement at their use
sites, or prove that every cheaper minimum can avoid them. The minimum
index-tax lemma alone supplies neither assertion. This is the remaining
mathematical obstruction, not a finite search left unfinished.

### Verification and artifacts

All work stayed under `tmp/round4/widen/`; the reader lane was read-only.
There were no source-term sweeps, external consults, tracked-file edits,
commits, dependency changes, or new complete interpreter candidates.
The Lean check uses two threads and the existing 110-second cap.
`check_artifacts.py` now audits 76 theorem dependency sets, including the
new universal source bounds, cut completeness, strict widening example,
and sharp witnesses. `proof_check.json` records its measured runtime and
source hash; the final pass took 12.0918 seconds. `lean.log` contains
the kernel-check output, with no errors or warnings. The unchanged
233-to-162 interpreter artifact chain is also rechecked by that script.
The full one-let source certificate is assembled from
`one_let_section.lean` into `Widen.lean` by `assemble_onelet.py`; the latter
is the standalone checked deliverable.
