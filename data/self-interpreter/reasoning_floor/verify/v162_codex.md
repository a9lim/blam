( •̀_•́ ) **Verdict: correct, and exactly 162 bits.**

The candidate satisfies the stated contract for every finite closed source
term, including sources without a normal form. In fact the proof below gives
finite full beta reduction, not merely beta equivalence:

```text
E C (quote(M) ++ N) ->* C (lambda z. M) N.
```

No eta conversion or normalization of the source program is used. I found no
counterexample and no conflict with the scoped exclusions in the record.
This is a handwritten universal proof with independent encoding checks and
executed finite tests; I did not construct or kernel-check a Lean proof of
the 162. No minimality claim follows.

## 1. Exact object and size

Reviewed on 2026-10-21 in `/Users/a9lim/Work/blam`, at repository HEAD
`f13d3f3323b1e30508ca100311b9eaf148f7b599`, with an already-dirty working tree.
The candidate and its wire are the requested files:

```text
tmp/overnight/self/int162.lam
tmp/overnight/self/int162.blc
```

Their SHA-256 digests, respectively, are:

```text
7b3ef102b1e30dfc846397d7cf47db8b572e7eaeb6f975bf2163e355a8005e93
1d522650caf6fe48a0d1cb94ed68d39e7661fad3c3144a32cbfd0a4a25149b18
```

### Hand count

Here `X` sums zero-based indices, so each variable occurrence has wire cost
`2 + index`. The following is a disjoint partition of the literal source.
"NEXT header" excludes its ABS and APP arguments; those are the last two
rows. "Reader spine" includes the three applications to `list`, but excludes
their three operands. The knot row includes the outer application, both knot
lambdas, both `x x` applications, and the `intL` let's lambda/application.

| Region | L | A | Variable indices, zero based | X | Direct wire cost |
|---|---:|---:|---|---:|---:|
| Knot and `intL` let | 3 | 4 | 0, 0, 0, 0 | 0 | 22 |
| `cont`, `list` binders | 2 | 0 | none | 0 | 4 |
| Reader spine `list I D NEXT` | 0 | 3 | 0 | 0 | 8 |
| `I = lambda a. a` | 1 | 0 | 0 | 0 | 4 |
| `D = lambda u. list (lambda q. cont) (list list u)` | 2 | 4 | 1, 3, 1, 1, 0 | 6 | 28 |
| NEXT header | 2 | 3 | 3, 1 | 4 | 18 |
| ABS arm | 4 | 5 | 3, 2, 1, 2, 0, 3 | 11 | 41 |
| APP arm | 2 | 5 | 4, 4, 2, 0, 1, 0 | 11 | 37 |
| **Total** | **16** | **24** | **25 occurrences** | **32** | **162** |

The per-region direct costs are `2L + 2A + 2V + X`. Globally `V = A + 1`, so
the requested identity gives

```text
2L + 4A + 2 + X = 2*16 + 4*24 + 2 + 32 = 162.
```

In particular, moving NEXT under `list` increases its captured-variable
indices. The count includes that increase; it does not reuse the 165's
NEXT/ABS/APP prices.

### Independent wire check

The wire, with only the file's final newline removed, is:

```text
010001101000010000000101011000100001011100011110010111011010000111110000101110011111000000111100000010111011100110111100111111000011111100001011110100111010011010
```

It contains exactly 162 bits. I wrote a small independent named-source
parser, encoder, and wire decoder in `v162_codex_checks.py`. They check that:

- the literal source encodes to exactly this wire without optimization;
- decoding consumes the entire wire, with no trailing bits;
- every variable is bound;
- the decoded AST equals the independently parsed source AST;
- the AST counts are `(L,A,V,X) = (16,24,25,32)`;
- the repository compiler's **unoptimized** AST is the same AST.

Thus neither an implicit optimizer nor a wire/source mismatch supplies the
claimed size.

## 2. Reader law, including every unary index

All terms below use capture-avoiding substitution and fresh binders. Write
`->*` for a finite sequence of ordinary beta reductions. Define

```text
K = lambda x y. x                 -- bit 0
F = lambda x y. y                 -- bit 1
I = lambda x. x
cons b r = lambda f. f b r
U_0(T) = cons K T
U_(m+1)(T) = cons F (U_m(T)).
```

Thus `U_m(T)` is the stream `1^m 0 ++ T`; a source variable `n >= 1` has
whole code `U_n(T)`, and its returned value must be `U_(n-1)(T)`.

Let `P = W W`, where `W` is the candidate's right-hand knot argument. The
literal candidate `E = (lambda x. x x) W` reduces to `P`. Unfolding `P` on
continuation `C` and stream `s` gives

```text
P C s ->* s I D_(C,s) J_(P,C)
D_(C,s) = lambda u. s (lambda q. C) (s s u).
```

Here `J` is the candidate's displayed `lambda bit1. ...` term. The reader
calculation actually holds with **any** term `J` in its place.

**Zero tag.** For `s = cons K r`,

```text
s I D J ->* K r D J ->* r J.
```

For `r = cons b2 r2`, this is `J b2 r2`. Neither `D` nor the skip is used.
This is precisely the 165's zero-branch law `r next = next b2 r2`.

**Skip lemma.** For every `m >= 0` and every suffix `T`,

```text
U_m(T) U_m(T) ->* K T.
```

To see this, a cell `s = cons b r` satisfies

```text
s s ->* b b r r.
```

At `b = K`, the result is `K r`. At `b = F`, it is `r r`. The zero case
therefore gives `K T`; the successor case reduces to the induction
hypothesis. Consequently `U_m(T) U_m(T) J ->* T` for every `J`, without
evaluating `J` or `T`.

**Variable tag.** For `n >= 1`, put `s = U_n(T) = cons F r`, where
`r = U_(n-1)(T)`. Then

```text
s I D J
  ->* F r D J
  ->* D J
  ->* s (lambda q. C) (s s J)
  ->* C r (s s J)
  ->* C r T.
```

The penultimate step uses
`s (lambda q. C) ->* (lambda q. C) F r ->* C r`.
The final step is the skip lemma for the **whole** stream `U_n(T)`.

This is exactly the 165's variable law `cont r N`, including `n = 1`.
The reader first discards `r` through `F r`, but its variable arm retains
the original `s` and recovers `r` from that stream. NEXT is supplied as the
skip's junk argument and erased. It is not called on a variable. These two
facts are essential to the correctness of the apparent shortcut.

## 3. Complete structural proof

### Parser induction on arbitrary source syntax

Define the environment cell and the two value constructors:

```text
cell a e = lambda b t. b a (t e)
Abs(f)   = lambda e a. f (cell a e)
App(f,g) = lambda e. f e (g e).
```

The second-bit continuation in the candidate is exactly

```text
J_(P,C) = lambda b. P (lambda f.
  b (C (Abs(f))) (P (lambda g. C (App(f,g))))).
```

Therefore the zero-reader law, followed by selection of its second bit,
gives

```text
P C (00 ++ Q) ->* P (lambda f. C (Abs(f))) Q
P C (01 ++ Q) ->* P (lambda f. P (lambda g. C (App(f,g)))) Q.
```

These are full beta reductions: selecting `K` or `F` inside the pending
continuation's lambda is permitted. The other branch is erased without
evaluating it.

For any source term `M`, open or closed, and any suffix `T`, define a
syntactic closure `V(M,T)` recursively:

```text
V(var n,T)       = U_(n-1)(T)
V(lambda B,T)    = Abs(V(B,T))
V(M1 M2,T)       = App(V(M1, quote(M2) ++ T), V(M2,T)).
```

Every `V(M,T)` is literally a lambda abstraction. Notice that the left
child's closure in the application case retains `quote(M2) ++ T` as its
raw quotation suffix. Replacing that suffix by `T` without justification
would give an incorrect account of the parser's actual returned value.

**Parser theorem.** For every finite source `M`, every `T`, and every `C`,

```text
P C (quote(M) ++ T) ->* C (V(M,T)) T.
```

Proof by structural induction on `M`, uniformly in `C,T`:

1. **Variable `n`.** This is the all-index variable reader law above.
2. **Abstraction `lambda B`.** The zero law with second bit `K` gives
   `P (lambda f. C (Abs(f))) (quote(B) ++ T)`. By the induction hypothesis
   this reduces to
   `(lambda f. C (Abs(f))) V(B,T) T`, then to
   `C (Abs(V(B,T))) T = C V(lambda B,T) T`.
3. **Application `M1 M2`.** Put `S2 = quote(M2) ++ T`. The zero law with
   second bit `F` gives
   `P (lambda f. P (lambda g. C (App(f,g)))) (quote(M1) ++ S2)`.
   The induction hypothesis for `M1` reduces this to
   `P (lambda g. C (App(V(M1,S2),g))) S2`.
   The induction hypothesis for `M2` reduces that to
   `C (App(V(M1,S2),V(M2,T))) T`, as required.

All these reductions parse finite syntax. No beta step of the source
program is needed, and the induction makes no normalization assumption.

### Lookup and closure-body induction

The cell satisfies the exact two lookup equations

```text
cell a e K t ->* a
cell a e F t ->* t e.
```

For arbitrary entries `a1,...,ak` and arbitrary base `zeta`, define

```text
Env([],zeta) = zeta
Env([a1,...,ak],zeta) = cell a1 (Env([a2,...,ak],zeta)).
```

By induction on `j`, whenever `0 <= j < k`,

```text
U_j(T) Env([a1,...,ak],zeta) ->* a_(j+1).
```

For `j = 0`, the first cell receives `K,T` and returns `a1`. For `j > 0`,
it receives `F,U_(j-1)(T)` and returns
`U_(j-1)(T) Env([a2,...,ak],zeta)`, to which the induction hypothesis
applies. At the terminating zero, the quotation suffix is discarded. No
entry, base, or suffix is evaluated to establish this result.

It is important to prove a **body** statement, rather than infer an
unjustified beta equality from extensional equality. Write the literal
closure, up to fresh alpha renaming, as

```text
V(M,T) = lambda e. B(M,T,e).
```

Its bodies are explicitly

```text
B(var 1,T,e)       = e K T
B(var n,T,e)       = e F U_(n-2)(T)                (n >= 2)
B(lambda B0,T,e)   = lambda a. V(B0,T) (cell a e)
B(M1 M2,T,e)      = V(M1,quote(M2) ++ T) e (V(M2,T) e).
```

**Body theorem.** If every free source index of `M` is at most `k`, then

```text
B(M,T,Env([a1,...,ak],zeta)) ->* M[a1,...,ak],
```

where the right side is capture-avoiding simultaneous substitution for the
free indices, with `1` mapped to `a1`. All suffixes, entries and bases are
arbitrary. Proof is a structural induction on `M`, strengthened over `k`
and all these parameters:

- **Variable.** For `n = 1`, the body is the first cell applied to `K,T`,
  and reduces to `a1`. For `n >= 2`, its first cell applied to
  `F,U_(n-2)(T)` reduces to the tail lookup, which returns `an` by the
  preceding lemma. The assumption `n <= k` guarantees enough cells.
- **Abstraction.** Its body is
  `lambda a. V(B0,T) (cell a Env([a1,...,ak],zeta))`.
  Take `a` fresh for all entries, the suffix, and the base. Under this
  lambda, contract the literal outer lambda of `V(B0,T)`, then apply the
  induction hypothesis for `B0` with environment entries
  `[a,a1,...,ak]`. The result is
  `lambda a. B0[a,a1,...,ak]`, exactly the substituted source abstraction.
  In de Bruijn notation the old entries and base are weakened under `a`;
  the fresh named notation here performs the same capture avoidance.
- **Application.** Its body is the application of
  `V(M1,quote(M2) ++ T) Env` to `V(M2,T) Env`.
  Contract each closure's literal outer lambda. Apply the induction
  hypotheses, with their respective suffixes, to its two bodies. Context
  closure of beta reduction gives the literal application
  `M1[a1,...,ak] M2[a1,...,ak]`. Do not contract that resulting source
  application. In particular, it may be a redex belonging to a divergent
  source; this proof stops at the required syntax.

Now let `M` be closed. Set `k = 0` and use a fresh rigid `z` as the empty
environment's base. The body theorem gives

```text
B(M,T,z) ->* M.
```

Reducing under the already-present outer lambda gives

```text
V(M,T) =alpha lambda z. B(M,T,z) ->* lambda z. M.
```

This step uses beta reduction under a lambda, **not eta conversion**.
Combining it with `E ->* P` and the parser theorem proves

```text
E C (quote(M) ++ N)
  ->* C V(M,N) N
  ->* C (lambda z. M) N.
```

This finishes the proof for every finite closed `M`, divergent sources
included. The proof actually permits arbitrary terms `C,N`, since its chosen
reductions never require them to reduce. The requested rigid contract is a
special case.

## 4. Executed checks

Both requested commands were run against the existing release binary:

```text
python3 tools/self-interpreter/battery.py tmp/overnight/self/int162.lam
  162 bits  ok=667 skip=1 fail=0
  real 2.01 s

python3 tools/self-interpreter/battery.py tmp/overnight/self/int162.lam --max-bits 21
  162 bits  ok=3341 skip=2 fail=0
  real 9.96 s
```

The harness was inspected: it compares beta-normal forms with rigid
continuation and suffix, using a 2^16 beta budget for the expected result
and 2^20 for the interpreter result. A skipped expected result is not a
passed contract test. The two commands ran concurrently, so these wall
times are operational observations, not isolated performance measurements.

For the requested divergent-source tests I used the suffix projection
`F = lambda v r. r` and a rigid suffix bound at the outside:

```text
lambda n. E F (quote(M) ++ n).
```

Every result was exactly `lambda n. n`, wire `0010`:

| Source | Source wire | Source bits | Beta contractions to suffix |
|---|---|---:|---:|
| Omega = `(lambda x. x x) (lambda x. x x)` | `010001101000011010` | 18 | 215 |
| `lambda a. Omega` | `00010001101000011010` | 20 | 228 |
| `Omega I` | `010100011010000110100010` | 24 | 263 |

These checks used a fresh frozen copy of the release KN binary, capped at
262,144 beta contractions and 15 seconds per subprocess. Its SHA-256 was

```text
5266a7fc450c2bc6050a2baf7f7a23f06589fdf99a8a6470d73b83dcb324c112
```

I also checked the isolated reader with rigid continuation, rigid NEXT,
and rigid suffix: one zero case with even the second bit left rigid, and
all variable lengths `1..32,63,64,127,128,255,256`. The expected outputs
retain the raw unary variable value, so these probes test both the value
and the suffix. All 39 reader checks and all three divergent-source
checks passed: **42/42** in about 0.32 seconds in total.

Reproducible check code and machine-readable results are beside this review:

```text
tmp/overnight/verify/v162_codex_checks.py
tmp/overnight/verify/v162_codex_checks.json
```

## 5. Audit against interpreter.md section 5

No listed exclusion rules out this candidate. The consequential distinction
is the reader interface, not a weakened interpreter contract.

**The 43-bit reader bounds do not apply to this shape.** They price
`s H T` with two operands and specified laws for `T` (`s`, `s s`, or
`s s s`). This reader is `s I D J`, with three operands. In particular
`I` is not a four-bit counterexample to the handler theorem: it does not
satisfy that theorem's `H K R R = R next` law. On genuine streams, the same
behavior can instead be expressed as a two-operand reader by taking

```text
H_s = lambda b r. b r D_(C,s)
```

gives `s H_s J`; its last operand is the bare NEXT parameter, one of the
families expressly left outside the bound.

There is also an exact pricing sanity check. Put this reader back into the
165's fixed frame `[s,next,cont,intL,x]` with an explicit `next` let. Its
reader costs **44**, and the whole interpreter costs **166**, independently
compiled by the check script. Inlining the single `next` occurrence then
gives the actual 162: remove the next let's lambda/application (4), remove
the `next` reference (3), lower the variable arm's captured `cont` index
(1), and increase NEXT's four captured-reference indices (4), for a net
change of `-4-3-1+4 = -4`. Thus neither the 43-bit reader floor nor a sum
holding the other 122 bits fixed is contradicted.

The remaining bounds and exclusions have the following status:

| Recorded result | Why the candidate does not contradict it |
|---|---|
| Unconditional head shape | Its head normal form is `lambda c s. s I D J`, the permitted stream-headed case with three operands. |
| Nonlinearity and incomparable branches | The two knot `x` binders are nonlinear and lie in the two incomparable children of the outer application. The candidate is well above the recorded numerical global floors. |
| Capture/width constraints | The subterm `exp (lambda zx zy. zx arg (zy args))` has the three distinct free variables `exp,arg,args`; the requisite capture is present. |
| Opaque knot floor | The ordinary knot is retained. Its recursive references are now at zero-based depths 3 and 4, giving overhead 33 rather than the 165's 31; no saving below the knot bound is claimed. |
| Zero arm at least 14 under `Z R R = R next` | This reader never supplies two copies of `R` to such a zero arm. Its zero branch selects the tail itself, then applies that tail to NEXT. |
| APP lift at least 19; cell at least 24 | Both subterms are unchanged. ABS and APP are slightly more expensive here because of the binder frame. |
| One uniform handler for both tag bits | `I` handles the first selection; the distinct `J` handles the second tag. No repeated-handler protocol is used. |
| `E E = E`, or a continuation acting as its own knot driver | Neither identity is asserted or used. Recursion uses the usual separate knot generator. NEXT in the variable arm is merely erased junk. |
| Shared head carrying all tag dependence | NEXT retains the original distinct ABS and APP continuation constructions; it is not the forbidden single tag-independent payload. |
| Mode-free ABS/APP builder | The second tag explicitly chooses ABS versus APP; the two constructors remain distinct. |
| Cell/APP alias | APP is `lambda e. f e (g e)`, not the excluded `lambda e. e f g`. |
| Destructured rest reaching the root | The parser theorem returns the intact arbitrary suffix `T`; it never needs to destructure it. |
| Trees made only of the 165's readers/handlers | This is a new reader with extra lambdas and a bare NEXT operand, plus the ordinary external knot; it is not such a tree. |
| Full parser as zero-arm carrier; `next next` obstruction | The zero carrier is the actual stream tail. There is no replacement of it by a full parser, nor a `next next` diagonal. |
| Bare-cont handler requires outer arity one; application-only reader impossible | The first operand is `I`, not `lambda b. b Z C`; `D` contains lambdas and reopens the stream. Those hypotheses are absent. |
| No continuation adapter for thunked streams | No thunked-stream interface or continuation-only adapter is introduced. |
| NEXT projections losing code information | NEXT receives the complete second cell's bit and tail. The variable arm separately recovers its raw tail from the captured original stream. The forbidden lossy fields are not substituted for them. |
| Eta-collapsed representation cannot be repaired | The returned values are the same raw-unary/ABS/APP representation as the 165. The body proof produces literal `lambda z. M` using beta alone. |

The 168's opaque-module sum and the neighborhood searches elsewhere in the
record also impose no global 165-bit lower bound. This candidate changes
the reader architecture and its capture layout. Statements such as
"nothing below 165 is known" describe the previous record and should be
updated once this result is incorporated; they are not exclusions refuted
by a flaw in the proof above.
