# The reader bound: every reader weighs at least 46

The evidence behind `docs/classical/self-interpreter/class-bound.md` §2–3.
Three parts: the search that bounds every β-normal reader (`types/`), the
inputs that fix the root-let envelope (`pending/`, `simplify/`), and the
complete check of that envelope by weight (everything else here).

## Every β-normal reader has `w ≥ 46`

Claude's needed-narrowing search over the joint laws (zero law and unary
lengths 1 and 2), with no minimality hypothesis, sharp at the 162.
`types/REPORT.md` §5 gives the partition and the five runs: `narrow.py 45
--betanormal --laws 1,2,0 --jdepth 2+` for `j` at depth ≥ 2 (99,562 states),
and for depth 1 one run per exact root arity (`narrow2.py 45 --betanormal
--jdepth 1 --prefix …` for `k = 1, 2, 3`, `narrow3.py … --minarity 4` for
`k ≥ 4`: 45,497, 78,828, 59,550 and 32,810 states, each under 0.5 GB and 35 s;
the seven `k = 3` cut-offs are refuted by hand in the report). The scripts
import `coord/rd.py` (the reader-law harness) from beside them. The rest of
`REPORT.md` is the lane's note on the method; `class-bound.md` §3 states what
the record relies on.

## The root-let envelope's inputs

| path | what it is |
|---|---|
| `pending/X_REMAINING.json`, `X_REMAINING.tsv` | the 51 listed x-headed pending sources; `tools/self-interpreter/rootlet_pending.py --check` pins each to its symbolic exclusion in `lean/Blc/SelfintRootLetPending.lean` |
| `pending/x_overcap.json` | the eight x-headed cells still over the cap after the hand-off rules (2,102,856 sources); `table.py` reads it |
| `simplify/extension_summary.json`, `*.tsv` | the λ-headed over-cap cell after the kernel-checked hand-off simplifications (`lean/Blc/SelfintSimplify*.lean`): 2,343,026 sources left, 184,628 marked non-minimum |

## The envelope, by weight

A reader of weight below `W`, if one exists, has a global minimum of weight
below `W`, and by `class-bound.md` §3 a minimum below 46 is a nonlinear root
let among the sources the minimality cuts leave. So refuting every such
source of weight below `W` proves `w ≥ W` for every reader and `116 + W`
bits for every member of the separated class. Codex's lane took this weight
by weight to `W = 46`: **every reader weighs at least 46, every member has at
least 162 bits, and the 162 is the minimum of the class**, conditional on
the reductions of §3 and on the coefficient grammar's coverage, which are
handwritten in part. The kernel-checked floor is 146.

What was checked: the 3,219,594 sources of weight 32 to 45, in the nine
cells the record named as over the cap and in 128 smaller cells that earlier
rounds had counted and never checked. Each source is put through the zero
law and then the unary laws of lengths 1 to 3 by a Python comparator. Most
fail with a finite mismatch; the rest are normalizer exceptions (a cut-off or
a cycle), and each of those is refuted by a Lean theorem `¬ Reader r` about
the literal source. No source passes. The same comparator, called the same
way, accepts the 162's and the 165's own readers on all four probes
(`positive-controls.json`).

| weights | sources | mismatch on the zero law | at length one | Lean theorems | generated modules | `pack.py recheck` |
|---|---:|---:|---:|---:|---:|---|
| 32 to 41 | 214,981 | 202,912 | 32 | 12,037 | 311 | 225 s, peak 652 MB |
| 42 | 210,988 | 198,242 | 39 | 12,707 | 894 | 343 s, peak 609 MB |
| 43 | 428,833 | 404,991 | 61 | 23,781 | 2,701 | 424 s, peak 654 MB |
| 44 | 819,916 | 776,149 | 242 | 43,525 | 1,491 | 368 s, peak 667 MB |
| 45 | 1,544,876 | 1,459,746 | 320 | 84,810 | 2,458 | 632 s, peak 664 MB |
| all | 3,219,594 | 3,042,040 | 694 | 176,860 | 7,855 | |

The last column is the wall time and peak memory of recompiling the slice on
the M5 Max, with one Lean process for the first two rows and two after.

| path | what it is |
|---|---|
| `histogram.tsv` | the sources by cell and weight, 32 to 45 (the `(2,0,Cs,x,3,1)` row is the control cell, closed whole earlier, and is not counted). It was fixed before any weight was checked |
| `audit.json`, `audit-w42.json` … `audit-w45.json` | the totals of the check through weight 41 and at each later weight, by outcome and certificate kind |
| `proofs/w32-41.tar.xz`, `proofs/w42.tar.xz` … `proofs/w45.tar.xz` | the generated Lean modules of each slice, with the list of their hashes and the manifest that gives each exception's weight, certificate kind, source hash, module and theorem. The slices from weight 42 on also carry the finite check's record per check (totals, mismatches by probe, exception sources). A cell over the cap of 100,000 sources is checked in parts, each a block interval of the cell's coefficient blocks: one cell in two parts at weight 44, four cells in ten parts at weight 45 |
| `proofs/*.lean` | the eleven hand-written support modules the generated ones import (from the round-4 lane archives) |
| `pack.py` | unpacks a slice and checks it: `recheck` recompiles every module from source and checks each theorem's statement and axioms; `match` checks by reading that the cells and counts are those of `histogram.tsv`, that the parts of a split cell cover its blocks, and that each theorem's literal is the source the finite check flagged |
| `positive-controls.json` | the comparator's outcome on the 162's reader (weight 46) and the 165's (weight 49): every probe passes |
| `count.py`, `table.py`, `probe.py`, `cert.py`, `leancheck.py`, … | the lane's scripts through weight 41: counting from the coefficient grammar, source generation, the finite check, certificate assignment, the Lean driver |
| `scripts-w42/` … `scripts-w45/` | its scripts for each later weight: the finite check cell by cell, certificate assignment, the certificates built for the sources the standing finders left, the positive control (`scripts-w45/controls45.py`), and its audit. They import the scripts above and expect to sit beside them |
| `archive/` | the round-4 lane code those scripts import (from commit `703f50d`) |
| `consult/` | the replies of three fresh-context reviews that read the code and the arguments without running them: Codex on the first slice (`reading-audit-reply.txt`) and on what changes from weight 42 to 45 (`reading-audit-42-45-reply.txt`), and Gemini's attack on the whole chain (`gemini-attack-reply.txt`) |

Evidence, by kind: the 176,860 theorems and the price `|E| ≥ 116 + w(R)` are
kernel-checked (axioms `propext`, `Quot.sound`, in some `Classical.choice`);
the 3,042,734 mismatches rest on the Python generator and comparator; the
claim that the enumerated sources include every one a minimum reader below 46
could be rests on the round-4 reductions and the coefficient grammar; four
of the exclusions in that chain use the engine's divergence verdicts (5,955
sources; `class-bound.md` §2).

The certificates are of two sorts. Nearly all exceptions fall to the standing
families of the round-4 lanes, each a general Lean theorem applied to the
literal source: a weak-head prefix loop, a mixed cycle, a flow annotation
that keeps the required head out of the reduct, a missing rigid leaf, a
template or growing helper. The few left at each weight from 42 on (15, 60,
94 and 200) get a certificate built for them,
kernel-checked in the slice itself: closure-and-stack invariants of a
diverging helper, the recursor and lark diagonals, finite type tables
(grades, recursive application types, push and delay types), orbits closed
under rigid arguments or omitting a rigid variable, a diagonal power, shared
head reductions, delayed rigid arguments and a parametric prefix recurrence.

The lane's scripts cap themselves (two minutes and 905 MB per run, one Lean
module at a time at 680 MB, at most 100,000 sources in a check). The
intermediate files they write (coefficient blocks, probe and certificate
records, build logs) are not kept. Rerunning the finite check repeats up to
92,000 source checks in one run; do not run it casually.
