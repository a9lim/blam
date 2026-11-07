# Round 4: below 162 bits, or a proof that 162 is optimal

Repo: /Users/a9lim/Work/blam (branch dev). You are one lane of a parallel
reasoning effort coordinated by a Claude seat. Your lane's own angle is in
the prompt that sent you here; this file is the shared ground truth.

History: Tromp's 170 -> Palmer's 168 -> Codex's 165 (hoisted skip, the
stream supplies the tail) -> the 162 (a Codex reviewer, refuting a step of a
Claude reader-optimality proof, built the counterexample reader; Grok's idea
and `letopt` finished it). Every gain so far came from a cross-module move
that the previous local-optimality arguments had assumed away. Round 3
(2026-10-21) found no sub-162; it proved a conditional bound (below) and
raised the unconditional floor to 40. a9's current belief: 162 may be
conditionally optimal, and going further, in either direction, needs a
fundamentally new technique. Round 4 is looking for that technique.

## The contract (fixed)

`<λM> = 00<M>`, `<M N> = 01<M><N>`, `<var n> = 1^n 0` (n >= 1, de Bruijn,
1 = innermost). Streams: `cons b r = λf. f b r`; bit 0 = `K = λx y. x`,
bit 1 = `F = λx y. y`. A self-interpreter is a closed `E` with

    E C (<M> ++ N)  =β  C (λz. M) N

for every closed `M` (divergent `M` included), with `C`, `N` rigid (free
variables). Size: λ and application 2 bits each, a variable with 0-based
index i costs i+2 bits. For a closed term `|M| = 2L + 4A + 2 + X` (L λs,
A applications, X = sum of 0-based indices).

## The 162 (`data/self-interpreter/machines/int162.lam`; L 16, A 24, X 32)

    (\x. x x) (\x. (\intL. \cont. \list.
      list (\a. a) (\u. list (\q. cont) (list list u))
        (\bit1. intL (\exp. bit1
          (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
          (intL (\exp2. cont (\args. exp args (exp2 args)))))))
      (x x))

Anatomy (bits): knot + `intL = x x` let 22; `\cont \list` 4; reader
applications + `list` 8; `I = \a.a` 4; variable arm
`V = \u. list (\q. cont) (list list u)` 28; NEXT header
`\bit1. intL (\exp. bit1 · ·)` 18; ABS 41 (cell `\zx \zy. zx arg (zy args)`
24); APP 37 (lift `\args. exp args (exp2 args)` 19). 0-based index sum by
region: V 6, NEXT header 4, ABS 11, APP 11, all else 0. The 24
applications: knot 3, intL let 1, reader 3, V 4, first parse 1, bit1
dispatch 2, ABS 5, APP 5.

How it runs, with `s = cons b r` the whole stream:

    s I V NEXT  =  b r V NEXT
    0-tag:     K r V NEXT = r NEXT = NEXT b2 r2      (r = cons b2 r2)
               NEXT b2 r2 = intL (\exp. b2 ABS APP) r2
    variable:  F r V NEXT = V NEXT = s (\q.cont) (s s NEXT) = cont r N
               (s s = r r = K N for every unary code, so s s u = N)

A variable's value is its own remaining unary code `r = 1^(n-1) 0 ++ N`;
an environment cell `e = \zx zy. zx arg (zy args)` performs lookup because
`r e = e b' r' = b' arg (r' args)`. ABS's value is
`\args \arg. exp (cell arg args)`, APP's is `\args. exp args (exp2 args)`.
At the root, `C` receives `λz. M` and the rigid `N`. Note: closed programs
never start with a variable, so the variable arm only ever runs under one of
NEXT's two internal continuations, never under the root `C`.

Identities on genuine streams (`Z_R = cons K R`, `U_n(N) = 1^n 0 ++ N`):

| expression | `s = Z_R` (0-tag) | `s = U_n(N)`, n >= 1 |
|---|---|---|
| `s (\q.c)` | `c R` | `c r` |
| `s I` | `K R` | `I` |
| `s K` | `K` | `F` |
| `s F` | `R` | `r` |
| `s s` | `K R` | `K N` |
| `s s a` | `R` | `N` |

## What is known (read the documents for proofs and exact hypotheses)

- `docs/classical/self-interpreter/interpreter.md` — the record: anatomy,
  every search, lower bounds, exclusions, and ~190 protocol variants already
  built and measured (§6). **Do not re-propose anything it lists; if your
  idea is close to one, say exactly what differs.**
- `docs/classical/self-interpreter/class-bound.md` — **the separated
  class**: `E = T[λp c. R[Q/j]]` with an opaque knot `T`, a β-normal NEXT `Q`
  in frame `[c,p]` obeying the canonical rigid branch laws, and a reader `R`
  (free `c, j`, one source `j`) obeying the rigid reader laws
  `R Z(r) = r j`, `R U_n(N) = c U_(n-1)(N) N`. Every member costs exactly
  `116 + w(R)` with the canonical NEXT and knot, `w = cost + 4 depth(j)`;
  `≥ 138` in Lean, `w ≥ 30` so `≥ 146` (handwritten + 3,484 kernel-checked
  cases, two reviews). **162 is optimal in the class iff every reader has
  `w ≥ 46`.** Open: 947 count profiles
  (`data/self-interpreter/reasoning_162/prove46/COUNTS.md`, `floor/STATE46.md`).
  The sharp obstruction (refute46 lane): the reader must give the unary
  branch N while giving the zero branch j; the 162 pays 6 bits for this
  (the absorber `λu` and `s s u`), every standalone "j on zero / N on
  unary" operand found costs ≥ 25.
- `docs/classical/self-interpreter/global-floor.md` — unconditional floor 40
  (handwritten classifications, kernel-checked certificates). The layout
  inventories grow exponentially (676 / 1,206 / 4,672 at 37 / 38 / 39); this
  method cannot approach 162.
- `structural-bounds.md`, `head-decomposition.md`, `protocol-obstructions.md`,
  `remainder.md`, `capture-width.md` (same directory) — unconditional
  structure: hnf `λc s. c A B` or `λc s. s A1..Ak`; ≥ 2 nonlinear binders in
  incomparable branches; Statman width; remainder extractors ≥ 27; exact beta
  size balance (`Blc/SelfintWireCost.lean`).
- Round-3 archive: `data/self-interpreter/reasoning_162/README.md` (lane
  table); round 2: `data/self-interpreter/reasoning_floor/README.md`. Their
  scripts name `tmp/round3/...` or `tmp/...` paths from where they ran.
- Lean: `lean/Blc/SelfintClass.lean` (the class, `Reader`, cost, depth),
  `Selfint162.lean` (the 162's full contract), `SelfintKnot.lean`,
  `SelfintRecursion.lean`, `SelfintWireCost.lean`, `SelfintInert.lean`;
  round-3 lane Lean in `data/self-interpreter/reasoning_162/{floor,prove46,lean138}/`.

## How to work — this matters

Reason first: derive identities by hand, design constructions on paper,
write proofs. Then check. The productive pattern of the last three rounds:
state a local-optimality claim precisely, try to prove it, and when a step
fails, the counterexample IS a construction — splice it in and measure it.

Light, targeted computation only:

- `python3 tools/self-interpreter/battery.py FILE.lam` — exact contract on
  668 programs, ~2 s; prints `N bits ok=667 skip=1 fail=0` on success. Lets
  are explicit redexes compiled as written. `--max-bits 21` is deeper (~20 s).
- `python3 tools/self-interpreter/polish.py FILE.lam` — battery, then the
  optimal let structure (`blam golf letopt`); a new algorithm's size is its
  polished minimum. ALWAYS polish a correct new algorithm: the 162 measured
  166 as first written.
- `target/release/blam normalize`, `tools/self-interpreter/lc.py`, `db.py`
  for specific identities; rigid free variables as probes. Copy the binary
  to your lane directory (`rm -f` the destination first) if you run it often.
- A hole search over at most a few thousand fills, only once reasoning has
  narrowed the hole. A finite check that closes one pinned case completely
  is fine if it runs in under two minutes and you state why it is complete.

NO long or blunt searches: no exhaustive sweeps, no single run longer than
about two minutes, at most 2 threads. The machine is a9's daily driver and
several lanes share it. A lane that spends its time enumerating has failed
its brief even if it finds something.

Lean is welcome for any lemma whose statement you have pinned down: from
`lean/`, `LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j2 FILE.lean`
(or `lake env lean FILE.lean`). Keep new Lean files in your lane directory;
do not edit existing modules. Mark every claim as handwritten,
computer-checked, or kernel-checked, and say which hypotheses it uses.

Write files ONLY under your lane directory (given in your prompt). Never
modify tracked repository files; never commit.

**Output discipline (Claude lanes especially).** Keep every single response
under ~10k output tokens: one idea per turn, and append your progress to
`NOTES.md` in your lane directory before moving on. Lanes have been lost
by emitting one response over the 64k output cap, losing everything not on
disk. Write files with several small writes, not one huge one.

## Report

End with a report (also saved as `REPORT.md` in your lane directory):

1. Every complete interpreter you built: bits (as written and polished),
   exact battery line, one-line idea. A sub-162 claim needs a `.lam` file
   and a passing battery line.
2. Every new exact identity, with its proof.
3. Every impossibility or lower-bound argument, with its proof, its exact
   hypotheses, and whether it is handwritten, computer-checked or in Lean.
4. Your honest read of where a sub-162 could hide, or what the next proof
   step is, and what technique you think would get there.
