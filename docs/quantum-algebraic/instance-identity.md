# qALC gate-instance identity

**Status: closed at the Gate-1 acceptance boundary.**
`(gate, instance)` identifies one dynamic copy of either fixed invocation gate.
The epoch-bearing recall row is injective on every source with canonical RS
(W2), with no reachability premise (`../../qalc/RecallEpoch.lean`). Admission
separately checks the stronger source-projection form of reachable-recall
injectivity (RRI) on every finite carrier; the concrete Lean replay proves it
for all 17 canonical typed sectors.

## 1. Gate-copy theorem

For a closed BLC program `p`, qALC runs the immutable invocation

```text
P := (p h) t.
```

Program syntax contains no gate constants, so `P` has exactly two gate leaves:

```text
q_h = fa,       q_t = a.
```

A lambda-IAM copy address is the immutable code position `q` together with
its complete log `L`. Reachable states satisfy the balance invariant

```text
|L| = level(q),
```

where level is the number of argument edges in the rooted path. Both gate
leaves have level one. A successful gate entry also requires the log head to
be a real logged position `i`; otherwise the machine enters the typed
`no-instance` sector. Therefore every successful visit has

```text
L = (i),       (gate, i) -> (q_gate, (i)).
```

Two runtime keys are equal exactly when their complete gate-copy addresses are
equal. Across invocation sectors the global address additionally includes
`p`. The theorem uses only fixed invocation syntax, the lambda-IAM balance
invariant, and successful gate entry; it does not depend on typing,
certificates, or H/T amplitudes.

A key does not identify the rest of a branch-local state, and one copy may be
visited repeatedly through recall and replay. General logged-position values
can repeat and are not promoted to global copy identifiers.

## 2. Reachable-recall boundary

A recall target stores the exact predecessor coordinate (ticket epoch,
optional old-frame epoch) in the new frame's epoch, so the row itself is
injective (`kernel.md` §7.5). In canonical `negative`, a reachable
frame-absent recall source augmented with its agreeing replay frame stays WF
and W7-clean and is unreachable; the two sources take `recall` to distinct
targets.

The admission statement is finite-carrier RRI, which is stronger than row
injectivity. For one term, frozen certificate, and key, erase only the
matching frame from each reachable recall source while retaining every other
coordinate. No two recall sources may share that erased projection or actual
target unless they are the same source.

`rri_direct.py` checks this on a complete nonterminal carrier, including
outgoing closure, terminal-forward coverage, dispatch purity, frame
multiplicity, source projection, and actual-target factorization. Failure or a
carrier cap rejects machine coverage; RRI is not inferred from a Gram result.

The reusable Lean layer is:

- `RRIDirectCertificate.lean`: generic complete-carrier and terminal lifting;
- `QalcConcreteKernel.lean`: executable mirror of the epoch-bearing kernel;
- `QalcConcreteCertificate.lean`: closure, source-projection RRI,
  actual-target RRI, and terminal-forward theorems;
- `QalcConcreteExport.py`: untrusted finite data/row exporter whose rows Lean
  recomputes; and
- `QalcConcreteCertificateAudit.lean`: the raw `negative` pair's disjoint
  recall targets, incomplete-carrier rejection, and certified-H reconvergence
  controls.

The generated canonical suite covers 5,220 nonterminal states, 5,279 rows,
142 recall sources, 53 certified-H sources, and 18 exact H-reconvergent
targets across all 17 typed sectors. Its proofs use ordinary kernel
`decide`, contain no `sorry`, `admit`, custom axiom, or
`native_decide`, and are rebuilt by:

```bash
python qalc/QalcConcreteBuild.py --jobs 4
```

## 3. Current claim and optional strengthening

Kernel `machine_coverage` (`certify.validate`) requires the direct
finite-carrier RRI certificate, so every erasure certificate the canonical
selector returns has passed it. The generated Lean replay exists for the 17
canonical typed sectors; `QalcConcreteExport.emit_program` generates the same
replay for any further finite sector. Rejected sectors retain the exact source-history
fallback, so the semantics remains total.

No theorem says typing or W0-W9 imply source-projection RRI on an arbitrary
unbounded reachable graph. A uniform lifecycle/minimal-carrier derivation
would be useful structure, but it is optional: neither Gate 1, Gate 2, nor the
Rust reference implementation depends on it.

The executable `instance_identity.py` freezes the gate-copy reconstruction
and the raw-recall distinct-target control; `rri.py` is a finite falsification
instrument. The authoritative acceptance boundary is `../../qalc/GATE1.md`,
not the absence of a counterexample in either sweep.

## 4. Source pin

The lambda-IAM definitions, balance invariant, reversibility theorem, and
proof-net reading of logs are in Accattoli, Dal Lago, and Vanoni,
*The Abstract Machinery of Interaction*
([arXiv:2002.05649](https://arxiv.org/abs/2002.05649)), sections 3-4 and 11.
The exact qALC conventions are pinned in `token.md` and `kernel.md`.
