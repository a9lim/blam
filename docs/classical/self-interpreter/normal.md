# A kernel-checked beta-normal interpreter

The current construction and measurements are recorded in `docs/STATUS.md`.
Its source and wire encoding are
`data/self-interpreter/machines/int196_normal.{lam,blc}`. This construction
bounds the beta-normal fragment and shows that correctness does not force
a source beta redex or a literal fixed-point application. It does not
improve the unrestricted interpreter record.

`lean/Blc/SelfintRound5BoundNormal196.lean` proves:

- `selfint_contract196`: for every closed source `M` and arbitrary `C,N`,
  `intL196 C (code(M) ++ N)` is beta-joinable with `C (lambda z.M) N`;
- `isSelfInterpreter_intL196`;
- `intL196_wire` and `intL196_size`;
- `intL196_nft` and `intL196_normal`.

The contract uses only `propext` and `Quot.sound`. It is beta joinability,
including for divergent sources, continuations and suffixes. No source
normalization or eta equality is assumed.

## Construction

Let `K = lambda a b.a` encode zero and write the verified interpreter as
`Delta (lambda x.H (x x))`, where `Delta = lambda x.x x`. Contract the
administrative application of `H` inside the generator, leaving its two
recursive uses as `x x`:

```text
G = lambda x c s.
  s (lambda a.a)
    (lambda u.s (lambda q.c) (s s u))
    (lambda b.(x x) (lambda f.b
      (c (lambda e a.f (lambda z y.z a (y e))))
      ((x x) (lambda g.c (lambda e.f e (g e)))))).
```

`G` is closed and beta-normal. Three chosen beta contractions take the
verified interpreter to `G G`: the outer diagonal and one administrative
redex in each generator. Consequently `G G` has the same beta contract;
this finite conversion never reduces reconstructed source code.

Every closed source begins with zero. Use that first input bit to activate
the duplicated generator:

```text
D = lambda u x.x x
E = lambda c s.s (lambda b.b D b) G c s.
```

Here `D` and `G` are written inline. For `s = cons K R`,

```text
E c s  ->*  K D K R G c s
       ->*  D R G c s
       ->*  G G c s.
```

All application heads in the finite source are variables. The beta redexes
that activate the interpreter arise only after the actual input is
substituted. This is Codex's construction; the proof reuses the exact
contract of the verified interpreter and the first-zero gate.

## Verification

```text
(cd lean && lake env lean Blc/SelfintRound5BoundNormal196.lean)
python tools/self-interpreter/theory/round5_bound_normal196.py
```

The script independently compiles the named source and compares its wire
with the Lean literal, checks syntactic normality, runs the existing bounded
battery with two workers, and checks exact suffix extraction for Omega and
lambda-Omega. It regenerates the source, wire and report in `data/`.
The check is limited to this one construction and performs no candidate
search. Current results are in `docs/STATUS.md`.

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
counterexample, not a promising small construction. The correlated proofs
in `handler-bound.md` establish the same 27-bit minimum, including when
`H` can inspect the whole stream.

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
The whole-stream handler bound now excludes a saving from stream access
alone under the standard skip and rigid ambient-parameter laws. A smaller
reader must change the skip or outer shape, or exploit the actual behaviour
of other parser state beyond those laws.
