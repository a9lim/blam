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
0.125347188165688 <= Omega <= 0.125985262981611
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
reaches 66.2%.

## 2. Upper bound

```text
Omega <= halt(<=41) + frontier(<=41) + (U_0 - closed(<=41))
```

- **halt** and **closed** are the census's per-size counts
  (`census_table.txt`), and **frontier** is the post-certificate unknown set
  (`unknowns.txt`). The census's divergent terms are the only ones removed.
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

`tools/omega/leaves.py` enumerates every closed term of at most 28 bits and
normalizes it in normal order, with a fuel of 1000 β-steps and a 50,000-node
cap. Each closed λᴸ m contributes its bodies M_k for k ≤ L. A term that is not
witnessed normalizing is not counted, so every row is a sound lower count.
The table is `data/classical/omega_leaves.txt`.

## 4. Verification

- **Leaf counts.** The leaf table's per-size closed halting counts equal the
  census table at every size 4..28. The DP's closed-term counts equal the
  census's at every size 4..41. `bound.py` asserts both.
- **Normal forms.** The Python normalizer's normal forms equal
  `blam normalize`'s, bit for bit, on two samples: every closed term through
  22 bits, and 1,500 random terms at each size from 23 to 28. That is
  15,069 terms in all.
- **Brute force.** `tools/omega/check.py` applies ℓ and ℓ⁰ directly to every
  term at small sizes and depths. Its leaves come from its own normalization,
  not the table.
  - **What it checks.** Every DP array matches exactly, monotonicity holds,
    and every N/O-labelled term actually normalizes (N with a neutral
    normal form).
  - **Coverage.** Runs at (HL, S, K) = (8, 26, 5), (16, 27, 4) and
    (22, 28, 3) cover 2,161,919, 2,852,224 and 3,387,278 term instances, with
    zero mismatches and zero unsound labels.
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

The lower bound uses the leaf horizon HL = 28 and certified sizes 42..240.
Sizes 42..64 alone already give Ω > 1/8.

| size | certified WN fraction |
|---:|---:|
| 42 | 0.763 |
| 50 | 0.710 |
| 60 | 0.658 |
| 80 | 0.579 |
| 100 | 0.521 |
| 150 | 0.425 |
| 200 | 0.367 |

About 88% of closed mass above 41 bits is λ-rooted. Closed applications are
certified only through R3 or the projection, because a closed term never has
a neutral normal form.

| rules | certified mass, 42..240 | lower bound |
|---|---:|---:|
| R3, R4, R6, R10 | 1.115017×10⁻³ | 0.125220103893 |
| + identity `(λ1) P`, ℓ(P) = O | 1.220839×10⁻³ | 0.125325926083 |
| + all projections | 1.242101×10⁻³ | 0.125347188166 |

The leaf horizon matters less than the rules. With HL = 8, the first four
rules already reach 51% of the mass above 41 bits, against 59.5% at HL = 28.

## 6. Bit 10

Ω < 1/8 + 2⁻¹⁰ needs one of two certificates:

- at least 8.70×10⁻⁶ of non-normalizing mass beyond 41 bits, which would pull
  the upper bound down;
- or WN coverage of 99.54% beyond 41 bits, which is out of reach.

The true value sits close to the threshold. In uniform samples of 6,000
terms per size, the fraction that fails to normalize within 10⁶ β is:

| size | 42 | 46 | 50 | 55 | 60 | 70 | 80 | 100 | 120 | 150 | 200 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| % | 0.37 | 0.45 | 0.40 | 0.48 | 0.58 | 0.65 | 0.65 | 1.13 | 1.35 | 1.40 | 1.78 |

Weighted by mass, that comes to about 1.1×10⁻⁵ beyond 41 bits. So bit 10 is
probably 0, with little room. A certificate would have to capture about three
quarters of all divergence in the tail.

The natural first attempt propagates divergence from small divergent cores.

- **Classes.**
  - U: unsolvable. It survives application and any redex body.
  - DN: no normal form, with a neutral head form. It survives application.
  - D: no normal form.
- **Contexts.** They spread through λ bodies, neutral-spine arguments,
  erasing-redex bodies, and neutral substitutions.
- **Result.** At HL = 28 it certifies only 3.7×10⁻⁷, roughly 2.8× its HL = 20
  value. That growth points to about 2×10⁻⁶ even at HL = 41.

Most divergence beyond 41 bits is created by redexes between parts that
normalize separately, as in ω-style self-application. A prover that sees that
is the open problem.

## 7. Reproduce

```sh
scripts/omega-regen.sh                                   # leaves (~4.5 min) + bounds (~20 s)
python3 tools/omega/check.py data/classical/omega_leaves.txt 16 26 4
```

The tools are stdlib-only Python. `bound.py --max N` truncates the certified
range.
