# blc

Binary lambda calculus engine for algorithmic information theory experiments:
Kolmogorov complexity bounds, Solomonoff prior approximation by program
enumeration, busy-beaver-style term surveys.

## Architecture

- `src/term.rs` — 1-indexed de Bruijn terms, BLC bit encoding (`00`=λ,
  `01`=app, `1ⁿ0`=var n), sizes, closedness.
- `src/parse.rs` — prefix parser off a bit stream (the term code is a prefix
  code; `parse_prefix` is the self-delimiting step of the prefix machine).
- `src/eval.rs` — **reference normalizer**: naive textbook shift/subst,
  normal-order, fuel in β-steps. The executable spec everything else is
  differential-tested against.
- `src/vm.rs` — **the fast machine**: defunctionalized Crégut KN (≡ NbE),
  flat u32 term pool, indices in syntax / levels in values, explicit
  stacks, call-by-name (β-counts match normal order exactly), readback
  streams the normal form's bits into a `Sink` — nf size costs O(1) space.
- `src/oracle.rs` — BB.lhs syntactic divergence oracle (`noNF`/`isW`),
  generic over term views.
- `src/bb.rs` — escalation engine: faithful BB.lhs `normalForm` port
  (oracle at every application + persistent redex-history + `simplify`
  argument canonicalization), verdicts Halt/Diverge/Unknown.
- `src/enumerate.rs` — closed terms of size exactly n as packed u64s;
  splittable into subtree tasks for fused parallel generate-and-consume.
- `src/bin/census.rs` — rayon-parallel halting census with the escalation
  ladder (NF-prescan → oracle → KN small/medium fuel → BB engine → KN
  rescue), verified against A114852 counts and the BBλ table.

## Roadmap

1. Reference core (this) — cross-validated against John Tromp's Haskell
   tooling in his [AIT repo](https://github.com/tromp/AIT), cloned read-only
   under `ref/AIT` (gitignored; `git clone --depth 1
   https://github.com/tromp/AIT ref/AIT` to recreate).
2. Fast VM — strongly-reducing abstract machine (design informed by
   Krivine/KN-machine literature, Tromp's `uni.c`, SectorLambda), arena
   memory, rayon-parallel enumeration.
3. Experiments — enumerate closed terms by encoding size, normalize under
   fuel, histogram outputs → empirical lower bounds on m(x); K upper bounds
   for concrete objects; Levin-search demos.
4. Lean track — verified prefix-freeness/Kraft, machine-checked K upper
   bounds via kernel-checked normalization.
5. Upstream — distill a minimal `uni.rs` matching Tromp's reference
   interpreters and PR it to AIT.

Step-counting convention is provisional (β-steps) until matched to Tromp's
tooling for busy-beaver comparability.
