# The reader floor by weight (2026-11-24)

A reader of weight below `W`, if one exists, has a global minimum of weight
below `W`, and by `docs/classical/self-interpreter/class-bound.md` §3 a
minimum below 46 is a nonlinear root let in the cells still open. So refuting
every open source of weight below `W` proves `w ≥ W` for every reader and
`116 + W` bits for every member of the separated class, without closing any
cell whole. Codex's lane took this to `W = 42`: **every reader weighs at least
42 and every member has at least 158 bits**, conditional on the round-4
structure results and on the coefficient grammar's coverage, which are
handwritten in part. The kernel-checked floor is still 146.

What was checked: the 214,981 open sources of weight at most 41, in the nine
cells the record named as over the cap and in 128 smaller cells that earlier
rounds had counted and never checked. 202,944 fail with a finite mismatch
found by the Python comparator (202,912 on the zero law, 32 at unary length
one). The other 12,037 are normalizer exceptions, each refuted by a Lean
theorem `¬ Reader r` about the literal source. No source passes.

| path | what it is |
|---|---|
| `histogram.tsv` | open sources by cell and weight, 32 to 45 (3,219,594 in all; the `(2,0,Cs,x,3,1)` row is the closed control cell and is not counted) |
| `audit.json` | the totals of the check through weight 41, by outcome and certificate kind |
| `exception-manifest.tsv` | each of the 12,037 exceptions: weight, certificate kind, hash of the source, Lean module and theorem |
| `next-weight.tsv` | the 210,988 sources at weight 42, by cell: where the floor stops |
| `proofs/Slice*.lean` | the 311 generated modules holding the 12,037 theorems; `proofs/` also holds the eleven support modules they import (copied from the round-4 lane archives) |
| `count.py`, `table.py`, `probe.py`, `cert.py`, … | the lane's scripts: counting from the coefficient grammar, source generation, the finite check, certificate assignment, the Lean driver (`leancheck.py`) |
| `archive/` | the round-4 lane code those scripts import (from commit `703f50d`) |
| `consult/` | the lane's reply and the reply of a fresh-context audit that read the code and the arguments without running them |

Evidence, by kind: the 12,037 theorems and the price `|E| ≥ 116 + w(R)` are
kernel-checked (axioms `propext`, `Quot.sound`, in a few `Classical.choice`);
the 202,944 mismatches rest on the Python generator and comparator; the claim
that the enumerated envelope contains every source a minimum reader below 42
could be rests on the round-4 reductions and the coefficient grammar.

The scripts cap themselves (two minutes and 905 MB per run, one Lean module at
a time at 680 MB). The intermediate files they write (coefficient blocks,
per-weight probe and certificate records, build logs) are not kept. Rerunning
`probe.py` repeats a finite check of up to 64,253 sources per weight; do not
run it casually.
