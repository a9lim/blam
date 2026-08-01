# Upstream PR kit (a9 sends; nothing here is auto-submitted)

Steps when ready:
1. Fork tromp/AIT on GitHub; branch `uni-rs`.
2. Copy `tools/uni/uni.rs` to the fork's root as `uni.rs`.
3. Optionally add a Makefile stanza mirroring the uni.py lines
   (`(cat hilbert; echo '12') | ./uni`).
4. Open the PR with the text below; adapt freely.

---

## PR title

Add uni.rs: a Rust universal machine

## PR body (draft)

This adds a Rust member to the family of reference interpreters at the
repo root (uni.c / uni.js / uni.pl / uni.py / uni.rb): single file,
standard library only, same conventions — program then input on stdin,
byte mode by default, bit mode with any argument, build with
`rustc --edition 2021 -O uni.rs`.

Structurally it follows uni.py: parsed terms become host closures over
a persistent environment, with the Scott/Church I/O forms built the
same way. The one deliberate difference is that argument suspensions
are memoized (call-by-need rather than call-by-name), which keeps the
observable semantics and makes it roughly 11× faster than uni.py on
`primes1k.blc`.

Verified byte-identical with uni.py on: the quine under
self-application, `bin/take256.blc8` (exact first 256 bytes of a
400-byte input, including matching behavior at that program's list
terminator), `hilbert` with depth input `12`, and `primes1k.blc`
(1,024 output bits).

Happy to adjust style or conventions to taste.

---

## Letter draft (edit into your own voice before sending)

Subject: a Rust uni, and a mechanical divergence proof for your 32-bit
loop term

Hi John,

I've been building a Rust engine for BLC/AIT experiments
(github.com/a9lim/blc) and it's reached the point where two things
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
(tools/cert/SPEC.md), adversarially reviewed in the spirit of "try to
break it before trusting it." With it, BBλ(32) is fully mechanical —
every closed term of ≤32 bits machine-adjudicated with no hand
exclusions — and sweeping the certificate (plus a second class for
loops whose tower argument takes head position) over my census
frontier proves 138 of the 2,032 maximum-effort unknowns divergent,
narrowing Ω restricted to ≤40-bit programs to
[0.123995323359, 0.123995328490].

The census machinery reproduces your published numbers along the way —
every A114852 count and BBλ value in 4..40, and exact agreement with
your BB.txt halt counts at n=32.

One practical question: the AIT repo carries no license file. My repo
is MIT with prominent attribution to you; if you have a preference for
how derived work should be licensed, I'll follow it.

Thanks for building this corner of mathematics — it's been a joy to
work in.

[a9]
