# Upstream PR kit for tromp/AIT

a9 sends; nothing here is submitted automatically. The letter is bullet
points for a9 to write in their own voice; the PR descriptions are
instrumental, so they can be written out in full when the PRs go up.

## Where things are

- Two branches on the a9lim/AIT fork, each rebased on upstream master:
  - `uni-rs`: one commit, `uni.rs` at the repo root. Not opened yet.
  - `golf`: [tromp/AIT#13](https://github.com/tromp/AIT/pull/13), opened
    2026-10-20 with a short body; Tromp is travelling and will review at the
    end of October. 61 commits, one per program and change, so Tromp can take
    any subset: the original fourteen (uni8, uni28, int4, ko2kp, nf, the
    pairups, then the 165's reader in six programs), forty more pushed the
    same day, and on 2026-10-21 the 162's reader in the same six programs
    (int.lam, uni.lam, int4, ko2kp, nf, pairup_Kp) plus a comment fix in
    ko2kp. The branch now changes 40 programs and saves 1,159 bits.
- blam 3.0.0 is released: point links at the `v3.0.0` tag where the content
  predates it, and at a `dev` commit permalink for the 165's record, the Lean
  self-interpreter proofs, and the golf record (`docs/classical/golf.md`).
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
  - The 162-bit reader (the stream selects its own tail; the second-tag
    stage becomes the reader's last operand), found 2026-10-21 by combining
    three agents' work:
    - the 44-bit reader itself: Codex, which built it as a counterexample
      while reviewing a reader-optimality proof of Claude's;
    - passing the second-tag stage as a reader operand: Grok (xAI);
    - splicing the reader into the 165 and letting blam's let optimizer
      find the 162, carrying it into the other five programs, the
      verification, and the Lean proof: Claude;
    - an independent adversarial review of the 162: Codex.
  - The pairup programs: Codex (keep the old loop only to record `ps`).
  - The second round (2026-10-20), by part:
    - `uni8` 321 → 304 / 283, `uni28` 416 → 390 / 370, `blc.lam` 195 → 186,
      `uniK` 903 → 826 → 599, and the cheaper bottoms (`get get get` in
      uni8, `fix fix` in uni2, with the unsolvability proofs): Codex, in
      design consults.
    - The readable sources for every certified β-descent (nf, ko2kp, the
      pairups, uni2, loader, tweet, tree_ordinals and the other BB records,
      the list, numeral and sequence programs, bf, mpi, pi, and the rest):
      Claude agents.
    - Independent re-verification of every result, the BLC2 and truncated
      batteries, and the integration: Claude.
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

## PR 2: `golf` (tromp/AIT#13, open)

a9 opened it with the title "165 bit self-interpreter" and a two-line body.
The commit messages carry each change's design note and verification, so
the body can stay short. a9 posted a summary comment with a size table on
2026-10-20; the draft it was edited from is kept below.

**Suggested edits after the 162 (2026-10-21; a9 makes them):**

- Title: `162 bit self-interpreter`.
- Body, second line, if Grok should be credited there too:
  `Found with the help of Claude, Codex and Grok.`
- In the 2026-10-20 summary comment, six rows of the table change:

  | program | before | after |
  |---|---:|---:|
  | `int.lam` | 168 | 162 |
  | `uni.lam` | 190; non-strict 178 | 184; non-strict 172 |
  | `int4` | 189 | 172 |
  | `ko2kp` | 615 | 540 |
  | `nf` | 600 | 535 |
  | `pairup_Kp` | 1402 | 1270 |
- A short new comment announcing the push (draft):

  > Pushed seven more commits: a new reader for the self-interpreter,
  > 165 → 162 bits, carried into the five programs that share it (uni.lam
  > 184 strict / 172 non-strict, int4 172, ko2kp 540, nf 535, pairup_Kp
  > 1270). The reader is `list I V next`: `list I` makes the first cell its
  > own selection, so after a 0 tag the zero branch is the tail itself,
  > applied to `next`, which is now the reader's last operand instead of a
  > let; after a 1, `V` reopens the stream, hands the tail to `cont`, and
  > skips with `next` as the erased third operand of `list list`. Each
  > commit has its check; the 162 also has a Lean proof that it is a
  > self-interpreter for every closed program:
  > https://github.com/a9lim/blam/blob/94c692c58cfe0f9d9c640051bff62f70d6ab9bce/lean/Blc/Selfint162.lean
  > The branch now saves 1,159 bits across the same 40 programs.

**Draft comment for #13 (as drafted):**

> While you're away I've added forty more commits on the same terms: one
> program per commit, each with its design note and how it was checked, so
> you can take any subset. Every size is what your compiler gives the new
> source. Altogether the branch now changes 40 programs and saves 1,143 bits.
>
> | program | before | after |
> |---|---:|---:|
> | `uni8` (BLC8 universal machine) | 355 (IOCCC uni8.Blc: 344, 43 bytes) | 304 (38 bytes); non-strict 283 (36 bytes) |
> | `uni28` (BLC2 over bytes) | 500 | 390; non-strict 370 |
> | `uni2` | 340 | 332; closed-program variant 321 |
> | `int.lam` (self-interpreter) | 168 | 165 |
> | `uni.lam` | 190; non-strict 178 | 187; non-strict 175 |
> | `int4` | 189 | 175 |
> | `blc.lam` | 195 | 186 |
> | `uniK` | 903 | 826 (same algorithm); 599 with eager weakening |
> | `ko2kp` | 615 | 541, so KP(x) ≤ KO(x) + 541 |
> | `nf` | 600 | 538 |
> | `pairupKP` | 778 | 756 |
> | `pairupK_p` | 657 | 651 |
> | `pairup_Kp` | 1402 | 1273 |
> | `loader` | 1797 | 1781 |
> | `tweet` | 2230 | 2134 |
> | `tree_ordinals` | 752 | 726 |
> | 24 more (bf, mpi, pi, SKint, hydra, patcail, primes256, squares, sort, sort2, …) | | 1–34 bits each |
>
> Most of these are β-convertible to your versions: a certified local search
> over let-floating, λ-lifting, sharing and anti-unification (moves your
> beam search, which only reduces, can't make), then written back as
> source. Those have the same normal form, or none, under every input, which
> is what the records need. The machine redesigns (uni8, uni28, blc.lam,
> uniK's eager weakening) aren't β-convertible and were checked by exact
> normal forms instead: every closed program up to 18–20 bits with data, and
> for the byte machines also truncated input, nested self-interpretation,
> and uni.c reproducing take256.blc8 byte for byte.
>
> Two of the machine steps use an unsolvable term as the strict bottom in
> place of Ω: `get get get` in uni8 and `fix fix` in uni2. Each commit
> message has the reduction showing it has no head normal form; by the
> genericity lemma that leaves every program's normal form, or its absence,
> unchanged.
>
> The uniK eager-weakening commit changes the algorithm (the generated
> combinator terms differ, the results don't), so drop it if you'd rather
> keep Kiselyov's lazy weakening at 826. The pairupK_p and pairup_Kp
> caveat from the first commits still applies: they agree on every
> contract-valid input but differ when the first program isn't a valid
> description.
>
> Found with Claude and Codex, as before; the record is
> https://github.com/a9lim/blam/blob/dev/docs/classical/golf.md

## Letter to John

**Subject:** two PRs, including a 162-bit self-interpreter

- **Who:** a9, building a Rust engine for BLC/AIT experiments
  (github.com/a9lim/blam); say up front that Claude and Codex did most of
  the work.
- **The two PRs.**
  - `uni.rs`: byte-identical with uni.py, about 18× faster.
  - `golf` (#13, already open): int.lam 168 → 162, uni.lam 190 → 184
    (non-strict 178 → 172), and 38 more programs, 1,159 bits in all.
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
  - The golf sources: the IOCCC BLC8 machine is down from 43 bytes to 38
    (36 non-strict), KP(x) ≤ KO(x) + 540, pairup_Kp 1402 → 1270, Loader's
    number in 1781 bits, and int.lam's parser is now in ko2kp, nf, int4 and
    the pairup programs.
- **The self-interpreter: 162 bits** (165 when the PR was opened).
  - The 162's reader: `list I` makes the first cell its own selection, so
    the zero branch is the tail itself, and the second-tag stage is passed
    as the reader's last operand, which the variable branch erases inside
    its skip. Found by combining a counterexample Codex built while
    reviewing a proof of Claude's, Grok's idea of passing that stage as an
    operand, and blam's let optimizer. Lean-proved; independently reviewed.
  - Universal machines 184 strict / 172 non-strict; int4 172.
  - Lower bounds from the same night: every self-interpreter has at least
    37 bits (handwritten, reviewed twice) and 27 kernel-checked in Lean.
- **The 165, the step before:**
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
