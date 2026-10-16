# Bits of Ω

This document is the contract for blam's certified bounds on the *true*
halting probability of closed BLC terms. That means all sizes, not the census's
finite range. It covers the certified object, both bounds and their
soundness arguments, the counting method, and how the result was verified.
Current numbers live in `../STATUS.md`, and the canonical output is
`../../data/classical/omega.txt`.

## 1. Object and result

Here Ω is the sum of 2⁻|p| over all closed terms p that have a β-normal form,
of every size. The census measures the finite piece Ω|≤41. The census and
this document use the same convention: closed-term codes as programs,
weakly normalizing as halting. Tromp's universal-machine Ω, whose first
four bits he reported as `.0001` in 2009, is a different object.

The certified interval is

```text
0.125480570009150 <= Omega <= 0.125985261357254
```

Both endpoints are exact rationals, recorded in `omega.txt`. The interval lies
inside [1/8, 1/8 + 2⁻⁹), so

```text
Omega = 0.001000000...   (nine bits)
```

Bit 10 is open. It is 0 iff Ω < 1/8 + 2⁻¹⁰ = 0.1259765625, a threshold that
lies inside the interval (§6).

The census alone pins only two bits. Ω|≤41 = 0.1241… sits below 1/8, and the
closed-term mass above 41 bits is 1.88×10⁻³, enough to cross 1/8. The ninth
bit comes from the lower bound: the census's witnessed halting mass, plus a
certified count of weakly normalizing terms beyond 41 bits. That count must
exceed 8.95×10⁻⁴, which is 47.6% of the mass above 41 bits. The certificate
reaches 73.3%.

A statistical estimate (§6, not a certificate) puts Ω at 0.1259743 ± 10⁻⁷,
which is 2.2×10⁻⁶ *below* 129/1024. The likely expansion is
0.00100000001111111101… (20 bits shared by both ends of its 2 SE band).

## 2. Upper bound

```text
Omega <= halt(<=41) + frontier(<=41) + (U_0 - closed(<=41))
```

- **halt** includes the census halters (`census_table.txt`) and the separately
  checked halters in `certificates/bb_halts.tsv`; **closed** is the census
  count. **frontier** is the post-certificate unknown set (`unknowns.txt`).
  The three certificate ledgers partition the raw unknowns with that frontier:
  certified halters move into halt, while certified divergers leave the upper
  bound. The raw census and leaf tables stay unchanged.
- **U_k is the Kraft mass of terms valid under k binders.** Its grammar has
  three parts:
  - variable mass V_k = (1 − 2⁻ᵏ)/2;
  - abstraction U_{k+1}/4;
  - application U_k²/4.
- **If rationals q_k satisfy V_k + q_{k+1}/4 + q_k²/4 ≤ q_k for every k, then
  U_k ≤ q_k.** This follows by induction on syntax-tree height.
  - We take q_k = 1 for k ≥ 80, where the inequality holds because V_k < 1/2.
  - For k < 80, each q_k is the smaller root of the equality, solved backward
    and rounded up at 10⁻⁴⁰.
  - Every inequality is checked in exact arithmetic.
  - The result is q₀ = 0.126002847974358…, against a true value of
    0.1260028479738….
- **A coarser certificate suffices for the nine bits.** Codex's
  (q₀,…,q₄) = (0.1266, 0.490, 0.718, 0.856, 0.940) with q_k = 1 beyond gives
  Ω ≤ 0.1266 < 1/8 + 2⁻⁹, with no census input at all.

## 3. Lower bound

```text
Omega >= halt(<=41) + sum over sizes 42..240 of (count of certified-WN closed terms) * 2^-size
```

### Label function

Free variables are rigid constants, and maxfree(t) is t's largest free
index (0 if closed). With leaf horizon HL = 28, each term gets one label,
taken from the first matching case:

- **N**: weakly normalizing (WN), with a neutral normal form `x Q₁…Q_r`;
- **O**: WN;
- **X**: no claim.

The cases are:

1. **Leaf**, when |t| + 2·maxfree(t) ≤ HL. Take the closed term
   λ^maxfree t, which has at most HL bits. If it normalizes within the
   enumerator's fuel, label N or O by the normal form's type, else X.
2. **Variable**: N.
3. **λM**: O if ℓ(M) ≠ X.
4. **(λM) P** with a syntactic λ head. The first matching case wins:
   - **R4**: ℓ(M) ≠ X and ℓ(P) = N gives ℓ(M);
   - **projection**: M = λʳ x_{r+1}, the redex's own variable, and ℓ(P) = O gives O;
   - **R3**: var 1 ∉ FV(M) and ℓ⁰(M) ≠ X gives ℓ⁰(M), for any P, even a divergent one;
   - otherwise X.
5. **F P** with F not λ-rooted:
   - **R6**: ℓ(F) = N and ℓ(P) ≠ X gives N;
   - **R10**: ℓ(F) = O and ℓ(P) = N gives O;
   - otherwise X.

ℓ⁰ is the same function without R3. R3 bodies are labelled by ℓ⁰, which
keeps the counting to a single avoided variable.

### Soundness

- **λ.** λM is WN iff M is.
- **R6.** If nf(F) is neutral, then F P →* nf(F) nf(P), which is normal and neutral.
- **Neutral substitution (R4).** If M is WN and N is WN with a neutral normal
  form n, then M[x:=N] is WN, with the root type of nf(M).
  - Substitution commutes with β, so M[x:=N] →* m[x:=N] →* m[x:=n].
  - m[x:=n] is normal. An application node of m has a variable head in m; if
    that head is x, it is now n, which is still not a λ. Shifting under
    binders preserves normality and neutrality.
- **R10.** If F is WN with normal form f, then F P →* f n.
  - If f is neutral, f n is normal.
  - If f = λf′, the result is f′[1:=n], which is WN by neutral substitution.
- **R3.** (λM) P → M↓, with no substitution. M↓ is WN with M's type, for every P.
- **Projection.** (λλʳ x_{r+1}) P → λʳ P↑, which is WN iff P is. Its type is
  λ for r ≥ 1, and P's type for r = 0.
- **Leaves.** t is WN iff λᵐ t is, and nf(λᵐ t) = λᵐ nf(t). So the type
  of nf(t) is read off the closure's leading abstractions.
- **Monotonicity.** ℓ⁰(t) ≠ X implies ℓ(t) = ℓ⁰(t). This holds by induction:
  the leaves agree, every other case reads only its children's labels, and the
  case order puts R3 last.

### Counting

The DP (`tools/omega/bound.py`) computes, in exact integers, for each size s
and depth k with s + 2k ≤ N:

- c_ℓ(s,k): the number of terms of size s valid at depth k with label ℓ;
- the ℓ⁰ counts;
- the ℓ⁰ counts restricted to terms avoiding variable j;
- the count of all terms.

The rules behind it:

- **The leaf/structural split is exact.** A term is leaf-known iff
  maxfree ≤ J(s) = ⌊(HL − s)/2⌋. Let J′ = min(k, J(s)). Then
  c_ℓ(s,k) = A_ℓ(s,J′) + S_ℓ(s,k) − S_ℓ(s,J′). Here A is the leaf table and S
  counts terms whose *root* rule yields ℓ. The root rule does not depend on
  depth, so the difference counts exactly the terms with maxfree in (J′, k].
- **(λM) P with label c** contributes
  #{ℓ(M)=c, ℓ(P)=N} + #{proj, ℓ(P)=O} + #{M avoids 1, ℓ⁰(M)=c, ℓ(P)≠N}.
  - The terms are disjoint by P's label and by whether M uses its binder.
  - They are complete by monotonicity: no M has ℓ⁰(M) ≠ X but ℓ(M) = X.
- **R10 excludes λ-rooted heads.** Its O-head count subtracts the λ-rooted
  O-labelled terms, c_N(a−2, k+1) + c_O(a−2, k+1).
- **The avoid-j arrays use the same split.**
  - Their leaves come from vacuous closure binders.
  - Avoidance of j > J′ is automatic.
  - Their rules shift (k, j) to (k+1, j+1) under binders.

### Leaves

`blam omega leaves 41` runs the census ladder on every closed term of at most
41 bits. It uses the census's two-phase scheduler: cheap rungs fused with
generation, then survivors one term at a time. A full run takes 3.9 minutes,
with 6.3 GB peak.

- **One judgement per term.** Each open term M is judged exactly once,
  through its minimal closure λ^maxfree(M) M. A closed term whose outermost
  binder is used contributes, for each m ≤ L, its body M_m, whose maxfree is
  exactly m. The rows are cumulative over maxfree.
- **Why that matters.** It makes the leaf predicate a single depth-independent
  property, which the leaf/structural subtraction requires. Two separate
  ladder runs on λʲM and λᵏM could otherwise disagree at a budget edge.
  - This was a proof obligation Codex raised.
  - The earlier per-closure table turned out identical within the horizon, so
    no inconsistency had occurred, but the construction now guarantees it.
- **Soundness of the rows.** A term the ladder leaves Unknown is simply not
  counted.
- **Where the table lives.** `data/classical/omega_leaves.txt`. bound.py
  refuses a table that does not cover the complete horizon 4..HL.

## 4. Verification

- **Leaf counts.** The leaf table's per-size closed halting counts, and the
  DP's closed-term counts, equal the census's at every size 4..41. `bound.py`
  asserts both.
- **Two independent leaf builders agree.** Within horizon 28, the Rust table
  matches row for row the one first built by an independent Python
  normal-order normalizer, now retired. That normalizer's normal forms also
  matched `blam normalize` bit for bit on two samples: every closed term
  through 22 bits, and 1,500 random terms at each size from 23 to 28.
  - **Codex audit.** Codex checked the Rust bit walk, used-binder mask, sink
    and indices against an AST-based reference on 17,703 terms up to 63 bits.
- **Brute force.** `tools/omega/check.py` applies ℓ and ℓ⁰ directly to every
  term at small sizes and depths. Its leaves come from its own normalization,
  not the table.
  - **What it checks.** Every DP array matches exactly, monotonicity holds,
    and every N/O-labelled term actually normalizes (N with a neutral
    normal form).
  - **Coverage.** Runs at (HL, S, K) = (8, 26, 5), (16, 27, 4) and
    (22, 28, 3) cover 2,161,919, 2,852,224 and 3,387,278 term instances, with
    zero mismatches and zero unsound labels. The (22, 28, 3) and (16, 24, 4)
    runs also pass against the canonical horizon-41 table.
  - **Mutation test.** Deleting a rule from the brute-force side alone
    produces 305 mismatches.
- **Independent audit (Codex).**
  - **Normalizer.** A named-variable, capture-avoiding normalizer of its own
    reproduced every A and H table entry: 528,222 term instances through
    closure size 28. It builds avoidance directly from open terms, bypassing
    the vacuous-binder derivation.
  - **DP arrays.** An independent array check at (14, 24, 6) matched every
    array, over 831,092 instances.
  - **Findings.** A depth-padding bug in an early checker (since fixed); the
    proof wording ("suffices", "witnessed"); the coarse upper certificate; and
    the projection rule.

## 5. Measurements

The lower bound uses the leaf horizon HL = 41 and certified sizes 42..240.
Sizes 42..59 alone already give Ω > 1/8.

| size | certified WN fraction (HL = 41) | (HL = 28) |
|---:|---:|---:|
| 42 | 0.881 | 0.763 |
| 50 | 0.783 | 0.710 |
| 60 | 0.715 | 0.658 |
| 80 | 0.627 | 0.579 |
| 100 | 0.564 | 0.521 |
| 150 | 0.462 | 0.425 |
| 200 | 0.401 | 0.367 |

About 88% of closed mass above 41 bits is λ-rooted. Closed applications are
certified only through R3 or the projection, because a closed term never has
a neutral normal form.

At HL = 28, the rules contribute:

| rules | certified mass, 42..240 | lower bound |
|---|---:|---:|
| R3, R4, R6, R10 | 1.115017×10⁻³ | 0.125220103893 |
| + identity `(λ1) P`, ℓ(P) = O | 1.220839×10⁻³ | 0.125325926083 |
| + all projections | 1.242101×10⁻³ | 0.125347188166 |
| all, at HL = 41 | 1.375483×10⁻³ | 0.125480569932 |

The rules matter more than the horizon.
- **HL = 8:** the first four rules reach 51% of the mass above 41 bits.
- **HL = 28:** they reach 59.5%.
- **HL = 41 with all rules:** 73.3%. The lower bound then sits 7.7×10⁻⁶
  below 1/8 + 2⁻¹¹. That would matter if bit 10 were ever proven: bit 11
  needs 73.6%.

## 6. Bit 10: the estimate and the prover it needs

Ω < 1/8 + 2⁻¹⁰ = 129/1024 needs one of two certificates:

- at least 8.70×10⁻⁶ of certified non-normalizing mass beyond 41 bits;
- or 99.54% halting coverage beyond 41 bits, which is out of reach.

### Where Ω actually is (an estimate, not a certificate)

`scripts/omega-estimate.sh` draws 8,000,000 uniform closed terms of 42–300
bits and decides each one on blam's full ladder. Halts are witnessed and
divergences proved, so nothing here rests on "ran out of fuel".

- **Allocation.** Stratified, Neyman-allocated by mass.
- **UNKNOWN verdicts.** These are 0.01% of the sample. They are rerun at 10×
  escalation capacity and the largest usable rescue budget, which resolves 82
  of 856; the rest stay bracketed.
- **Validation.** The same sampler and ladder at 34–41 bits reproduce the
  census's exact divergent fractions within 2 SE at every size, over 100,000
  samples per size.
- **Exact parts.** C and the census's divergent mass through 41 bits are
  exact (§2). So the only estimated quantity is the divergent mass beyond 41
  bits:

```text
divergent mass 42..300 = 1.0849e-5 (proven) .. 1.0992e-5 (with UNKNOWN), SE 5.0e-8 at each end
Omega ~ 0.12597425 .. 0.12597440          Omega - 129/1024 ~ -2.2e-6
binary, 2 SE band:   0.00100000001111111101...   (20 bits shared)
```

Two refinements, both from Codex, make the claim robust.

- **No extrapolation is needed.** Count every term above 300 bits and every
  UNKNOWN as *halting*. The estimate's optimistic end is then still 0.1259744,
  43.3 SE below 129/1024, and a distribution-free Hoeffding bound gives about
  2×10⁻⁹ under the uniform-sampling model.
- **The SEs are per endpoint**, with m − 1 in the denominator. Mass above 500
  bits, at most 6.9×10⁻⁹, is bracketed rather than ignored.

So bit 10 is almost certainly 0, and the expansion is a near-carry,
0.0010000000 1111111101…. A proof has to certify **80.2%** of the divergent
mass beyond 41 bits. The share needed depends on how far the count reaches:
counting only through 100 bits would need 96% of that range's divergence,
and through 120 bits 89%. Per-size data: `data/classical/omega_estimate.txt`.

### What a divergence prover has to see

`tools/omega/divergence.py` measures candidate provers per term, on
mass-weighted samples of ladder-proven divergent terms of 42–300 bits. A
candidate is worth building only if it can reach 80%.

- **Propagation from small cores is too weak.** These are the label DP's
  rules, extended with the U/DN/D classes:
  - U: unsolvable;
  - DN: no normal form, neutral head;
  - D: no normal form.

  Its leaves are decided exactly by the ladder up to horizon HL.

| leaf horizon HL | 28 | 41 | 50 | 60 | 80 | 120 |
|---|---|---|---|---|---|---|
| certified share of divergent tail | 3.6% | 11.1% | 35.9% | 54.7% | 76.2% | 91.8% |

  The table uses 3,000 samples, so SE ≈ 0.7 points. At HL = 28 it agrees with
  the DP's 3.4%. Divergence cores beyond 41 bits are
  typically 50–80 bits. Leaves that large cannot be enumerated.
- **Prefix cylinders fail.** These certify divergence from a preorder prefix
  of the encoding, with the pending subterms as inert holes. Each prefix
  certifies its whole cylinder at exact mass 2^−|π| ∏ U_k.
  - The decisive prefix is usually the whole term. A self-application's
    operand comes last in preorder, so it cannot be a hole.
  - Allowing holes anywhere gives diverse minimal patterns. 300 samples give
    225 distinct patterns, with a median of 45 non-hole bits and only
    4.7×10⁻⁸ of tail mass together.
- **Abstract evaluation over truncated Böhm trees nearly suffices per term.**
  - **The label.** Each subterm is labelled, bottom-up, by its Böhm tree
    truncated at depth D. Deeper parts are inert holes, and ⊥ marks a
    certified unsolvable subterm.
  - **Application.** Application reduces the children's labels. A head
    redex that recurs at the skeleton level is ⊥, and ⊥ anywhere in the root's
    tree means no normal form.
  - **Strength.** This creates divergence from normalizing parts, which
    propagation cannot do. On 5,000 halting samples it certifies nothing.

| Böhm-tree depth D | 1 | 2 | 3 | 4 | 5 | 7 |
|---|---|---|---|---|---|---|
| certified share of divergent tail | 28.8% | 62.5% | 75.2% | 79.8% | 81.3% | 81.8% |

  - **The saturation.** Coverage levels off near 81–82%. Adding
    cyclic-Böhm-tree detection, so that a subterm reappearing below itself is
    marked as having no normal form, adds about half a point. The remainder are
    escalation-engine proofs of growing or infinite Böhm trees.
  - **Capping labels.** Capping labels at 64 nodes keeps 79.3% at D = 5, on
    a 1,000-sample run.
  - **Sample reuse.** Accumulating sampled divergers directly is hopeless.
    The 49,631 distinct sampled divergers carry 5.9×10⁻¹⁰ of mass together.
    Samples can guide discovery; they cannot be the certificate.

**What remains is counting.** A certificate needs the Böhm-tree labels counted
over all terms, as the halting DP counts N/O labels. That label alphabet
grows exponentially: at D = 2 it grows about 1.6× per bit against 1.78× for
terms, because small normal forms are their own labels. Bit 10 therefore
needs a far coarser behaviour abstraction that keeps the self-application
structure but forgets most normal-form detail. Its per-term coverage can be
measured with the same probe before any DP is built. On these measurements
the target is at the edge of what per-term Böhm-tree evaluation reaches, so
the coarsening has little room to lose.

The obvious coarsening fails. The only sound one replaces labels with holes,
so the natural finite alphabet is "the K most frequent labels".
- **Setup.** Label frequencies are learned from the subterms of 3,000 random
  terms (D = 4, labels capped at 64 nodes).
- **Result.** Keeping every one of the 21,267 observed labels certifies only
  12.9% of the divergent tail, and the top 1,000 only 6.5%. Unrestricted
  evaluation reaches 78.6%.
- **Reading.** The certifying labels form a long tail: divergence lives in
  rare, specific shapes. A countable prover needs states that track
  *structural* features, not semantic values. Merging variables is not
  sound, so it cannot be the coarsening either.

**A different route is regular invariants (Codex's suggestion; untested).**
Endrullis and Zantema prove non-termination with regular tree languages that
are closed under rewriting and disjoint from normal forms, synthesized by SAT
(RTA 2015). They separate certificates that disprove *weak* normalization,
the property Ω needs, from those that merely disprove strong normalization.
The adaptation would go like this:
1. Express the full normal-order machine as a first-order transition system
   on closures, environments and continuations.
2. Synthesize regular languages of configurations that are closed under every
   successor and exclude termination, using sampled traces as guidance.
3. Extract the regular source language of terms whose initial configurations
   lie inside.

Counting is then a DP over (size, binder depth, automaton state). This avoids
both the leaf horizon and label explosion. Whether such invariants cover 80%
is the next measurement.

## 7. Reproduce

```sh
scripts/omega-regen.sh            # leaf tables (blam omega leaves 41) + bounds
scripts/omega-estimate.sh         # the §6 estimate (~10 min of sampling + ~15 min UNKNOWN rerun)
python3 tools/omega/check.py data/classical/omega_leaves.txt 16 26 4
python3 tools/omega/divergence.py tmp/omega-estimate/verdicts.txt 300 bt 5    # §6 probes
```

The tools are stdlib-only Python. `bound.py --max N` truncates the certified
range.
