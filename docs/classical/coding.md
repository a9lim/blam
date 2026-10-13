# The coding theorem in the census

This document records what the exhaustive census says about the coding
theorem, K(x) = −log₂ m(x) + O(1), on BLC's own closed-term machine. The
machine is a prefix-free closed-term code with outputs given by β-normal
forms. The objects m_N and K_N are those of `architecture.md` §1. Numbers here
come from `../../data/classical/coding.txt`, produced by
`scripts/coding-regen.sh`.

## 1. Objects

- The **coding gap** of an output x is g(x) = K(x) + log₂ m(x), which is
  always ≥ 0.
- The coding theorem says the supremum of g is a finite constant c of the
  machine: the best constant in m(x) ≤ 2^(c−K(x)).
- The Levin analog is g_S(x) = Kt(x) + log₂ S_β(x), using the β-gauge speed
  prior of `speed.md`.

**Certification.** Every program shorter than 33 bits is adjudicated, since
the frontier starts at 33. So K_N(x) = K(x) whenever K_N(x) ≤ 32. Also
m_N(x) ≤ m(x), because masses only grow with N. Therefore, for K ≤ 32, each
measured g_N(x) is a certified lower bound on the true g(x), and its
maximum is a certified lower bound on c.

**A correction to the obvious experiment.** "Hold out the top program sizes
and see whether the gap predicts K dropping" is ill-posed. For |x| ≤ N, K_N is
already exact, and adding longer programs cannot shorten it. The well-posed
version hides the shortest programs instead (§4).

## 2. The constant

With programs 4..41, the certified bound is c ≥ 3.689. It is attained by
λ⁷.(7 7), whose m is about 12.9 × 2^−K.

The largest gaps sit at duplication break-even points. Var 7 costs 8 bits, so
the duplicator form λ⁷((λ.1 1) 7) ties the literal term at 32 bits, and tied
near-minimal programs multiply. The same holds for λλλ.3 3 (3 3) 3, at 3.637,
and λλλλ.4 4 (4 4), at 3.544.

The bound still grows with the census range. For the witness it is 3.011,
3.472 and 3.689 at N = 37, 39 and 41.

- **Extrapolation.** A geometric extrapolation of the per-output drift puts
  the top witnesses' true gaps near 3.9–4.5 bits. This is an estimate, not a
  bound. No finite census upper-bounds c; that would need an explicit
  decoder.
- **Levin analog.** g_S is certified at ≥ 3.255, with the same witness.
- **Typical gaps.** For K ≥ 18 the median gap is 0.7–0.84 bits, so a typical
  output carries about 1.7 × 2^−K of algorithmic probability. For K ≤ 16 the
  median is 0.09–0.62, and for the identity it is 0.090.

## 3. Where compression starts

Compression starts at 22 bits. The smallest compressible closed normal form is

```text
λf. (f (λ_.f)) (f (λ_.f))        |x| = 22, K = 21, via λ.(λ.1 1)(1 (λ2))
```

All 384 compressible normal forms through 30 bits have a shortest program
containing a *duplicating redex*: an abstraction whose body uses its variable
at least twice, such as (λ.1 1), (λ.1 1 1) or (λ.1 (λ2)). (λ.1 1) R → R R costs
10 bits of overhead, so it pays once the repeated subterm exceeds 8 bits.

| size | 28 | 30 | 32 | 34 | 36 | 38 | 40 | 41 |
|---|---|---|---|---|---|---|---|---|
| compressible fraction | 0.59% | 0.52% | 0.56% | 0.59% | 0.58% | 0.59% | 0.59% | 0.46% |

The fraction is exact through 41 bits. Even sizes run higher than odd ones,
and the mean gain is about 2 bits.

The compressible fraction does not rise over this range. Counting says
typical normal forms are eventually compressible to about 0.9|x|, since
normal forms grow like 1.865ⁿ against 1.963ⁿ for all terms. That compression
needs a fixed-size "index into the normal forms" decoder, and it only pays
once about 0.1|x| exceeds the decoder's size. At census scale, BLC's only cheap
compression is duplication.

## 4. Hiding the shortest programs

This test was proposed by Codex. Take the cohort of outputs with K ≤ 32, which
is certified. Measure each output's mass in two disjoint shells of *strictly
longer* programs: lengths 38–39 (the N = 37→39 increment) and 40–41.

- **Trimming.** Each shell's mass is reduced by one program's maximum
  contribution, so no single alternative program can carry the signal.
- **Cohort.** Each shell must hold at least 8 programs, which leaves 245,855
  outputs.

**Spotting compression.** Within each size from 22 to 32, does an output with
K < |x| have more shell mass than an output with K = |x|?

| size | 22 | 24 | 26 | 27 | 28 | 29 | 30 | 31 | 32 |
|---|---|---|---|---|---|---|---|---|---|
| AUC, shell 38–39 | 0.992 | 0.998 | 0.999 | 1.000 | 0.998 | 0.989 | 0.988 | 0.994 | 0.993 |
| AUC, shell 40–41 | 0.996 | 1.000 | 0.998 | 0.999 | 0.999 | 1.000 | 0.998 | 0.986 | 0.976 |

Mass among programs at least 6 bits longer than the output picks out the
compressible outputs almost perfectly, and the result replicates across the
disjoint shells. This is the coding theorem's "probability identifies short
descriptions" content, visible at census scale.

**Two limits.**
- The test cannot separate the mass a short program passes to its padded
  variants from structure that both enables compression and attracts
  programs. The theorem claims only the correlation.
- *Grading* compression is weak and does not replicate. Among outputs that
  are all compressible (|x| ≥ 33), the within-size Spearman correlation
  between K and shell mass is about +0.3 on the 40–41 shell, but inconsistent
  or negative on the 38–39 shell. Pooled, |x| predicts K far better than shell
  mass does (Spearman 0.97).

## 5. Reproduce

```sh
scripts/coding-regen.sh      # three dumps (~20 min, ~12 GB peak) + report
```

The tools are `tools/coding/report.py` (gaps, quantiles, compression by
size) and `tools/coding/shells.py` (§4). Both are stdlib-only. The dumps total
about 2 GB and stay in `tmp/coding-regen/`.
