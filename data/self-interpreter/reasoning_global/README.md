# The global floor: the single-object theorem and the sizes above 36

Work of 2026-11-25 on the unconditional lower bound for self-interpreters
(`docs/classical/self-interpreter/global-floor.md`, `capture-width.md`,
`structural-bounds.md`). The Lean is in `lean/Blc/SelfintSingleObject*.lean`
(`lake build Blc`); this directory keeps what is not Lean.

| path | what it is |
|---|---|
| `consult/single-object-note.md` | Claude's handwritten proof of the single-object theorem as it was given to the Lean lane: the predicate `SO`, the proposition that an `SO` term placed in two one-hole contexts cannot deliver two different variables, Theorem R (no `SO` term is β-convertible to the pairing combinator), and the application to interpreters. `capture-width.md` has the current statement; Lean has the proof |
| `consult/single-object-review-prompt.txt`, `consult/single-object-review-gemini.txt` | a fresh-context attempt to falsify the note (Gemini, reading only) and its reply: no counterexample; one precision, that the simulation lemma needs the marker fresh for the object, which the Lean proof has |
| `audit/so_falsify.py` | a falsification check of Theorem R on small terms: every closed term through a given size is tested for `SO` and for pairing behaviour (`T x y K ↠ x`, `T x y F ↠ y`, a capped Krivine machine). Through 30 bits: 647,463 terms, 82 pairing-like, none of them `SO` (2.6 s, 156 MB) |
| `audit/audit_enum.c` | an independent completeness audit for inventories of candidate minimum interpreters: it enumerates every closed term of exactly `N` bits and keeps those with two incomparable nonlinear binders, a subterm with three distinct free variables, and no redex whose contraction (carried out and measured) is strictly shorter. Written from the definitions, not from any lane's enumerator. `cc -O2 -o audit_enum audit_enum.c; ./audit_enum 40 > survivors.txt` takes 9 s |
| `audit/replay.py` | an independent replay of a lane's finite certificates: it recomputes each head reduction with its own reducer and tests the claimed predicate with its own code |
