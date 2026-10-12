# Golfing the AIT programs

The programs in tromp/AIT are written in `.lam` and compiled by Tromp's
optimizer (`AIT.lhs`, `optimize 57 2 1`; reproduced byte-exactly by
`tools/blcc.py`). That optimizer is a beam search over β-*reductions*. It never
expands a term, so let-floating, λ-lifting, sharing two equal subterms, and
floating a constant function out of a binder are invisible to it. Sean
Palmer's 2-bit improvement of the self-interpreter (170 → 168) was one such
expansion. The self-interpreter has since been searched to exhaustion
(`self-interpreter/design.md`). The rest of the repository had not been
searched at all.

This document records three things:

- a sweep of every program in tromp/AIT with expansion-capable optimizers:
  45 programs shrink, 470 bits in all;
- hand redesigns of the BLC8 and BLC2 universal machines:
  - IOCCC `uni8` 344 → 321 strict and 300 non-strict;
  - `uni28` 500 → 399;
- ports of the 2025-12 parser design into the programs that still embed the
  old one: `int4`, `ko2kp`, `nf` and the `pairup` programs, whose sizes are
  constants in Tromp's AIT theorems.

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

## Artifacts

`data/golf/machines/` holds each redesigned or ported program. The `.lam` is
the readable source. The `.blc` is the best bits, either the source compiled
or a β-only descent of it, in which case the `.path` file is the move path
that `blam golf check --path` certifies step by step. BLC8 machines also ship
packed `.blc8`.

| program | tromp/AIT | best strict | best non-strict |
|---|---:|---:|---:|
| `uni8` (BLC8 machine) | 344 (IOCCC; 355 compiled) | **321** | **300** |
| `uni28` (BLC2 over bytes) | 500 | **399** | **382** |
| `uni2` (BLC2 machine) | 340 | **333** | **321** (from 324) |
| `int4` (self-interpreter, 4-primitive code) | 189 | **178** | |
| `ko2kp` (KP ≤ KO + c) | 615 | **557** | |
| `nf` (normal-form printer) | 600 | **541** | |
| `pairupKP` (symmetry of information) | 778 | **771** | |
| `pairupK_p` | 657 | 651 † | |
| `pairup_Kp` | 1402 | 1325 † | |

† Verified on contract-valid inputs only. On invalid ones these differ from
the originals; see below.

## The BLC8 universal machine: 344 → 321 strict, 300 non-strict

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
| non-recursive reader | **321** | **41** | a refill lands on a fresh byte, which always has eight bits, so `get` needs no knot |
| the same, non-strict, base environment `exp` | 308 | 39 | as in tromp/AIT's 178-bit `uni_non_strict` |
| non-strict, identity continuation | **300** | **38** | Codex's trick from `uni28`: `cont exp bits bytes = exp bits bytes`, which is `M bytes` for closed `M` |

The sources are `data/golf/machines/uni8.lam` and `uni8_nonstrict.lam`, with
`.blc` (ASCII) and `.blc8` (packed) beside them. The reader is

```text
get k bits = bits h (\bytes. bytes (\byte. byte h byte))
  where h = \b \tail \ignored. k b tail
```

The parser reads its two tag bits through `get`. On the variable path it
pushes the second bit back (`\f. f c tail`) and re-enters itself, as
`uni8.lam` always has. The Scott-pair environment is unchanged.

Verification:

- **Differential.** `golf check --io bytes --max-bits 18` against the 344
  covers every closed program through 18 bits, with and without a trailing data
  byte, plus random bytes. The 321 gives identical normal forms on all 1,593
  inputs where either halts. On the other 1,979, both machines exceed the
  budget; none halts on one machine only. The 300 matches on every closed
  program and halts on open ones where the strict 344 does not, as intended.
- **Truncated input.** On 2,801 nil-terminated inputs (every closed program
  through 18 bits, cut at every byte, plus random bytes), the 321 agrees with
  the 344 exactly. The non-recursive reader changes nothing here, because
  running out of bytes gives `nil X = I` either way. Codex measured that the
  analogous change in `uni28` does alter two incomplete programs, so it was
  not used there. The 300 agrees with the 344 on every closed and every
  truncated input; it differs only on open programs, which the 344 refuses.
- **Nested self-interpretation.** Each of 344, 321 and 308 runs each of
  them on six programs, including closed variables whose codes cross byte
  boundaries. All 54 combinations agree.
- **Tromp's C interpreter.** Under `ref/AIT/uni.c` in byte mode, all three
  new binaries print `Ni hao` for the IOCCC smoke test. They also reproduce
  `bin/take256.blc8` on 1,000 random bytes byte-identically, directly, and
  with the 321 running the 321.

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
alone costs about 100 bits. Estimated total: about 358 strict, against 321
(estimate, not built). Codex independently reached the same conclusion and
measured a separate-first-bit handler at 348.

## The BLC2 machines

BLC2 codes de Bruijn indices in Levenshtein code, so the unary pun behind the
bit machine's redesign has no direct analogue. Codex's independent attempt
gives the following.

- **`uni28` (500 → 399 / 382).** One bit reader serves the parser, the
  Levenshtein delimiter and the digit accumulator. Its continuation is held
  outside the reader's fixpoint:
  `get k = let r = \bits. bits (\b\t\_. k b t) (\bytes. bytes r) in r`.
  The source compiles to 416, and a certified β-descent takes it to 399. The
  non-strict version ends in the identity continuation: 393, then 382.
- **`uni2` (340 → 333).** Nothing structural survived: a Church-numeral
  decoder, reversed environment fields and a closed `false` for the known tag
  all lose. The 333 is β-golf of Tromp's source: the exact let search gives
  334, then descent. Non-strict: 324 → 321.

Codex verified the decoders with deeper tests through index 255 and
three-level self-interpretation, as well as the differentials. I re-ran the
differentials independently:

- `uni2`: every bit stream through 14 bits;
- `uni28`: byte inputs through 18-bit programs.

Both: 0 differ, and 0 halting on one side only for the strict machines.

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

| program | original | port | after β-descent |
|---|---:|---:|---:|
| `ko2kp` | 615 | 569 | **557** |
| `nf` | 600 | 562 | **541** |

`int4.lam` is Tromp's self-interpreter for a four-primitive code: `00` λ, `01`
application, `10` variable zero, `11` successor. After its tag bit, a
variable's code reads `1^(2n-2) 0`, unary with every other bit a tag.

- **Skipping.** `l l l` skips every 1 and the first 0 whatever their roles,
  so skipvar carries over unchanged.
- **Lookup.** The lookup carries over once each environment cell also
  swallows the tag bit that follows a 1: `\zx \zy. zx x (zy (\_ \l. l xs))`.

The rest is the 168 verbatim, and the result is 178 bits, against 189.
`battery.py --int4` checks the exact self-interpreter contract on every
closed term of 4..16 bits plus deep-index extras: 236 of 236 for both the
original and the port. As a negative control, `int.lam` under `--int4` fails
19 of 40.

`golf check --io progs` compares normal forms on every closed program,
followed by up to three data bits:

- `ko2kp` (programs through 14 bits): 616 inputs identical, 0 differ, and
  599 over budget on both. None halts on one side only. `ko2kp` searches for
  the remainder by rerunning the program, which exhausts the budget often.
- `nf` (through 16 bits): all 3,390 inputs identical.

Open programs fall outside both contracts, and the old and new base
environments give them different garbage.

The `pairup` programs (Codex's port) thread `ps`, the consumed bits, through
their parser, and `l l l` skips without recording. The port keeps the old
bit-by-bit variable loop *only* to record `ps`. It switches the environment
to `cons'` cells, and returns as the variable's value the stream captured
before the loop, which looks itself up. `pairup_Kp` has a separate
prefix-capture layer and takes the whole `cons'`/skipvar interpreter. Polished
by certified β-descent:

| program | original | β-golf only | port | after descent |
|---|---:|---:|---:|---:|
| `pairupKP` | 778 | 775 | 774 | **771** |
| `pairupK_p` | 657 | 655 | 653 | **651** |
| `pairup_Kp` | 1402 | 1372 | 1360 | **1325** |

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
slack. The note column marks the two results that only tie a size the source
already states, and the programs that were also redesigned by hand.

Every gain was audited against its source. Records whose `in` term is the
record itself count: the fast-growing terms, `hydra`, `loader`, `tweet`. A
smaller β-convertible term has the same normal form, so it holds the same
record in fewer bits. Smaller numbers stated in comments turned out to be
component sizes, except the two ties noted.

| program | tromp/AIT | β-golf | saved | found by | certificate | note |
|---|---:|---:|---:|---|---|---|
| `fast_growing_and_conjectures/tweet.lam` | 2230 | **2168** | 62 | descend | beta |  |
| `ait/uniK.lam` | 903 | **854** | 49 | descend | beta |  |
| `characteristic_sequences/primes256.lam` | 286 | **252** | 34 | descend | beta |  |
| `ait/pairup_Kp.lam` | 1402 | **1372** | 30 | descend | beta | by hand: 1325 (valid inputs) |
| `ait/uni28.lam` | 500 | **474** | 26 | descend | beta | by hand: 399 / 382 |
| `fast_growing_and_conjectures/tree_ordinals.lam` | 752 | **728** | 24 | descend | beta |  |
| `lists/sort2.lam` | 435 | **415** | 20 | descend | beta |  |
| `ait/mpi.lam` | 473 | **454** | 19 | descend | beta |  |
| `ait/nf.lam` | 600 | **581** | 19 | descend | beta | by hand: 541 |
| `ait/bf.lam` | 830 | **812** | 18 | descend | beta |  |
| `characteristic_sequences/squares.lam` | 325 | **308** | 17 | descend | beta |  |
| `numerals/binary_numerals.lam` | 433 | **416** | 17 | descend | beta |  |
| `ait/uni8.lam` | 355 | **341** | 14 | descend | beta | by hand: 321 strict / 300 non-strict (vs the IOCCC 344) |
| `lists/sort.lam` | 300 | **290** | 10 | letopt | beta |  |
| `lists/take4k.lam` | 100 | **90** | 10 | descend | beta-path |  |
| `ait/pi.lam` | 401 | **392** | 9 | descend | beta |  |
| `ait/SKint.lam` | 144 | **136** | 8 | descend | beta-path |  |
| `fast_growing_and_conjectures/hydra.lam` | 179 | **171** | 8 | letopt | beta |  |
| `ait/uni2.lam` | 340 | **333** | 7 | letopt | beta |  |
| `fast_growing_and_conjectures/patcail.lam` | 421 | **414** | 7 | descend | beta |  |
| `numerals/scott_numerals.lam` | 482 | **475** | 7 | letopt | beta |  |
| `fast_growing_and_conjectures/laver1.lam` | 268 | **262** | 6 | descend | beta |  |
| `fast_growing_and_conjectures/loader.lam` | 1797 | **1791** | 6 | descend | beta |  |
| `ait/bf2.lam` | 1009 | **1005** | 4 | letopt | beta |  |
| `ait/delimito.lam` | 216 | **212** | 4 | letopt | beta |  |
| `fast_growing_and_conjectures/laver2.lam` | 212 | **208** | 4 | descend | beta |  |
| `ait/pairupKP.lam` | 778 | **775** | 3 | descend | beta | by hand: 771 |
| `ait/triage.lam` | 269 | **266** | 3 | descend | beta |  |
| `numerals/min.lam` | 52 | **49** | 3 | descend | beta |  |
| `ait/ko2kp.lam` | 615 | **613** | 2 | descend | beta | by hand: 557 |
| `ait/pairupK_p.lam` | 657 | **655** | 2 | letopt | beta | by hand: 651 (valid inputs) |
| `fast_growing_and_conjectures/erdos.lam` | 289 | **287** | 2 | descend | beta |  |
| `fast_growing_and_conjectures/laver.lam` | 203 | **201** | 2 | letopt | beta | ties the stated 201 with slack 6 |
| `numerals/church_minimal.lam` | 39 | **37** | 2 | descend | beta | ties the stated 37 with blc -O6 |
| `numerals/sqrt.lam` | 118 | **116** | 2 | descend | beta |  |
| `ait/delimit.lam` | 326 | **325** | 1 | letopt | beta |  |
| `ait/pairlen.lam` | 285 | **284** | 1 | letopt | beta |  |
| `ait/tree.lam` | 223 | **222** | 1 | descend | beta |  |
| `characteristic_sequences/primes2.lam` | 217 | **216** | 1 | descend | beta |  |
| `lists/cycle.lam` | 83 | **82** | 1 | descend | beta |  |
| `lists/take16k.lam` | 110 | **109** | 1 | descend | beta-path |  |
| `lists/take1k.lam` | 105 | **104** | 1 | descend | beta |  |
| `lists/take256.lam` | 81 | **80** | 1 | descend | beta |  |
| `lists/take64k.lam` | 81 | **80** | 1 | descend | beta-path |  |
| `numerals/church.lam` | 30 | **29** | 1 | letopt | beta |  |

45 programs shrink under β-golf alone, by 470 bits in all; 43 of them below every size their source states. 64 do not shrink; 8 demos are excluded.

Demos (excluded):

- `ait/binary_better.lam` (862 → 192): an example term for the BLC2 size comparison
- `ait/minbase.lam` (92 → 23): computes S from a smaller base
- `numerals/SK_numerals.lam` (110 → 31): applies the artifact to sample data
- `numerals/tuple_numerals.lam` (7 → 7): applies the artifact to sample data
- `rosetta/exp00.lam` (31 → 31): applies the artifact to sample data
- `rosetta/facY.lam` (160 → 160): applies the artifact to sample data
- `rosetta/forloops.lam` (139 → 129): applies the artifact to sample data
- `rosetta/variadicY.lam` (256 → 249): applies the artifact to sample data

No gain from β-golf: `BB/BB40.lam`, `BB/BB_Xi.lam`, `Sample.lam`, `ait/Aint.lam`, `ait/Y.lam`, `ait/allA.lam`, `ait/bcl.lam`, `ait/beavers.lam`, `ait/blc.lam`, `ait/decoders.lam`, `ait/delimit2.lam`, `ait/int.lam`, `ait/int4.lam` (by hand: 178), `ait/mlatu.lam`, `ait/quine.lam`, `ait/readlen.lam`, `ait/uni.lam`, `ait/vararg.lam`, `ait/wtf.lam`, `ait/zot.lam`, `characteristic_sequences/all.lam`, `characteristic_sequences/even.lam`, `characteristic_sequences/none.lam`, `characteristic_sequences/odd.lam`, `characteristic_sequences/primes.lam`, `characteristic_sequences/thue-morse.lam`, `fast_growing_and_conjectures/BBE0.lam`, `fast_growing_and_conjectures/BO.lam`, `fast_growing_and_conjectures/E0.lam`, `fast_growing_and_conjectures/ackermann.lam`, `fast_growing_and_conjectures/bms.lam`, `fast_growing_and_conjectures/collatz.lam`, `fast_growing_and_conjectures/gAckerman.lam`, `fast_growing_and_conjectures/goldbach.lam`, `fast_growing_and_conjectures/goodstein.lam`, `fast_growing_and_conjectures/graham.lam`, `fast_growing_and_conjectures/laver0.lam`, `fast_growing_and_conjectures/melo.lam`, `fast_growing_and_conjectures/oddperfect.lam`, `fast_growing_and_conjectures/perfect.lam`, `fast_growing_and_conjectures/w1CK.lam`, `fast_growing_and_conjectures/w218.lam`, `fast_growing_and_conjectures/wCubed.lam`, `lists/cat.lam`, `lists/fold.lam`, `lists/length.lam`, `lists/map.lam`, `lists/reverse.lam`, `misc/id.lam`, `misc/truth.lam`, `numerals/div.lam`, `numerals/divides.lam`, `numerals/eq.lam`, `numerals/fac.lam`, `numerals/fib.lam`, `numerals/gcd.lam`, `numerals/half.lam`, `numerals/leq.lam`, `numerals/lt.lam`, `numerals/mod.lam`, `numerals/tri.lam`, `rosetta/catstrings.lam`, `rosetta/mutrec.lam`, `rosetta/swap.lam`.
