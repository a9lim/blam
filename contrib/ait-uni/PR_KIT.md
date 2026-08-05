# Upstream PR kit (a9 sends; nothing here is auto-submitted)

The staging is done (2026-08-03): the a9lim/AIT fork carries `uni.rs`
at its root as one additive commit over upstream master, and blam's
`ref/AIT` submodule pins exactly that tree, so CI exercises the PR
payload continuously. Steps when ready:
1. Optionally add a Makefile stanza mirroring the uni.py lines
   (`(cat hilbert; echo '12') | ./uni`) — note this would break the
   fork's additive-only property that CI checks; if wanted, add it in
   the PR branch at send time.
2. Open the PR from a9lim/AIT master → tromp/AIT master with the text
   below; adapt freely.

---

## PR title

Add uni.rs: a Rust universal machine

## PR body (draft)

This adds a Rust member to the family of reference interpreters at the
repo root (uni.c / uni.js / uni.pl / uni.py / uni.rb): single file,
standard library only, same conventions — program then input on stdin,
byte mode by default, bit mode with any argument, build with
`rustc --edition 2021 -O uni.rs`.

Structurally it follows uni.py closely: parsed terms become host
closures over a persistent environment, argument suspensions are
call-by-name (re-evaluated per use, like uni.py's eta-suspensions, so
effect timing through the output decoders matches exactly), input
cells are memoized by index (the `inp[n]` cache), stdin is read one
byte at a time and stdout flushed per emission so pipelines stream.
It comes out roughly 18× faster than uni.py on `primes1k.blc`.

Verified byte-identical with uni.py on: the quine under
self-application, `bin/take256.blc8` (exact first 256 bytes of a
400-byte input, both interpreters exiting nonzero at that program's
list terminator), `hilbert` with depth input `12`, and `primes1k.blc`
(1,024 output bits) — plus three adversarial vectors: a duplicated
argument whose forcing replays output effects (distinguishes
call-by-name from call-by-need), a streaming check (output arrives
while stdin is still open), and a malformed nine-bit output byte
(both interpreters must die emitting nothing).

Happy to adjust style or conventions to taste.

---

## Letter draft (edit into your own voice before sending)

Subject: a Rust uni, and a mechanical divergence proof for your 32-bit
loop term

Hi John,

I've been building a Rust engine for BLC/AIT experiments
(github.com/a9lim/blam) and it's reached the point where two things
seemed worth sending your way.

The small one is the PR alongside this note: a uni.rs for the
interpreter family at your repo root, verified byte-identical with
uni.py across the quine, take256, hilbert, and primes1k.

The larger one: the 32-bit term your busy-beaver ledger hand-excludes
(the one whose configuration grows instead of recurring) now has a
machine-checked divergence proof. The certificate — we call it a
ratchet — verifies three bounded symbolic head reductions over an
opaque closed metavariable (OPEN: A Z →+ (Z Z) W[Z]; DESC:
W[Z] W[Z] →+ Z Z; BASE: C0 C0 →+ A), and a small glue theorem turns
them into an infinite head reduction, hence no normal form by
standardization. The spec with soundness proof is in the repo
(`docs/classical/certificates/specification.md`), adversarially reviewed in
the spirit of "try to
break it before trusting it." With it, BBλ(32) is fully mechanical —
every closed term of ≤32 bits machine-adjudicated with no hand
exclusions — and sweeping the certificate (plus two further classes,
for loops whose tower argument takes head position and for wrappers
that select their next layer through the argument) over my census
frontier proves 297 maximum-effort unknowns divergent. There is also
now a Lean 4 formalization — zero sorries, no mathlib, the first
mechanical BLC formalization I know of — proving loop32 has no
normal form on axiom propext alone (pleasingly, no standardization
theorem is needed, because every β-reduct of loop32 carries exactly
one redex, so β-reduction from it is deterministic), and every one
of the 297 certificate kills is individually kernel-checked as a
¬HasNormalForm theorem from its wire bits.

The census itself now runs one size past the published tables: every
closed term of 4..41 bits adjudicated, giving BBλ(41) ≥ 1,074,266,118
bits — the first billion-bit row — and Ω restricted to ≤41-bit
programs in [0.124105086764, 0.124105092919] by exact rational
arithmetic. Your published numbers reproduce along the way — every
A114852 count and BBλ value in range, and exact agreement with your
BB.txt halt counts at n=32.

One practical question: the AIT repo carries no license file. My repo
is AGPL with prominent attribution to you; if you have a preference for
how derived work should be licensed, I'll follow it.

Thanks for building this corner of mathematics — it's been a joy to
work in.

[a9]
