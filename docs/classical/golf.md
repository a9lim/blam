# Golfing the AIT programs

The programs in tromp/AIT are written in `.lam` and compiled by Tromp's
optimizer (`AIT.lhs`, `optimize 57 2 1`; reproduced byte-exactly by
`tools/blcc.py`). That optimizer is a beam search over β-*reductions*. It never
expands a term, so let-floating, λ-lifting, sharing two equal subterms, and
floating a constant function out of a binder are invisible to it. Sean
Palmer's 2-bit improvement of the self-interpreter (170 → 168) is one such
expansion; the self-interpreter and the universal machine have their own
records (`self-interpreter/`). This document covers the rest of tromp/AIT:

- a sweep of every program in tromp/AIT with expansion-capable optimizers:
  44 programs shrink, 463 bits in all;
- readable sources for 36 of them, sent upstream as
  [tromp/AIT#13](https://github.com/tromp/AIT/pull/13), several smaller than
  the sweep's terms;
- redesigns of the universal machines:
  - IOCCC `uni8` 344 (43 bytes) → 304 strict (38 bytes) and 283 non-strict
    (36 bytes);
  - `uni28` 500 → 390 strict and 370 non-strict;
  - `uni2` 340 → 332;
- redesigns of two more interpreters: the curried-bit `blc.lam` 195 → 186,
  and the Kiselyov machine `uniK` 903 → 826 (same algorithm) and 599 (eager
  weakening);
- ports of the 2025-12 parser design into the programs that still embed the
  old one: `int4`, `ko2kp`, `nf` and the `pairup` programs, whose sizes are
  constants in Tromp's AIT theorems (KP(x) ≤ KO(x) + 541).

The machines were designed with Codex through independent consults. Who
contributed which idea is marked where it appears.

## Method

Three lab instruments, `blam golf letopt | component | check`
(`src/cli/golf/`):

- **`letopt`** renders every let structure of a program's let-free core
  exactly, up to `k` cuts. A cut is let-floating and λ-lifting at once, and
  can also share identical subterms. Every rendering inlines back to the core
  exactly (a unit test asserts it), so `letopt` is β-only by construction.
  `--no-inline` takes the program itself as the core, for programs whose lets
  do not inline in finite work: busy beavers, and records whose `in` term
  computes the number.
- **`component --descend --no-eta`** is breadth-first search over single
  β-moves under a size ceiling, restarting from the smallest term found. The
  moves are: reduce a redex, abstract one or all occurrences of a subterm, and
  anti-unify two subterms. It prints its move path.
- **`check`** confirms each result independently. Two terms are
  β-convertible if one of the following holds:
  - they share a common reduct after inlining every let;
  - failing that, the smallest enclosing pair of differing subterms does
    (β is a congruence);
  - one of those subterms reduces to the other in at most three steps.

  A multi-move result is certified step by step along its path. For machines,
  `check --io bits|bytes` also compares normal forms exactly against the
  original on every input up to a length.

A β-convertible program has the original's normal form, or diverges with it,
under every argument. That covers every contract in the repository, including
the records whose output cannot be computed. A redesign is not β-convertible
and is held to the differential instead.

`tools/golf/sweep.py` runs the pipeline over every `.lam` file:

1. compile with `blcc.py`, taking that size as the reference;
2. run `letopt` at the largest `k` its candidate count allows, in both core
   modes;
3. descend from the original and from the `letopt` result;
4. certify the smallest term found.

Results are in `data/golf/sweep.tsv`. A long sweep should run a frozen copy of
the binary (`BLAM=...`), because rebuilding `target/release/blam` mid-run fails
every later step.

A descent's result is a term, not a source. Each of its moves maps to a
source change: a let for a shared subterm, a helper taking an argument for an
anti-unification, a binding moved past a lambda that does not use it, a
reordered parameter list, or a knot written out as `(\x.x x) (\self. ...)`
when the self-application itself is worth sharing. Turning the sweep's terms
into such sources, and descending again from the sources, often goes further
than the sweep did, and Tromp's compiler sometimes η-reduces a source below
the term the η-free descent found.

## Artifacts

`data/golf/machines/` holds each redesigned or ported program. The `.lam` is
the readable source, as on the upstream branch, and the `.blc` is its
compiled bits. BLC8 machines also ship packed `.blc8`.

| program | tromp/AIT | best strict | best non-strict |
|---|---:|---:|---:|
| `uni8` (BLC8 machine) | 344 (IOCCC; 355 compiled) | **304** | **283** |
| `uni28` (BLC2 over bytes) | 500 | **390** | **370** |
| `uni2` (BLC2 machine) | 340 | **332** | **321** (from 324) |
| `blc` (curried-bit interpreter) | 195 | **186** | |
| `uniK` (Kiselyov machine) | 903 | **826**; **599** eager (`uniK_lazy`, `uniK`) | |
| `int4` (self-interpreter, 4-primitive code) | 189 | **175** | |
| `ko2kp` (KP ≤ KO + c) | 615 | **541** | |
| `nf` (normal-form printer) | 600 | **538** | |
| `pairupKP` (symmetry of information) | 778 | **756** | |
| `pairupK_p` | 657 | 651 † | |
| `pairup_Kp` | 1402 | 1273 † | |

† Verified on contract-valid inputs only. On invalid ones these differ from
the originals; see below.

## The BLC8 universal machine: 344 → 304 strict, 283 non-strict

`uni8` reads a program from the bits of a byte stream. Each byte is a
nil-terminated list of eight bits. The machine discards the rest of the last
byte it touches and applies the program to the remaining bytes. The published
binary is the IOCCC 2012 `uni8.Blc`: 43 bytes, 344 bits (hex dump on Rosetta
Code's Universal Lambda Machine page). It is the same machine as tromp/AIT's
`uni8.lam`, which compiles to 355.

| machine | bits | bytes | how |
|---|---:|---:|---|
| `uni8.lam` through `blcc.py` | 355 | 45 | Tromp's optimizer |
| IOCCC `uni8.Blc` | 344 | 43 | published |
| β-golfed 344 | 334 | 42 | `letopt`, two cuts: `K` floated over the bit handler's ignored binder (−8), `\x. x x` shared between the knot and Ω (−2) |
| shared reader | 325 | 41 | Codex: one reader `get` replaces the two inline reads and their two refill paths |
| non-recursive reader | 321 | 41 | a refill lands on a fresh byte, which always has eight bits, so `get` needs no knot |
| split read | 319 | 40 | Codex: branch on a code's first bit before reading the second; the abstraction/application path drops a tail binder |
| the parser takes the read bit | 306 | 39 | Codex: `int8 cont = get (step cont)`; after a variable's tag 11 the second 1 is the first bit of the rest of its code, so `step` re-enters with it and the pushback cell goes |
| a reader-made bottom | **304** | **38** | Codex: the base environment `get get get` replaces Ω (below) |
| non-strict, identity continuation | **283** | **36** | Codex's trick from `uni28`: `cont exp bits bytes = exp bits bytes`, which is `M bytes` for closed `M` (300 on the 321) |

The sources are `data/golf/machines/uni8.lam` and `uni8_nonstrict.lam`, with
`.blc` (ASCII) and `.blc8` (packed) beside them. The reader and parser are

```text
get k bits = bits h (\bytes. bytes (\byte. byte h byte))
  where h = \b \tail \ignored. k b tail
step cont b = get (\c. b
  (int8 (\exp. c (cont ABS) (int8 (\exp2. cont APP))))
  (c (cont (\args. args c)) (step (\var. cont (\args. var (args c))) c)))
  where int8 cont = get (step cont)
```

with the Scott-pair environment unchanged, and the machine is
`get (step (\exp\bits. exp (get get get)))`.

**The bottom.** A strict machine's base environment only has to lack a head
normal form. With `G = get`, `H k x y z = k x y`, `T h x = x h x`,
`R h x = x (T h)`, `A_n = H^n G` and `E_n = G A_n (R A_n)`, `G G G` reduces to
`E_1`, and `E_n` to `L^(3n). E_(n+2)`, where `L^m` stands for `m` leading
lambdas whose arguments are unused. So `get get get` reduces to ever more
unused lambdas and never to a head variable, even under arguments: it is
unsolvable. By the genericity lemma (Barendregt 14.3.24), replacing one
unsolvable term by another leaves every context's normal form, or its absence,
unchanged, so the swap is exact under the normal-form contract. Codex's proof
also checks the recurrence algebraically for `n = 1..12` and β-certifies the
reader against the definitions above.

Verification, each new machine against its predecessor and so back to the
344:

- **Differential.** `golf check --io bytes --max-bits 20` covers every closed
  program through 20 bits, with and without a trailing data byte, plus single
  and random bytes: 6,200 inputs. Strict 304 against 321: 4,222 identical,
  1,978 over budget on both, 0 different, none halting on one side only.
  Non-strict 283 against 300: 5,898 identical, 302 over budget on both.
- **Truncated input.** On 1,777 nil-terminated inputs (every closed program
  through 18 bits cut at every byte, and nested runs of each machine running
  the other on small programs), each new machine agrees with its predecessor
  exactly. The non-recursive reader changes nothing here, because running out
  of bytes gives `nil X = I` either way.
- **Tromp's C interpreter.** Under `ref/AIT/uni.c` in byte mode, the 304, the
  306 and the 283 reproduce `bin/take256.blc8` on 1,000 random bytes
  byte-identically: directly, running themselves, and as 304 running 304
  running 283.

### Why the bit machine's redesign does not port

The 2025-12 redesign of the bit-oriented machine (232 → 190 strict) applies
the bit stream itself to data:

- a variable's unary code, applied to a `cons'` environment, *is* the lookup;
- `l l l` skips the code.

In BLC8 the stream is one byte. A code that crosses a byte boundary meets
`nil` mid-lookup, and `nil xs = \y. y` loses the environment tail. Flattening
the bytes into one bit stream fixes the lookup, but then the byte boundary
must be recovered at the end to discard the rest of the last byte. With
standard two-component cells the boundary cannot be observed: any marker cell
is η-equal to the next cell. Cells that carry the remaining bytes as a third
component can observe it. But then every reader must absorb that component,
`next` loses its η, `l l l` breaks, and the boundary-tracking flattener
alone costs about 100 bits. Estimated total: about 358 strict (estimate, not
built), well above the Scott-pair machine. Codex independently reached the
same conclusion and measured a separate-first-bit handler at 348.

## The BLC2 machines

BLC2 codes de Bruijn indices in Levenshtein code, so the unary pun behind the
bit machine's redesign has no direct analogue. Codex's independent attempts
give the following.

- **`uni28` (500 → 390 / 370).** One bit reader serves the parser, the
  Levenshtein delimiter and the digit accumulator (416). A fresh byte always
  has a first bit, so the refill applies the byte straight to the
  continuation and the reader needs no recursion:
  `get = \k\bits. bits (\b\tail\ignored. k b tail) (\bytes. bytes (\byte. byte k))`
  (404). On any stream of non-empty bytes it agrees with the recursive reader:
  `get k (b:t) bs = k b t bs`, `get k [] ((b:t):bs) = k b t bs`, and both give
  `\x.x` at the end of input. One self-application `delta = \x.x x` then
  serves both fixpoints and the loop, with the parser's helpers bound inside
  it (390). The non-strict version ends in the identity continuation: 370.
- **`uni2` (340 → 332).** Nothing structural survives in the parser: a
  Church-numeral decoder, reversed environment fields and a closed `false` for
  the known tag all lose, as does reusing the tag bit as the first Levenshtein
  bit (the two are independent). One fixpoint combinator
  `fix = \f.(\x.x x) (\x.f (x x))` serves `delimit` and `int2` (334), the
  abstraction/application parse moves into a helper (333), and Ω becomes
  `fix fix` (332): with `F = \x. fix (x x)`, `U = F F` and
  `W = (\x. U (x x)) (\x. U (x x))`, `fix fix` reduces to `U`, which
  head-reduces to `U W`, so it is unsolvable. The closed-program variant
  `int2 (\z. z z)`: 324 → 321.

Verification:

- `uni28`: every closed BLC2 program through 18 bits (594), padded with zeros
  and with ones, with and without a trailing data byte: 2,376 inputs, 2,372
  identical, 4 over budget on both (Ω), 0 different, for strict and
  non-strict alike; and every such program cut at every byte (818 inputs),
  all identical. `golf check --io bytes` (unary-coded programs, mostly
  garbage to BLC2) gives 0 different, and its inputs that finish on one side
  only (2 strict, 32 non-strict) are budget effects of its call-by-name
  evaluator: under call-by-need both machines give `\1` on them.
- `uni2`: every bit stream through 14 bits, 32,767 inputs: 0 different, none
  halting on one side only.
- Codex also verified the decoders with deeper tests through index 255 and
  three-level self-interpretation.

## Two more interpreters: `blc.lam` and `uniK`

- **`blc.lam` (195 → 186).** Tromp's interpreter takes the code's bits as
  separate curried arguments. Every code starts with two bits, so Codex's
  version takes the second as a parameter instead of binding it in each arm of
  the first-bit dispatch (−1), and abstraction and application, which both
  begin by parsing a subterm, share that parse before the second-bit choice
  (−8). Both steps hold whenever the bits are booleans, so this is held to
  exact normal forms: every closed program through 20 bits fed bit by bit and
  compared with the program itself, trailing arguments, `2 (3 2)`, and three
  levels of self-interpretation: 2,070 inputs, 2,068 identical, 2 over budget
  on both, 0 different. A `cons'` environment (200), shared variable recursion
  (198) and separate head/tail arguments (203) all lose.
- **`uniK` (903 → 826 → 599).** Tromp's universal machine through Kiselyov's
  bracket abstraction with lazy weakening. Codex's 826 is the same algorithm:
  one self-application for both fixpoints and the loop, the composition's
  continuations factored into two helpers (record a needs flag, keep a
  needs-list) passed together so the compiler keeps them shared, and the
  variable cases' continuation shared. It is β-convertible to the 903
  (`data/golf/machines/uniK_lazy.lam`). The 599 replaces the boolean
  needs-lists with unary depths and eager weakening: a term is a pair
  `(n, d)`, with `d` abstracting over all `n` surrounding variables, used or
  not; a variable is a projection (`I`, then `B K` for each further 1),
  composition aligns depths with `S`, `R` and `B`, and a positive final depth
  still forces the loop. Every step is a β identity, but the generated
  combinator terms differ, so the 599 is held to the differential:
  `golf check --io progs --max-bits 18`, 9,870 inputs, 9,855 identical, 15
  over budget on both, 0 different, none halting on one side only.

## Cheaper bottoms

A strict machine needs a base term with no head normal form, not Ω itself.
By the genericity lemma any unsolvable term does the same job exactly, so an
unsolvable built from bindings already in scope can be cheaper than
`(\x.x x) (\x.x x)`. It pays twice: `uni8`'s `get get get` (−2) and `uni2`'s
`fix fix` (−1). Elsewhere Codex's proved alternatives lose: `uni.lam`'s best,
`intL intL intL`, is 192 against 187; strict `int4` 202 against 197;
`uni28`'s `get get get` 396 against 390; `uniK`'s `fix fix` 607 against 599;
`ko2kp`'s clean `Y Y` 566 against 563. `pairup_Kp` has no strict bottom: it
accepts open programs.

## Porting the redesign into programs that embed the old parser

`ko2kp` (the KP ≤ KO + c construction) and `nf` (print the normal form of an
input term) each carry a copy of the pre-2025 parser:

- Scott-pair environment;
- a variable parse that recursively re-enters the parser;
- no `next` let.

They read plain bit streams, so the redesign drops in. ABS builds
`cons' v ctx`. VAR is `cont list1 (list1 list1 list1)`, whose value, the
stream itself, does the lookup in any environment. The HOAS constructors
(`abs`/`app` in `ko2kp`, `L`/`A` in `nf`) are untouched.

| program | original | port | with the 165's reader | source |
|---|---:|---:|---:|---:|
| `ko2kp` | 615 | 569 | 566 | **541** |
| `nf` | 600 | 562 | 559 | **538** |

The 165's reader (`self-interpreter/interpreter.md`) drops in as well: the
whole-stream skip `xs xs xs` serves both dispatch arms, 3 bits each. The
sources then take certified β-moves of the ports:

- `ko2kp`: the KP-side definitions (T's case analysis, `nfT`, `appT`,
  `boolT`, `consT`, `rest`) are scoped to the argument of `p` that uses them
  (−17); `withT = \b. b A appT` hands T's constructors to builders generic in
  both, as `uni` is (−5); one `Y` serves `uni`, `nfT` and `go` (−3). Its clean
  configuration (`IF_DIRTY = false`, with `omega = Y id`) goes from 598 to
  563.
- `nf`: `cons0`, `cons00` and `cons01` are bound inside `ser`, where their
  indices are small (−12); `appT` applies a HOAS value, β-reducing a `Lam` and
  building an `App` otherwise (−7); one `Y` serves `parseval` and `ser` (−2).

Both are certified β-convertible to the ports in every configuration.

`int4.lam` is Tromp's self-interpreter for a four-primitive code: `00` λ, `01`
application, `10` variable zero, `11` successor. After its tag bit, a
variable's code reads `1^(2n-2) 0`, unary with every other bit a tag.

- **Skipping.** `l l l` skips every 1 and the first 0 whatever their roles,
  so skipvar carries over unchanged.
- **Lookup.** The lookup carries over once each environment cell also
  swallows the tag bit that follows a 1: `\zx \zy. zx x (zy (\_ \l. l xs))`.

With the rest of the 168 verbatim the result is 178 bits, against 189; with
the 165's reader, 175, since `l l l` on the whole stream still stops right
after a variable. `battery.py --int4` checks the exact self-interpreter
contract on every closed term of 4..16 bits plus deep-index extras: 236 of
236 for the original, the 178 and the 175. As a negative control, `int.lam` under `--int4` fails
19 of the 40 programs of the 4..12-bit battery.

`golf check --io progs` compares normal forms on every closed program,
followed by up to three data bits:

- `ko2kp` (programs through 14 bits): 616 inputs identical, 0 differ, and
  599 over budget on both. None halts on one side only. `ko2kp` searches for
  the remainder by rerunning the program, which exhausts the budget often.
- `nf` (through 16 bits): all 3,390 inputs identical.

These were run on the ports; the sources are β-convertible to them.

Open programs fall outside both contracts, and the old and new base
environments give them different garbage.

The `pairup` programs (Codex's port) thread `ps`, the consumed bits, through
their parser, and `l l l` skips without recording. The port keeps the old
bit-by-bit variable loop *only* to record `ps`. It switches the environment
to `cons'` cells, and returns as the variable's value the stream captured
before the loop, which looks itself up. `pairup_Kp` has a separate
prefix-capture layer and takes the whole `cons'`/skipvar interpreter.

| program | original | β-golf only | port | source |
|---|---:|---:|---:|---:|
| `pairupKP` | 778 | 775 | 774 | **756** |
| `pairupK_p` | 657 | 655 | 653 | **651** |
| `pairup_Kp` | 1402 | 1372 | 1360, 1357 with the 165's reader | **1273** |

The sources take certified β-moves of the ports:

- `pairupKP`: `consBitT` builds `consT (boolT x) xs` with one shared `absT`
  (−12); `uni` binds the recursion past a unary 1 outside the two arguments
  it ignores (−2); the T datatype moves ahead of `uni` and the input is
  applied outside the definitions (−3); the small `appT` is passed into
  `uni`'s scope from outside (−1). Clean: 813 → 795.
- `pairupK_p`: the same recursion binding (−2), in all four configurations
  (CPS 712, clean 777, clean CPS 791).
- `pairup_Kp`: `uniL1` is defined after `program`, so the compiler keeps one
  shared `intL (\x.x x)` (−15); `program` becomes closed over its helpers
  (−9); `readc`'s prefix builder becomes `cont01` (−33); `appsym m b` builds
  the application of `m` to bit `b`'s term once, outside the node's binders
  (−17), with three smaller placements (−10).

Against the 1360, the 1357 differs on 24 of 182 raw pairs, each starting with
a first program β- or η-equal to `λx. x`, which is not a valid description;
the sources are β-convertible to the 1357 and to the 774 and 653.

Verification:

- **Valid inputs.** All three match on 60 contract-valid inputs each: payload
  indices up to 12, nesting, and consumed data. Each normal form also equals
  an independently constructed expected result.
- **Raw pairs differential.** `golf check --io pairs --max-bits 16` puts two
  arbitrary closed programs back to back. `pairupKP` gives 0 differ and 0
  halting on one side only.
- **Where the other two differ.** `pairupK_p` and `pairup_Kp` differ on 24 of
  the 182 raw inputs; `pairup_Kp` also halts on 5 where the original runs out
  of budget. Every such input starts with a first program that is not a valid
  description: `p = \x. x` hands back the rest of the input instead of a pair.
  So the second parse starts inside the second program and meets an open term,
  where the old dirty base environment and the new one give different
  garbage. With divergent base environments in both, the differences vanish.
  Whether these two count depends on accepting that only valid inputs
  matter, which is what the theorems use.

## The sweep

The sweep covers all 117 `.lam` files of tromp/AIT as pinned (`ref/AIT` at
`47b51dd`). The results are in `data/golf/sweep.tsv`, rendered by
`tools/golf/table.py`. For each file it runs:

- `letopt` over the let-free core at the largest affordable `k`, in both core
  modes;
- β-only descent at slack 8 (4 above 600 bits, at most 400,000 states a
  round);
- a certificate for every reported term.

The reference is `blcc.py`'s size, which is Tromp's toolchain at its default
slack. The source column gives the size of the readable source on the
upstream branch (§Upstream), which may also carry a hand redesign; the note
column marks the two results that only tie a size the source already states,
and the gains kept out of the branch.

Every gain was audited against its source. Records whose `in` term is the
record itself count: the fast-growing terms, `hydra`, `loader`, `tweet`. A
smaller β-convertible term has the same normal form, so it holds the same
record in fewer bits. Smaller numbers stated in comments turned out to be
component sizes, except the two ties noted.

| program | tromp/AIT | β-golf | saved | found by | certificate | source | note |
|---|---:|---:|---:|---|---|---:|---|
| `fast_growing_and_conjectures/tweet.lam` | 2230 | **2168** | 62 | descend | beta | 2134 |  |
| `ait/uniK.lam` | 903 | **854** | 49 | descend | beta | 826; 599 with eager weakening |  |
| `characteristic_sequences/primes256.lam` | 286 | **252** | 34 | descend | beta | 252 |  |
| `ait/pairup_Kp.lam` | 1402 | **1372** | 30 | descend | beta | 1273 (valid inputs) |  |
| `ait/uni28.lam` | 500 | **474** | 26 | descend | beta | 390 / 370 |  |
| `fast_growing_and_conjectures/tree_ordinals.lam` | 752 | **728** | 24 | descend | beta | 726 |  |
| `lists/sort2.lam` | 435 | **415** | 20 | descend | beta | 415 |  |
| `ait/mpi.lam` | 473 | **454** | 19 | descend | beta | 454 |  |
| `ait/nf.lam` | 600 | **581** | 19 | descend | beta | 538 |  |
| `ait/bf.lam` | 830 | **812** | 18 | descend | beta | 806 |  |
| `characteristic_sequences/squares.lam` | 325 | **308** | 17 | descend | beta | 301 |  |
| `numerals/binary_numerals.lam` | 433 | **416** | 17 | descend | beta |  | kept out: the 416 inlines the library into fac |
| `ait/uni8.lam` | 355 | **341** | 14 | descend | beta | 304 strict / 283 non-strict |  |
| `lists/sort.lam` | 300 | **290** | 10 | letopt | beta | 290 |  |
| `lists/take4k.lam` | 100 | **90** | 10 | descend | beta-path |  | kept out: bin/ holds its compiled golden |
| `ait/pi.lam` | 401 | **392** | 9 | descend | beta | 392 |  |
| `ait/SKint.lam` | 144 | **136** | 8 | descend | beta-path | 136 |  |
| `fast_growing_and_conjectures/hydra.lam` | 179 | **171** | 8 | letopt | beta | 171 |  |
| `ait/uni2.lam` | 340 | **333** | 7 | letopt | beta | 332 / 321 |  |
| `fast_growing_and_conjectures/patcail.lam` | 421 | **414** | 7 | descend | beta | 414 |  |
| `fast_growing_and_conjectures/laver1.lam` | 268 | **262** | 6 | descend | beta | 262 |  |
| `fast_growing_and_conjectures/loader.lam` | 1797 | **1791** | 6 | descend | beta | 1781 |  |
| `ait/bf2.lam` | 1009 | **1005** | 4 | letopt | beta | 999 |  |
| `ait/delimito.lam` | 216 | **212** | 4 | letopt | beta | 212 |  |
| `fast_growing_and_conjectures/laver2.lam` | 212 | **208** | 4 | descend | beta | 208 |  |
| `ait/pairupKP.lam` | 778 | **775** | 3 | descend | beta | 756 |  |
| `ait/triage.lam` | 269 | **266** | 3 | descend | beta | 259 |  |
| `numerals/min.lam` | 52 | **49** | 3 | descend | beta | 49 |  |
| `ait/ko2kp.lam` | 615 | **613** | 2 | descend | beta | 541 |  |
| `ait/pairupK_p.lam` | 657 | **655** | 2 | letopt | beta | 651 (valid inputs) |  |
| `fast_growing_and_conjectures/erdos.lam` | 289 | **287** | 2 | descend | beta | 287 |  |
| `fast_growing_and_conjectures/laver.lam` | 203 | **201** | 2 | letopt | beta |  | ties the stated 201 with slack 6 |
| `numerals/church_minimal.lam` | 39 | **37** | 2 | descend | beta |  | ties the stated 37 with blc -O6 |
| `numerals/sqrt.lam` | 118 | **116** | 2 | descend | beta | 116 |  |
| `ait/delimit.lam` | 326 | **325** | 1 | letopt | beta | 325 |  |
| `ait/pairlen.lam` | 285 | **284** | 1 | letopt | beta | 284 |  |
| `ait/tree.lam` | 223 | **222** | 1 | descend | beta | 222 |  |
| `characteristic_sequences/primes2.lam` | 217 | **216** | 1 | descend | beta | 216 |  |
| `lists/cycle.lam` | 83 | **82** | 1 | descend | beta | 82 |  |
| `lists/take16k.lam` | 110 | **109** | 1 | descend | beta-path |  | kept out: bin/ holds its compiled golden |
| `lists/take1k.lam` | 105 | **104** | 1 | descend | beta |  | kept out: bin/ holds its compiled golden |
| `lists/take256.lam` | 81 | **80** | 1 | descend | beta |  | kept out: bin/ holds its compiled golden |
| `lists/take64k.lam` | 81 | **80** | 1 | descend | beta-path |  | kept out: bin/ holds its compiled golden |
| `numerals/church.lam` | 30 | **29** | 1 | letopt | beta | 29 |  |

44 programs shrink under β-golf alone, by 463 bits in all; 42 of them below every size their source states. 64 do not shrink; 9 demos are excluded.

Demos (excluded):

- `ait/binary_better.lam` (862 → 192): an example term for the BLC2 size comparison
- `ait/minbase.lam` (92 → 23): computes S from a smaller base
- `numerals/SK_numerals.lam` (110 → 31): applies the artifact to sample data
- `numerals/scott_numerals.lam` (482 → 475): applies the artifact to sample data
- `numerals/tuple_numerals.lam` (7 → 7): applies the artifact to sample data
- `rosetta/exp00.lam` (31 → 31): applies the artifact to sample data
- `rosetta/facY.lam` (160 → 160): applies the artifact to sample data
- `rosetta/forloops.lam` (139 → 129): applies the artifact to sample data
- `rosetta/variadicY.lam` (256 → 249): applies the artifact to sample data

No gain from β-golf: `BB/BB40.lam`, `BB/BB_Xi.lam`, `Sample.lam`, `ait/Aint.lam`, `ait/Y.lam`, `ait/allA.lam`, `ait/bcl.lam`, `ait/beavers.lam`, `ait/blc.lam` (source: 186), `ait/decoders.lam`, `ait/delimit2.lam`, `ait/int.lam` (source: 165), `ait/int4.lam` (source: 175), `ait/mlatu.lam`, `ait/quine.lam`, `ait/readlen.lam`, `ait/uni.lam` (source: 187 strict / 175 non-strict), `ait/vararg.lam`, `ait/wtf.lam`, `ait/zot.lam`, `characteristic_sequences/all.lam`, `characteristic_sequences/even.lam`, `characteristic_sequences/none.lam`, `characteristic_sequences/odd.lam`, `characteristic_sequences/primes.lam`, `characteristic_sequences/thue-morse.lam`, `fast_growing_and_conjectures/BBE0.lam`, `fast_growing_and_conjectures/BO.lam`, `fast_growing_and_conjectures/E0.lam`, `fast_growing_and_conjectures/ackermann.lam`, `fast_growing_and_conjectures/bms.lam`, `fast_growing_and_conjectures/collatz.lam`, `fast_growing_and_conjectures/gAckerman.lam`, `fast_growing_and_conjectures/goldbach.lam`, `fast_growing_and_conjectures/goodstein.lam`, `fast_growing_and_conjectures/graham.lam`, `fast_growing_and_conjectures/laver0.lam`, `fast_growing_and_conjectures/melo.lam`, `fast_growing_and_conjectures/oddperfect.lam`, `fast_growing_and_conjectures/perfect.lam`, `fast_growing_and_conjectures/w1CK.lam`, `fast_growing_and_conjectures/w218.lam`, `fast_growing_and_conjectures/wCubed.lam`, `lists/cat.lam`, `lists/fold.lam`, `lists/length.lam`, `lists/map.lam`, `lists/reverse.lam`, `misc/id.lam`, `misc/truth.lam`, `numerals/div.lam`, `numerals/divides.lam`, `numerals/eq.lam`, `numerals/fac.lam`, `numerals/fib.lam`, `numerals/gcd.lam`, `numerals/half.lam`, `numerals/leq.lam`, `numerals/lt.lam`, `numerals/mod.lam`, `numerals/tri.lam`, `rosetta/catstrings.lam`, `rosetta/mutrec.lam`, `rosetta/swap.lam`.

## Upstream

The sources go to Tromp as [tromp/AIT#13](https://github.com/tromp/AIT/pull/13),
from the `golf` branch of the a9lim/AIT fork: one commit per program and
change, each with its design note and verification, so any subset can be
taken. Against upstream the branch changes 40 programs and saves 1,143 bits
in all. `ref/AIT` here stays pinned to the fork's additive `master`; the
`golf` branch modifies upstream files and never lands there.
