# The 162-bit self-interpreter and its universal machines

This is the record of BLC's smallest known self-interpreter, 162 bits, and of
the universal machines built on it: their contracts, sources, anatomy and
lineage, what establishes their correctness, and how to check a candidate
that would replace them. The lower bounds have their own documents:
`global-floor.md` (every interpreter has at least 46 bits, kernel-checked)
and `class-bound.md` (the 162 is the minimum of the separated class). Moving
numbers and the open docket are in `docs/STATUS.md`; the machines are in
`data/self-interpreter/machines/`. Results that this document only lists
(§5) are kept in full at tag `selfint-record-2026-11-25`.

## 1. The object

### Contract and encoding

BLC writes an abstraction as `00`, an application as `01`, and the variable
with de Bruijn index `n` (1-indexed: the innermost binder is 1) as `1ⁿ0`. A
code is read as a Scott list, `cons b r = λf. f b r`, with the bit `0` read
as `K = λx y. x` and the bit `1` as `F = λx y. y`. `⌜M⌝ ++ N` is the list of
`M`'s code bits ending in the tail `N`, and `U_n(N) = 1ⁿ0 ++ N` is a unary
variable code. A closed term with `L` abstractions, `A` applications and
zero-based index sum `X` has `|M| = 2L + 4A + 2 + X` bits.

A self-interpreter `E` satisfies, for every closed `M`,

```text
E C (⌜M⌝ ++ N)  →β*  C (λz. M) N
```

for any continuation `C` and remainder `N`: it reads one program off the
stream, hands the continuation the program's value (`M` under a vacuous
environment binder), and returns the untouched rest. In Lean
(`Blc/SelfintProof.lean`), `IsSelfInterpreter E` is the weaker form: `E` is
closed and the two sides are β-joinable with `C` and `N` rigid variables; `SelfintSizeBound n` says that every
self-interpreter has at least `n` bits.

### The 162

`data/self-interpreter/machines/int162.lam`, wire `int162.blc`:

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

```text
010001101000010000000101011000100001011100011110010111011010000111110000101110011111000000111100000010111011100110111100111111000011111100001011110100111010011010
```

In the size identity it reads `(L, A, X) = (16, 24, 32)`.

**It is proved correct.** `lean/Blc/Selfint162.lean` pins `intL162` to that
wire (`wire_intL162`) and proves:

- `selfint_contract162`: for every closed `M` and any terms `C`, `N`,
  `intL162 C (⌜M⌝ ++ N) →β* C (λz. M) N`, divergent programs included;
- `isSelfInterpreter_intL162`, and with it `not_selfintSizeBound_163`: no
  size bound above 162 holds. The matching `SelfintSizeBound 162` is stated
  and open;
- `not_parses_intL162`: the continuation-uniform parser statement that the
  165 and the 168 satisfy (`Parses`) fails for the 162.

One induction on the source term carries the proof: the parsed closure
denotes the term under any environment of `cons'` cells (`Den`), implements
it under head reduction (`Implements`), and leaves a residual that
spine-reduces to the tail. The variable engine is an induction on the unary
index, and the control is a set of kernel-replayed machine runs on
placeholder terms, lifted because head steps are stable under substitution.
The 162 reuses the 168's closures, NEXT, ABS, APP and cell runs; its knot,
unfold and reader runs are new. Its variable residual `s s NEXT` names the
continuation through NEXT, so its parser statement quantifies the residual
inside the continuation, which is what `not_parses_intL162` shows is
necessary. The axioms are `propext` and `Quot.sound`. The 165 and Palmer's
168 are proved the same way (`selfint_contract165` in `Blc/Selfint165.lean`,
`selfint_contract` in `Blc/SelfintProof.lean`).

**Finite checks.** `tools/self-interpreter/battery.py` normalizes
`λc n. E c (⌜M⌝ ++ n)` with `c` and `n` rigid and compares β-normal forms
exactly with `λc n. c (λz. M) n`, for every closed program of 4 to 18 bits
plus ten deep-index extras. Of its 668 programs, the one whose expected
result has no normal form is skipped: the 162 scores 667 passed, 1 skipped,
0 failed, and through 21 bits (`--max-bits 21`) 3,341/2/0. Because the
battery compares β-normal forms, an interpreter correct only up to η fails
it by design. Divergent sources, which the battery skips, are checked
through the suffix: `E (λv r. r) (⌜M⌝ ++ n)` normalizes to `n` on divergent
`M`.

## 2. Anatomy

| part | bits |
|---|---:|
| knot and `intL = x x` let | 22 |
| `\cont`, `\list` | 4 |
| reader `list I V NEXT`: three applications and `list` | 8 |
| `I = \a. a` | 4 |
| variable arm `V = \u. list (\q. cont) (list list u)` | 28 |
| NEXT header `\bit1. intL (\exp. bit1 · ·)` | 18 |
| ABS (the `cons'` cell alone is 24) | 41 |
| APP | 37 |

The 24 applications are the knot's 3 and the `intL` let's 1, the reader's 3,
the variable arm's 4, the first parse's 1 and the dispatch on `bit1`'s 2,
ABS's 5 and APP's 5. The 16 λs are the knot's two, `intL`, `cont`, `list`,
`I`'s, the variable arm's `u` and `q`, `bit1`, `exp`, the λ-value's `args`
and `arg`, the cell's `zx` and `zy`, and APP's `exp2` and `args`.

### The reader

With `s = cons b r` the whole input stream and NEXT the reader's last
operand,

```text
s I V NEXT  =  b r V NEXT,
```

so `s I` turns the first cell into its own selection.

- **0-tag:** `K r V NEXT = r NEXT = NEXT b2 r2` for `r = cons b2 r2`. The zero
  arm is the tail itself: no handler, no zero-arm λ, and no duplicate copy
  of the stream to drop.
- **Variable** `1ⁿ0 ++ N`: `F r V NEXT = V NEXT`, and `V` reopens the whole
  stream. `s (\q. cont) = cont r` hands the tail to `cont`, and
  `s s NEXT = r r NEXT = N` is the skip, with NEXT as its erased third
  operand (`U_m U_m = K N` for every unary code). So `V NEXT = cont r N`.

On genuine streams these are the 165's parser equations, which is why the
165's proof transfers; off them they differ, and the variable residual
carries NEXT. From `\bit1` inward the 162, the 165 and the 168 are the same
term, one binder deeper in the 162, and all three readers satisfy the same
parser law on genuine streams.

### Lineage

Sean Palmer's 168 (tromp/AIT `2cfa384`) is one β-expansion of Tromp's 170.
The 165, Codex's design, is the 168 with a new reader:

```text
(\x. x x) (\x. (\intL. \cont.
  (\next. \list.
    list (\bit0. bit0 (\unused \r. r next) cont) (list list list))
  (\bit1. intL (\exp. bit1
    (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
    (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

With `H = \bit0. bit0 Z cont` and `Z = \unused \r. r next`, the reader gives
`s H S = H b r S` with `S = s s s`, and `S` is the rest after the first 0 of
the whole stream, so one skip computed before the dispatch is right in both
arms: on a 0-tag `S = r` and `H K r S = Z r S = r next`, on a variable
`S = N` and `H F r S = cont r N`. Two moves pay against the 168: the skip is
hoisted out of the variable arm and computed once on the whole stream, and
the Scott list's own application supplies the tail to the variable arm, so
that arm is `cont` itself. That is one λ more, one application fewer and one
index bit less (`+2 − 4 − 1`). The 165 reads `(17, 25, 29)`, the 168
`(16, 26, 30)` and the 170 `(15, 25, 38)`.

The 162's reader is a 44-bit reader that Codex built while refuting a step
of a reader-optimality proof. Placed in the 165 with NEXT as the reader's
last operand, which is Grok's idea, it gives an interpreter of 166 bits with
a `next` let, and `blam golf letopt` renders that at 162 by inlining NEXT
into the operand slot. Against the 165, the `next` let goes (4 bits) and the
reader shrinks from 43 bits (`list H S` 6, handler 13, zero arm 14, skip 10)
to 40, while NEXT, now under `\list`, pays one more index bit on each of its
four references to `cont` and `intL` (header 17 → 18, ABS 40 → 41, APP
35 → 37: +4).

### Neighbourhood

The 162's let structure is the unique minimum through three cuts: over its
167-bit core's 342 candidate cuts (342, 50,693 and 4,543,789 configurations
at one, two and three cuts) one cut, the `intL` let, gives 162, two give at
least 166 and three at least 172 (`blam golf letopt`). Its βη component to
slack 24 (12,024,847 terms) and its contextual component to slack 18
(575,104 distinct terms) hold nothing below 162 and no tie
(`blam golf component`, with `--contextual` for the second). The logs are
at tag `selfint-record-2026-11-25`.

## 3. The universal machines

For algorithmic information theory the figure that matters is the universal
machine,

```text
U (⌜M⌝ ++ N)  →β*  M N        for closed M.
```

Tromp's two wirings (`ref/AIT/ait/uni.lam`) turn a self-interpreter
`(\x. x x) F` with `F = \x. (\intL. B) (x x)` into one:

```text
non-strict:  (\x. x x) F (\x. x x)              = E dbl
strict:      (\a. a F (\b. b (a a))) (\a. a a)  →β E (\b. b Ω)
```

Around the 162's 140-bit parser body `B` they are **172** and **184** bits
(`data/self-interpreter/machines/uni172.lam`, `uni184.lam`, with their
`.blc` wires); both pass the battery's universal contract (`--uni`,
667/1/0). Each is a corollary of the interpreter's contract:
`E dbl (⌜M⌝ ++ N) →β* dbl (λz. M) N →β M N`, and
`(\b. b Ω) (λz. M) N →β* M N` for the strict wiring. `lean/Blc/Universal.lean`
proves both this way (`uni_nonstrict_of_contract`, `uni_strict_of_contract`):
`isUniversal_uni172` and `isUniversal_uni184`, each pinned to its wire
(`wire_uni172`, `wire_uni184`), and `not_uniSizeBound_173`, so no universal
size bound above 172 holds; the axioms are `propext` and `Quot.sound`. The
same wirings around the 165 and the 168 give 175 and 187, and Tromp's 178
and 190, all proved universal there (`isUniversal_uni175`, `…uni187`,
`…uni178`, `…uni190`; the 190 pinned to what Tromp's compiler makes of
`uni.lam`). `blam golf letopt` finds no smaller rendering of the 172 or the
184. No machine below 172, and no strict machine below 184, is known.

*Strict* means, in Tromp's BLC.tex, that "any attempt to apply free indices
diverges", so the machine accepts only closed programs. The strict wiring
gets this from its base environment Ω: a free index looks itself up in Ω and
diverges at the head. The 162's reader changes only how code is read and
leaves that environment untouched. Strictness is not proved in Lean.
`tools/self-interpreter/battery.py FILE.lam --uni --strict` runs Tromp's
strict filter: no normal form within 2¹⁶ β on seven open programs that use
their free variable (`1`, `2`, `λ2`, `1 1`, `1 1` followed by the data bits
`10`, `λλ4`, and `1 (λλ2) (λλ1)`), each terminated by nil. The seventh is
Codex's, against machines whose base environment applies the parser. The 184
passes all seven. The filter is not a proof: a machine whose base
environment has no normal form can still return garbage on an open program
whose nil tail discharges the apparent recursion.

U's contract has no `λz` and no rigid `C`, so the self-interpreter's lower
bounds and exclusions do not transfer to it automatically.

## 4. Lower bounds

**Every self-interpreter has at least 46 bits**, kernel-checked:
`Blc.SelfintSingleObject.selfintSizeBound_46`
(`lean/Blc/SelfintKernelFloor46.lean`, unpacked and built by
`scripts/global-floor.sh`; axioms `propext`, `Classical.choice`,
`Quot.sound`). Its base is the single-object theorem (Claude's argument,
Codex's Lean): no interpreter is a term all of whose live abstractions
factor through one captured term. A kernel-checked classification of the
candidate sources then excludes every smaller size. `global-floor.md` gives
the argument.

**The 162 is the minimum of the separated class** (`class-bound.md`): an
opaque fixed-point knot around `λp c. R[Q/j]`, with any reader `R` obeying
the independent rigid reader laws and a separate β-normal NEXT `Q` obeying
the canonical rigid branch laws. The 162 and the 165 are literal members. A
member costs at least `116 + w(R)`, exactly that with the canonical NEXT and
knot, where `w(R) = cost(R) + 4 depth(j)`; the 162 has `w = 46`, the 165
`w = 49` (`Blc/SelfintClass.lean`). Lean proves `w ≥ 30`, so every member has
at least 146 bits (`class_bound_146`, `Blc/SelfintReader30.lean`). That
every reader has `w ≥ 46` is established, not kernel-checked: handwritten
reductions leave 3,219,594 candidate sources, and a complete check refutes
them all, each normalizer exception refuted in Lean
(`data/self-interpreter/class-bound/`). The minimum survives the widenings
that `class-bound.md` describes, so an interpreter below 162 must lie
outside the class. No interpreter below 162 is known, and no unconditional
bound above 46; the open docket is in `docs/STATUS.md`.

## 5. Other results

Each is kept in full, with its machine files, proofs and checks, at tag
`selfint-record-2026-11-25`; the Lean modules named here are still in
`lake build Blc`.

- **A 165-bit parser/continuation bundle** (Codex's construction; L 16,
  A 24, X 35) changes only the 162's erased skip operand, giving the reader
  access to recursion; Lean proves its contract for all closed sources,
  continuations and suffixes, and a cheaper assembly using the bundled
  state is open.
- **A β-normal 188** (L 19, A 27, X 40): Lean proves its wire, normality and
  β-join contract for every closed source, continuation and suffix, and
  three chosen contractions connect its parser to the 162. So correctness
  forces neither a source β-redex nor a literal fixed point.
- **A simply typed β-normal 672**: Lean proves its wire, normality, an
  ordinary STLC typing judgment and its contract, so simple typability of
  the interpreter alone excludes nothing.
- **Two nonlinear binders suffice**: every interpreter needs two
  (`Blc/SelfintLowerBound.lean`), and a 584-bit interpreter, whose two are
  closed in isolation, and a β-normal 742 have exactly two
  (`Blc/SelfintSharp.lean`: `selfint_contract584`, `selfint_join742`).
- **A 7,625-bit four-live witness**: the 162 compiled over Codex's
  one-point basis `λa b c. a (λ_⁴.c) c (b c)` is an exact interpreter with
  four live binders, two nonlinear binders, two live captures and width
  three, attaining every count the floor uses at once.
- **The remainder extractor `rem70`** (Codex's construction, 70 bits)
  returns the exact suffix for every source and suffix (Lean); every exact
  extractor on closed sources has at least 27 bits (handwritten, reviewed),
  so the minimum lies in 27..70.
- **Head decomposition**: every interpreter's head normal form is
  `λc s. c A B` or `λc s. s A₁ … Aₖ`; a literal continuation-headed
  interpreter costs at least 55 (`Blc/SelfintProjections.lean`,
  `headForm_fifty_five`), and at least 73 by Codex's reviewed handwritten
  payload pricing.
- **Protocol obstructions** (Codex): exact exclusions of specific protocols
  (one handler for both tag bits, mode-free value builders, the cell/APP
  alias, finite-state repairs of an ABS that only updates state) and of
  `E E =β E` for every exact interpreter (`Blc/SelfintControl.lean`), and
  over a hundred measured protocol variants of the 168, the 165 and the 162,
  none correct below 162.
- **Constructions through the class's exits**: fifteen correct interpreters
  of 164 to 199 bits, among them a 166 whose skip calls the generator on the
  same stream, a 168 whose variable arm returns through the parser, a 173
  whose single `h h` is the knot's diagonal on a 0-tag and the skip on a
  variable, Gemini's 175 sharing one combinator between APP's continuation
  and the variable arm's return, and callers that take over part of a
  variable child's return at 181 and 195.
- **The 165's handler bounds** (Codex, handwritten, independently
  reviewed): with the 165's other 122 bits fixed and independent rigid
  reader laws, its reader `s H T` costs at least 43 for each skip operand
  `T = s s s`, `s s`, `s` (handlers of at least 27, 31 and 35 bits). They do
  not reach the 162's reader, whose last operand is the bare `next`.
- **Slot searches**: in the frames of Tromp's 170 and Palmer's 168, VAR, ABS
  and APP are each the unique survivor at or below the reference size of an
  exhaustive parametric search, and contextual slot searches in the 168
  find no smaller survivor, leaving their capped candidates open.
- **Universal-machine wiring searches** (body fixed): around the 165's
  body every context giving a machine of at most 174 bits fails or is
  capped (14,856,126 contexts, 68,017 capped, 16,144 of those certified
  divergent); around the 168's there is no non-strict machine below 178 and
  no strict one below 185, conditional on 3,961 and 2,375,084 capped
  contexts; none has run around the 162's body.

## 6. Reproduce

Build `target/release/blam` (`cargo build --release`) first.
`battery.py data/self-interpreter/machines/int162.lam` prints
`162 bits ok=667 skip=1 fail=0`.

| instrument | what it runs |
|---|---|
| `tools/self-interpreter/battery.py FILE.lam` | the exact contract on 668 programs (`--max-bits N` for more; `--uni` for the universal contract; `--uni --strict` adds the seven strictness probes) |
| `tools/self-interpreter/polish.py FILE.lam` | the battery, then `blam golf letopt` on a passing candidate; a new algorithm's size is its letopt minimum, not its first written form |
| `blam golf letopt --bits BITS` | exact let structure over the term's core (`--max-cuts`, `--around`) |
| `blam golf component --bits BITS` | the βη component to `--slack S` (`--contextual` adds the Boolean moves) |
| `blam golf check ORIG CAND` | β-certificate that a rendering is β-convertible to the original, and a normal-form differential |
| `lake build Blc` in `lean/` | `Selfint162`, `Selfint165`, `SelfintProof` and `Universal`, with the class-bound and floor-support modules |
| `scripts/global-floor.sh` | unpacks the 46-bit floor's modules, builds `Blc.SelfintKernelFloor46` and prints the axioms of `selfintSizeBound_46` |

**Landing a smaller interpreter.**

1. Take the size from the file, not a hand count: `battery.py` prints the
   wire length, and the size of a new algorithm is the letopt minimum that
   `polish.py` reports.
2. Run `polish.py`: the battery must pass with no failure. Check a letopt
   rendering against the written candidate with `blam golf check`.
3. Run `battery.py --max-bits 21`.
4. Check divergent sources, which the battery skips: the closed probe
   `λn. E (λv r. r) (⌜M⌝ ++ n)` must normalize to `λn. n` for divergent `M`
   such as Ω and `λx. Ω`.
5. Get an independent adversarial check from a fresh context: re-derive the
   contract by hand and recount the size.
6. Write a Lean module modelled on `Blc/Selfint162.lean`: pin the term to
   its wire, prove the contract for every closed program and the new
   `¬ SelfintSizeBound` theorem, and check that the axioms are at most
   `propext`, `Classical.choice` and `Quot.sound`. The record moves when
   that module builds under `lake build Blc`; then derive the universal
   machines in `Blc/Universal.lean` and update `docs/STATUS.md`.
