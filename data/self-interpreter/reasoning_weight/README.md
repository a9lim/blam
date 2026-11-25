# The reader floor by weight

A reader of weight below `W`, if one exists, has a global minimum of weight
below `W`, and by `docs/classical/self-interpreter/class-bound.md` §3 a
minimum below 46 is a nonlinear root let in the cells still open. So refuting
every open source of weight below `W` proves `w ≥ W` for every reader and
`116 + W` bits for every member of the separated class, without closing any
cell whole. Codex's lane has taken this to `W = 43`: **every reader weighs at
least 43 and every member has at least 159 bits**, conditional on the round-4
structure results and on the coefficient grammar's coverage, which are
handwritten in part. The kernel-checked floor is still 146.

What was checked: the 425,969 open sources of weight at most 42, in the nine
cells the record named as over the cap and in 128 smaller cells that earlier
rounds had counted and never checked. Each source is put through the zero
law and then the unary laws of lengths 1 to 3 by a Python comparator. Most
fail with a finite mismatch; the rest are normalizer exceptions (a cut-off or
a cycle), and each of those is refuted by a Lean theorem `¬ Reader r` about
the literal source. No source passes.

| weights | sources | mismatch on the zero law | at length one | Lean theorems |
|---|---:|---:|---:|---:|
| 32 to 41 | 214,981 | 202,912 | 32 | 12,037 |
| 42 | 210,988 | 198,242 | 39 | 12,707 |
| all | 425,969 | 401,154 | 71 | 24,744 |

| path | what it is |
|---|---|
| `histogram.tsv` | open sources by cell and weight, 32 to 45 (3,219,594 in all; the `(2,0,Cs,x,3,1)` row is the closed control cell and is not counted). It was fixed before any weight was checked |
| `audit.json`, `audit-w42.json` | the totals of the check through weight 41 and at weight 42, by outcome and certificate kind |
| `proofs/w32-41.tar.xz`, `proofs/w42.tar.xz` | the generated Lean modules (311 and 894), with the list of their hashes and the manifest that gives each exception's weight, certificate kind, source hash, module and theorem. The weight-42 slice also carries the finite check's record per cell (totals, mismatches by probe, exception sources) |
| `proofs/*.lean` | the eleven hand-written support modules the generated ones import (from the round-4 lane archives) |
| `pack.py` | unpacks a slice and checks it: `recheck` recompiles every module from source and checks each theorem's statement and axioms; `match` checks by reading that the cells and counts are those of `histogram.tsv` and that each theorem's literal is the source the finite check flagged |
| `count.py`, `table.py`, `probe.py`, `cert.py`, `leancheck.py`, … | the lane's scripts through weight 41: counting from the coefficient grammar, source generation, the finite check, certificate assignment, the Lean driver |
| `w42run.py`, `w42cert.py`, `w42regular.py`, `w42compact.py`, `w42model.py`, `w42split.py`, `w42audit.py`, `w42inspect.py` | its scripts for weight 42: the finite check cell by cell, certificate assignment, the closure-and-stack certificates for the fifteen sources the earlier finders left, and its audit |
| `archive/` | the round-4 lane code those scripts import (from commit `703f50d`) |
| `consult/` | the lane's replies and the reply of a fresh-context audit of the first slice that read the code and the arguments without running them |

Evidence, by kind: the 24,744 theorems and the price `|E| ≥ 116 + w(R)` are
kernel-checked (axioms `propext`, `Quot.sound`, in a few `Classical.choice`);
the 401,225 mismatches rest on the Python generator and comparator; the claim
that the enumerated envelope contains every source a minimum reader below 43
could be rests on the round-4 reductions and the coefficient grammar.

Measured on the M5 Max, one Lean process at a time: `pack.py recheck w42`
recompiles the 894 modules in 343 s (peak 609 MB) and `pack.py recheck w32-41`
the 311 in 225 s (peak 652 MB). Every theorem depends on `propext` and
`Quot.sound`, and fourteen in each slice also on `Classical.choice`.
`pack.py match w42` reads only and takes five seconds.

The lane's scripts cap themselves (two minutes and 905 MB per run, one Lean
module at a time at 680 MB, at most 100,000 sources in a check). The
intermediate files they write (coefficient blocks, probe and certificate
records, build logs) are not kept. Rerunning the finite check repeats up to
64,253 source checks in one run; do not run it casually.
