# Upstream PR kit for tromp/AIT

a9 sends; nothing here is submitted automatically. Everything below is
bullet points for a9 to write up in their own voice.

## Where things are

- Two branches on the a9lim/AIT fork, each cut from upstream master:
  - `uni-rs`: one commit, `uni.rs` at the repo root.
  - `golf`: eight commits, one program each, so Tromp can take any subset.
- Open each PR from its branch into `tromp/AIT` `master`. Both branches are
  three commits behind the fork's master (upstream moved since they were
  cut), so rebase each onto current upstream first.
- The fork's `master` is unchanged: upstream plus `uni.rs`. blam's `ref/AIT`
  pins it, and blam's CI checks that it only *adds* files over upstream.
  - `golf` modifies upstream files, so it must not land on the fork's master.
  - After either PR merges, bump the pin deliberately.

## Who did the work (for both PRs and the letter)

- Be transparent: AI agents in a9's own repository did essentially all of
  the design, implementation and verification. a9 directed it, reviewed the
  results, and is submitting them.
  - Name them as "Claude (Anthropic)" and "Codex (OpenAI)".
  - Leave out model names and session links.
- **`uni.rs`:** written by Claude.
- **The golf work, by part:**
  - `uni8`:
    - the single bit reader `get` is Codex's;
    - making it non-recursive (a refill always lands on a fresh 8-bit byte)
      is Claude's;
    - the identity continuation behind the non-strict variant is Codex's.
  - `uni28`: Codex (one reader for the parser, the delimiter and the digits).
  - `int4`, `ko2kp`, `nf`: Claude, porting the `int.lam` parser.
  - The pairup programs: Codex (keep the old loop only to record `ps`).
  - The size-search tools and the verification behind every number: Claude,
    in blam (`blam golf`, `docs/classical/golf.md`).

## PR 1: `uni-rs`

**Title:** Add uni.rs: a Rust universal machine

- **What it is.** A Rust member of the interpreter family at the repo root
  (uni.c / uni.js / uni.pl / uni.py / uni.rb).
  - One file, standard library only.
  - Build with `rustc --edition 2021 -O uni.rs`.
- **Conventions.** The same as the family's: program then input on stdin,
  byte mode by default, bit mode with any argument.
- **Design.** It follows uni.py:
  - parsed terms become host closures over a persistent environment;
  - argument suspensions are call-by-name, re-evaluated on every use like
    uni.py's eta-suspensions;
  - input cells are memoized, the counterpart of uni.py's `inp[n]` cache;
  - stdin is read one byte at a time and stdout flushed per emission, so
    pipelines stream.
- **Why call-by-name.** Call-by-need halves the output of a program whose
  duplicated argument runs output effects while being forced.
- **Speed.** About 18× uni.py on `primes1k.blc` (0.48 s against 8.7 s).
- **Verified byte-identical with uni.py on Tromp's own vectors:**
  - the quine, under self-application;
  - `take256.blc8`, with both interpreters dying at that vector's terminator;
  - `hilbert` at depth input `12`;
  - `primes1k.blc`.
- **Plus three adversarial vectors:**
  - the effect-replay program, which must print `00`;
  - streaming: output must arrive while stdin is still open;
  - a malformed nine-bit output byte, on which both interpreters must die
    with no output.
- **Optional.** A Makefile `test` stanza mirroring the uni.py lines, e.g.
  `(cat hilbert; echo '12') | ./uni`, if Tromp wants it.
- **Credit:** see above.

## PR 2: `golf`

**Title:** Smaller sources for uni8, uni28, int4, ko2kp, nf and the pairup
programs

- **Shape of the PR.**
  - Eight independent commits, one per program; each commit message carries
    its own design note and verification.
  - Every size is what the current `blc` toolchain gives the new source.

  | program | before | after |
  |---|---:|---:|
  | `uni8` (BLC8 universal machine) | 355 (IOCCC uni8.Blc: 344) | 321 (41 bytes); non-strict 300 (38 bytes) |
  | `uni28` (BLC2 universal machine) | 500 | 416; non-strict 393 |
  | `int4` | 189 | 178 |
  | `ko2kp` | 615 | 569, so KP(x) ≤ KO(x) + 569 |
  | `nf` | 600 | 562 |
  | `pairupKP` | 778 | 774 |
  | `pairupK_p` | 657 | 653 |
  | `pairup_Kp` | 1402 | 1360 |

- **The two universal machines.** One bit reader, `get`, serves every read.
  In uni8 a refill always lands on a fresh 8-bit byte, so the reader needs
  no recursion.
- **The ports.**
  - `int4` is rebuilt on `int.lam`'s design. Its cells also swallow the
    successor tag bit that follows a 1, and skipvar carries over unchanged.
  - `ko2kp`, `nf` and the pairup programs get `int.lam`'s cons'/skipvar
    parser in their embedded evaluators.
  - The pairup programs keep the old loop only to record the consumed bits.
- **Verification.** Exact normal-form comparison against the originals:
  - the universal machines: every closed program up to 18 bits followed by
    data;
  - ko2kp and nf: every closed program up to 13 bits plus data bits;
  - pairup: 60 contract-valid inputs in every IF_DIRTY/IFCPS setting;
    pairupKP also on raw pairs of closed programs;
  - int4: the exact self-interpreter contract on 236 programs.

  No differences, and no input halting on only one side.
- **Caveat.** `pairupK_p` and `pairup_Kp` agree with the originals on every
  contract-valid input, but differ when the first program is not a valid
  description. For example, `p = \x. x` returns the rest of the input
  instead of a pair. The second parse then meets an open term, where the two
  dirty base environments give different garbage. With `!IFDIRTY` the
  differences vanish.
- **More if wanted.**
  - A β-only search (let-floating and sharing, which the beam-search
    optimizer never does) finds smaller β-convertible terms for 45
    programs in the repo, 470 bits in all. Examples outside this PR: `tweet`
    2230 → 2168, `uniK` 903 → 854, `primes256` 286 → 252.
  - The β-only descents of six of this PR's programs go further still: nf
    541, ko2kp 557, uni28 399 (non-strict 382), pairupKP 771, pairupK_p 651,
    pairup_Kp 1325.
  - These exist only as terms so far. Offer to turn any of them into source.
- **Credit:** see above.

## Letter to John

**Subject:** two PRs, and what we learned trying to beat the 168

- **Who:** a9, building a Rust engine for BLC/AIT experiments
  (github.com/a9lim/blam); say up front that Claude and Codex did most of
  the work.
- **The two PRs.**
  - `uni.rs`: byte-identical with uni.py, about 18× faster.
  - The golf sources: the BLC8 machine is down to 41 bytes, and int.lam's
    parser is now in ko2kp, nf, int4 and the pairup programs.
- **The 168 (Palmer's self-interpreter): nothing smaller found.**
  - What was searched:
    - every let structure up to four cuts;
    - βη rewrites to +24 bits;
    - every single slot, and joint pairs of slots, exhaustively;
    - over a hundred hand-designed protocol changes.
  - A conditional theorem: split the 168 into seven modules and each one is
    the unique smallest term satisfying its own law. The minima reassemble
    into the 168 bit for bit, so a smaller interpreter has to fuse control,
    share work across modules, change the binder layout, or entangle the
    knot with the body.
  - **A uniform handler is impossible.** "One handler for both tag bits" is
    ruled out at any size. `I I` and `(K I) I` normalize to the same thing
    but leave the input in different places.
  - **Near misses:**
    - a 180-bit universal machine that uses the parser as its own
      continuation;
    - a 164-bit candidate that fails, because the identity's value
      `λz.I` is the same six bits as the input symbol `1`.
  - Pointer: `docs/classical/self-interpreter/interpreter.md` (and
    `universal.md` for the 178/190).
- **Busy-beaver and Ω results** (if still worth mentioning):
  - BBλ(33) = 1,812, BBλ(34) = 327,686, BBλ(35) = 38,127,987,424,941: his
    BB.txt hand arguments for the programs the census leaves open, formalized
    as kernel-checked Lean proofs (the 35-bit champion is Church 3^27, proved
    symbolically). The exhaustive census itself is Rust, not Lean.
  - The 32-bit loop term the ledger excludes by hand has a machine-checked
    divergence proof, a "ratchet" certificate; 305 frontier kills across four
    certificate classes are each a kernel-checked Lean theorem (no `sorry`,
    no mathlib).
  - The census covers every closed term of 4..41 bits:
    BBλ(41) ≥ 38,127,987,424,947 bits.
  - Ω restricted to programs of at most 41 bits lies in
    [0.124105086841, 0.124105091271]; over all sizes, the closed-term Ω
    (normalizing terms, not his universal-machine Ω) is pinned to nine
    bits, 0.001000000….
  - His published A114852 counts and BBλ values all reproduce, as do the
    BB.txt halt counts at n = 32.
- **License question.** The AIT repo has no license file. blam is AGPL with
  attribution to Tromp; ask whether he has a preference.
- **Thanks.**
