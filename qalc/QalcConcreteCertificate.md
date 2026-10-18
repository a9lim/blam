# Concrete Lean replay of the qALC direct RRI certificate

**Status: CLOSED for the 17 canonical typed
`machine_coverage` sectors; reusable finite-sector checker complete.  The
uniform lifecycle theorem remains open.**

## Result

`QalcConcreteKernel.lean` is an executable Lean mirror of the `kernel.py`
transition table (register v1.44, `../docs/quantum-algebraic/kernel.md`).  It
includes the mutually recursive logged-position grammar, the recursive recall
epoch, all eight lambda-IAM rows, `call`/`vvar`/`recall`/`replay`, certified
and uncertified fire for both gates (both Hadamard arms and signs; the
diagonal `fire-t0`/`fire-t1` rows with their `ω` power), frame popping, KD
survivor subtraction, burial and suppression, every typed error row, root
classification, and the universal terminal tick row.

`QalcConcreteCertificate.lean` proves that a finite candidate carrier which
passes the executable checks contains every reachable recall source.  It then
derives both:

```text
RRIOn term certificate (Reachable term certificate)
RecallTargetRRIOn term certificate (Reachable term certificate)
```

The first theorem excludes a bare/framed phase collision at one erased recall
projection; the erased frame is the same-key, same-bit frame of any epoch.
The second is actual-target RRI: for same-key recall rows, a common target
forces a common erased source projection and phase.  The executable checker
decides exactly these two propositions — the predicate `rri_direct.py` and
`../src/qalc/admission.rs` check (`../docs/quantum-algebraic/kernel.md`
§7.5).  It does not require a common projection to force a common target:
sources differing only in the erased epoch share a projection and land
apart.

The checked carrier is terminal-covered rather than artificially truncated.
`terminal_forward` is a theorem of the concrete `step`, including every
`Done(tick) -> Done(tick+1)` row, so terminal closure is checked in Lean rather
than supplied as a trusted Python premise.

## Generated canonical theorem suite

`QalcConcreteExport.py` emits untrusted carrier data and the Python transition
rows.  Lean independently recomputes every row.  With `--include-rows`, every
carrier chunk proves exact equality between the Python row list and the Lean
row list before the closure and RRI theorems are assembled.

The current generated suite contains all 17 canonical typed h-only sectors:

```text
HH HNH negative selector lone pstar 3coin qprime q2 Ccoll
buried weave hweave qq palpha B W
```

Aggregate checked surface:

```text
Run states                 5,220
transition edges           5,279
recall sources               142
h-fire sources                59
certified h-fire sources      53
exact H reconvergent targets  18
```

The dedicated `QalcConcreteCertificateAudit.lean` additionally proves that the
registered raw absent/present `negative` pair has disjoint recall targets with
no reachability or carrier premise; that the same source cloned with a
replay-epoch matching frame is present at the absent source's projection, a
phase witness (`replay_epoch_frame_is_present`); that two clones whose
distinct frame epochs share one hash (Codex's witness) have equal target
fingerprints, distinct targets, and pass the target checker
(`hash_equal_epochs_check_exactly`);
rejects an initial prefix for nonclosure; and proves that qprime's two
distinct certified Hadamard sources have two arms and an exact common
target.

The stress sector `qq` contains 2,160 states and 78 recalls.  It is generated
as a `_Core` module (term, certificate, and chunk checkers), 68 data modules,
a `_Carrier` module that assembles them, 68 independently kernel-checked proof
modules, and an assembler that states the final theorems.  This split avoids
Lean's pathological snapshot traversal of one multi-megabyte source while
retaining one carrier and one final theorem.

## Trusted-computing boundary

All finite propositions use `decide +kernel`, not `native_decide`.  The source
contains no `sorry`, `admit`, or declared axiom.  `#print axioms` on the
negative, qprime, and qq `checked` and `reachable_rri` theorems reports only
Lean's foundational `propext` and `Quot.sound`; there is no generated native
evaluation axiom.

Two fingerprints are performance filters, not proof assumptions:

- RRI/target buckets compare full keys, projections, states, and phases after
  a fingerprint match.  Equal keys with equal projections, or equal targets,
  have equal fingerprints, so a collision only triggers more exact checks and
  changes no verdict.
- carrier membership uses an exporter-supplied numeric index but compares the
  full target state on every hit.  `carrierIndexedClosed_sound` proves that any
  accepted indexed closure is ordinary list-membership closure.  An incorrect
  fingerprint may make generation reject; a collision only adds full-equality
  comparisons and cannot make an invalid carrier pass.

The exporter remains untrusted in the ordinary proof-by-reflection sense.  A
missing reachable state fails Lean closure; a wrong row fails exact row
conformance; a bad hash fails indexed closure.  The concrete theorem is about
the Lean transition table, while exact row conformance on all 5,220 carrier
states supplies the executable bridge to the Python admission gate.  Off the
carrier the mirror is not claimed row-identical in general; replay, like
recall, types any same-key frame multiplicity as `frame-conflict`, as the
register does.

The build is:

```bash
python qalc/QalcConcreteBuild.py --jobs 4
```

It ends with `QALC CONCRETE RRI: PASS (<elapsed>s)`; a full replay measured
155.7 s on the M5 Max.

## Exact remaining boundary

This closes the concrete formal-replay item for the canonical admitted
sectors and supplies a reusable generator/checker for any further finite
sector.  Recall-row injectivity itself is structural (`RecallEpoch.lean`); the
replay does **not** prove that typing or W0--W9 imply source-projection RRI on
an arbitrary unbounded reachable graph.  The uniform
no-rider/ancestry/cross-phase theorem remains open at phase-sensitive
certified-H history coherence.  It is not a premise of finite
`machine_coverage`, whose direct carrier gate is the accepted-program theorem.
