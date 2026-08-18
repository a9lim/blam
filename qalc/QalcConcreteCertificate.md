# Concrete Lean replay of the qALC direct RRI certificate

**Status: CLOSED for the 17 canonical typed
`machine_coverage` sectors; reusable finite-sector checker complete.  The
uniform lifecycle theorem remains open.**

## Result

`QalcConcreteKernel.lean` is an executable Lean mirror of the unchanged
v1.42 transition surface used by validation-only v1.43.  It includes the
mutually recursive logged-position grammar, all eight lambda-IAM rows,
`call`/`vvar`/`recall`/`replay`, certified and uncertified `h` fire, both
Hadamard arms and signs, frame popping, KD survivor subtraction, burial and
suppression, the `t` fence, root classification, and the universal terminal
tick row.

`QalcConcreteCertificate.lean` proves that a finite candidate carrier which
passes the executable checks contains every reachable recall source.  It then
derives both:

```text
RRIOn term certificate (Reachable term certificate)
RecallTargetRRIOn term certificate (Reachable term certificate)
```

The first theorem excludes a bare/framed phase collision at one erased recall
projection.  The second proves the stronger actual-target factorization: for
same-key recall rows, a common target is equivalent to a common erased source
projection and cannot mix phases.

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

The dedicated `QalcConcreteCertificateAudit.lean` additionally pins the
registered raw absent/present negative pair as rejected, rejects an initial
prefix for nonclosure, and proves that qprime's two distinct certified
Hadamard sources have two arms and an exact common target.

The stress sector `qq` contains 2,160 states and 78 recalls.  It is generated
as 68 data modules plus 68 independently kernel-checked proof modules and one
small assembler.  This split avoids Lean's pathological snapshot traversal of
one multi-megabyte source while retaining one carrier and one final theorem.

## Trusted-computing boundary

All finite propositions use `decide +kernel`, not `native_decide`.  The source
contains no `sorry`, `admit`, or declared axiom.  `#print axioms` on the
negative, qprime, and qq `checked` and `reachable_rri` theorems reports only
Lean's foundational `propext` and `Quot.sound`; there is no generated native
evaluation axiom.

Two fingerprints are performance filters, not proof assumptions:

- RRI/target buckets compare full keys, projections, states, and phases after
  a fingerprint match.  A collision therefore triggers more exact checks.
- carrier membership uses an exporter-supplied numeric index but compares the
  full target state on every hit.  `carrierIndexedClosed_sound` proves that any
  accepted indexed closure is ordinary list-membership closure.  An incorrect
  fingerprint may make generation reject; a collision only adds full-equality
  comparisons and cannot make an invalid carrier pass.

The exporter remains untrusted in the ordinary proof-by-reflection sense.  A
missing reachable state fails Lean closure; a wrong row fails exact row
conformance; a bad hash fails indexed closure.  The concrete theorem is about
the Lean transition table, while exact row conformance on all 5,220 carrier
states supplies the executable bridge to the Python v1.43 gate.

The build is:

```bash
python qalc/QalcConcreteBuild.py --jobs 4
```

Fresh full replay on the M5 Max completed with:

```text
QALC CONCRETE RRI: PASS (155.7s)
```

## Exact remaining boundary

This closes the concrete formal-replay item for the canonical admitted
sectors and supplies a reusable generator/checker for any further finite
sector.  It does **not** prove that typing or W0--W9 imply RRI on an arbitrary
unbounded reachable graph.  The uniform no-rider/ancestry/cross-phase theorem
remains open at phase-sensitive certified-H history coherence.  It is no
longer a premise of finite `machine_coverage`, whose direct carrier gate is
the accepted-program theorem.
