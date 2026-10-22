# Rootlet — tight root-let profiles and explicitly priced residuals

**Verdict: the root-let branch remains open. No sub-162 reader or interpreter
was found.** The two tight profiles `k+d=5` are reduced to **580 explicitly
listed unresolved source terms**. There are **32,743 kernel-checked
original-source refutations** of evaluation exceptions, and several boundary
subcells are completely excluded. The remaining 580 exceptions are not
certified and are not counted as failures; therefore this is not the requested
complete cutoff closure or a proof of either whole boundary row.

The new structural counting method applies the handlerlet price test at every
source redex before constructing whole readers. It brings the five-use row
from 570,716 raw trees to 98,267, and the four-use/depth-one row from 846,418 to
three semantic cells of 55,395, 82,891 and 4,268. The lower-multiplicity root
cells remain open and were counted only as raw envelopes, not enumerated.

Labels: **[H]** handwritten argument; **[C]** computer-checked finite count or
inventory; **[L]** Lean kernel-checked theorem. Inventory completeness is [H]
with constructor/count assertions [C], not a fully formalized Lean enumerator.

## 1. Complete interpreters and controls

None built. No splice, interpreter battery or polish was run. There is no
new interpreter size or battery line.

The actual source/probe checker accepts the existing 162 reader at weight 46
and the existing 165 reader at 49 on zero and unary lengths 1–8
(`controls.py`, `controls.json`). These are implementation controls, not new
all-n proofs; the repository already supplies their all-n contracts.

## 2. Identities, semantic cuts and completeness

### 2.1 Exact hypotheses

R is a **global minimum among full-law one-hole readers**, under the order
(weight, source lambda count, source-j depth), with `w(R)<=45`, and

    R = (lambda x.B) A C1 ... Ct.

Here k is x's source multiplicity, not the number of root operands.
The rootnf ownership theorem supplies

    w >= 4k + 22 + 4d + tax_1.

On `k+d=5`, it also supplies one c, `V=k+5`, and either `L=3,tax<=3`
or `L=4,tax<=1`. The two other live binders have multiplicities 2 and 1;
L=4 has one additional vacuous binder. These are inherited kernel results,
not new theorems of this lane. A contains a lambda: the root-flat theorem
reduces the alternative to literal A=j, already excluded by the prior
minimum-reader/direct-hole result. Hole depths other than 0 or 1 are also
excluded by the prior minimum-reader reduction.

### 2.2 Every-let minimum filter [existing L; new C integration]

At ambient source depth e, mark `(lambda y.D) P`, with m occurrences of y,
M their depth sum, F the outward leaves of P with j counted four times, and
T the other outward leaves of D with j counted four times. The exact charge is

    Delta = (m-1) w_e(P) + (F-1) M - 4 - 2m - T.

The filter is applied to every source position, including inside arguments:

- m=0 is impossible in a minimum;
- m=1 requires Delta>0, since contraction removes a lambda at a tie;
- m>=2 and j-free P requires Delta>=0; at Delta=0, P must contain a lambda;
- a nonlinear P carrying j is **retained**. Applying the j-free rule there
  would be unsound, since contraction copies the source hole.

No source normalization premise is used. The checker independently compares
this expression with the actual before/after source weight where applicable.

Further semantic cuts [H, using the root lane's arguments]: a rigid c/j head
in B cannot satisfy zero; when B is x-headed, A cannot be rigid-headed; the
pull lemma requires x in j's operand or a later operand when j lies in B at
application depth; and if a literal A drops its first argument, N5 requires
the first B operand to be the cheapest leaf x. A literal lambda-rooted B is
impossible on the tight rows because all k uses would pay at least k index
bits, exceeding the tax allowance.

### 2.3 The feature grammar [H,C]

`filtered.py` counts original syntax using:

- the exact remaining use count of each enclosing binder;
- one c, one j at the specified depth, and the remaining 0/1/2-use binders;
- exact non-j index tax;
- each outer binder's occurrence-depth sum;
- whether the root is a lambda, its multiplicity/depth sum, and the source
  left-spine head;
- whether x occurs in j's operand or later, and whether the first operand is x.

A variable consumes its exact occurrence and index cost. A lambda introduces
one of the prescribed binders. An application partitions every count and tax,
and immediately enforces the local redex price if its function is a lambda.
A forest partitions the pending operands. These cases are disjoint and
exhaustive by structural induction. Moments add under application and gain one
per captured occurrence under lambda, so every price feature is exact.

`generate.py` constructs only feature cells with positive retained counts;
every generated block must equal its independently memoized cardinality.
No normality restriction, shared-argument disjointness assumption, or finite-
probe notion of minimality is introduced.

For k=5 the first implementation builds the separately counted component
pools (64,092 B terms, 3,964 A terms, 487 forests), filters them, and counts
whole joins by features before constructing roots. The coefficient-only
implementation independently reproduces its 98,267 whole-source total and
all six price rows. N5 later reduces this count to 87,124; the final evidence
retains the complete check of the **larger** 98,267-source cell. It is safe to
retain those extra terms. For k=4 the raw B pool alone has 334,791 terms, so
it was never constructed; the feature-directed generator is essential.

### 2.4 Site theory: the actual scope

Zcore's T1/T2 applies to lambda-rooted readers and Lemma H to
`(lambda a s.M) j`. The report explicitly leaves general application-rooted
hand-offs open. A cost-preserving transport to that scope was not proved here,
so I did not impose a blanket one-site/8–15-bit rule on arbitrary root lets.
Likewise Lemma A/A2 requires a closable anchor and G0 transport; an arbitrary
source occurrence of `s I` is insufficient. A shared putative bit binder may
receive a non-bit at another call, as Lemma S warns.

This is a material remaining boundary, not permission to discard the sites.
It prevents using the desired conclusion as an enumeration filter.

### 2.5 New kernel certificate tools [L]

`Certificates.lean` copies the handlerlet proof rules and adds:

- total finite beta replay at explicit source paths, with a soundness proof;
- absent-variable, persistent-head and head-prefix-cycle refutations after
  such a replay;
- a rigid zero-output argument loop rule;
- **grounding:** substituting I for all four rigid probe variables maps any
  zero-law proof to a reduction of the grounded instance to I. Therefore a
  checked weak-head cycle in that specialized instance refutes the reader;
- the existing BB35Spine positive-tower exclusion with arbitrary pending
  operands, followed by a finite reduction from the original source.

Cycles require a genuine weak-head contraction followed by beta reductions
that cannot increase its finite head clock. No cycle in an erasable argument
is mistaken for head divergence. All new rules and all concrete refutations
use only propext and Quot.sound.

### 2.6 A proposed eta cut: exact price [L], law transport unfinished

`EtaPrice.lean` proves for every source context C and hygienic eta expansion:

    w(C[lambda x.P x]) - w(C[P]) = 6 + F_nonj(P) + 4 h(P).

The proposed next step is that source eta contraction preserves these reader
laws because their targets are both beta-normal and eta-normal. Oriented
beta/eta postponement would prove this separately on every probe, without
assuming R normalizes. `ETA_REDUCTION.md` states the needed commuting lemma
and its handwritten argument. Its law transport has **not** been kernel
checked or independently reviewed, so this cut is **not used** in the
certified counts.

It would remove 346 literal source-eta cases (53 in 4A, 278 in 4B, 15 in
4Cs), leaving 234 boundary candidates. `eta_inventory.json` records each
source path, reduct and exact price. This is a proposed improvement, not an
additional certified exclusion.

## 3. Checked exclusions and priced survivors

### 3.1 Complete generated inventories, partial exception adjudication

| Cell | Sources checked | Finite definitive failures | Lean-refuted exceptions | Unresolved |
|---|---:|---:|---:|---:|
| k=5,d=0 | 98,267 | 79,544 | 18,566 | 157 |
| k=4,d=1,j in A | 55,395 | 53,376 | 1,961 | 58 |
| k=4,d=1,j in B | 82,891 | 71,496 | 11,057 | 338 |
| k=4,d=1,j in pending operands | 4,268 | 3,082 | 1,159 | 27 |
| Total across separate checks | 240,821 | 207,498 | 32,743 | 580 |

A definitive finite failure is a different beta-normal form, an incompatible
persistent rigid head/arity, a lambda instead of the zero target, or loss of
a required free variable after actual beta steps. All but seven failures
use zero; those seven pending-hole sources lose a required variable on n=1.
No source passes both necessary probes without an evaluation exception.

The unresolved entries are **resource/normalizer exceptions**, not readers.
Every excluded exception has an individual theorem `not Reader r` for its
original source. `Reader` already requires zero and n=1, so each theorem
also refutes the full-law class. The finite inventories and completeness
argument have not been formalized inside Lean.

### 3.2 Exact residual prices [C]

| Cell | w=43,L=3 | w=44,L=3 | w=45,L=3 | w=45,L=4 |
|---|---:|---:|---:|---:|
| k=5,d=0 | 32 | 78 | 47 | 0 |
| k=4,d=1,j in A | 5 | 48 | 5 | 0 |
| k=4,d=1,j in B | 23 | 250 | 57 | 8 |
| k=4,d=1,j in pending operands | 0 | 0 | 0 | 27 |

Consequently the checked evidence **does completely exclude**, under the
stated minimum/profile hypotheses:

- weight 42 in either tight row;
- every k=5,L=4 source below 46;
- every k=5 source with j in A;
- every k=4,d=1,L=4 source with j in A;
- every k=4,d=1,L=3 source with j in a pending operand;
- weight 44 for L=4 in either row.

These are conditional source-family results, not an unconditional reader
floor. Every unresolved source is listed literally in `SURVIVORS.tsv` and
as its exact de Bruijn tree in `remaining.json`. `ARGUMENTS.tsv` groups them
by the root argument's exact weight.

For k=5 all 157 residuals have a lambda-free B, j in a pending operand,
and A among exactly these seven forms (u,v are A's own binders):

| A | Weight of A | Residual sources |
|---|---:|---:|
| lambda u v. v (u v) | 15 | 5 |
| lambda u v. u (v v) | 15 | 41 |
| lambda u v. u (v u) | 16 | 63 |
| lambda u v. u (u v) | 16 | 25 |
| lambda u. u (lambda v. u v c) | 21 | 14 |
| lambda u v. v (u v) c | 21 | 3 |
| lambda u v. v (u c) v | 21 | 6 |

The four-use cells have respectively six, eight and three argument forms;
the complete priced lists are in `ARGUMENTS.tsv` rather than omitted behind
an unspecified grammar.

### 3.3 Lower multiplicities: open, count-only

The following are **raw envelope counts**, not numbers of post-minimality
survivors. The grammar imposes scope, one j at the stated depth, c present,
root multiplicity k, at least three source lambdas, a lambda in A, the
known scalar weight floor, and w<=45. It does not yet impose live-binder
ownership, all local contraction prices, or the complete role cuts.

| k | d | Raw envelope |
|---:|---:|---:|
| 4 | 0 | 61,773,420 |
| 3 | 1 | 59,106,558 |
| 3 | 0 | 203,313,616 |
| 2 | 1 | 140,278,740 |
| 2 | 0 | 619,696,662 |
| 1 | 1 | 401,774,345 |
| 1 | 0 | 2,545,566,335 |

`remainder_count.py` computes these coefficients without constructing a
single term; each run took under 0.9 s / 24 MB. These envelopes were not
checked or sliced into batches. Bringing their actual surviving inventories
under the cap still needs a semantic reduction. Restricted minimal-leaf
profile counts in `profile*.json` are not the whole remainder.

### 3.4 Resources, certification and reproducibility

The four source checks took 13.14 / 6.42 / 6.48 / 0.54 seconds, at peak
80 / 42 / 55 / 31 MB, one compute thread plus one watchdog thread.
Every source cell is below 100,000 terms. Successful auxiliary checks stayed
below two minutes and 1 GB. The longest successful certificate-discovery
pass took 98.98 s; failed capped attempts are disclosed below.

All **56 Lean proof modules** passed at -j2. The largest file took
**10.69 s**, peak **802 MB**, below the 2-minute/2-GB file caps. Proof files
contain at most 600 statements from an already compliant source cell;
this is proof-artifact sharding, not slicing an over-cap source inventory.
`manifest.json` maps sources to theorems; `verification.json` records every
file hash, resource result and axiom audit. `validate.py` verifies the
certificate/unresolved partition and all 32,743 theorem log entries.

Minimal reproduction from the repository root (set PYTHONDONTWRITEBYTECODE=1):

    python3 tmp/round4/rootlet/boundary.py
    python3 tmp/round4/rootlet/check_boundary.py
    python3 tmp/round4/rootlet/filtered.py 4
    python3 tmp/round4/rootlet/check_filtered.py 4 A
    python3 tmp/round4/rootlet/check_filtered.py 4 B
    python3 tmp/round4/rootlet/check_filtered.py 4 Cs
    python3 tmp/round4/rootlet/run_limited.py Certificates.lean
    python3 tmp/round4/rootlet/run_all.py
    python3 tmp/round4/rootlet/run_limited.py EtaPrice.lean
    python3 tmp/round4/rootlet/validate.py

Saved discovery JSON supplies every concrete proof witness; re-running a
resource-bounded discovery heuristic is unnecessary for replay. `export.py`
rebuilds the proof source from those witnesses. `controls.py` reruns the two
known positive controls. `catalog.py` regenerates the priced residual list.

One mixed-cycle BFS reached its 100,000-expanded-state guard and aborted;
two more ambitious deterministic/grounded attempts reached their 110-second
alarms. They supply no exclusions. Bounded rediscovery retained explicit
unknowns. A lane-local lab build took 48.39 s with two jobs; three small
Ratchet-family searches found no additional certificate. None of their
unresolved outcomes is treated as a refutation.

## 4. Honest read and next proof step

The root-let branch is not closed, and I did not finish certification of
every cutoff. The deliverable is a reproducible semantic inventory cut,
32,743 checked exception refutations, complete exclusions of the subcells
listed above, and a literal priced catalogue of the unresolved boundary.
The lower-k cells still require substantial structural work.

The best next proof step is the eta law-transport lemma: its exact price is
already kernel-checked, and 346 current exceptions have the requisite source
shape. It uses normalization of the **given probes**, which the laws supply,
not normalization of the reader source. After that, the remaining boundary
is concentrated in a few small closed two-binder combinators, including
Church iteration and self-application with growing argument stacks.
Symbolic Church evaluation and parameterized head-recurrence invariants are
more appropriate there than longer normalization budgets.

For the lower-k hand-off bulk, the missing ingredient is still pricing which
source lambda receives the stream and which receives j, while preserving
shared code. Site theory needs that control-flow bridge before its charges
can be transferred. Normalizing the source, assuming copied j remains one
hole, or charging independently copied roles would not supply it.

All writes are confined to this lane. No tracked source was edited, no
commit was made, and no consult-back or delegation was performed.
