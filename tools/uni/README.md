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

Design: terms become host closures over a persistent environment;
arguments are lazy **memoized** thunks — semantically the reference
interpreters' call-by-name suspensions, but each evaluates at most
once (≈11× uni.py on `primes1k.blc`).

Verification (`verify.sh`, needs `ref/AIT` cloned): byte-identical
output with `uni.py` on the quine (self-application property checked
too), `take256.blc8` (exact first 256 bytes; exit behavior at that
vector's terminator matches uni.py's), `hilbert` at depth input `12`,
and `primes1k.blc` (1,024 bits).

`PR_KIT.md` holds the ready-to-send upstream PR text and letter draft.
The file is destined for tromp/AIT's root, where no `uni.rs` slot is
filled; a9 sends the PR.
