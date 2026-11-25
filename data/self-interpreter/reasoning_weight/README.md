# The reader floor by weight

A reader of weight below `W`, if one exists, has a global minimum of weight
below `W`, and by `docs/classical/self-interpreter/class-bound.md` §3 a
minimum below 46 is a nonlinear root let in the cells still open. So refuting
every open source of weight below `W` proves `w ≥ W` for every reader and
`116 + W` bits for every member of the separated class, without closing any
cell whole. Codex's lane has taken this to `W = 44`: **every reader weighs at
least 44 and every member has at least 160 bits**, conditional on the round-4
structure results and on the coefficient grammar's coverage, which are
handwritten in part. The kernel-checked floor is still 146.

What was checked: the 854,802 open sources of weight at most 43, in the nine
cells the record named as over the cap and in 128 smaller cells that earlier
rounds had counted and never checked. Each source is put through the zero
law and then the unary laws of lengths 1 to 3 by a Python comparator. Most
fail with a finite mismatch; the rest are normalizer exceptions (a cut-off or
a cycle), and each of those is refuted by a Lean theorem `¬ Reader r` about
the literal source. No source passes.

| weights | sources | mismatch on the zero law | at length one | Lean theorems | generated modules | `pack.py recheck` |
|---|---:|---:|---:|---:|---:|---|
| 32 to 41 | 214,981 | 202,912 | 32 | 12,037 | 311 | 225 s, peak 652 MB |
| 42 | 210,988 | 198,242 | 39 | 12,707 | 894 | 343 s, peak 609 MB |
| 43 | 428,833 | 404,991 | 61 | 23,781 | 2,701 | 424 s, peak 654 MB |
| all | 854,802 | 806,145 | 132 | 48,525 | 3,906 | |

The last column is the wall time and peak memory of recompiling the slice on
the M5 Max, with one Lean process for the first two rows and two after.

| path | what it is |
|---|---|
| `histogram.tsv` | open sources by cell and weight, 32 to 45 (3,219,594 in all; the `(2,0,Cs,x,3,1)` row is the closed control cell and is not counted). It was fixed before any weight was checked |
| `audit.json`, `audit-w42.json`, `audit-w43.json` | the totals of the check through weight 41 and at each later weight, by outcome and certificate kind |
| `proofs/w32-41.tar.xz`, `proofs/w42.tar.xz`, `proofs/w43.tar.xz` | the generated Lean modules of each slice, with the list of their hashes and the manifest that gives each exception's weight, certificate kind, source hash, module and theorem. The slices from weight 42 on also carry the finite check's record per cell (totals, mismatches by probe, exception sources) |
| `proofs/*.lean` | the eleven hand-written support modules the generated ones import (from the round-4 lane archives) |
| `pack.py` | unpacks a slice and checks it: `recheck` recompiles every module from source and checks each theorem's statement and axioms; `match` checks by reading that the cells and counts are those of `histogram.tsv` and that each theorem's literal is the source the finite check flagged |
| `count.py`, `table.py`, `probe.py`, `cert.py`, `leancheck.py`, … | the lane's scripts through weight 41: counting from the coefficient grammar, source generation, the finite check, certificate assignment, the Lean driver |
| `scripts-w42/`, `scripts-w43/` | its scripts for each later weight: the finite check cell by cell, certificate assignment, the certificates built for the sources the standing finders left (fifteen at weight 42, sixty at weight 43), and its audit. They import the scripts above and expect to sit beside them |
| `archive/` | the round-4 lane code those scripts import (from commit `703f50d`) |
| `consult/` | the lane's replies, and the replies of two fresh-context audits that read the code and the arguments without running them: of the first slice, and of what changes from weight 42 to 45 |

Evidence, by kind: the 48,525 theorems and the price `|E| ≥ 116 + w(R)` are
kernel-checked (axioms `propext`, `Quot.sound`, in a few `Classical.choice`);
the 806,277 mismatches rest on the Python generator and comparator; the claim
that the enumerated envelope contains every source a minimum reader below 44
could be rests on the round-4 reductions and the coefficient grammar, two of
whose exclusions use the engine's divergence verdicts (3,508 and 1,511
sources; `class-bound.md` §2).

The certificates are of two sorts. Nearly all exceptions fall to the standing
families of the round-4 lanes, each a general Lean theorem applied to the
literal source: a weak-head prefix loop, a mixed cycle, a flow annotation
that keeps the required head out of the reduct, a missing rigid leaf, a
template or growing helper. The few left at each weight get a certificate
built for them, kernel-checked in the slice itself: closure-and-stack
invariants of a diverging helper, the recursor and lark diagonals, and at
weight 43 finite type tables (grades, recursive application types, push and
delay types) and a closed orbit under rigid arguments.

The lane's scripts cap themselves (two minutes and 905 MB per run, one Lean
module at a time at 680 MB, at most 100,000 sources in a check). The
intermediate files they write (coefficient blocks, probe and certificate
records, build logs) are not kept. Rerunning the finite check repeats up to
92,000 source checks in one run; do not run it casually.
