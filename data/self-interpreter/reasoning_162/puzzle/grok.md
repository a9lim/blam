[gaslamp] → grok · job gk-20261021-190203-311b · watch: tail -f /Users/a9lim/.gaslamp/jobs/gk-20261021-190203-311b/events.jsonl
No reader of weight 45 or less turned up. The best term is still the known one at 46. A second, genuinely different reader works at 55, and the arity gap that separates it from 46 looks structural.

## Record

`R162 = λs. s (λa. a) (λu. s (λq. c) ((s s) u)) j` has cost 42, `depth(j) = 1`, weight 46.

| piece | bits |
|---|---|
| 4 λ | 8 |
| 7 applications | 14 |
| leaves `s,a,s,c,s,s,u` (indices 0,0,1,3,1,1,0) | 2+2+3+5+3+3+2 = 20 |
| `j` | 0 |

`cost = 2L + 4A + X` with `X` the sum of 0-based indices of the non-`j` leaves. That is 8 + 28 + 6 = 42.

Reductions, `K = λx y. x`, `F = λx y. y`, `Z(r) = λf. f K r`, `U₀ = λf. f K N`, `Uₙ₊₁ = λf. f F Uₙ`, and `Uₘ Uₘ → λ_. N`:

- `Z`: `s I → K r → λ_. r`, which drops the continuation, then `r j`.
- `Uₙ` (`n ≥ 1`): `s I → F Uₙ₋₁ → I`, so the continuation receives `j`: `s (λq. c) → c Uₙ₋₁` and `(s s) j → N`, hence `c Uₙ₋₁ N`.

`R165 = (λn. λs. s (λb. b (λu r. r n) c) ((s s) s)) j` is cost 49, depth 0, weight 49 (5 λ, 8 applications, index sum 13). On `Z`, `(s s s) → r` and `(λu r. r n) r r → r n`. On `Uₙ`, `F` selects `c`, the tail falls through, and `(s s s) → N`.

## A different reader, weight 55

```text
Rₐ = λs. s (λa. (a a) (λt. λu. (c t) ((s s) u))) j
```

Cost 51, depth 1, weight 55. Four λ (8), eight applications (16), leaves `s, a, a, c, t, s, s, u` at indices 0, 0, 0, 4, 1, 3, 3, 0 sum to 27. The `j` leaf is free.

`K K → λy. K` and `F F → I`, so `s (λa. (a a) M) → (bit bit M) tail`:

- `Z`: `(K K M) r → K r → λ_. r`, and `M` is dropped, then `r j`.
- `U₁`: `(F F M) U₀ → M U₀ → λu. c U₀ ((U₁ U₁) u)`, then `j` gives `c U₀ N`.
- `U₂`: the same with tail `U₁`, and `U₂ U₂ → λ_. N`, so `c U₁ N`.

This is not the shape `s I V j`. The probe is `a a`, and on a variable stream that probe returns `M` already applied to the tail. It is 9 above the record because those two `s` leaves sit at index 3 (5 each) instead of index 1, and `c` sits under four λs.

## Why the usual escapes do not beat 46

**The two protocols are piece-minimal.** For `s I (λu. …) j` every constructor in the weight-46 table has a separate job: `I` is the cheapest probe that yields `λ_. r` on zero and `I` on a variable stream, `λu` is the absorber, `λq. c` is the cheapest `c · tail`, and `(s s) u` is the cheapest payload at that index. For the depth-0 spine, `(s s s)` at index 0 is 10 bits and is the cheapest junk available there (`s` costs 2; `n` would cost 3), and `λu r. r n` is the cheapest term with `(A r) r → r n`. Both sums match the known terms exactly, with no shared node left to delete.

**Lets and duplicators lose at these indices.** Binding a variable that already occurs `k` times costs one λ and one application (4) plus one index bit per occurrence. Two uses of `s` at index `i` cost `2(i+2)+2`. A `λx. x x` copy costs at least `10 + i`. Copying wins only for `i > 8`. Every `s` in the two records is at index 0 or 1. Hoisting `(s s s)` or `s (λq. c)` out of `R162` deepened the copies that remained and raised the weight (the best let-of-`k` variant of `R162` landed at 54).

**Common extra arguments stick once the variable branch is `c`-headed.** After `F F → I`, a probe `λb. (b b) C` with `C` lambda-free returns `C · tail` on a variable stream. If that is already the neutral `c · tail · N`, a final `j` demanded by the zero branch (`(λ_. r) □ j → r j`) becomes a third argument of rigid `c`. One more λ under `C` absorbs it; that is `Rₐ`, and it pushes the payload leaves from index 1 to index 3. Dropping that λ, which is the only way to a three-λ `b b` reader, leaves either `r` without `j` or `(c · tail · N) j`.

**Depth 3 and 4 are not a separate gap.** The hoist identity already proved for this problem, `w((λa. R[a/j]) j) = w(R) + 6 + f − 3d`, sends any sub-46 reader at depth 3 or 4 to a depth-0 reader of no greater weight. Depth ≥ 5 is already at least 46. The only open bands are depth 0 (budget 45, the 49-protocol), depth 1 (budget 41, one bit under `R162`), and depth 2 (budget 37). A depth-2 shared-payload term that does satisfy the laws,

```text
λs. (λp. s (λb. b (λu. u) (λu λv. (c u) p)) j) (s s s)
```

has six λ and nine applications before index inflation, so its weight is at least the mid-50s, not 37.

Python was blocked in this sandbox, so none of this was re-checked by the repo’s enumerator. The hand reductions above are the verified part. The claim that no cheaper reader exists in the remaining depth-0 and depth-2 shapes is not a proof — only that the merges which actually change the `s I V j` skeleton (self-application probe, shared payload, hoisted skip, duplicated `j`) all cost more than they save, and the one-bit and four-bit gaps in the two tight protocols are exactly the absorber and the `λu` that discards the tail.
[gaslamp] job: gk-20261021-190203-311b · session: 01a160b3-463a-7400-9830-3e669b139d7a · resume: gaslamp grok --resume 01a160b3-463a-7400-9830-3e669b139d7a · model: grok-4.7 (billed grok-4.7-build) · tok: 6852k→151k · $4.87
