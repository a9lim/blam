# Overnight push: below 165 bits, or a proof that 165 is optimal

Repo: /Users/a9lim/Work/blam (branch dev). You are one lane of a parallel
reasoning effort coordinated by a Claude seat. Your lane's own angle is given
in the prompt that sent you this file; this file is the shared ground truth.

READ FIRST, in this order (skim what is not relevant to your lane):

1. `docs/classical/self-interpreter/interpreter.md` — the record of the 165:
   anatomy, why its reader works, everything searched, the lower bounds, the
   exclusions proved at every size, and ~120 protocol variants already built.
   **Do not re-propose anything it lists.**
2. `docs/STATUS.md`, section "Self-interpreter and universal machine".
3. For proof lanes: `structural-bounds.md`, `capture-width.md`,
   `head-decomposition.md`, `handler-bound.md`, `protocol-obstructions.md`
   (all in `docs/classical/self-interpreter/`); `cheap-tail-bound.md` is a
   4,500-line case analysis — read its intro and section list, not all of it.
4. `data/self-interpreter/reasoning_165/*/SUMMARY.md` — nine earlier
   reasoning consults (identities, constructions, obstructions).

## The contract (fixed)

`⌜λM⌝ = 00⌜M⌝`, `⌜M N⌝ = 01⌜M⌝⌜N⌝`, `⌜var n⌝ = 1ⁿ0` (n ≥ 1, de Bruijn,
1 = innermost). Streams: `cons b r = λf. f b r`; bit `0` = `K = λx y. x`,
bit `1` = `F = λx y. y`. A self-interpreter is a closed `E` with

    E C (⌜M⌝ ++ N)  =β  C (λz. M) N

for every closed `M` (including M without a normal form), with `C`, `N`
rigid. Size: λ and application cost 2 bits each, `var n` costs n+1 bits.
For a closed term `|M| = 2L + 4A + 2 + X` (L lambdas, A applications,
X = sum of 0-based indices over all variable occurrences).

## The 165 (`data/self-interpreter/machines/int165.lam`; L 17, A 25, X 29)

    (\x. x x) (\x. (\intL. \cont.
       (\next. \list. list (\bit0. bit0 (\unused \r. r next) cont) (list list list))
       (\bit1. intL (\exp. bit1 (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
                                 (intL (\exp2. cont (\args. exp args (exp2 args)))))))
     (x x))

Anatomy (bits): knot + `intL = x x` let 22; `\cont`, `next` let, `\list` 8;
reader `list H S` 6; handler `\bit0. bit0 Z cont` 13; zero arm
`Z = \unused \r. r next` 14; skip `S = list list list` 10; NEXT header
`\bit1. intL (\exp. bit1 · ·)` 17; ABS 40 (cell `\zx \zy. zx arg (zy args)` 24);
APP 35 (lift `\args. exp args (exp2 args)` 19).

How it runs. `E C s` with `s = cons b r`: `s H S = H b r S`, and
`S = s s s` is the stream after the first 0 of the whole stream
(`s s = K r'`). On a 0 tag, `S = r` and `H K r S = Z r S = r next =
next b2 r2`, which parses the body with continuation `\exp. b2 ABS APP`.
On a variable `1ⁿ0 ++ N`, `H F r S = cont r S = cont r N`: the variable's
value is its own remaining unary code `r`, and an environment cell
`e = \zx zy. zx arg (zy args)` performs lookup because
`r e = e b' r'' = b' arg (r'' args)`. Index sum by binder: cont 8 (three
uses at 0-based depth 3,2,3), cell 6, intL 5 (2,3), next 4, ABS/APP `exp`s 5,
bit1 1, all others 0.

The 165 beat Palmer's 168 by two moves that the 168's module bound assumed
away: HOIST work several branches need to the point where one expression is
right for all of them (the whole-stream skip), and let a Scott structure's
OWN APPLICATION supply an argument (the stream hands `list1` to `cont`,
deleting VAR's return application). Lean proves the 165 correct
(`lean/Blc/Selfint165.lean`).

## What is known (one-paragraph map; details in the docs)

Unconditional (any interpreter): head normal form `λc s. c A B` or
`λc s. s A⃗`; ≥ 2 nonlinear binders in incomparable branches (Lean);
some subterm with 3 free variables, two live captures (Statman width);
handwritten global floor 34 bits, Lean floor 18; a β-normal interpreter
exists (204 bits), even a simply typable one (672); `E E ≠β E`.
Conditional (165's frame fixed): the reader `s H T` costs ≥ 43 for
`T ∈ {s s s, s, s s}` with independent rigid laws (so 165 is minimal there);
zero arm ≥ 14; APP lift ≥ 19; the 168's module grammar gives unique
module minima (knot 22, NEXT 17, ABS 40, APP 35, cell 24, lift 19) under
opaque-module assumptions. Open: other reader heads/operands, joint changes,
exploiting actual NEXT/parser behaviour, different NEXT protocols, the
reader diagonal `R Z →* next next` as a knot generator, and any
unconditional bound beyond small sizes.

## How to work — this matters

Reason first. Derive identities by hand, write proofs, design constructions
on paper, then check them. Light, targeted computation only:

- `python3 tools/self-interpreter/battery.py FILE.lam` — exact contract on
  668 programs, ~2 s; prints `N bits ok=667 skip=1 fail=0` on success.
  Lets are written as explicit redexes and compiled without optimizer, so the
  printed size is exactly the term as written. `--max-bits 21` is a deeper
  check (~20 s).
- `target/release/blam normalize ...`, small Python normalizers
  (`tools/self-interpreter/lc.py`, `db.py`) for specific identities.
- A hole search over at most a few thousand fills, only when reasoning has
  already narrowed the hole.

NO long or blunt searches: no exhaustive sweeps, no single run longer than
about two minutes, at most 2 threads. The machine is a9's shared daily
driver. A lane that spends its time enumerating has failed its brief even
if it finds something.

Lean (`lean/`, `lake build <Module>`) is welcome for a lemma whose statement
you have pinned down; keep new Lean files in your lane directory unless told
otherwise, and do not edit existing modules.

Write files ONLY under your lane directory (given in your prompt). Never
modify tracked repository files.

## Report

End with a report (also saved as `REPORT.md` in your lane directory):

1. Every complete interpreter you built: bits, exact battery line, one-line
   idea. A sub-165 claim needs a `.lam` file and a passing battery line.
2. Every new exact identity, with its proof.
3. Every impossibility or lower-bound argument, with its proof, its exact
   hypotheses, and whether it is handwritten, computer-checked or in Lean.
4. Your honest read of where a sub-165 could hide, or what the next proof
   step is.

Overclaiming is a failure; so is giving up without having tried the real
problem. The ceiling of what a model can do is far above trained-in modesty:
attempt the real version first.
