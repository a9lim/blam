# Upstream PR kit for tromp/AIT

a9 sends; nothing here is submitted automatically. The letter is bullet
points for a9 to write in their own voice; the PR descriptions are
instrumental, so they can be written out in full when the PRs go up.

## Where things are

- Two branches on the a9lim/AIT fork, each cut from upstream master:
  - `uni-rs`: one commit, `uni.rs` at the repo root.
  - `golf`: fourteen commits, one program each, so Tromp can take any subset:
    the original eight, then six that move the self-interpreter's reader to
    `int.lam`, `uni.lam`, `int4`, `ko2kp`, `nf` and `pairup_Kp`.
- Open each PR from its branch into `tromp/AIT` `master`. Both branches are
  three commits behind the fork's master (upstream moved since they were
  cut), so rebase each onto current upstream first.
- blam 3.0.0 is released: point every link in the PRs and the letter at the
  `v3.0.0` tag (stable permalinks), not at `dev`. The 165's record and the
  Lean self-interpreter proofs came after 3.0.0, so link those at a commit
  permalink on `dev` or cut a release first.
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
  - The 165-bit `int.lam` reader (skip the whole stream before dispatch):
    Codex, in a fresh-context consult. Carrying it into `uni.lam`, `int4`,
    `ko2kp`, `nf` and `pairup_Kp`, the verification, and the Lean proofs that
    the 168 and the 165 are self-interpreters: Claude.
  - The pairup programs: Codex (keep the old loop only to record `ps`).
  - The size-search tools and the verification behind every number: Claude,
    in blam (`blam golf`, `docs/classical/golf.md`). Since 3.0.0 a plain
    `cargo install blam` includes `blam golf` (no `--features lab`).

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

**Title:** A 165-bit self-interpreter, and smaller sources for uni8, uni28,
int4, ko2kp, nf and the pairup programs

- **Shape of the PR.**
  - Fourteen commits, one per program and change; each commit message
    carries its own design note and verification. The last six depend only
    on their own program's earlier commit (`int.lam`, `uni.lam` on none).
  - Every size is what the current `blc` toolchain gives the new source.

  | program | before | after |
  |---|---:|---:|
  | `uni8` (BLC8 universal machine) | 355 (IOCCC uni8.Blc: 344) | 321 (41 bytes); non-strict 300 (38 bytes) |
  | `uni28` (BLC2 universal machine) | 500 | 416; non-strict 393 |
  | `int.lam` (self-interpreter) | 168 | 165 |
  | `uni.lam` (universal machine) | 190; non-strict 178 | 187; non-strict 175 |
  | `int4` | 189 | 178, then 175 |
  | `ko2kp` | 615 | 569, then 566, so KP(x) ≤ KO(x) + 566 |
  | `nf` | 600 | 562, then 559 |
  | `pairupKP` | 778 | 774 |
  | `pairupK_p` | 657 | 653 |
  | `pairup_Kp` | 1402 | 1360, then 1357 |

- **The self-interpreter's reader.** `skipvar` (`\l. l l l`) skips past the
  first 0 of any stream. Applied to the whole input before the tag is read,
  it is right for both cases: after a leading 0 it gives the stream past the
  tag, which the zero branch reads, and after a leading 1 the rest past the
  variable, which the variable returns. And `list H (skipvar list)` hands
  `list1` to the variable case, which becomes `cont` itself:
  `\list. list (\bit0. bit0 (\list1\rest. rest next) cont) (skipvar list)`.
  One λ more, one application fewer, one bit less of index: 3 bits. Every
  program that embeds `int.lam`'s reader drops 3 bits the same way.
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
  - int4: the exact self-interpreter contract on 236 programs;
  - int.lam: the exact contract on every closed program through 21 bits
    (3,341), and a Lean proof for every closed program
    (`lean/Blc/Selfint165.lean` in blam; the 168's is
    `lean/Blc/SelfintProof.lean`); uni.lam: the universal-machine contract on
    667 programs, and strictness probes.

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
  - The β-only descents of six of this PR's programs (measured before the
    reader change) go further still: nf 541, ko2kp 557, uni28 399
    (non-strict 382), pairupKP 771, pairupK_p 651, pairup_Kp 1325.
  - These exist only as terms so far. Offer to turn any of them into source.
- **Credit:** see above.

## Letter to John

**Subject:** two PRs, including a 165-bit self-interpreter

- **Who:** a9, building a Rust engine for BLC/AIT experiments
  (github.com/a9lim/blam); say up front that Claude and Codex did most of
  the work.
- **The two PRs.**
  - `uni.rs`: byte-identical with uni.py, about 18× faster.
  - `golf`: int.lam 168 → 165, uni.lam 190 → 187 (non-strict 178 → 175), and
    the smaller uni8/uni28/int4/ko2kp/nf/pairup sources.
- **His tools in blam (3.0.0).** `blam blc ACTION FILE` is his `blc`, all
  31 actions, without GHC; `blam uni` is his universal machine.
  - Checked byte for byte against his own `blc`, built from AIT with GHC
    (`tools/ait/`): every action on every `.lam` in his repo, and the run
    family on every closed program up to 20 bits plus thousands of larger
    ones, partial output before an input error included. Counts in STATUS.
  - It runs his programs on a call-by-need machine (bf.lam's Hello World is
    instant), streams endless output (`primes.lam | head`), and
    `blam blc blc` reproduces every checked-in `.blc`.
  - Maybe useful to him: a GHC-free `blc` for people trying the repo.
  - The golf sources: the BLC8 machine is down to 41 bytes, and int.lam's
    parser is now in ko2kp, nf, int4 and the pairup programs.
- **The self-interpreter: 165 bits.**
  - Palmer's 168 with one change to the reader: skipvar applied to the whole
    stream before the tag is read is right for both cases (the stream past a
    0-tag; the rest past a variable), and `list H (skipvar list)` hands
    `list1` to the variable case, which becomes `cont` itself. 3 bits.
  - Found by Codex in a fresh-context consult. Before that, a long search had
    found nothing below the 168 and produced a conditional theorem: split the
    168 into seven modules, each the unique smallest term meeting its law,
    minima summing to exactly 168. The 165 fuses three of those modules
    (dispatch, variable, skip), the one assumption the theorem flagged.
  - The same reader: uni.lam 187 strict / 175 non-strict, int4 175, and 3
    bits off ko2kp, nf and pairup_Kp.
  - Kernel-checked in Lean: both the 168 and the 165 are self-interpreters,
    as a β-reduction E C (⌜M⌝ ++ N) →β* C (λz.M) N for every closed M.
  - Nothing smaller around the 165: its let structure, βη and contextual
    rewrites, every slot of the new reader, and joint searches through
    164-bit interpreters.
  - **A uniform handler is impossible.** "One handler for both tag bits" is
    ruled out at any size. `I I` and `(K I) I` normalize to the same thing
    but leave the input in different places.
  - **Near misses:** a 164-bit candidate that fails, because the identity's
    value `λz.I` is the same six bits as the input symbol `1`; the 168's
    parser as its own continuation gave a 180-bit universal machine (it no
    longer works with the new reader).
  - Pointer: `docs/classical/self-interpreter/interpreter.md` (and
    `universal.md` for the 175/187).
- **Busy-beaver and Ω results** (if still worth mentioning):
  - His A333479 values BBλ(33) = 1,812, BBλ(34) = 327,686,
    BBλ(35) = 38,127,987,424,941, independently confirmed: his BB.txt hand
    arguments for the programs the census leaves open, formalized as
    kernel-checked Lean proofs (the 35-bit champion is Church 3^27, proved
    symbolically). The exhaustive census itself is Rust, not Lean. The values
    are his; the news is the machine checking.
  - His a(36) = 5·2²⁵⁶ + 6 is not checked here yet (30 open programs).
    Don't quote a census lower bound past 35: anything the census can
    reach sits far below his a(36).
  - The 32-bit loop term the ledger excludes by hand has a machine-checked
    divergence proof, a "ratchet" certificate; 305 frontier kills across four
    certificate classes are each a kernel-checked Lean theorem (no `sorry`,
    no mathlib).
  - Ω restricted to programs of at most 41 bits lies in
    [0.124105086841, 0.124105091271]; over all sizes, the closed-term Ω
    (normalizing terms, not his universal-machine Ω) is pinned to nine
    bits, 0.001000000….
  - His published A114852 counts and BBλ values all reproduce, as do the
    BB.txt halt counts at n = 32.
- **License question.** The AIT repo has no license file. blam is AGPL with
  attribution to Tromp; ask whether he has a preference.
- **Thanks.**
