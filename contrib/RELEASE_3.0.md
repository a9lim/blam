# blam 3.0.0 — release-note draft

Bullets for a9 to voice (GitHub release, and a CHANGELOG if wanted).
Everything below is checked against the tree; the counts come from STATUS.
Delete this file after the release.

## Headline: Tromp's tools, in blam

- **`blam blc ACTION PROGFILE`** — John Tromp's `blc`, every action (31):
  - `run`/`run8`/`runf`/`runO`, `nf`, `hnf`, `nf_size`, `print`, `db`,
    `printlc`;
  - the encoders `blc`, `blc2`, `size`, `size2`, `size0`;
  - the combinator translations `comb`, `combOK`, `bcw`, `bcl`, `blcOK`,
    `comb_nf`;
  - the lambda diagrams `diagram`/`Diagram`, `boxchar`/`Boxchar`,
    `pbm`/`Pbm`;
  - `tex`, `html`, `nfhtml`.
  - No GHC needed.
  - Byte-identical to Tromp's own `blc` (built from the corpus) on every
    pair that both finish: all non-run actions × all 117 `.lam` programs in
    tromp/AIT, and the run family on every closed program ≤20 bits plus a
    random sample of larger ones (STATUS has the counts).
- **`blam uni [-b] [PROGRAM...]`** — Tromp's universal machine:
  - bit and byte modes;
  - `$BLCPATH` names and left-to-right composition, as in uni.c;
  - embedded input after a single program;
  - output decoded by application, as uni does;
  - checked against `uni.py`.
- **A call-by-need machine** (`classical::lazy`) runs programs:
  - shared work, as in Tromp's Haskell evaluator. His brainfuck interpreter
    prints `Hello World!` at once, where the call-by-name KN machine prints
    nothing in 2³⁰ transitions;
  - output streams, so `primes.lam | head` works;
  - memory is the live data, under a hard cap (`--live`);
  - normal forms are identical to the KN machine's on every closed term
    ≤26 bits.
- **λ-notation everywhere.** Every term argument (`normalize`,
  `adjudicate`, `golf`) takes wire bits, a `.lam` / `.blc` / `.blc8` file,
  or λ-notation (`'(\x.x x) (\y.y)'`, or de Bruijn `'(\1 1) (\1)'`).
  - `blam normalize --db` prints the normal form in de Bruijn notation.
  - Library: `blc::notation` (Tromp's `.lam` parser, his printers, and
    `optimize 57 2 1`: `compile` reproduces every checked-in `.blc` golden).
- **`blam golf` is in the default build** (it was lab-gated).

## Results since 2.1.0 (all in STATUS / docs)

- BBλ(33) = 1,812, BBλ(34) = 327,686, BBλ(35) = 38,127,987,424,941:
  exact, via kernel-checked adjudication of every program the census leaves
  open; BBλ(41) ≥ 38,127,987,424,947.
- Nine bits of the true Ω pinned (`0.001000000…`); the tenth is almost
  surely 0 (estimate), not proven.
- The coding theorem on BLC's own machine: certified c ≥ 3.689.
- AIT golf: the IOCCC BLC8 universal machine from 43 to 41 bytes (38
  non-strict), BLC2 machine 500 → 399 bits, 45 programs under certified
  β-golf.
- The 168-bit self-interpreter: nothing smaller in any searched space;
  module lower bound summing to exactly 168.
- qALC: census converged through 27 bits; certified speed prior.
- Performance: census 4..40 in about 21 s wall on an M5 Max.

## Breaking changes (why this is 3.0)

- `qalc`: `mark::Lp` is now an opaque shared handle (the old struct is
  `LpNode`); `LogEntry`/`TapeEntry` payloads, several `state` fields, and
  `NfRun.zipper` became `Shared<…>`; `NfRow.rule`, `ColRow` and `ProbeRow`
  carry `Rule = Cow<'static, str>`; `SemanticsError` gained
  `TickBeyondClock`.
- Made crate-private: `qalc::wf`, the two `*_without_digest` admission
  entry points, and `classical::escalation::{app, lam, emit_bits}` (whose
  names shadowed the crate-root term constructors).
- `blc::enumerate::split_tasks{,_at}` split by exact term count, so task
  boundaries differ (enumeration order is unchanged).
- Checkpoints are `blamckpt v5`; v4 files must be regenerated.
- CLI: `normalize`/`adjudicate`/`golf` term arguments accept any notation
  (plain bit strings behave exactly as before).

## Credit

- Same convention as the PR kit: Claude (Anthropic) and Codex (OpenAI) did
  the design, implementation, and verification in a9's repository; a9
  directed and reviewed.
  - The `blc`/`uni` reimplementation, the call-by-need machine, and the
    differential harnesses: Claude.
  - The adversarial review of the machine, the I/O semantics and uni
    compatibility (memory-cap hole, uni's decoding by application, embedded
    input, `runf` markers): Codex.
