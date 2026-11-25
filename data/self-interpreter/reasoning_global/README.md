# The global floor: the single-object theorem and the sizes from 40

Work of 2026-11-25 on the unconditional lower bound for self-interpreters
(`docs/classical/self-interpreter/global-floor.md`, `capture-width.md`,
`structural-bounds.md`). The kernel-checked floor's Lean is in
`lean/Blc/SelfintSingleObject*.lean` (`lake build Blc`); this directory keeps
the rest: the handwritten proof and its review, the exclusion of each size
from 40 on, and the audit tools.

## The single-object theorem

| path | what it is |
|---|---|
| `consult/single-object-note.md` | Claude's handwritten proof as it was given to the Lean lane: the predicate `SO`, the proposition that an `SO` term placed in two one-hole contexts cannot deliver two different variables, Theorem R (no `SO` term is β-convertible to the pairing combinator), and the application to interpreters. `capture-width.md` has the current statement; Lean has the proof |
| `consult/single-object-review-prompt.txt`, `consult/single-object-review-gemini.txt` | a fresh-context attempt to falsify the note (Gemini, reading only) and its reply: no counterexample; one precision, that the simulation lemma needs the marker fresh for the object, which the Lean proof has |
| `audit/so_falsify.py` | a falsification check of Theorem R on small terms: every closed term through a given size is tested for `SO` and for pairing behaviour (`T x y K ↠ x`, `T x y F ↠ y`, a capped Krivine machine). Through 30 bits: 647,463 terms, 82 pairing-like, none of them `SO` (2.6 s, 156 MB) |

## Sizes from 40: complete enumeration

Each size is excluded by the floor lane (Codex) from a complete enumeration
of the closed terms of that size: the candidates are those with two
incomparable nonlinear binders, the width witness and no shortening
contraction (for a λ-root: one leading lambda, a live continuation, the
witness inside the body), and each candidate gets a kernel-checked finite
certificate or a complete Lean proof of `¬ IsSelfInterpreter`.

| size | closed terms | candidates | finite certificates | Lean exclusions | residual proofs among them | Lean modules | `pack.py check` |
|---:|---:|---:|---:|---:|---:|---:|---|
| 40 | 130,880,047 | 10,284 | 9,978 | 306 | 92 | 345 | 200 s, peak 854 MB |
| 41 | 242,222,714 | 23,916 | 22,331 | 1,585 | 483 | 1,183 | 742 s, peak 846 MB |
| 42 | 452,574,468 | 43,244 | 41,022 | 2,222 | 491 | 901 | 709 s, peak 729 MB |
| 43 | 840,914,719 | 106,102 | 100,493 | 5,609 | 1,880 | 1,231 | 509 s, peak 926 MB, four Lean processes |
| 44 | 1,573,331,752 | 188,768 | 179,166 | 9,602 | 3,386 | 8,852 | 1,757 s, peak 976 MB, four Lean processes; 8,449 files regenerated |

| path | what it is |
|---|---|
| `size40.tar.xz` … `size44.tar.xz` | each lane's proof of its size: its report (`REPORT-N.md`: the classification argument, the counts by resource triple and certificate kind, the residual families, what is kernel-checked and what is not), its enumerators (by resource triple, and over every closed term), the inventory (`wires.txt`), the certificates and ledger (`certs.json`, `ledger.json`, `complete.tsv`, `residuals.tsv`), the generators, and the Lean modules: batches with each literal term's wire, each trace and predicate; the finite predicates; and the residual families: `W/B` grammar, regular Krivine-machine invariants, the all-size weighted rank, finite ordered application tables (`ChainModel`; sizes 41 and 42), recursive intersection-arrow type rules (`Types.lean`; from size 43, with flow-derived type derivations at 44), single-object reducts and proofs for single layouts. Sizes 41 to 44 were excluded in parallel, each by its own lane and conditional on the sizes below until those closed; size 41's last fourteen layouts were proved by the size-42 lane's tables and size 44's last 75 by the size-43 lane's type rules, each proof stated about the receiving lane's own literal term. From size 44 the archive is slim: `slim.json` lists, with their SHA-256, the files that `regen.py` rebuilds from the rest (the generated certificate batches and the enumerators' outputs: 8,449 files at 44), and those are left out |
| `pack.py` | `pack.py check N` unpacks a size into `tmp/recheck/`, regenerates the files a slim archive leaves out and compares each with its recorded hash, and runs the lane's three checks: both enumerators again against the recorded inventory, every Lean literal and certificate against the ledger, and a recompilation of every module from source, one Lean process at a time under 900 MB, with the axioms of each complete exclusion. `pack.py pack` made the tarball from the lane's working directory |
| `consult/size40-review-prompt.txt`, `consult/size40-review-codex.txt` | a fresh-context review of the size-40 proof by reading (Codex): the inventory filters, the seven finite predicates and the residual statements hold; one wording correction, now in `global-floor.md` (the regular invariants refute a finite weak-head clock, not normalization) |
| `consult/sizes41-43-review-prompt.txt`, `consult/sizes41-43-review-codex.txt` | the same for sizes 41 to 43, with the joins between lanes: all three exclusions hold; it re-encoded every literal term against the inventories (23,916, 43,244 and 106,102 wires), compared the fourteen imported table proofs of size 41 with that size's own declarations, and checked the 25 type rules and their 1,668 premises |
| `audit/audit_enum.c` | an independent completeness audit (Claude): it enumerates every closed term of exactly `N` bits and keeps those with two incomparable nonlinear binders, a subterm with three distinct free variables, and no redex whose contraction (carried out and measured) is strictly shorter. Written from the definitions, not from the lanes' enumerators. `cc -O2 -o audit_enum audit_enum.c; ./audit_enum 40 > survivors.txt` takes 9 s, and about twice as long for each further bit (76 s at 43) |
| `audit/compare.py` | compares the survivors with a lane's inventory: the inventory must lie inside them, contain every application-rooted survivor, and omit a λ-rooted one only for two leading lambdas, a dead continuation or no internal width. At every size from 40 to 44 the application-rooted survivors are exactly the lane's (9,132, 21,924, 37,568, 87,812 and 153,766) and every omitted λ-rooted survivor has one of the three reasons (`global-floor.md` §10 has the counts) |
| `audit/replay.py` | an independent replay of the finite certificates: it recomputes each head reduction with its own reducer and tests the claimed predicate with its own code. At 40 to 44 all are confirmed (9,978, 22,331, 41,022, 100,493 and 179,096) |
| `audit/replay_paths.py` | the same for certificates whose reductions contract redexes at stated positions and which are recorded in the generated Lean source rather than `certs.json` (`replay_paths.py 44 More*.lean` in the unpacked size: the remaining 70 of size 44, all confirmed) |

What is not kernel-checked at these sizes: the enumerators (three
implementations agree), the implications from the seven finite predicates to
the contract, and the combination with the previous floor.
