# A kernel-checked 204-bit beta-normal interpreter

The complete beta-normal interpreter is **204 bits**. Its source and wire
encoding are `data/self-interpreter/machines/int204_normal.{lam,blc}`.
It quantifies the limitation of arguments claiming that correctness forces
an interpreter to contain a beta redex or a literal fixed-point application.
It does not improve the minimum unrestricted interpreter size.

The full directed-reduction contract, exact size, and normality are proved
in `lean/Blc/SelfintNormal.lean`:

- `selfint_contract204`: for every closed source `M` and arbitrary `C,N`,
  `intL204 C (code(M) ++ N)` beta-reduces to `C (lambda z.M) N`;
- `isSelfInterpreter_intL204`;
- `wire_intL204` and `intL204_size`;
- `intL204_nft` and `intL204_normal`.

The contract uses only `propext` and `Quot.sound`; normality uses `propext`.
The proof imports the existing 165 theorem's machinery, replays the changed
control reductions with `decide`, and carries over its structural parsing
induction. It does not assume source normalization or use `sorry`.

## Construction

Let `K = lambda a b.a` encode bit zero, and let `Q(p,c)` be the existing
NEXT operation:

```text
Q(p,c) = lambda t. p (lambda f. t
  (c (lambda e a. f (lambda z y. z a (y e))))
  (p (lambda g. c (lambda e. f e (g e)))))
```

The new, beta-normal generator is

```text
G = lambda x c s.
  s (lambda b.
       b (lambda p u r. r Q(p,c))
         (lambda p.c)
         (x x))
    (s s s).
```

It costs 165 bits. The tag gates the binding of `p = x x`; it saves a copy
of `x x` without introducing a syntactic beta redex. For a zero cell
`s = cons K R`, its self-skip is `R`, and

```text
G x c s  ->*  R Q(x x,c).
```

For a variable stream `s = 1^n 0 ++ N`, with immediate tail `R`,

```text
G x c s  ->*  c R N.
```

These are exactly the 165's two parsing equations, with recursive parser
`x x`. Therefore `G G` has the full open-term parser contract. The new
handler is not globally beta-equivalent to the old handler on arbitrary
non-Boolean arguments; the proof uses the actual K/F control laws.

To make the complete public interpreter beta-normal, use the fact that
every closed source starts with zero:

```text
D = lambda u x. x x
E = lambda c s. s (lambda b. b D b) G c s.
```

Here `D` and `G` are written inline, with no lets. If `s = cons K R`,

```text
E c s  ->*  K D K R G c s
       ->*  D R G c s
       ->*  G G c s.
```

The finite source contains no beta redex: the outer heads are `s`, `b`,
and variables bound inside `D` and `G`. All applications that activate the
interpreter arise after substituting the actual input's K. The public
root is required to work on closed sources, exactly as in the target
contract; the internal parser `G G` also handles open sources.

The syntactic counts are `L=21`, `A=29`, `X=44`, giving
`2L + 4A + 2 + X = 204`.

## Verification

```text
(cd lean && lake env lean Blc/SelfintNormal.lean)
python tools/self-interpreter/theory/normal204.py
```

The second command verifies that the named source, BLC bits, and Lean wire
literal agree; checks syntactic beta-normality; runs the existing bounded
battery with two workers; and verifies rigid suffix extraction for Omega
and lambda-Omega. Current verification results are recorded in
`docs/STATUS.md`. The check is limited to this explicit construction; it
performs no candidate search.

## Correlated-reader boundary

The actual variable selector has the shape `R = 1^k 0 ++ N`. Consequently
it is a Scott cell, and `lambda h.R h` beta-reduces to `R`. This shows why
a proof under independent rigid `R,N` does not transfer to the actual
stream law by logical implication alone. For example,

```text
H = lambda b r. b (lambda t.t j) (c (lambda h.r h))
```

has the correct actual-stream zero and variable laws but fails the rigid
variable law: it returns `c (lambda h.R h) N` instead of `c R N`.
Its exact cost in `[s,j,c,p,x]` is 40 bits, well above 27. This is a scope
counterexample, not a promising small construction. The separate correlated
selector theorem in `handler-bound.md` nevertheless proves the same 27-bit
minimum when `H` has no free variables except `j,c`.

Access to the whole stream changes the structural constraints further.
For example,

```text
H = lambda b. b (b (b (s s s j))) c
```

has only one explicit lambda. On a zero stream `s = cons K R`, its zero
branch gives

```text
H K R R ->* K (K (s s s j)) R R ->* s s s j ->* R j.
```

On a one stream the outer `F` selects `c`, so `H F X_n(N) N ->* c X_n(N) N`
for every unary selector. Its counts are `L=1,A=7,X=8`, again 40 bits.
Thus the independent-law proof's two-lambda necessity cannot be transferred
to whole-stream handlers, even though this witness is too large to improve
the reader. `tools/self-interpreter/theory/handler_bound.py` checks its size,
symbolic zero law, and unrestricted `F`-branch law.

The original bare-C selector shape cannot exploit this correlation: the
existing strengthened 14-bit zero-arm theorem already permits using the
whole zero cell, and C is already the cheapest possible variable arm.
A useful smaller correlated reader would therefore have to use the whole
stream or other parser state, or change the reader's outer shape.
No such sub-27 handler was found by the reasoning here.
