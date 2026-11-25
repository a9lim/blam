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

| path | what it is |
|---|---|
| `size40.tar.xz` | the lane's proof of the size: its report (`REPORT-40.md`: the classification argument, the counts by resource triple and certificate kind, the residual families, what is kernel-checked and what is not), the two enumerators (`enum.cpp` by resource triple, `cross.rs` over every closed term), the inventory (`wires.txt`), the certificates and ledger (`certs.json`, `ledger.json`, `complete.tsv`, `residuals.tsv`), the generators, and the Lean modules: `Batch*.lean` (each literal term's wire, each trace and predicate), `Floor40.lean`, `WGrammar*.lean`, `RegularBase.lean` and `R*.lean` (regular Krivine-machine invariants), `Weighted.lean` and `WeightedRows.lean` (the all-size weighted rank), `Parity.lean`, `Residuals.lean` |
| `pack.py` | `pack.py check 40` unpacks a size into `tmp/recheck/` and runs the lane's three checks: both enumerators again against the recorded inventory, every Lean literal and certificate against the ledger, and a recompilation of every module from source, one Lean process at a time under 900 MB, with the axioms of each complete exclusion. `pack.py pack` made the tarball from the lane's working directory |
| `audit/audit_enum.c` | an independent completeness audit (Claude): it enumerates every closed term of exactly `N` bits and keeps those with two incomparable nonlinear binders, a subterm with three distinct free variables, and no redex whose contraction (carried out and measured) is strictly shorter. Written from the definitions, not from the lane's enumerators. `cc -O2 -o audit_enum audit_enum.c; ./audit_enum 40 > survivors.txt` takes 9 s |
| `audit/compare.py` | compares the survivors with a lane's inventory: the inventory must lie inside them, contain every application-rooted survivor, and omit a λ-rooted one only for two leading lambdas, a dead continuation or no internal width. At 40: 36,592 survivors; the 9,132 application-rooted ones are the lane's; the 26,308 omitted are 16,042, 1,686 and 8,580 |
| `audit/replay.py` | an independent replay of the finite certificates: it recomputes each head reduction with its own reducer and tests the claimed predicate with its own code. At 40 all 9,978 are confirmed |

What is not kernel-checked at these sizes: the enumerators (three
implementations agree), the implications from the seven finite predicates to
the contract, and the combination with the previous floor.
