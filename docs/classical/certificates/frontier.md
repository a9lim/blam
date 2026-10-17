# Frontier candidate maps

Two untrusted instruments map the unknown frontier for certificate work:
`blam trace` (`src/cli/trace.rs`) classifies terms by the *shape* of their
normal-order reduction, and `blam cert diag` (the `diag` module of
`src/cli/cert.rs`) runs the ratchet discovery pipeline and reports, per term,
where it drops out. Both are behind the `lab` feature, and nothing here is a
kill. The kill set is the union of `data/certificates/ratchet_kills.tsv`
(`specification.md`) and the direct BB proofs (`busy-beaver.md`); the live
frontier is `data/classical/unknowns.txt`, summarized in `../../STATUS.md`.

**The standing caveat.** `cert diag` buckets are abort fingerprints under
*one* candidate triple, not class boundaries. Streaming discovery tries
triples the probe never does, so bucket counts bound certificate classes from
below only: the zfirst bucket's probe accepted 30 terms where the
SelectorRatchet sweep killed 40. A new class's obligations must come from an
actual exemplar's trace, never from a bucket.

## The instruments

**`blam trace`** is a from-scratch normal-order stepper (1-indexed de Bruijn;
contract the head redex; reduce under lambdas) with the same reduction
discipline as `tools/certificates/loop32_trace.py`. Nodes cache tree size,
max free index, normality, and a 128-bit structural hash, so closed subterms
are shared by substitution, normal subterms are skipped in O(1) by the redex
search, and state and head identity are O(1). Defaults: 20,000 steps, a hard
abort at 500k tree nodes, and 1M-node per-step and 8×10⁹-node per-term
allocation meters (measured non-binding: every term either completes 20,000
steps or hits the node cap).

Agreement gates, run before any sweep:

- `blam trace verify-loop32`: loop32 lands in `ratchet-candidate` with head
  `0001011010000110110` = `A = \x. x x (\y. y x)`, arity k=1, milestone steps
  1;3;7;13;21;31;43;57;73;91;111;133 and cycle gaps exactly 2n+2.
- State size, spine arity and head size at steps 10, 100 and 1000 agree
  exactly with the Python reference on loop32.
- The `periodic` detector fires on Ω = `010001101000011010` (period 1), so a
  zero count in that class is a real negative.
- Output is deterministic across thread counts: every tie-break is on an
  explicit total order.

A frontier term can never reach a normal form here: every input already
survived 10⁷ β of KN plus the escalation engine, so an `ANOMALY-nf` row is a
stepper bug, not a discovery.

**`blam cert diag`** instruments the discovery pipeline stage by stage
(`no-family`, `family`, `window`, `growth`, `occur`, `plug`, then `KILL`) and
adds the HeadTowerRatchet, selector (`sel`) and passenger (`pdiag`)
obligation probes plus wrapper-drift measurement. A `KILL` row on a frontier
term would be a `blam cert search` regression.

```bash
target/release/blam trace scan --file TERMS --out MAP.csv
target/release/blam cert diag TERMS --threads 8
```

Run over `data/classical/unknowns.txt`, `trace scan` maps the current
frontier. The checked-in `data/certificates/frontier_classification.csv` is
the map of the 2,381-term n=41 population left after the Ratchet and
HeadTowerRatchet sweeps; the SelectorRatchet and PassengerDiagonalRatchet
kills have since left it, so regenerate before treating its counts as the
live distribution.

## Reduction-shape classes

First match wins. `blowup` sits after the structural classes, so a capped term
with a recurring head reports under the head class (the `hit_node_cap` column
carries the overlap).

| class | criterion |
|---|---|
| `periodic` | the 128-bit structural hash of the *full state* recurs exactly |
| `ratchet-candidate` | some abstraction head `H` heads ≥4 states of one arity `H x1 .. xk` with `x1` strictly growing **and** each `x1` a proper subterm of the next (nested growth) |
| `head-recurrent-other` | some spine-head hash recurs ≥4 times, without nested growth |
| `monotone-growth` | ≥90% of consecutive state-size deltas positive, no head recurring ≥4 times |
| `blowup` | hit the 500k-node cap (or the per-step allocation cap) with none of the above |
| `opaque` | 20,000 steps exhausted, none of the above |

The n=41 map: opaque 775, blowup 580, head-recurrent-other 570,
ratchet-candidate 231, monotone-growth 225.

## Structural findings

These hold on every population the instruments have mapped: the n=41 map
above and the 2,032-term raw unknown set of 4..40 before any certificate.

**Exact recurrence is extinct on the frontier.** No frontier term's full
state hash repeats within 20,000 steps, and the detector is live (it fires on
Ω). The frontier is the residue where bounded-window recurrence has already
failed, so generalizing `redloop` to arbitrary exact state recurrence buys
nothing. Certificates must quantify over a growing parameter, which is what
every ratchet class does.

**Ratchet candidates collapse into few families.** At 4..40 the ratchet
candidates shared 189 distinct milestone heads. The largest family, 45 terms
of 32..40 bits, is loop32's own `A = \x. x x (\y. y x)` with milestone gaps
`2n+c` and only the INIT lead-in varying, so one `(A, W, C0)` triple plus
per-term INIT discharges the lot. A second family of 13 terms ratchets on bare
`\x. x x` with *geometric* milestone growth (e.g. `x → 2x+5`, `x → 3x−2`):
wrappers that duplicate `Z`. The Ratchet glue proof nowhere needs W linear in
Z, so these are in scope, but they are why discovery anti-unifies rather than
assuming a linear tower. Candidate arity ranges up to 57, which is why
milestones are keyed by (head, spine arity).

**Under-binder states dominate.** 65% of the 4..40 frontier and 68.6% of the
n=41 map spend more than 90% of their observed states as a bare abstraction:
the whole reduction happens under a leading lambda, where a top-level spine
matcher is blind. This is why INIT strips leading lambdas
(`specification.md` §3). The `opaque` class is the pure form: linear size
envelope, sawtooth trace (median positive-delta fraction 0.168 at 4..40,
0.251 at n=41), no top-level structure at all.

**Spine growth is an axis no class covers.** 180 terms at 4..40 and 367 in
the n=41 map reach spine arity ≥ 100 (maximum 16,838 at n=41): a recurring
head `H t1 … tk` with *k itself* climbing, arguments pushed faster than
consumed. Nested-growth detection looks at `t1` and sees nothing, so these sit
in `head-recurrent-other`, but they are as structured as ratchets. A
certificate here needs an obligation whose conclusion has one more spine
argument than its premise; the direct BB proofs already use exactly this
argument for individual terms (`busy-beaver.md`, "Growing argument spines").

## Discovery abort map

Over the 456 ratchet candidates of the two mapped populations (225 at 4..40
and 231 at n=41), before the SelectorRatchet and PassengerDiagonalRatchet
sweeps, 387 produce a fully plug-consistent candidate triple that the trusted
Ratchet verifier rejects (369 at OPEN, 18 at DESC). Discovery is not the gap;
the certificate *shapes* are. By abort signature:

- **zfirst, 131.** OPEN aborts at exactly `Z W[Z]`; HTR's SPREAD then aborts
  on an endpoint mismatch. On its exemplar the wrapper is a selector, which
  yielded the SelectorRatchet; the residue is a different shape
  (`specification.md` §8). Exemplar: `01000110100001100001011000001111010`.
- **resource, 74.** The candidate's OPEN blows the symbolic budget (giant
  cycles or wrong-family candidates).
- **drift, 63.** Consecutive milestones nest under a different wrapper each
  level. The exemplar's milestones share no finite generator, so the class is
  gated until one is exhibited (`specification.md` §8). Exemplar:
  `0100011010000110000110011100111000110`.
- **passenger, 48.** OPEN aborts at `Z ⟨Z P[Z]⟩ W[Z]`: the interleaved
  argument is metavariable-bearing and controls the descent. This is the
  PassengerDiagonalRatchet (`specification.md` §7). Exemplar:
  `010001101000010110011000110000110110`.
- **selfapp, 26.** OPEN ends at bare `Z Z`: the cycle mints no wrapper at
  OPEN's end, and growth lives elsewhere. Exemplar:
  `010001101000010001101001011000001010`.
- **badsrc, 38.** An OPEN source state is an abstraction, so the chain cannot
  lift through a left spine as is. Exemplar:
  `010001011010100000010101101000111010`.
- **descfail 17, no-nest 6, other 53.** DESC-stage aborts, non-nesting
  windows, and mixed abort spines.

The zfirst and passenger exemplars are kills; the drift, selfapp and
badsrc exemplars are still on the frontier.
