# Running BLC programs

This document is the contract for blam's program-facing surface: the term
notations every command accepts, the reimplementations of John Tromp's two
tools — `blc` (`ref/AIT/Main.lhs`, `AIT.lhs`, `Lambda.lhs`) and `uni`
(`ref/AIT/uni.c`, with `uni.py` and `uni.rs` as its references) — and the
call-by-need machine they run on. Size optimization of programs is
`golf.md`. Measured compatibility counts live in `../STATUS.md`.

## 1. Term notations

A TERM argument (`normalize`, `adjudicate`, `golf`) is one of:

- **wire bits**: a string of `0`/`1` (whitespace ignored) encoding exactly
  one closed term;
- **a file**, by extension: `.lam` is λ-notation, `.blc` ASCII bits, `.blc8`
  and `.Blc` packed bits (most significant first, the last byte's spare bits
  ignored). An extensionless file is sniffed: only `0`, `1` and whitespace
  is ASCII bits, other valid UTF-8 is λ-notation, anything else packed;
- **λ-notation** on the command line: named, such as `'(\x.x x) (\y.y)'`, or
  de Bruijn with 1-based indices, such as `'(\1 1) (\1)'` (the named reading
  is tried first; a text that fails it only on unbound numerals is read as
  de Bruijn).

Every term must be closed. `src/cli/program.rs` owns this resolution.

### The `.lam` language

`blc::notation::parse` reads the language of `Lambda.lhs`'s
`Read (LC Id)`:

- `\x. body`, where the dot is optional (`\x\y x` is `\x.\y.x`);
- application by juxtaposition, left-associated, with parentheses;
- `--` comments to the end of the line;
- `let a = A; b = B; in body`, with an optional trailing `;`. A definition
  sees the ones before it. One that mentions its own name is wrapped in
  Tromp's fixpoint `\f (\x x x) (\x f (x x))`. The block desugars exactly as
  `lcLet` does: `let x = e in b` is `(\x. b) e`;
- identifiers are runs of letters, digits, `_` and `'`.

`let` and `in` are reserved. Haskell's backtracking parser would also accept
them as variable names in a few positions; no program in tromp/AIT does so.
Trees deeper than `notation::MAX_DEPTH` (10,000) are refused, which keeps
every recursive walk over a parsed term inside a default thread stack.

`Expr::to_term` is `toDB`, failing on the first unbound variable.
`notation::compile` is the whole `blc blc` pipeline: parse, `toDB`, and the
smallest result of `optimize 57 2 1`, `AIT.lhs`'s beam search over η and
size-reducing β steps. That optimizer runs on a hash-consed arena, so its
duplicate test and memo keys are O(1). `compile` reproduces every checked-in
golden of tromp/AIT; `tools/blcc.py` stays the independent compiler oracle.

## 2. `blam blc`

`blam blc ACTION PROGFILE [ARGS...]` is Tromp's `blc`, action for action:
`run`, `run8`, `runf`, `runO`, `print`, `db`, `printlc`, `nf`, `hnf`,
`nf_size`, `blc`, `blc2`, `size`, `size2`, `size0`, `comb`, `combOK`,
`comb_nf`, `bcw`, `bcl`, `blcOK`, `diagram`, `Diagram`, `boxchar`,
`Boxchar`, `pbm`, `Pbm`, `tex`, `html`, `nfhtml` and `help`. As in `blc`,
actions that show or encode the program first compile it with
`optimize 57 2 1`; `print`, `db`, `nf`, `hnf`, `nf_size`, `comb_nf` and the
`run` family use it as written.

### The run family

`run` applies the program to standard input as a list of bits, then to each
ARG as a bit list; `run8` reads standard input as bytes. Standard input is
read lazily, as `blc`'s `getContents` reads it: a byte is read only when the
program first demands the cell holding it, so a program that ignores its
input never waits for it, and an interactive one has its output flushed
before each blocking read. The normal form is computed on the call-by-need
machine (§4) and read back with `AIT.lhs`'s `bshow`, implemented in
`classical::io`:

- a list of bits prints as `0`/`1` characters, a list of bytes as the bytes;
- any other pair prints as `<x,y>`;
- anything else prints as `(term)` in de Bruijn notation;
- a final newline is appended.

The reading streams. `classical::io::Reader` is a machine `Sink` that
classifies the normal form token by token as it is produced, against
`bshow`'s equations in their order. A bit or a byte is written once its
pattern completes; a pair's first component is read by a nested reader as
it arrives; the tail of a list streams. So an endless output such as
`characteristic_sequences/primes.lam` prints as it is computed. The reader
does constant work per token and keeps O(1) memory per output cell (nested
pairs cost one small frame each). A closed pipe ends the run quietly, at
the next write or before the next input read (a read already blocked on a
terminal or pipe waits for it, as in Tromp's tools).
`runf` prints the whole normal form; `runO` ends the input with an error
instead of nil.

**Errors in the input.** `blc` turns a stdin byte that is not `0`/`1` into
a lazy Haskell `error` thunk, and `runO` ends its list with one. Both errors
fire only if the program forces them. blam reproduces this exactly. It
normalizes `λm₁…λmₖ. (P input) args`, with each such thunk replaced by its
marker variable, and reports the error as soon as the normal form uses a
marker. A normal-order normal form contains the marker exactly when the
value is forced. Detection happens while the normal form streams, so an
error is reported even when another part of the output never finishes.

The output written before such an error is also `blc`'s, but for the
character encoding below. Haskell forces the normal form left to right in
pre-order, as the machine emits it. `bshow`
writes `(` and `<` as soon as a pattern fails, so the reader decides at the
same token: a pair's first component is read by a nested reader from its
first token, not buffered. A spine `m a₁ … aₖ` headed by a marker is a
single erroneous node, because `app ⊥ x` is itself ⊥. So the reader holds
an application token until its spine's head shows whether it is one.

### The other actions

The diagrams, the combinator translations (Tromp's improved bracket
abstraction, Kiselyov's, BCW), the three encodings and the printers are
literal ports (`src/cli/blc/`). Two of them are not literal:

- **`hnf`** runs as a call-by-name environment machine that substitutes
  only at readback. Tromp's version head-normalizes a function's body
  before substituting into it. That performs the same head steps in a
  different order, so the result is the principal head normal form. The
  literal port stays in the tests as the spec. The machine is call-by-name
  rather than call-by-need because an argument forced in head position must
  still read back as written.
- **`comb_nf`** evaluates S/K reductions through memoized thunks, because
  `evalCL` is lazy (`K u x` never evaluates `x`). It reports a reduction
  nested deeper than a million levels instead of following it into a stack
  overflow.

### Deliberate differences from `blc`

- Output characters up to 255 are written as raw bytes. `blc` writes every
  character above 127 in the locale's encoding, because its stdout is in
  text mode; outputs of ASCII alone are identical.
- Tromp's byte pattern accepts any variable in a bit position and reads the
  eight indices with `foldr (\b z -> 2*z + 1 - b) 0`. blam does the same.
  Codes above 255 are written in UTF-8, and a value `chr` would refuse is an
  error.
- Normalization has budgets: `--beta`, `--steps`, and `--live` (heap
  objects, default 2²⁶). `blc` runs until the machine gives out.
- PROGFILE may also be a wire file.

## 3. `blam uni`

`blam uni [-b] [PROGRAM...]` is Tromp's universal machine. Without PROGRAM,
standard input is the program followed by its input:

- **byte mode** (the default) reads the program from the bits of the
  bytes, most significant first, and skips the rest of its last byte. The
  following bytes are the input list.
- **bit mode** (`-b`) reads one bit per byte, its lowest, for both program
  and input.

PROGRAM arguments name the program instead, as files or, as uni.c does, as
`$BLCPATH/NAME.blc8` (`NAME.blc` under `-b`). Several compose left to right,
each reading its predecessor's output. A program file is read the way uni.c
reads it: under `-b` one bit per byte (its lowest), otherwise packed bits.
Whatever follows the program in the file, whitespace included, is input
that comes before standard input (uni.c's embedded input); in a
composition, embedded input is an error, as in uni.c. Two extensions: a
`.lam` file is λ-notation, and a `.blc` file in byte mode is read as ASCII
bits, all of it the program. Standard input is read lazily, as uni does.

**Output is read the way uni reads it: by application.** A list is anything
that, applied to a handler and an end value, calls the handler on a head, a
tail and the end value, or returns the end value. A bit is anything that,
applied to two values and a dummy, returns one of them. A byte is a list of
bits. So `λx.λy.λz.x z` is the bit `0`, as it is to uni, even though its
normal form is not `λx.λy.x`. blam normalizes the output under a
canonicalizer term that performs exactly those applications, lazily, with
the end value `E` a marker binder:

```text
canon   = λE. clist …   (clist bit in bit mode, clist (clist bit) in byte mode)
clist e = Y (λrec.λl. l (λh.λt.λ_. cons (e h) (rec t)) E)
bit     = λh. h (K true) (K false) I
```

The result's normal form is read strictly as canonical bits or bytes ending
in `E`, and streamed; `E` anywhere else means the output used the end value
for something else. So on every output that follows this protocol, blam
writes what uni.py and uni.rs write, and what uni.c writes for bytes of
exactly eight bits. Where uni.c differs, blam follows uni.py and uni.rs:

- a byte is the number its bits spell, whatever their count, so `[1]` is
  `0x01` and `[]` is `0x00` (uni.c keeps the previous byte's bits in its
  accumulator, so a short byte inherits them);
- a byte worth more than 255 is an error (uni.c keeps the low eight bits).

On output that breaks the protocol, the three references disagree with one
another. On programs whose output applies the end value, passes the
handler too few arguments, or makes a bit of something that picks neither
value, they print different things and exit three different ways. blam
reports an error, and may write less before it than they do. For example,
all three write the head of a cell whose handler never gets its third
argument, because they print a bit as soon as the handler receives it.

uni.c's debugging and memory flags (`-g`, `-l`, `-p`, `-q`, `-s`, `-x`) are
not supported.

## 4. The call-by-need machine

`classical::lazy` is the engine behind `uni` and the `blc` actions that
normalize (`run`, `run8`, `runf`, `runO`, `nf`, `nf_size`, `nfhtml`; `hnf`
and `comb_nf` have their own evaluators, §2). The KN machine (`architecture.md` §3) is call-by-name and keeps every
environment cell until its run ends. That is exactly right for counting
leftmost-outermost β-steps across a census, and wrong for running programs
that lean on sharing. Tromp's brainfuck interpreter `ait/bf.lam` on `hw.bf`
prints nothing within 2³⁰ KN transitions, and prints `Hello World!` almost
at once under call-by-need (`../STATUS.md` has the measurement).

The design:

- **Evaluation** is a lazy Krivine machine in Sestoft's style. Arguments
  become thunks, and a thunk is evaluated at most once and updated with its
  weak head normal form through update frames. A variable argument reuses
  the environment's own thunk, so there are no indirection chains, and a
  lambda argument is stored already evaluated.
- **Strong normalization** is readback. A closure is entered under a fresh
  rigid level. A neutral term's head is emitted, then its arguments are
  forced and read back in order. A closure over a closed normal form of the
  program or input (data passing through) is emitted as it stands, node by
  node, without evaluation but under the same budgets and polls as any
  other step. Bits stream into a `Sink`, the same trait the KN machine
  feeds, so every KN sink works here too.
- **Input** can be a lazy stream (`Lazy::normalize_input`): the root binds
  the input, and the input's rest is a thunk that, when first forced, asks
  an `Input` for one more element and builds one cell. Before it blocks,
  the input calls the sink's `idle`, so pending output goes out first; a
  run whose sink has stopped (an error found, a closed pipe) ends there
  instead of reading.
- **Memory** is reference-counted, so a run holds its live data, not its
  history. Teardown goes through an iterative graveyard, because a long
  input list is a long chain of cells and dropping it recursively would
  overflow the stack. Every allocation counts against `Limits::live`, and so
  does every machine-stack and readback entry, where it happens. The run
  stops at the first check after the count crosses the cap: within a few
  objects, since a machine step allocates a bounded number and the loops
  that allocate more check as they go. Budgets are independent: a run
  started from inside another run's sink is charged its own objects, and
  the outer run's accounting is restored exactly when it returns.
- **Verdicts** are typed (`Stop`): budgets (`Beta`, `Work`, `Memory`), a
  sink abort, and `Loop`, raised when a thunk is demanded while it is
  already being evaluated. For pure closed terms the heap stays acyclic, so
  `Loop` never fires; it is a sound defensive check (Codex's review).
- **β-counts** count shared redexes once. They are not the census metric and
  are never mixed with the KN machine's.

## 5. Verification

- `tests/differential.rs` checks the lazy machine against the KN machine on
  every closed term through 26 bits. The normal forms are identical, the
  lazy machine finishes on exactly the terms KN finishes on, it never uses
  more β-steps, and all 122 divergers fail on both. The same file checks
  bounded-memory streaming (a million-bit endless list under a 10,000-object
  cap) and the teardown of a million-cell input.
- `classical::io`'s unit tests check the streaming reader against `bshow` on
  every closed term through 18 bits, through both ways bits can arrive, and
  check markers (including the output Haskell writes before an error) and
  the `uni` dialects. `tests/differential.rs` also checks lazily read input
  against the eagerly built list for every closed program through 18 bits,
  the memory cap at the allocation site, and nested runs.
- The CLI tests pin `hnf` against its literal port on every closed term
  through 20 bits, and the encodings against `AIT.lhs`'s own tables.
- `tools/ait/` holds the external differentials, all meant to run on a
  frozen copy of the binary:
  - `build_blc.sh` builds Tromp's `blc` with GHC;
  - `actions.py` compares every non-run action on every `.lam` program in
    tromp/AIT byte for byte;
  - `runs.py` compares the run family on every closed term through 20 bits
    plus a random sample of larger ones, each on ten inputs;
  - `uni_diff.py` compares `blam uni` with `uni.py` in both modes; uni.c
    and uni.rs serve as further references by hand.

  Their latest counts are in `../STATUS.md`.

## 6. Design decisions

- **Two machines, two metrics.** Census, Solomonoff, Ω and BB work count
  leftmost-outermost β on the KN machine. Running a program wants sharing
  and bounded memory, so it runs on `lazy`. Normal forms are unique, which
  is why the two can be cross-checked bit for bit.
- **Strong normal form, then a reader**, rather than a second, lazy output
  protocol. `blc run` is defined as `bshow . nf`, so this reproduces it by
  construction, and streaming readback recovers the laziness that matters
  for endless output.
- **uni's decoding as a term**, not as a third evaluator. The canonicalizer
  turns "decode by application" into "read a canonical normal form", so one
  machine and one reader serve both tools. The price is the protocol
  boundary above: a term cannot print a bit halfway through a broken cell
  the way an effectful host decoder does.
- **Markers instead of an error construct.** A marker binder needs nothing
  new in any engine and turns a laziness question into a syntactic one about
  the normal form.
