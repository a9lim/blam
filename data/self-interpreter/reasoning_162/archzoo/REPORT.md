# Architecture zoo: six complete protocols

**No sub-162 interpreter found.** Six architectures were specified and
manually priced before compilation. Four are correct by handwritten
structural arguments and pass the exact battery; two have finite, closed
counterexamples. The four passing sizes after the recorded let optimizations
are **185, 265, 276, and 297**. Every pre-compilation price matched its measured
as-written size. The only polishing improvement was 266 to 265.

The useful new constructions are a box whose ordinary application implements
the *environment lift*, and a two-field box whose diagonal supplies both the
parser generator and the left application operand. Neither requires the
remainder field of the recorded 303/323 constructions. Their complete costs
remain much too high. The two near-threshold proposals expose exact failures
at the public lambda boundary and at nested abstractions.

All paths below are relative to this directory. `PAPER.md` is the frozen
pre-compilation ledger, including full equations, manual counts, the menu of
mechanisms, and the differences from the prior record. `build.py` contains
the six literal sources, not a generator of a candidate family. No other
agent was consulted and no tracked repository file was changed.

## 1. Complete interpreter and candidate ledger

Counts are `(L,A,X)` and all paper prices use `2L + 4A + 2 + X`.

| File | Mechanisms changed together relative to 162 | Paper counts | Paper bits | Measured bits | Error | Polished |
|---|---|---|---:|---:|---:|---:|
| `argument_thunks.lam` | APP supplies thunks; the leaky environment consumes the variable-code suffix as their force | (17,24,32) | 164 | 164 | 0 | refuted |
| `local_phase.lam` | Whole-prefix variable values; ABS supplies F as a local evaluation phase instead of changing the cell | (17,25,31) | 167 | 167 | 0 | refuted |
| `prefix_continuation.lam` | Whole-prefix values, shifted cells, and a stream-dependent NEXT that is the bare continuation on variables | (19,28,33) | 185 | 185 | 0 | 185 |
| `pointwise_boxes.lam` | Boxed values, direct boxed APP, unboxing at ABS, and a public decoder | (30,37,56) | 266 | 266 | 0 | 265 |
| `resumption_pairs.lam` | Values carry the generator; their diagonal starts APP's second parse with a left accumulator; return and root decode boxes | (36,37,54) | 276 | 276 | 0 | 276* |
| `church_algebra.lam` | Parser returns Church syntax; extension, lookup and application run through a shared public algebra | (32,43,59) | 297 | 297 | 0 | 297 |

Exact as-written battery lines:

```text
164 bits  ok=0 skip=1 fail=667  argument_thunks.lam
167 bits  ok=28 skip=1 fail=639  local_phase.lam
185 bits  ok=667 skip=1 fail=0  prefix_continuation.lam
266 bits  ok=667 skip=1 fail=0  pointwise_boxes.lam
276 bits  ok=667 skip=1 fail=0  resumption_pairs.lam
297 bits  ok=667 skip=1 fail=0  church_algebra.lam
```

Saved minimum artifacts and their exact battery lines:

```text
185 bits  ok=667 skip=1 fail=0  prefix_continuation.polished0.blc
265 bits  ok=667 skip=1 fail=0  pointwise_boxes.polished0.blc
276 bits  ok=667 skip=1 fail=0  resumption_pairs.polished1.blc
297 bits  ok=667 skip=1 fail=0  church_algebra.polished0.blc
```

Each wire has a matching `.lam`. For 185, 276 and 297 the optimized wire is
identical to the already-batteried input, so that result was reused rather
than running a redundant battery. The different 265 wire was freshly checked.

All four correct as-written machines also return the exact rigid suffix on
`Omega`, `lambda x.Omega`, and `Omega Omega`: twelve successful probes. The
skip in the full battery is not being counted as a semantic success. The
handwritten proofs below cover divergent sources separately from testing.

`*` The core-inlining polish of the 276 reported
`inlining the lets does not finish; try --no-inline`. Its two-cut no-inline
run completed and retained 276. This is a bounded optimization result, not
an assertion that 276 is the minimum of the whole beta-equivalence class.
The other passing terms completed the prescribed two-cut core optimization.

Although only A/B were close to the requested construction threshold, the
other four received one fixed implementation/battery audit to check the new
couplings and make their paper prices independently auditable. No candidate
enumeration, hole search, beta/eta sweep, or new Lean build was used. Required
let-structure optimization was the only search. The six checks plus polish
took 15.573 seconds in total; the longest letopt call took 0.942 seconds.
There were at most two workers, and each letopt call had a 45-second cap.

## 2. Obligation map and novelty boundary

The following map is also expanded in `PAPER.md`. Semantic obligations do
not imply separate code modules or additive lower bounds.

| Obligation | Available mechanisms in the inspected record |
|---|---|
| Recursive control | Fixed point; self-passed handler/NEXT/context; reader diagonal; reset; generator in values or continuations |
| First tag | Scott handler; `s I`; projected Boolean; conditional predecessor; dual operands; packet or mode |
| Second tag | NEXT before/after child parse; select-first continuation; optional child/no-input parser; stream-correlated guard |
| Variable value and skip | Raw tail; whole prefix; selector; function adapter; mode; box; unary diagonal; hoisted skip; NEXT junk; thunk/cursor |
| Extension and lookup | Canonical cell; leaky cell with K/own-tag repair; shifted cell; function environment; Scott pair plus lookup; boxed arguments |
| Application | Pointwise lift; direct evaluation; rejected cell alias; applicative retraction; value-driven parser |
| Return | CPS value/suffix; reversed arguments; result pair; thunk; metadata; continuation carrying recursion |
| Root | Transparent closure; explicit decoder; mode adapter; closed-root shortcut |

The designs were checked against interpreter.md section 6 and the recursion,
NEXT, env, Grok-check and Gemini-check reports, as well as golf162 and the old
reader zoo. Their particular differences matter:

- A moves the thunk from the *cell construction* to *language application*.
  Its failure is not presented as a rediscovery of a working local K repair.
- B deliberately removes the 203's uniform phase parameter from constructors
  and tries to supply the phase only at ABS. This is a different complete
  calling convention and fails at a constructor-valued body.
- C changes the 177's `K c` variable mode to `c`, swaps the arm's `s u` to
  `u s`, and changes the environment to accept the whole prefix. These changes
  are coupled: mixing either old arm/value protocol with the new mode fails.
- D boxes the *reader algebra*: box application implements B(f,g), not f g.
  Suffixes remain ordinary CPS outputs, and the tag is nonrecursive.
- E has only `(generator,value)` fields. The 323 carries a code remainder
  in a third field and uses a different generator interface. E instead has
  an explicit semantic accumulator and an ordinary CPS remainder.
- F parses the entire Church syntax algebra, retaining raw unary code only
  in variable leaves. This is neither the recorded Scott-index parser nor
  direct evaluation with a separate syntax skipper.

These are novelty claims relative to the inspected record, not claims of
historical priority for Church folds, thunk passing, or tagged boxes.

## 3. Exact failures of the two cheap architectures

Use `U_n(N) = 1^n 0 ++ N`, with U_0 a zero cell. All equations below are beta
equations; C and N are rigid.

### A: moving argument thunks to APP does not repair exported functions

The changed constructors are

```text
L(a,e) = lambda b.b a (lambda r.r e)
A1(f)  = lambda e a.f L(a,e)
B1(f,g)= lambda e.f e (lambda unused.g e).
```

The intended fusion really works when APP supplies the argument:

```text
U_0(N) L(K v,e) ->* (K v) N -> v
U_(n+1)(N) L(K v,e) ->* U_n(N) e.
```

But source I is parsed without any language APP. Its semantic argument is
an ordinary bound variable a, so

```text
U_0(N) L(a,e) ->* a N
E C (code(I) ++ N) ->* C (lambda e a.a N) N.
```

The required result is `C (lambda e a.a) N`. Both are normal forms and are
different. The byte-level witness is in `argument_thunks.checks.json` and
was independently replayed in `identities.json` by the Python beta reducer
and Rust KN. This refutes the entire specified architecture, not just a
bounded run. It does not exclude a different thunk representation with a
proper public decoder; that decoder is an additional obligation and cost.

### B: a variable phase is not a constructor's environment argument

Here the parser returns U_n(N), while

```text
A2(f) = lambda e a.f F (Cell(a,e)).
```

Identity works: `U_1(N) F = U_0(N)`, which looks up a in Cell(a,e). For the
closed source K = `lambda a b.a`, the compiled inner abstraction is

```text
A2(U_2(N)) =beta lambda e b.e K N.
```

The outer abstraction passes F as that constructor's environment and the
new cell as its language argument:

```text
A2(A2(U_2(N)))
  =beta lambda e a.(lambda env b.env K N) F Cell(a,e)
  ->*   lambda e a.N.
```

Thus the actual result is `C (lambda e a.N) N`, versus
`C (lambda e a b.a) N`. These are distinct normal forms. The first battery
failure is even smaller, `lambda a b.b` at six bits; K gives the cleaner
symbolic diagnosis. The two normal forms for K were checked by both reducers.

This is an exact exclusion of the literal local-phase protocol. It is not
an exclusion of arbitrary ancestry-dependent modes or the working uniform
mode protocol in the env lane.

## 4. Passing architectures: identities and all-source arguments

Let V_M denote the usual environment closure for an open source M, using
raw-tail values at variables and canonical A/B at constructors. Every V_M
has an explicit outer lambda, even when its semantic body diverges. The
standard environment induction gives `V_M =beta lambda z.M` for closed M.

### C: the input stream selects NEXT's calling convention

Set

```text
D(a,e) = lambda u r.r (lambda b.b (lambda discard.a) (e b))
N_s = (s K) Q c
P c s = s I (lambda u.u s (s s u)) N_s,
```

where Q is the ordinary NEXT with D substituted for Cell. On `s=cons K r`,
`s K=K`, so N_s=Q and the reader is `r Q`. On s=U_n(N), n>=1, `s K=F`
and N_s=c. The reader is then

```text
(lambda u.u s (s s u)) c ->* c s N.
```

The last step uses the all-length induction `U_n U_n ->* K N`. The shifted
cell obeys

```text
U_1(N) D(a,e) ->* a
U_(n+1)(N) D(a,e) ->* U_n(N) e       (n>=1).
```

The first law reads the following zero bit; the second reads a following
one, producing `e F U_(n-1)`, which is the reduction of U_n e. These laws
give the usual environment/source induction with full-prefix variable
values. Suffix traversal is unchanged, so the exact closed-source contract
follows, without assuming normalization of M. This is handwritten, not Lean.

This architecture loses by price: -5 in the variable arm, +18 for the guard,
and +10 in the cell, for a net +23. That is the cost of this implementation,
not a universal lower bound for stream-dependent NEXTs.

### D: ordinary box application is the semantic pointwise lift

Define

```text
T = lambda t g f h.h t (lambda e.f e (g e))
Box(f) = lambda h.h T f.
```

For arbitrary f,g, including divergent ones,

```text
Box(f) F       ->* f
Box(f) Box(g)  ->  Box(g) T f
                ->* T T g f
                ->* lambda h.h T (lambda e.f e (g e))
                =   Box(B(f,g)).
```

The parser invariant is `P c (code(M) ++ N) =beta c (Box(V_M)) N`.
The variable clause boxes the raw tail. ABS unboxes its child and boxes A;
APP applies its two boxes directly and uses the second identity. Source
induction proves the invariant. The public callback `lambda v.C (v F)`
then proves the required contract. No evaluation of M is part of the proof.

The fusion removes the 19-bit literal lift from NEXT, replacing it by a
7-bit `f g` in that frame, but the tag itself costs 40 and closed Box costs
53. Variable boxing, unboxing at ABS and the public adapter dominate.
The full paper price 266 becomes 265 under let optimization. The price does
not exclude a different representation whose application control is already
paid for by parsing.

### E: a two-field diagonal supplies recursion and the left operand

For arbitrary g,f define `V_g(f)=lambda h.h g f`. Then

```text
V_g(f) F       ->* f
V_g(f) V_g(f)  ->  V_g(f) g f ->* g g f f.
```

These are exact finite reductions. With g=G, the full generator from
`PAPER.md` has the invariant

```text
G G a j c (code(M) ++ N) =beta c (V_G(B(a,V_M))) N.
```

The unused j absorbs the duplicate accumulator produced by the diagonal.
The proof is structural induction on M:

- VAR calls the local return helper on the raw variable tail.
- ABS recursively obtains `V_G(B(F,V_body))`. Because V_body has an outer
  lambda, `B(F,V_body) =beta V_body`; unboxing then builds A(V_body) and
  the return helper composes the outer accumulator a.
- APP first obtains `v=V_G(V_left)`. Its diagonal starts
  `G G V_left V_left` on the right child. The induction hypothesis returns
  `w=V_G(B(V_left,V_right))`. The callback `lambda w.ret (w F)` composes
  the outer accumulator as well.

That last callback is essential. Omitting it would lose a when an APP is
itself parsed as a right child; it is not free plumbing. At the root a=F,
and the public callback unboxes, giving V_M and the exact N.

The seed equality is beta equality only for lambda-headed payloads. We do
**not** assert `lambda e.f e =beta f` for a rigid arbitrary f. The source
invariant supplies the required lambda head, including on divergent source
programs. The fixed check leaves an arbitrary payload rigid *under* an
explicit lambda to test precisely this premise.

For the recursion lane's identity cut, the first closed I here returns
`V_G(F)`, not F. The second head consequently uses value-carried code. This
is a concrete different intermediate protocol, not a counterexample to
the proved ordinary-cut bound.

The source is still 276: generator 227, driver 47, joining application 2.
Inside the generator, the return helper alone is 48; the initial recursive
call has two seed F arguments; and every result carries the generator.
Those costs are why the real diagonal sharing does not yield a record.

### F: Church syntax supplies the second structural recursion

Let the syntax constructors be

```text
S_var(r)   = lambda a b v.v r
S_abs(f)   = lambda a b v.a (f a b v)
S_app(f,g) = lambda a b v.b (f a b v) (g a b v).
```

The parser returns S_M and the ordinary suffix. With A and B the closed
semantic constructors and I the variable algebra, beta reduction gives

```text
S_var(r) A B I   ->* r
S_abs(f) A B I   ->* A (f A B I)
S_app(f,g) A B I ->* B (f A B I) (g A B I).
```

Induction first proves the parsing equations and then that `S_M A B I` is
V_M. The public decoder therefore satisfies the full contract. Church
syntax supplies the semantic fold without another fixed-point combinator.

The failure is source price, not semantics: the parser is already 215,
and the root callback is 78, before its outer lambda/application. Passing
the three algebra arguments through syntax costs more than moving Cell and
B out of the recursive parser saves. No lower bound on all staged parsers
is claimed.

## 5. Verification status and remaining opening

`identities.py` checks 21 fixed identities and two exact counterexamples in
both the repository's pure Python beta reducer and Rust KN normalizer.
`identities.json` contains the actual normal-form wires. Unary identities
were sampled at five indices only as check leaves; their all-length claims
come from the displayed inductions. The four full correctness arguments
are handwritten structural proofs, not Lean theorems. There is no new
global or architecture-family size lower bound in this lane.

My strongest constructive lead is now specific: value-carried recursion
can use a two-field pair instead of the recorded triple box, and the same
diagonal supplies the left semantic operand. However, boxing *every*
result, an accumulator entry with two F seeds, and a public decoder make
that implementation expensive. A smaller design would need to make this
control carrier exist only at the APP-left cut, or make an already-required
continuation/semantic object supply it without the separate box and entry
arguments. The ordinary closed identity value F itself contains no such
generator, so simply deleting the box reinstates the recursion obstruction.

The 164/167 failures give a complementary caution: a representation that
works under its own APP or for variable-bodied ABS need not export the
required ordinary lambdas. Both failures were actual distinct normal forms,
not fuel failures. None of this proves 162 optimal.

Reproduce from the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/archzoo/build.py
PYTHONDONTWRITEBYTECODE=1 RAYON_NUM_THREADS=2 python3 tmp/round3/archzoo/check.py argument_thunks local_phase prefix_continuation pointwise_boxes resumption_pairs church_algebra
PYTHONDONTWRITEBYTECODE=1 RAYON_NUM_THREADS=2 python3 tmp/round3/archzoo/identities.py
```

The checker freezes a fresh binary in this directory and reuses it without
overwriting an executable that has run. The recorded SHA-256 is
`00883f147c7128a1642f323920deef23f0af9c8b742dadb3c0f30cf5478bfaa2`.
`prices.json`, `*.checks.json`, `*.letopt*.log`, and `runtime.json` hold the
machine-readable evidence. All writes are inside this lane.
