( •̀ᴗ•́ ) No sub-165 result. Two complete candidates were built; one passes at 178 bits. Full proofs, sources, and reproduction commands are in [RESULTS.txt](RESULTS.txt).

| Candidate | Battery | Idea |
|---|---|---|
| [spine3_bare.lam](spine3_bare.lam), **158 bits** | `ok=0 skip=1 fail=667` | Replace the zero arm by its bit, moving `next` onto a third outer argument. |
| [spine3_repaired.lam](spine3_repaired.lam), **178 bits** | `ok=667 skip=1 fail=0` | Move the extra-argument discard into the variable continuation. |

Write `P = next`, `K = bit 0`, `F = bit 1`. The 158’s reader is

```text
λs. s (λb. b b C) (s s s) P
```

On a zero tag, `K K C → K`, so it correctly returns `r P`. On a variable, `F F C → C`, so it returns **`C r N P`**. This is independently refuted despite the battery’s fuel outcomes: on the closed identity program the complete interpreter reaches `C (λz.I) N J`, with three arguments at rigid `C`, which cannot become the required two.

The 178 replaces `C` in that reader by `λv r unused. C v r`. Both branches then have exactly the 165’s reader equations. Consequently its correctness proof transfers by structural parsing induction, including divergent source programs. That transfer is a hand proof; no new Lean verification was performed.

A useful exact identity emerged. Let `D = λx.x x`. Then

```text
(cons b r) D → D b r → b b r
(cons K r) D → K
(cons F r) D → r
```

Thus the stream supplies a **conditional predecessor**: `K` on zero, its immediate tail on one. Moreover,

```text
D (s D) X → K     when s begins with 0
D (s D) X → N     when s = 1^n 0 ++ N, n ≥ 1
```

for arbitrary `X`. Proof: the zero case becomes `K K X → K`. In the variable case `s D → r`, and unary-tail induction gives `r r → K N`, hence `r r X → N`. All targeted rigid probes passed. Unfortunately, `D (s D) s` costs 26 bits with `D` inlined, versus 10 for the existing skip. Sharing `D` with the knot or replacing additional work would be necessary.

Three limited-family exclusions were proved:

1. **No abstraction-free application body over `s,P,C` is a parametric reader, at any size.** Specialize to variable 1: let `R = cons K N`, `S = cons F R`, and `T = K N`. Every application expression over `S,P,C` normalizes to either `S`, `T`, or a rigid-headed term with head in `{P,C,N}`. The induction uses
   ```text
   S S → T
   S T → N R
   S (q A⃗) → q A⃗ F R
   T X → N
   ```
   No such expression normalizes to `R`. Furthermore, a `C`-headed result cannot have first argument `R`: its first argument either comes from a smaller expression, whose normal form is never `R`, or is the supplied `F`. Therefore it cannot equal `C R N`. This treats `P` as opaque; exploiting concrete NEXT remains outside the exclusion.

2. **A head spine starting with `s s` cannot work.** On variables, `s s → K N`. With no further argument it is a constant function; with one it becomes `N`; with more it remains `N`-headed. Arbitrary appended arguments cannot restore a `C` head.

3. **Keeping the bare-`C` branch forces the existing outer arity.** Any reader
   ```text
   λs. s (λb. b Z C) A1 … Ak
   ```
   returns `C r A1 … Ak` on variables. Rigid continuation arity forces **`k = 1`**. Changing the zero arm cannot repair a longer spine; the 178 escapes only by changing the variable arm.

My read: merely relocating the dropped copy does not pay. The remaining plausible routes involve a handler using its arguments jointly, a compressed construction whose exposed spine is larger, or concrete NEXT/knot behavior. The diagonal identity gives a specific operation to investigate there, but no evidence yet of a smaller complete interpreter.

Only targeted probes and two batteries with two workers were run. Repository files remain unchanged.

