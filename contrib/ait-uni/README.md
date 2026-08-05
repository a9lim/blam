# uni.rs — BLC universal machine in Rust

A single-file, std-only Rust interpreter for John Tromp's binary lambda
calculus, in the genre of the repo-root reference interpreters
(`uni.py`, `uni.js`, `uni.rb`, `uni.pl`): program from stdin, then its
input; byte mode by default, bit mode with any argument.

```
rustc --edition 2021 -O uni.rs
./uni    < prog.blc8          # byte mode
./uni -  < prog.blc           # bit mode
```

Design: terms become host closures over a persistent environment.
Program argument suspensions are **call-by-name** — re-evaluated on
every use, exactly like uni.py's eta-suspensions, so effects the
output decoders run while forcing replay identically — while input
cells are memoized by index (uni.py's `inp[n]` cache), so duplicated
input tails consume each stdin byte once. Stdin is read one byte at a
time and stdout flushed per emission, so live pipelines stream. Still
≈18× uni.py on `primes1k.blc` (0.48 s vs 8.7 s).

An earlier draft memoized program arguments (call-by-need); adversarial
review produced a closed program whose duplicated argument runs output
effects during forcing — memoization halved its output. Call-by-need
is NOT observationally equivalent to the reference for arbitrary
closed programs; the witness is now a regression vector in `verify.sh`.

Verification (`verify.sh`, needs the `ref/AIT` submodule initialized):
byte-identical
output with `uni.py` on the quine (self-application property checked
too), `take256.blc8` (exact first 256 bytes; both interpreters must
exit nonzero at that vector's terminator — asserted, not ignored),
`hilbert` at depth input `12`, and `primes1k.blc` (1,024 bits); plus
three adversarial witnesses: the effect-replay program above (must
print `00`), a streaming check (output must arrive while stdin is
still held open), and a malformed nine-bit output byte (both
interpreters must die emitting nothing — a silent `as u8` truncation
once emitted `0xff` here).

`PR_KIT.md` holds the ready-to-send upstream PR text and letter draft.
The file itself lives at the root of the a9lim/AIT fork (the `ref/AIT`
submodule pins it) — one additive commit over upstream, which is
exactly the tree the PR ships; a9 sends the PR.
