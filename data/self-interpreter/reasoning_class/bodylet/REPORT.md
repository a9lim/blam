# Bodylet, wave 5: nonlinear stream-body lets

**Result:** the nonlinear branch is closed, with the evidence boundary below. No globally minimum reader of weight at most 45, ordered by `(weight, source lambda count, hole depth)`, has

    R = λs. ((λx. B) A) C1 … Ck,

with its unique source hole `j` at depth 1 and `x` used two, three or four times. The imported bodyredex reductions say these are all remaining nonlinear first-body lets: higher multiplicities and lambda-free arguments were already excluded.

The proof combines handwritten source reductions and completeness arguments, complete finite checks in 52 semantic cells, and individual Lean refutations of **all 22,660 normalizer exceptions**. It is **not** one kernel-checked enumeration theorem. The optional **linear let with a nested head redex in B remains open in this lane**. No unconditional 46-bit reader bound or 162-bit interpreter optimality follows from this result alone.

## 1. Complete interpreters built

None. No reader survived even the zero/unary-one probes, so no new interpreter was spliced, polished or submitted to the interpreter battery. There is no new bit count or battery line to report.

The checker was positively controlled on the existing weight-46 reader, a weight-59 reader with a nonlinear identity handler, a weight-62 reader containing source Ω, and the weight-84 reader that shares its hole nonlinearly. Both independent normalizers accepted zero and unary inputs 1 through 8 for all four. These are reader controls, not new interpreter battery claims; see `validation.json`.

## 2. Exact identities and their proofs

### 2.1 Source price and first-let contraction

Price the one source `j` as zero and charge its enclosing lambda separately. Write

- `a = cost(A)` in frame `[s,c]`;
- `b = cost(B)` in frame `[x,s,c]`;
- `p = Σ(2 + cost(Ci))` in frame `[s,c]`;
- `m = occ_x(B)`, `M = Σ depth_B(x occurrence)`;
- `s_A,c_A,s_B,c_B,c_C` for source occurrence counts, with `c_C` summed over the pending forest.

The unique hole is outside `B`, since it has depth 1. Exactly

    w(R) = 10 + a + b + p.

The 10 is the stream lambda (2), displayed lambda/application (4), and hole-depth tax (4). `Prices.source_price` proves the corresponding identity in the repository's wire/weight convention; changing the unique hole from its wire price to zero gives the displayed expression.

Also

    b ≥ 4m − 2 + M + 2 L_B,
    a + M + 2 L_B + p ≤ 37 − 4m.

Proof: a term with `V` leaves has `V−1` applications, so `b=2L_B+4V−2+indexSum`; `V≥m`, and the x occurrences contribute exactly M to that sum. These counting inequalities are handwritten and implemented by constructor recurrences, not installed as Lean axioms.

When `j` is pending, contracting the displayed let changes weight by

    Δ = (m−1)a + (s_A+c_A−1)M − 4 − 2m − s_B − c_B.

Each x-use receives a copy of A, raised by that use's depth; removing x's binder saves one bit on each other outward B leaf. This is the existing `SelfintWireCost`/`SelfintSourceCost` exact beta price. Minimality requires Δ≥0. Here `m≥2` and A contains a lambda, so a zero-weight change does not lower the source lambda count.

When `j` is in A, contraction may copy j. Contract and **hoist all copies to one fresh root binder** instead. The exact weight change is

    Δhoist = (m−1)a + (s_A+c_A)M + m − 4 − s_B + m c_A + c_C.

It must also be nonnegative. The resulting source still has one hole. No argument through a beta-normal form is involved. The lambda-count change is `(m−1)L_A`, positive in these nonlinear cells.

### 2.2 Arbitrary local depth-one hole lets

The same contraction/hoist calculation works for a local redex `(λy.D) E` anywhere on the depth-one hole path. Put `u=occ_y(D)`, `M_D=Σdepth(y)`, `e=cost(E)` with its j priced zero, and let `c_out` count all c leaves outside that redex. Then

    Δlocal = (u−1)e + (s_E+c_E)M_D + u − 4 − s_D + u c_E + c_out.

`Prices.local_hoist_price` kernel-checks this in an arbitrary `Context` at depth 1, under scope, unique-hole, depth and argument-hole hypotheses. `Prices.minimum_local_hoist` derives nonnegativity for a minimum reader. The formal wire expression uses `wire(E)−4`, equal to e here.

Its source lambda-count change is `(u−1)L_E`. If this is zero, equality of weights and lambda counts would leave a smaller hole depth (0 rather than 1), so lexicographic minimality requires Δlocal≥1. This tie argument and its use in the inventory are handwritten; the exact weight identity and nonnegative consequence are in Lean.

For a j-free local redex, the ordinary exact beta-price inequality is imposed, and equality is allowed only when

    (u−1)L_E − 1 ≥ 0.

Erasing redexes are impossible in a minimum. These conditions apply to every syntactic redex, not just the displayed one.

### 2.3 Local let sinking

If every occurrence of a let variable lies in one application child, move the let into that child. The saving is exactly the number of outward variable leaves in the sibling, because those leaves no longer sit under the let's binder. Repeat down the unique child containing all uses and add the savings.

`Prices.local_sink_price` kernel-checks the general `AppContext` price at any ambient depth; the repository's sink/join results supply beta equivalence. A positive total saving is forbidden. In particular, when B is s-headed, at least two of its operands must contain x. This is a source statement and remains valid with arbitrary internal redexes.

For lambda-headed B, exchanging the first two independent binders and their arguments,

    ((λx y.D) A) C  =β  ((λy x.D[swap]) C) A,

changes weight by `occ_y(D)−occ_x(D)`, preserving lambda count and hole depth. Thus a minimum needs `occ_y(D)≥m`. The exact price and join were already kernel-checked in bodyredex's `Followup.lean`; this lane imports them. No pending operand at all would leave a lambda at the zero output and is rejected.

### 2.4 Growing-helper divergence

A useful new generic divergence theorem closes the last 16 difficult exceptions. For arbitrary ambient term lists W,T,S define capture-avoiding expressions

    G_W(X) = λy. X y W,
    A_T    = λx. x G_W(x) T.

Then

    G_W(A_S)  →β*  A_(S ++ W),
    A_T A_S   →    A_S G_W(A_S) T
              →β*  A_S A_(S ++ W) T.

A finite weak-head clock strictly decreases on the first head step, cannot increase under arbitrary beta reduction, and cannot increase when trailing operands are removed. Strong induction on that clock therefore proves that **A_T A_S, with any further pending operands, has no beta-normal form**, for all W,T,S. `Grow.lean` proves the shifting/substitution identities and this theorem; `Residual.lean` connects the exact 16 source readers to it. No bounded-growth extrapolation is used.

`Special.lean` also proves two arbitrary-payload recurrences. With D the body under the two displayed binders:

    P_D = λu v. v D v:  P_D t P_D →² P_D D[u:=t,v:=P_D] P_D;
    Q_D = λu v. u u D:  Q_D Q_D t →² Q_D Q_D D[u:=Q_D,v:=t].

Both have infinite weak-head clocks, by the same induction. These cover four and sixteen exceptions respectively. Capture avoidance is explicit in the Lean definitions.

## 3. Exclusion, completeness and checks

### 3.1 Exact hypotheses and inherited results

The source is a reader in the separated-class sense: scope `[c,j]`, one source j, and both rigid reader laws for every unary length. It is globally minimum in the order `(w,L,depth)`, has `w≤45`, hole depth 1, and the displayed first-body let. The main new exclusion assumes `m∈{2,3,4}` and a lambda in A; bodyredex §§3–5 establish those preliminary reductions for the nonlinear branch.

The inventory also imports the current class-bound exclusions of a source `s I` anchor anywhere, a literal `(λa.D) j` parent, and closed transport `Y j`. The latter transport filters do not change the final counts after the other local conditions. Their evidence status is the one in the live class-bound and zerolam reports; they are not silently promoted to new Lean theorems here.

The types lane's shared-let split identity needs disjoint role-support hypotheses that this general branch does not supply. It contributes no unconditional numeric cut in this inventory. NeededHead's extra-use conclusion is respected, but does not by itself exclude an x-headed nonlinear B.

### 3.2 Structural and semantic cuts

A source c-headed B fails zero immediately. For x-headed B, c/j-headed A fails zero; so does a lambda chain whose eventual source head is c. A still-unconsumed lambda prefix cannot equal `r j`, and consuming it exposes a rigid c head. The local sinking and binder-exchange restrictions of §2 apply to every remaining source.

Five cells are over the term cap after static price restrictions. They are reduced compositionally **before** complete source checking; no over-cap source cell was split arbitrarily into batches.

1. **x-headed B, j in A.** Since m≥2, B passes at least one argument to A. On zero, A must have a lambda weak head or bare r; a different rigid head persists, and r already given an operand would finish with at least two operands. Every helper cutoff is retained.
2. **s-headed B, j in A.** A's zero weak head cannot be c, an applied j, or r with at least two operands. Every residual j in any copy is shielded by that rigid spine: beta reduction can erase the whole copy, but cannot extract its interior j as the bare argument in `r j`. The context is j-free. Lambdas, bare j, and r with zero or one operand are retained. This is a handwritten extension of the rigid-shielding invariant in `loop/Shield.lean`, not a newly kernel-checked contextual theorem.
3. **j pending, x-headed B.** If A's zero HNF is `λ^h.r args(q)`, receiving k total operands requires `k≥h` and `q+k−h=1`. A bound-variable HNF requires `k≥h`; unknowns impose no constraint. This is an exact necessary head/arity interface, not an assumption that A normalizes fully.
4. **c and j both pending.** The pending forest costs at least 7. This leaves only 7,898 `(A,B)` pairs before attaching it. Their zero and unary-one HNF interfaces constrain the number of pending operands; unknowns are retained. The unary target is rigid c with two operands.

For the largest helper catalog, a prior handwritten grammar cut is needed: c and j are bad zero heads; lambda preserves this property; an application of a bad function is bad; and `s H` is bad when H is bad, since `Z H → H K r`. Such a helper cannot head an x-headed reader regardless of appended operands. A constructor recurrence records this boolean property without materializing the discarded helpers.

| Cell `(m, B-head, j-location, first-c-location)` | Static sources | Complete helper/component check | Final sources |
|---|---:|---:|---:|
| `(3,x,A,A)` | 113,064 | 23,481 helpers | 4,605 |
| `(2,x,A,A)` | 557,062 | bad-head grammar reduces 266,251 helpers to 85,258 | 32,061 |
| `(2,s,A,A)` | 116,083 | 36,000 helpers | 2,246 |
| `(2,x,C,A)` | 179,475 | 33,423 helpers; 40,353 components including bodies/forests | 51,630 |
| `(2,x,C,C)` | 199,029 | 7,898 pre-pending pairs | 81,834 |

For the last cell, a helper-only interface initially left 136,718 sources; that source inventory was **not checked**. The stronger pair cut replaced it. The pair check plus final source check together cover 89,732 terms in one bounded run.

### 3.3 Why the inventory is complete

`minimum.py` counts arbitrary de Bruijn source trees by exact cost and features: per-variable occurrence/depth vectors, lambda count, source head, leading-lambda metadata, counts of root operands containing each variable, let-sinking charge, and the external c count required by nested hole-hoist inequalities. It generates variable, lambda and application constructors recursively; it allows arbitrary internal redexes. A j-bearing component has no lambda above j. The pending forest is generated recursively with its exact application costs and exactly one j overall.

The price inequality bounds A, B and the pending forest. Each source has a unique displayed spine decomposition and one cell: multiplicity; B head `x`, `s`, lambda or redex; j in A or pending C; and the first nonempty c region in order A,B,C. There is no uncounted c-free reader (unary output needs c), or s-free reader (zero output needs the fresh rigid r).

`check.py` reconstructs each counted Cartesian product, asserts the exact count per feature block, exact source price, and absence of duplicate sources. The helper and pair cuts restrict products by necessary semantic interfaces only. All their cutoff helpers remain eligible. `zero_safe.py` separately reconstructs its boolean-count recurrence.

Every final source is tested against rigid zero and then unary-one outputs. Successful reductions or persistent rigid mismatches establish rejection; a cycle report, fuel/node limit or recursion exception is only an **unresolved record** until separately certified. No survivor reached a need for a higher unary probe.

The source grammar completeness argument and the ordinary Python reductions are **handwritten/computer-checked**. They are not represented by a Lean theorem quantifying over every source of weight ≤45. All unresolved source records, however, have exact-source kernel-checked refutations.

### 3.4 Final cells

`C` in the location columns denotes the whole pending forest; “first c” means A if c occurs there, otherwise B if it occurs there, otherwise C. The internal cell encoding uses `0=x`, `1=s`, `lam=λ`, and `redex=β`. Counts below are after the compositional cuts, so these are the actual complete checks. Every survivor count is zero.

| m | B head | j | first c | Sources | Lean exceptions |
|---:|:---:|:---:|:---:|---:|---:|
| 2 | x | A | A | 32,061 | 86 |
| 2 | x | A | B | 57,740 | 0 |
| 2 | x | A | C | 41,809 | 19 |
| 2 | x | C | A | 51,630 | 2,890 |
| 2 | x | C | B | 50,265 | 127 |
| 2 | x | C | C | 81,834 | 14,249 |
| 2 | s | A | A | 2,246 | 0 |
| 2 | s | A | B | 28,098 | 0 |
| 2 | s | A | C | 10,059 | 0 |
| 2 | s | C | A | 28,139 | 4 |
| 2 | s | C | B | 3,936 | 1 |
| 2 | s | C | C | 8,368 | 15 |
| 2 | λ | A | A | 1,880 | 0 |
| 2 | λ | A | B | 420 | 0 |
| 2 | λ | A | C | 1,730 | 0 |
| 2 | λ | C | A | 4,886 | 0 |
| 2 | λ | C | C | 720 | 0 |
| 2 | β | A | A | 1,365 | 0 |
| 2 | β | A | B | 669 | 0 |
| 2 | β | A | C | 110 | 0 |
| 2 | β | C | A | 257 | 0 |
| 2 | β | C | B | 28 | 0 |
| 2 | β | C | C | 28 | 0 |
| 3 | x | A | A | 4,605 | 4 |
| 3 | x | A | B | 24,295 | 0 |
| 3 | x | A | C | 8,226 | 2 |
| 3 | x | C | A | 37,904 | 497 |
| 3 | x | C | B | 36,507 | 687 |
| 3 | x | C | C | 75,243 | 2,959 |
| 3 | s | A | A | 31,310 | 0 |
| 3 | s | A | B | 11,176 | 0 |
| 3 | s | A | C | 2,720 | 0 |
| 3 | s | C | A | 12,814 | 20 |
| 3 | s | C | B | 3,378 | 56 |
| 3 | s | C | C | 3,730 | 170 |
| 3 | β | A | A | 294 | 0 |
| 3 | β | A | B | 46 | 0 |
| 3 | β | A | C | 28 | 0 |
| 3 | β | C | A | 132 | 0 |
| 3 | β | C | C | 46 | 0 |
| 4 | x | A | A | 20,059 | 0 |
| 4 | x | A | B | 6,235 | 0 |
| 4 | x | A | C | 1,331 | 0 |
| 4 | x | C | A | 7,196 | 78 |
| 4 | x | C | B | 16,985 | 371 |
| 4 | x | C | C | 20,666 | 348 |
| 4 | s | A | A | 5,949 | 0 |
| 4 | s | A | B | 2,346 | 0 |
| 4 | s | A | C | 511 | 0 |
| 4 | s | C | A | 2,875 | 4 |
| 4 | s | C | B | 1,117 | 41 |
| 4 | s | C | C | 912 | 32 |

| Multiplicity | Nonempty cells | Checked sources | Exceptions, all certified |
|---:|---:|---:|---:|
| 2 | 23 | 408,278 | 17,391 |
| 3 | 17 | 252,454 | 4,395 |
| 4 | 12 | 86,182 | 874 |
| **Total** | **52** | **746,914** | **22,660** |

Final outcomes: **718,306 wrong-zero outputs; 5,948 wrong-unary-one outputs; 22,655 zero exceptions; 5 unary-one exceptions; zero survivors.** The total spans separate semantic cells, not one check. `final.json` records each final source digest and its measured resource use. Other possible cells are empty by the stated filters and cardinality recurrence.

### 3.5 Every exception is refuted in Lean

`manifest.json` is a bijection from `(check file, exception index)` to an exact source theorem `¬ Reader r`. `final_audit.py` checks no omissions or duplicates, matches each definition against the serialized source, checks that its theorem occurs in the successful Lean log, and verifies the final per-module resource records.

| Refutation | Sources |
|---|---:|
| Weak-head cycle returning a head prefix, possibly with extra operands | 21,937 |
| Required rigid variable absent from a reduct | 423 |
| Wrong persistent rigid head or arity | 27 |
| Arbitrary-payload template recurrence | 4 |
| One strict head step plus arbitrary beta steps returning a head prefix | 237 |
| Arbitrary-payload delayed recurrence | 16 |
| Growing-helper recurrence of §2.4 | 16 |
| **Total** | **22,660** |

`Certificates.lean` supplies the generic occurrence, head-signature, prefix-cycle and mixed-cycle proofs. The mixed-cycle proof uses `WeakHeadClock.count_reduct`, so beta reductions inside spine arguments are justified even when they are not weak-head steps. `Special.lean` and `Grow.lean` supply the three parametric recurrence families. Exact instances are in `Exceptions0.lean` through `Exceptions29.lean`, `Extra0.lean`, `Extra1.lean`, and `Residual.lean`.

All 33 individual-certificate files compile. Their printed theorem dependencies are `{propext, Quot.sound}`; no sorry or new axiom occurs. `Prices.local_hoist_price` and `minimum_local_hoist` additionally use `Classical.choice`. There is no claim that normalizer termination alone proves source nonexistence: the finite inventory plus the separate exception proofs is essential.

### 3.6 Verification and resource limits

- Largest final source cell: 81,834 terms. Largest single helper catalog checked: 85,258. The combined pair/source run checks 89,732 terms.
- Longest helper check: 104.32 s, 116.6 MB RSS. Longest final source run: 65.23 s. Largest source-check RSS: 216.3 MB. Each run used at most two threads; the Python computations themselves are single-threaded apart from a watchdog.
- Largest final Lean compile: 22.69 s, 1,043.6 MB RSS, two threads, below the 2 GB Lean cap. `run_limited.py` watches the exact child PID with a 110-second/1.9-GB ceiling.
- Independent unfiltered generation through component cost 14 produced 1,265 components, with all 767 admitted components matching the feature recurrence. Four positive controls passed both engines. The 156 selected source samples gave 312 independent named-normalizer agreements without cutoffs and 81 exact contraction/hoist price controls. See `validation.json`.
- Exception discovery uses bounded searches only to produce certificates. Failed discovery attempts leave cases open; none is treated as a refutation. The final growing family is proved for arbitrary lists, not inferred from a finite trace.
- No engine or tracked project file was changed; no commit or consult was made. All lane artifacts are under `tmp/round4/bodylet/`. The final process check found no active lane checker, Lean compiler or blam experiment to clean up; other lanes' harnesses were left alone.

For replay, run from the repository root. Ordinary cells use `python tmp/round4/bodylet/check.py 'm:head:j:c'`. The five special cells require the helper commands below before their source check:

    python tmp/round4/bodylet/helper_cut.py 3:0:A:A
    python tmp/round4/bodylet/check.py 3:0:A:A helpers-3-0-A-A.json
    python tmp/round4/bodylet/helper_cut.py 2:0:A:A safe
    python tmp/round4/bodylet/check.py 2:0:A:A helpers-2-0-A-A.json
    python tmp/round4/bodylet/helper_cut.py 2:1:A:A
    python tmp/round4/bodylet/check.py 2:1:A:A helpers-2-1-A-A.json
    python tmp/round4/bodylet/helper_arity.py 2:0:C:A
    python tmp/round4/bodylet/check.py 2:0:C:A helpers-2-0-C-A.json
    python tmp/round4/bodylet/pair_core.py

For Lean, compile `Prices.lean`, `Certificates.lean`, `Special.lean`, `Grow.lean`, then the 33 certificate files, each with `python tmp/round4/bodylet/run_limited.py FILE.lean`. Existing project `.olean` imports must be available. Finish with `python tmp/round4/bodylet/final_audit.py`. No regeneration or enumeration is needed to replay the existing certificates.

`final.json` and `manifest.json` are authoritative for this lane. `runs.json`, `inventory4.json` and `check-4-lam-A-A.json` are intermediate artifacts; the latter is an early superseded 55-source check and is excluded from the final 52-cell manifest. Do not total `check-*.json` indiscriminately.

## 4. Remaining route

For stream-body lets at depth one, the remaining branch is the **linear** let whose argument contains j and whose B contains a nested head redex. This lane did not enumerate or close it. The nonlinear result does not justify normalizing such sources, and does not settle other reader-root shapes or the full separated-class bound.

The useful next step is to price that nested redex while tracking where its one incoming x is used. The exact local hoist and sink identities above are available without a source-normal-form assumption. Where copying occurs deeper inside B, the needed object is an interface between the incoming stream/hole computation and the nested let, rather than a global normal-form inventory. The local price method has closed the nonlinear first-body cases; the linear nested-redex case needs its own completeness reduction.
