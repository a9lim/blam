# Five root-let exclusions: complete, kernel-checked

All five ENGINE_ONLY.tsv cases are proved in `Rootlet5.lean`. Each source
itself has no head normal form. Consequently its zero-law instance has no
head normal form and cannot beta-join `r j`; in particular, it cannot
beta-reduce to `r j`. None of the five remains engine-only.

## Invariant and proof

Application associates left. Put

```
H = λx y. x (y (y x))
A = H H
B = H A
C = H B
D = H C
E = D A
F = D E
Core = H C E (F H)
```

The invariant family is `Core rs`, where `rs` is any finite list of arbitrary
terms, applied as a trailing spine. The kernel-checked recurrence is

```
headSteps 44 (ap Core rs) = some (ap Core (Extra ++ rs))
```

`Extra` is one fixed list of 12 closed terms, explicitly defined in the Lean
file. Thus each cycle prepends 12 arguments and leaves the entire previous
tail untouched. No assumption on the tail is needed, and the empty tail is
allowed. The cycle is not a finite search verdict: it holds universally for
every tail and can be repeated indefinitely.

The initial short traces used the hand-derived macro rule

```
H u v rs →h² u (v (v u)) rs.
```

For example, starting from `H H H H j c`, five macro steps give

```
H H H H j c
→ H B H j c
→ H A D j c
→ H H F j c
→ H (F (F H)) j c
→ H C E (F H) (j (j (F (F H)))) c.
```

The same closed prefix reappears 22 macro steps later. `H_rule` proves the
macro rule for arbitrary terms using capture-avoiding de Bruijn substitution.
`advance` composes those 22 instances; no engine verdict is used. The generic
`unsolvable_of_advance` argument from the preceding combs lanes then proves
`core_unsolvable`: arbitrarily long head reductions contradict reaching an HNF.

The five literal sources enter this invariant after the following exact
numbers of head beta steps, including their root-let contraction:

| Source | Entry steps | Trailing arguments at entry |
|---|---:|---:|
| 474 | 29 | 5 |
| 492 | 23 | 5 |
| 493 | 23 | 5 |
| 506 | 11 | 2 |
| 507 | 11 | 2 |

These entry equations are kernel checked with ordinary `decide`. The file
uses the project's 0-based `Blc.Term` convention, with `c = var 0`, `j = var 1`,
and the exact `Blc.SelfintClass.Z` and `zeroOut` definitions. The general
solvability and beta-join lemmas come from `Blc.SelfintProbe`.

## Theorems

Every name below is in namespace `Blc.Combs3`. For each
`i ∈ {474, 492, 493, 506, 507}`:

- `r<i>_base`: the exact entry equation above.
- `r<i>_unsolvable : ¬ Solvable r<i>`.
- `zero<i>_unsolvable : ¬ Solvable (.app r<i> Z)`.
- `zero<i>_not_join : ¬ BetaJoin (.app r<i> Z) zeroOut`.
- `reject<i> : ¬ Reader r<i>`.

For example, the requested rejection names are `Blc.Combs3.reject474`,
`Blc.Combs3.reject492`, `Blc.Combs3.reject493`, `Blc.Combs3.reject506`, and
`Blc.Combs3.reject507`. The shared invariant results are
`Blc.Combs3.advance` and `Blc.Combs3.core_unsolvable`.

## Verification and resources

Lean 4.32.2 compiled the complete file successfully (exit 0) in **0.376 s**
wall time. The measured child peak RSS was **454,443,008 bytes** (433.4 MiB).
`Rootlet5.log` records the compile result and the axiom audit.

All 15 printed audits (source unsolvability, zero non-joinability, and reader
rejection for each source) report exactly **`[propext, Quot.sound]`**. No
`sorryAx`, custom axioms, `Classical.choice`, or `native_decide` are used.

Reproduce from `/Users/a9lim/Work/blam/lean`:

```sh
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j2 -M 1800 /Users/a9lim/Work/blam/tmp/round4/combs3/Rootlet5.lean
```

`compile.py` wraps this command with a 115-second wall timeout and records
its timing and RSS. All Python runs in this lane finished in less than one
second. `build.py` emits the explicit finite certificate; its correctness is
not trusted by the proof. `trace.py` and `trace2.py` retain the short symbolic
traces used to identify the invariant. No interpreter construction or global
reader lower bound is claimed. No tracked file was modified and no commit
was made; all outputs are under `tmp/round4/combs3/`.
