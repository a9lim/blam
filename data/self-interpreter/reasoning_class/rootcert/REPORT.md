# Rootcert — all 580 tight-profile exceptions refuted; source eta rule proved

**Main result: all 580 original rootlet survivors are refuted.** There are
**577 original-source Lean proofs** and **3 frozen-engine DIVERGE verdicts**.
No source remains unresolved in the supplied catalogue. The general source
eta-contraction rule is now kernel-checked, including preservation of **every
unary reader law**; 346 catalogue entries have separately checked minimum
exclusions using it.

The lower-multiplicity work closes an additional **73,311-source restricted
inventory**: all minimal-leaf profiles `L=3, V=k+5`, for `k+d<=4`, with
`d=0 or 1`, under the inherited minimum-reader conditions. The general
lower-multiplicity root-let branch remains open.

Labels: **[L]** Lean kernel-checked; **[C]** computer-checked evidence;
**[H]** a handwritten structural/completeness argument. There is no assertion
that the finite inventory generators themselves have been formalized in Lean.

## 1. Complete interpreters and controls

None built. No interpreter splice, battery, polish, or sub-162 claim.
Every candidate considered is refuted on zero or length one; none triggers
the instruction to splice a survivor passing lengths 1–8.

`controls.py` checks the existing 162 and 165 readers with the same probe
checker used for the lower profiles. Both pass zero and lengths 1–8, at
reader weights 46 and 49. `controls.json` records these implementation
controls. These are not new all-length interpreter proofs or battery runs.

## 2. New identities and their proofs

### 2.1 Source eta contraction preserves the exact laws [L]

`Eta.lean` defines hygienic, context-closed eta contraction and proves:

    M ->eta* M', M ->beta* T
      ==> exists T', M' ->beta* T' and T ->eta* T'.

This is `Blc.RootcertEta.postpone`. Its proof first commutes one eta step
with one beta step, producing **at most one beta step** on the eta side and
finitely many eta residuals on the beta side. Substitution transport handles
duplicated and erased residuals. Induction over eta steps and then beta
steps proves the displayed orientation. It does not assume normalization of
the reader source.

The exact targets `r j` and `c U_n(N) N` are proved beta-normal and eta-free
for every `n`. Thus postponement cannot eta-contract the target, and gives
an actual beta reduction of the contracted probe to the same target.
`readerLaws_eta` preserves the full `SelfintSourceCost.ReaderLaws`, including
scope and every unary length. `eta_occ` preserves every free-variable count.

Combined with rootlet's existing, rechecked `EtaPrice.lean`:

    w(C[lambda x.P x]) - w(C[P])
      = 6 + F_nonj(P) + 4 h(P) > 0,

where x is absent from P, outward captured variables count in F_nonj, and
h is the source-j count. `minimum_no_eta` excludes such a source under
`MinimumReader`, which assumes only global weight minimality among full-law
one-hole readers. It therefore applies to the stronger lexicographic minimum
in class-bound section 3 without needing its tie-breaks.

`EtaCases0.lean` and `EtaCases1.lean` check all 346 literal applications:
53 in 4A, 278 in 4B, 15 in 4Cs. These are minimum exclusions, not independent
claims that eta-containing nonminimum readers cannot exist.

### 2.2 Six-step H recurrence [L]

Write

    H = lambda u v. u (v u),
    K_H = H (H H) H.

`Recursor.lean` proves, for every term x:

    K_H x ->beta^6 K_H (x K_H).

A hypothetical finite weak-head clock strictly decreases through these six
steps and recurs on another member of the same family. Strong induction on
the clock refutes weak-head normalization and hence any full normal form,
including with arbitrary pending operands. This refutes 63 supplied sources
and ten lower-profile exceptions, by explicit finite beta replay from each
original source.

### 2.3 Four-step Lark recurrence [L]

Write

    L = lambda u v. u (v v),
    K_L = (L L) (L L).

`Lark.lean` proves `K_L x ->beta^4 K_L (x x)`, for every x. The same strictly
decreasing head-clock argument refutes every pending spine. Fifty supplied
sources reach this family.

### 2.4 Positive owl functions [L]

Write `O = lambda u v. v (u v)`, and

    G_n = lambda x. x^(n+1) (O x),   n>=0,

where the power means nested application to the displayed argument.
`Owl.lean` proves `O G_n ->beta* G_(n+1)` and

    G_m x ->beta x^(m+1) (O x).

Every nontrivial application tree over the G_n has no weak-head normal
form. The proof uses strong induction on the hypothetical head clock and
structural descent through a function subtree. When the argument is itself
an application tree, it becomes a required head; when it is G_n, the
`O G_n` identity produces another nontrivial tree at a smaller clock.

Now `O O ->* G_0`, `O O O ->* G_1`; hence
`(O O) (O O O)` and every pending spine have no normal form. This proves
all five remaining owl cases from the supplied engine-UNKNOWN list.

### 2.5 Symbolic Church trees have the wrong head [L]

`Church.lean` reuses `Blc.BB35Church.church_exp` to prove that every
application tree of the positive numeral 2 beta-reduces to some positive
Church numeral. Its index is existential and is never expanded into the
potentially enormous literal normal form.

A positive numeral applied to f and x reduces to a positive iteration of f.
If f has a rigid head other than r, every additional pending spine retains
that incompatible head. Twenty-five supplied sources are refuted this way.
**These are wrong-head proofs, not divergence claims.** This explains why
larger normalizer budgets were an unhelpful way to handle them.

### 2.6 Reused families and finite cycles [L]

The copied `Grow.lean` is the bodylet growing-helper theorem, with its
original proof and attribution. It supplies 388 refutations. The copied
`Special.lean` supplies 40 payload-template recurrences. Six further sources
have an explicit genuine head beta step followed by a replayed beta cycle
back to a head prefix, certified by rootlet's `Certificates.lean` rules.
All certificates start from the literal original reader source.

## 3. Exclusions, exact hypotheses, and evidence

### 3.1 All 580 supplied sources

| Rootlet cell | Sources | Direct Lean refutations | Engine only | Unresolved |
|---|---:|---:|---:|---:|
| k=5,d=0 | 157 | 154 | 3 | 0 |
| k=4,d=1,j in A | 58 | 58 | 0 | 0 |
| k=4,d=1,j in B | 338 | 338 | 0 | 0 |
| k=4,d=1,j in pending operands | 27 | 27 | 0 | 0 |
| Total | 580 | 577 | 3 | 0 |

`GROUPS.tsv` groups every source by its exact root helper before checking.
`MANIFEST.tsv` and `manifest.json` map every original exception index to its
new proof or engine evidence. `verification.json` checks the partition,
original-source declarations, proof log entries, input/output wire multisets,
source hashes and resource records.

The engine-only entries are all weight 45 in cell 5:

| This lane ID | Rootlet exception index | Source, with A=lambda u v.v(u v)c |
|---:|---:|---|
| 115 | 7594 | `(lambda x.x x (x (x x))) A j` |
| 119 | 7640 | `(lambda x.x (x x) (x x)) A j` |
| 127 | 7725 | `(lambda x.x x (x x) x) A j` |

All three give `DIVERGE bb-engine` on the **closed zero probe**, with the
rigid variables bound by outer lambdas. `MAIN_ENGINE_ONLY.tsv` gives their
literal sources and wires. This is trusted-engine evidence, not a Lean
certificate. The binary was copied as a fresh file before any use:

    SHA256 00883f147c7128a1642f323920deef23f0af9c8b742dadb3c0f30cf5478bfaa2

The original frozen audit reports `0 halt, 487 diverge, 93 unknown`.
All 93 UNKNOWNs have new Lean refutations; UNKNOWN is never counted as a
failure. `--no-oracle` disables the ladder's oracle prefilter, not every
internal check in the escalation engine. `zero.out`, `zero.err`,
`zero.blc`, and `engine.resources.json` retain the exact audit.

Each new direct refutation requires only the original source's zero law;
it has **no minimality assumption**. The family-wide cutoff conclusion
inherits rootlet's hypotheses: a global minimum full-law one-hole reader
under `(weight, lambda count, j depth)`, weight at most 45, root let
`(lambda x.B) A Cvec`, depth 0 or 1, and the tight profile `k+d=5` obtained
from rootnf's bound. Rootlet's preceding 207,498 finite failures and 32,743
Lean exception refutations were **read, not rerun here**. Combining that
partition with these 580 refutations closes its tight inventories under
its [H,C] completeness argument. It is not a fully kernel-checked
exhaustive lower bound.

### 3.2 Lower multiplicities: minimal-leaf profiles closed [H,C,L]

The additional inventory covers exactly:

    k+d<=4, d in {0,1}, L=3, V=k+5, one c, one j,
    root binder used k times, other binders used 1 and 2 times,
    a lambda in A, w<=45,

with the inherited every-let price, nonerasure, rigid-head, root-pull and N5
minimum filters, plus the newly proved eta exclusion. These profiles follow
by equality in the rootnf leaf-ownership bounds; they are only a restricted
part of the lower-k remainder.

| k,d | Sources checked | Finite definitive failures | Engine exceptions refuted | Lean exceptions refuted |
|---|---:|---:|---:|---:|
| 4,0 | 35,804 | 33,847 | 1,947 | 10 |
| 3,1 | 23,349 | 22,341 | 1,008 | 0 |
| 3,0 | 7,743 | 7,353 | 390 | 0 |
| 2,1 | 4,710 | 4,607 | 103 | 0 |
| 2,0 | 1,705 | 1,645 | 60 | 0 |
| 1,1 | 0 | 0 | 0 | 0 |
| 1,0 | 0 | 0 | 0 | 0 |
| Total | 73,311 | 69,793 | 3,508 | 10 |

Every exception is certified; there are no unresolved cases or hits in this
restricted inventory. Eight definitive failures use length one; all other
refutations use zero. The 3,508 engine cases are computer-checked, not Lean.

`filtered_eta.py` extends rootlet's coefficient grammar with one feature:
whether the final argument is the nearest bound variable. A one-use lambda
with that feature is precisely a hygienic eta redex, so its omission is
justified by `minimum_no_eta`. All counts, moments and local prices retain
their original source frames. `generate_eta.py` asserts every constructed
component and root block equals its independently counted cardinality.
Constructor cases are disjoint and exhaustive by structural induction [H];
the enumerator's completeness is not formalized in Lean.

`lower.py` checks all seven cells in **one aggregate 73,311-source run**,
not slices of a larger over-cap inventory. `lower_check.json` records its
counts and source digests. `lower.out` closes 3,508 of 3,518 exceptions;
`LowerCases.lean` closes the ten UNKNOWNs using the H recurrence.

Consequently, under the inherited minimum/depth reductions, any remaining
minimum root-let reader below 46 has

    k+d<=4 and (L>=4 or V>=k+6).

The larger profiles remain open. In particular this is not an exclusion of
all root lets with k+d<=4.

### 3.3 Resources and reproduction

All 20 Lean modules pass, with only `propext`, `Classical.choice`, and
`Quot.sound` among their printed axioms; no `sorryAx`. The largest final
file check took 2.79 seconds; maximum sampled RSS was 525.37 MB. Each file
ran with `lean -j2`, a 110-second deadline and a 1.8-GB watchdog.

The main engine audit took 0.30 seconds, sampled peak 6.44 MB. The lower
source check took 4.61 seconds, peak 103.32 MB; its engine audit took 0.066
seconds. All checks stayed below 100,000 source terms or discovery states,
two minutes, and the applicable memory/thread caps. Discovery used explicit
state/size/fuel guards and retained unknowns. One initial template export
mispriced constants' ambient de Bruijn depth; Lean rejected it. The corrected
export and every final source passed the final complete module replay.

Main reproduction, from the repository root:

    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert/run_all.py
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert/engine.py
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert/validate.py

Lower-profile reproduction:

    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert/lower.py
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert/lower_prepare.py
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert/engine.py lower
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert/run_limited.py LowerCases.lean
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert/validate.py

Saved certificate JSON and explicit Lean replay paths make heuristic
rediscovery unnecessary. Positive controls are in `controls.py`. No cargo
build, tracked-file edit, commit, consult-back or delegation occurred. All
writes are inside this lane. No lane-owned engine or Lean processes remain.

## 4. Honest read and next proof step

The supplied tight catalogue is closed, and the previously proposed eta
rule is a reusable full-law theorem. Symbolic identities were decisive:
Church UNKNOWNs have wrong rigid heads, while H, Lark and owl need infinite
family arguments rather than longer finite normalization runs.

For a completely Lean-backed tight exception list, the remaining concrete
work is three payload-owl proofs above. Their engine evidence is already
definitive at the requested interim standard.

For the general root-let bound, the remaining profiles have an extra lambda
or leaf beyond the minimal ownership profile. The missing reduction remains
source-sensitive control flow. Zcore's T1/T2 and Lemma S require an actual
stream/bit call, compatible at every relevant unary invocation; a shared
helper can also receive a stream, tail, continuation or another helper.
No transport theorem here makes arbitrary root hand-offs into sites while
preserving their source prices, so no blanket site filter was used. The
next useful theorem should price those incompatible calls or expose the
source lambda receiving the stream and j. The existing raw lower-k
envelopes are too large to replace that step with an allowed finite check.
