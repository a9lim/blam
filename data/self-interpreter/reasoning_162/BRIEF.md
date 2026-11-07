# Round 3: below 162 bits, or a proof that 162 is optimal

Repo: /Users/a9lim/Work/blam (branch dev). You are one lane of a parallel
reasoning effort coordinated by a Claude seat. Your lane's own angle is in
the prompt that sent you here; this file is the shared ground truth.

The previous record history is the reason this round exists: Tromp's 170 ->
Palmer's 168 -> Codex's 165 (hoisted skip, stream supplies the tail) ->
the 162 (found when a Codex reviewer, refuting a step of a Claude
reader-optimality proof, built the counterexample reader; Grok's idea and
`letopt` finished it). Every gain so far came from a cross-module move
that the previous local-optimality arguments had assumed away. a9 believes
162 is not optimal.

## Read first (skim what is not relevant to your lane)

1. `docs/classical/self-interpreter/interpreter.md` — the record: anatomy,
   every search, the lower bounds, exclusions at every size, and ~150
   protocol variants already built (section 6). **Do not re-propose
   anything it lists; if your idea is close to one, say what differs.**
2. `data/self-interpreter/reasoning_floor/README.md`, then the reports of
   `golf162/`, `golf162-claude/` and `zoo/` (44 reader bodies, all >= 162).
3. Proof lanes also: `structural-bounds.md`, `global-floor.md`,
   `head-decomposition.md`, `protocol-obstructions.md`, `remainder.md`
   (all in `docs/classical/self-interpreter/`).

## The contract (fixed)

`<λM> = 00<M>`, `<M N> = 01<M><N>`, `<var n> = 1^n 0` (n >= 1, de Bruijn,
1 = innermost). Streams: `cons b r = λf. f b r`; bit 0 = `K = λx y. x`,
bit 1 = `F = λx y. y`. A self-interpreter is a closed `E` with

    E C (<M> ++ N)  =β  C (λz. M) N

for every closed `M` (divergent `M` included), with `C`, `N` rigid
(free variables). Size: λ and application 2 bits each, variable with
0-based index i costs i+2 bits. For a closed term
`|M| = 2L + 4A + 2 + X` (L λs, A applications, X = sum of 0-based indices).

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
region: V 6, NEXT header 4, ABS 11, APP 11, all else 0.

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
At the root, `C` receives `λz. M` and the rigid `N`.

Useful identities on genuine streams (`Z_R = cons K R`, `U_n(N) = 1^n 0 ++ N`):

| expression | `s = Z_R` (0-tag) | `s = U_n(N)`, n >= 1 |
|---|---|---|
| `s (\q.c)` | `c R` | `c r` |
| `s I` | `K R` | `I` |
| `s K` | `K` | `F` |
| `s F` | `R` | `r` |
| `s s` | `K R` | `K N` |
| `s s a` | `R` | `N` |

Off-domain (from golf162): with the parser body as a function
`P c s = s I V_c NEXT_c`: `P c I = c`, `P c K = P c F = NEXT_c`,
`P c (K a) = a (\u. a (a u)) NEXT_c`, `P c (K (K t)) = t NEXT_c`.

## What is known, in one paragraph

Unconditional: hnf `λc s. c A B` or `λc s. s A1..Ak`; >= 2 nonlinear binders
in incomparable branches (Lean); some subterm with 3 free variables
(Statman width); handwritten global floor 37 bits, Lean floor 27; a β-normal
interpreter exists, even a simply typable one. Around the 162: letopt to 3
cuts and βη components to slack 24 find nothing smaller; within the `s I X Y`
reader family the operands are forced (Y = NEXT, X = V, V >= 28 by a case
analysis with a checked base). Around the 165/168: VAR, ABS, APP, cell, lift,
handler, knot are unique minima of exhaustive slot/module searches in their
frames; cell >= 24 and lift >= 19 under weak laws; NEXT >= 92 under rigid
canonical laws; knot >= 20 opaque, recursion overhead >= 26 + d1 + d2.
Every known gain broke one of those frame assumptions. Open: other value
and environment protocols, other NEXT protocols, recursion schemes using the
stream, joint changes across modules, and any unconditional bound beyond 37.

## How to work — this matters

Reason first: derive identities by hand, design constructions on paper, write
proofs. Then check. The productive pattern of the last two rounds was:
state a local-optimality claim precisely, try to prove it, and when a step
fails, the counterexample IS a construction — splice it in and measure it.

Light, targeted computation only:

- `python3 tools/self-interpreter/battery.py FILE.lam` — exact contract on
  668 programs, ~2 s; prints `N bits ok=667 skip=1 fail=0` on success. Lets
  are explicit redexes compiled as written, so the printed size is exactly
  the term as written. `--max-bits 21` is a deeper check (~20 s).
- `python3 tools/self-interpreter/polish.py FILE.lam` — battery, then the
  optimal let structure (`blam golf letopt`); a new algorithm's size is its
  polished minimum. ALWAYS polish a correct new algorithm: the 162 measured
  166 as first written.
- `target/release/blam normalize`, `tools/self-interpreter/lc.py`, `db.py`
  for specific identities; rigid free variables as probes.
- A hole search over at most a few thousand fills, only once reasoning has
  narrowed the hole.

NO long or blunt searches: no exhaustive sweeps, no single run longer than
about two minutes, at most 2 threads. The machine is a9's daily driver and
eight lanes share it. A lane that spends its time enumerating has failed its
brief even if it finds something.

Lean (`lean/`, `lake build <Module>`) is welcome for a lemma whose statement
you have pinned down; keep new Lean files in your lane directory, and do not
edit existing modules.

Write files ONLY under your lane directory (given in your prompt). Never
modify tracked repository files.

## Report

End with a report (also saved as `REPORT.md` in your lane directory):

1. Every complete interpreter you built: bits (as written and polished),
   exact battery line, one-line idea. A sub-162 claim needs a `.lam` file
   and a passing battery line.
2. Every new exact identity, with its proof.
3. Every impossibility or lower-bound argument, with its proof, its exact
   hypotheses, and whether it is handwritten, computer-checked or in Lean.
4. Your honest read of where a sub-162 could hide, or what the next proof
   step is.
