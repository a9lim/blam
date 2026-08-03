# Frontier candidate maps

Two untrusted instruments map the unknowns frontier for the
certificate campaign: `tracescan` (src/bin/tracescan.rs) classifies
terms by the *shape* of their normal-order reduction; `certdiag`
(src/bin/certdiag.rs) runs the ratchet discovery pipeline and reports,
per term, exactly where it drops out. Nothing here is a kill — the
live kill state is `ratchet_kills.txt` + AGENTS.md. Raw tables
regenerate in minutes (`tracescan --file unknowns_v8.txt --out …`,
`certdiag <terms> --threads 8`); superseded map generations live in
git history.

**The standing caveat, proved by the selector sweep**: certdiag
buckets are abort fingerprints under ONE candidate triple, not class
boundaries. The zfirst bucket's single-candidate probe accepted 30
terms; the streaming sweep then killed 40. Bucket counts bound
certificate classes from below only, and new-class obligations must
be derived from an actual exemplar's trace, never from a bucket.

## The instruments

**tracescan** is a from-scratch normal-order stepper (1-indexed de
Bruijn; contract the head redex; reduce under lambdas), reduction
discipline identical to `loop32_trace.py`. Nodes cache tree size, max
free index, is-normal, and a 128-bit structural hash: closed subterms
are shared by substitution, normal subterms are skipped in O(1) by the
redex search, and state/head identity is O(1). Budget: 20,000 steps;
hard abort at 500k tree nodes; 1M-node per-step and 8e9-node per-term
allocation meters (measured non-binding: every term either completes
20,000 steps or hits the node cap, none is meter-truncated).

Agreement gates, run before any sweep:

- `tracescan --verify-loop32`: loop32 lands in `ratchet-candidate`
  with head `0001011010000110110` = `A = \x. x x (\y. y x)`, arity
  k=1, milestone steps 1;3;7;13;21;31;43;57;73;91;111;133 and cycle
  gaps exactly 2n+2.
- State size / spine arity / head size at steps 10, 100, 1000 agree
  exactly with the Python reference on loop32 and two other frontier
  terms.
- The `periodic` detector fires on Omega = `010001101000011010`
  (period 1) — a zero count in that class is a real negative.
- Output is deterministic across thread counts (all tie-breaks are on
  explicit total orders, never HashMap iteration order).

A stepper sanity invariant: **no frontier term may reach a normal
form** here — every input already survived 10⁷ β of KN plus the 2M-cap
escalation engine, so an `ANOMALY-nf` row is a stepper bug, not a
discovery.

**certdiag** instruments the discovery pipeline stage by stage
(no-family → family → window → growth → occur → plug → verify), plus
HTR/selector obligation probes and wrapper-drift measurement. A
`KILL` row would be a certsearch regression.

## Reduction-shape classes (tracescan)

First match wins; `blowup` sits after the structural classes, so a
capped term showing a recurring head reports under the head class
(the `hit_node_cap` column carries the overlap).

| class | criterion |
|---|---|
| `periodic` | the 128-bit structural hash of the *full state* recurs exactly |
| `ratchet-candidate` | some abstraction head `H` heads ≥4 states of one arity `H x1 .. xk` with `x1` strictly growing **and** each `x1` a proper subterm of the next (nested growth) |
| `head-recurrent-other` | some spine-head hash recurs ≥4 times, without nested growth |
| `monotone-growth` | ≥90% of consecutive state-size deltas positive, no head recurring ≥4 times |
| `blowup` | hit the 500k-node cap (or the per-step allocation cap) with none of the above |
| `opaque` | 20,000 steps exhausted, none of the above |

## Measured maps

**4..40** (measured 2026-07-31 on the then-2,032-term pre-certificate
frontier; the campaign has since killed 144 of them — raw table in
git history):

| class | count | share |
|---|---:|---:|
| `ratchet-candidate` | 305 | 15.0% |
| `head-recurrent-other` | 450 | 22.1% |
| `monotone-growth` | 332 | 16.3% |
| `blowup` | 351 | 17.3% |
| `opaque` | 594 | 29.2% |

**n=41 residue** (`classify41.csv`, measured 2026-08-01 on the 2,381
terms unresolved after the v1/v2 sweeps; the selector sweep since
killed 34, leaving 2,347 live): opaque 775, blowup 580,
head-recurrent-other 570, ratchet-candidate 231, monotone-growth 225.

## Structural findings that drive the class roadmap

**Exact recurrence is extinct on the frontier.** Not one frontier
term's full state hash repeats within 20,000 steps (the detector is
live — it fires on Omega). The frontier is precisely the residue
where bounded-window recurrence has already failed; generalizing
`redloop` to arbitrary exact state recurrence buys nothing.
Certificates must quantify over a growing parameter — which is what
every ratchet class does.

**Ratchet candidates collapse into few families.** The 305 candidates
at 4..40 share 189 distinct milestone heads; the largest family (45
terms, sizes 32..40) is loop32's own `A = \x. x x (\y. y x)` with
milestone gaps `2n+c` and only the INIT lead-in varying — one
`(A, W, C0)` triple plus per-term INIT discharges the lot. A second
family (13 terms) ratchets on bare `\x. x x` with *geometric*
milestone growth (e.g. `x → 2x+5`, `x → 3x−2`): wrappers that
duplicate `Z`. The v1 glue proof nowhere needs W linear in Z, so
these are in scope — but they are why discovery anti-unifies rather
than assuming a linear tower. Candidate arity ranges up to 57, which
is why milestones are keyed by (head, spine arity) rather than the
bare `A Z` shape.

**Under-binder states dominate the frontier.** 65% of the 4..40
frontier (and 68.6% at n=41) spends >90% of its observed states as a
bare abstraction — the whole reduction happens under a leading
lambda, where a top-level spine matcher is blind. This motivated the
v1.1 under-binder extension (strip leading lambdas, analyse the real
head; the certificate gates force closedness, so soundness is
unchanged). The `opaque` class is the pure form: linear size
envelope, sawtooth trace (median positive-delta fraction 0.168), no
top-level structure at all.

**Spine growth is a third axis no class yet covers.** 180 terms at
4..40 (367 at n=41) reach spine arity ≥ 100 — max observed 8,228:
a recurring head `H t1 … tk` with *k itself* climbing, arguments
pushed faster than consumed. Nested-growth detection looks at `t1`
and sees nothing, so these sit in `head-recurrent-other`, but they
are as structured as ratchets. A certificate here needs an obligation
whose conclusion has one more spine argument than its premise — a
well-defined extension, unbuilt.

## Discovery abort map (certdiag)

Measured 2026-08-01 over the 456 then-live ratchet-candidates (225 at
4..40 + 231 at 41), before the selector sweep. Headline: **387/456
produce a fully plug-consistent candidate triple that the trusted
verifier rejects** (369 at OPEN, 18 at DESC) — discovery is not the
gap; the certificate *shapes* are. Family census by abort signature,
with the readings that survived adversarial review:

- **zfirst, 131** — OPEN aborts at exactly `Z W[Z]`; HTR's SPREAD
  then aborts on an endpoint mismatch (not a Z-headed reduction). On
  the forcing exemplar the wrapper is a *selector* — this bucket
  yielded the v3 SelectorRatchet and its 40 kills. The residue is a
  different shape; next variant comes from a survivor trace
  (SPEC.md §8.2). Exemplar: `01000110100001100001011000001111010`.
- **resource, 74** — the candidate's OPEN blows the symbolic budget
  (giant cycles or wrong-family candidates).
- **drift, 63** — consecutive milestones nest under a *different*
  wrapper each level. Not yet evidence for a level-indexed family:
  the exemplar's milestones share no finite generator, and the class
  is gated until one is exhibited (SPEC.md §8.3).
  Exemplar: `0100011010000110000110011100111000110`.
- **passenger, 48** — OPEN aborts at `Z ⟨Z P[Z]⟩ W[Z]`; the
  interleaved argument is metavariable-bearing and controls the
  descent. This is the PassengerDiagonalRatchet, first in the v4
  build order — assembly fully derived in SPEC.md §8.1, 4
  probe-accepted exemplars (a lower bound).
  Exemplar: `010001101000010110011000110000110110`.
- **selfapp, 26** — OPEN ends at bare `Z Z`: the cycle mints no
  wrapper at OPEN's end; growth lives elsewhere.
  Exemplar: `010001101000010001101001011000001010`.
- **badsrc, 38** — an OPEN source state is an abstraction: the chain
  cannot lift through a left spine as-is.
  Exemplar: `010001011010100000010101101000111010`.
- **descfail, 17 / no-nest, 6 / other, 53** — DESC-stage aborts,
  non-nesting windows, mixed abort spines.
