# golf162

No interpreter below 162 bits was found. The supplied 162 passes the exact
battery again. Six complete variants pass, at 164, 166, 169, 170, 182, and
196 bits before and after the stated let optimizations. Three smaller
constructions fail; the 157 and 161 have finite, closed-program refutations,
so their battery fuel failures are not unresolved candidates.

The useful new results are the reader's constant-stream diagonal, exact
off-domain equations, a 169-bit whole-prefix variable protocol, and an
obstruction to extracting the bare continuation from unchanged NEXT.

## Checked constructions

All files and logs below are in this lane, except the supplied baseline.
Sizes are unoptimized BLC encodings of the named source as written. The
battery uses rigid continuation and remainder and compares beta normal
forms, without eta identification.

| Source | Bits | Exact battery line | Letopt size | Idea |
|---|---:|---|---:|---|
| `../self/int162.lam` | 162 | `162 bits  ok=667 skip=1 fail=0` | not rerun; caller reports 162 | Supplied reader, checked as a baseline. |
| `reset_cont164.lam` | 164 | `164 bits  ok=667 skip=1 fail=0` | 164 | Replace the erased skip operand `u` by `cont`; obtains `E C F = C`. |
| `shared_return.lam` | 166 | `166 bits  ok=667 skip=1 fail=0` | 166 | Let the second tag select both `cont`/`intL` and the meaning of their common argument. |
| `whole_prefix.lam` | 169 | `169 bits  ok=667 skip=1 fail=0` | 169 | Return the entire unary stream as a variable value; change the environment cell to compensate for the extra leading one. |
| `direct_dispatch.lam` | 170 | `170 bits  ok=667 skip=1 fail=0` | 170 | Select a complete ABS/APP parser before parsing the first child. |
| `continuation_last.lam` | 182 | `182 bits  ok=667 skip=1 fail=0` | 182 | Supply the result continuation once as the final reader operand, and bind it in each selected arm. |
| `constant_stream_knot.lam` | 196 | `196 bits  ok=667 skip=1 fail=0` | 196, no-inline | Factor the reader and use `R g g (lambda u v. g) = g g` for the outer knot. This is beta-equivalent to the supplied 162. |

The whole-prefix protocol also passes the deeper battery:

```text
169 bits  ok=3341 skip=2 fail=0  whole_prefix.lam
```

Each complete machine, including the baseline, extracts the exact rigid
suffix on the three divergent source terms `Omega`, `lambda x. Omega`, and
`Omega Omega`. These fixed checks do not themselves prove the universal
contract; the algebraic correctness arguments are below.

For candidates through 175 bits, the recorded let checks are the same two
configurations used by `polish.py`: core inlining with up to three cuts, and
no inlining with up to two cuts. The 182 uses core inlining with up to two
cuts. For the 196, core inlining reports that it does not finish; the
successful check is `--no-inline --max-cuts 2`. Thus 196 is the recorded
letopt result, not a claim that its beta-equivalence class has minimum 196:
the explicit reader identity already recovers the 162 construction.

`check.py` calls the repository's battery with `threads=2`, invokes letopt
with `--threads 2`, and puts temporary files in this lane. The letopt calls
have a 30-second limit; none of the successful results above timed out.
There was no new term enumeration or beta-eta component search.

## Reader equations, with proofs

Use application associated to the left and define

```text
K = lambda x y. x
F = lambda x y. y
I = lambda x. x
cons b r = lambda f. f b r
U_0(N) = cons K N
U_(n+1)(N) = cons F (U_n(N))

R q c s = s I (lambda u. s (lambda dummy. c) (s s u)) q.
```

The parameters in the equations below are arbitrary terms. Fresh rigid
parameters suffice for the displayed reduction proofs, and substitution
stability extends the equations to arbitrary terms, including divergers.

### On genuine streams

For every `n >= 0`,

```text
U_n(N) U_n(N) ->* K N.
```

For `n=0`, `U_0 U_0 -> U_0 K N -> K K N N -> K N`.
For the successor, write `s=cons F r`; then
`s s -> s F r -> F F r r -> r r`, reducing to the induction hypothesis.
Consequently `s s a ->* N` for every operand `a`.

For a zero tag, `s=cons K r` gives `s I -> K r`, so

```text
R q c (cons K r) ->* r q.
```

For a variable, `s=U_n(N)` with `n>=1` and `r=U_(n-1)(N)`,
`s I -> I`; the selected arm is

```text
s (K c) (s s q) ->* (K c) F r N ->* c r N.
```

These are exactly the existing parser's zero and variable laws. Replacing
the erased skip operand `u` by `c` leaves both laws unchanged, proving the
164's compatibility with the full source-term induction, without a
normalization hypothesis on the decoded program.

### Off domain

```text
R q c K                  ->* q
R q c F                  ->* q
R q c I                  ->* c
R q c (K a)              ->* a (lambda u. a (a u)) q
R q c (K (K t))          ->* t q
R q c (lambda u r. r t)  ->* t t t q
R q c (lambda f. f t)    ->* t (lambda u. c (t t u)) q
```

Proofs, retaining the middle arm as `V` where convenient:

* On `K`, `K I V q -> I q -> q`; the middle arm is erased.
* On `F`, `F I V q -> V q`, and
  `V q = F (K c) (F F q) -> q`.
* On `I`, again the result is `V q`, now
  `I (K c) (I I q) -> (K c) q -> c`.
* On `s=K a`, `s I -> a`, `s (K c) -> a`, and `s s u -> a u`.
  Substitution gives the displayed `a (lambda u. a (a u)) q`.
* Setting `a=K t` in that equation gives `t q`.
* On `s=lambda u r. r t`, `s I -> lambda r. r t`,
  `s (K c) -> lambda r. r t`, and `s s u -> u t`.
  Thus `V u -> u t t`, and `s I V q -> V t q -> t t t q`.
* On `s=lambda f. f t`, `s I -> t`, `s (K c) -> c`,
  and `s s u -> t t u`. Substitute these three results.

In particular, the short constant synthetic stream gives

```text
R g c (lambda u v. g) ->* g g
```

for any `c`. Taking `c=g` supplies the outer knot in
`constant_stream_knot.lam`. Its generator is
`G = lambda x. (lambda p. lambda c. R (NEXT_p,c) c) (x x)`.
The synthetic call reduces to `G G`, which is the ordinary recursive
parser after expanding the real-reader call. This proves beta equivalence
to the supplied interpreter. The resulting source costs 196; factoring the
reader is expensive enough to absorb the shorter synthetic stream.

The reset variant instead uses

```text
Rreset q c s = s I (lambda u. s (K c) (s s c)) q.
```

Its Boolean reset follows directly:
`Rreset q c F -> F (K c) (F F c) -> c`.

`reader_facts.py` checks every displayed family at the stated fixed symbolic
instances with rigid beta normal forms; `reader_facts.json` records 12
successful checks. The all-unary-length statement is the induction above,
not an extrapolation from those instances.

## Whole-prefix variables: a complete 169-bit protocol

The 159-bit tempting change is to use

```text
VAR = lambda u. cont list (list list u)
```

instead of reopening the stream to obtain its tail. This saves three bits:
the variable arm shrinks from 28 to 25. Its value for variable index `n` is
now `U_n(N)` rather than `U_(n-1)(N)`.

The following environment cell repairs the index shift:

```text
D(a,e) = lambda unused r. r (lambda b. b (lambda discard. a) (e b)).
```

Write `H = lambda b. b (K a) (e b)`. The two exact lookup laws are

```text
U_1(N) D(a,e)     ->* a
U_(n+1)(N) D(a,e) ->* U_n(N) e       (n >= 1).
```

For the first, `D F U_0 -> U_0 H -> H K N -> (K a) N -> a`.
For the second, `D F U_n -> U_n H -> H F U_(n-1)`;
this reduces to `e F U_(n-1)`, which is exactly the reduct of `U_n e`.
No property of the old environment `e` or the suffix `N` was assumed.

Use `D(arg,args)` in ABS and leave APP unchanged. These are precisely the
lookup equations required for the original semantic induction, with variable
representation shifted by one. The syntax traversal and remainder laws are
unchanged. This gives the full contract for closed programs, divergent ones
included, as a handwritten proof transfer. It is not a new Lean proof.

Unfortunately `D` costs 34 bits in the ABS cell frame, versus 24 for the
ordinary cell. The net change is `-3 + 10 = +7`, yielding 169. Letopt does
not improve it. `protocol_checks.py` verifies three rigid cell instances,
and the deeper battery gives `ok=3341 skip=2 fail=0`.

## Other complete variants

Let `A_e = lambda args arg. e (lambda x y. x arg (y args))` and
`T_e,f = lambda args. e args (f args)`.

The 166 uses

```text
NEXT = lambda b. p (lambda e.
  (b c p) (lambda y. b
    (lambda arg. e (lambda x z. x arg (z y)))
    (c (lambda args. e args (y args))))) .
```

For `b=K` it reduces to `p (lambda e. c A_e)`; for `b=F` it
reduces to `p (lambda e. p (lambda f. c T_e,f))`. Thus both actual
second-tag cases are exactly the original ones. The extra use of the tag
costs more than the common argument saves.

The 170 replaces NEXT by

```text
lambda b. b (p (lambda e. c A_e))
            (p (lambda e. p (lambda f. c T_e,f))).
```

The two Boolean reductions give the same original clauses immediately.
Duplicating the first parser call makes it larger.

The 182 moves `c` to the last reader operand. Its variable arm is
`lambda u c. s (K c) (s s u)` and its NEXT is
`lambda b r c. p (lambda e. b (c A_e) (p (lambda f. c T_e,f))) r`.
On zero input, `r1 NEXT c -> NEXT b2 r2 c` runs the usual clause.
On variable input, `VAR NEXT c -> c r N`. The explicit remainder and
continuation binders cost more than the saved captures.

These Boolean and reader equations suffice to transfer the same recursive
source-term proof to each variant. The finite batteries are separate
verification evidence.

## Refuted small constructions

| Source | Bits | Exact battery line | Failure |
|---|---:|---|---|
| `handler157.lam` | 157 | `157 bits  ok=0 skip=1 fail=667` | Replace `K cont` by NEXT itself. |
| `whole_prefix_naive159.lam` | 159 | `159 bits  ok=25 skip=1 fail=642` | Whole-prefix values with the unchanged environment cell. |
| `diag161.lam` | 161 | `161 bits  ok=0 skip=1 fail=667` | Replace `K cont` by `NEXT NEXT`. |

No let optimization was run on these refuted candidates.

### Finite refutations of 157 and 161

For either bad parser `P`, write

```text
Q_k = lambda b. P (lambda e. b (k A_e) (P (lambda f. k T_e,f)))
D_k(t) = lambda e. t (k A_e) (P (lambda f. k T_e,f)).
```

Hence `Q_k t -> P D_k(t)`. Both bad readers still obey the zero law
`P k (cons K r) ->* r Q_k` and the off-domain law `P k F ->* Q_k`.

For the 161 on `U_1(N)`, the changed variable arm yields

```text
(Q_k Q_k) F U_0(N) N
  ->* Q_(D_k(Q_k)) U_0(N) N
  ->  P (D_(D_k(Q_k))(U_0(N))) N
  ->* N I (...) (...).
```

For the 157 it yields

```text
Q_k F U_0(N) N
  -> P D_k(F) U_0(N) N
  ->* N Q_(D_k(F)) N.
```

For the closed source `I = lambda x. x`, encoded `0010`, the two leading
zero tags reach exactly these variable cases with
`k = lambda e. C A_e`. Therefore both complete probes have rigid head `N`,
whereas the required result has rigid head `C`. Reductions inside operands
cannot change either rigid head, so these terms cannot be beta-equivalent.
This argument does not require the bad operands to normalize.

The finite head traces in `reader_facts.py` independently obtain head `N`
after 48 contractions for the 161 and 30 for the 157. The battery reports
fuel failures because it also tries to normalize their operands; those
timeouts are not the basis of the refutations.

### Refutation of the naive whole-prefix change

For the same closed source `I`, the 159 returns

```text
C (lambda env arg. env K N) N
```

instead of `C (lambda env arg. arg) N`. Indeed, the whole unary value
`U_1(N)` applied to the ordinary cell steps once into the old environment,
so `U_1(N) (cell arg env) -> U_0(N) env -> env K N`.
These are distinct normal forms with rigid `C,N`.

## Two protocol obstructions

First, unchanged NEXT cannot supply a bare result continuation. Every free
occurrence of rigid `c` in `Q_c` is already applied, as `c A_e` or
`c T_e,f`. The parser `p` is closed and contributes no independent `c`.
Under beta reduction, a marked `c V` can be copied, erased, reduced inside,
or given more arguments; its first application cannot be removed. Thus any
term built only from `Q_c` and terms with no free `c` cannot reduce to `c`
or `K c`, whose surviving occurrence of `c` is unapplied. Confluence extends
this obstruction to beta equivalence with these normal targets.

This rules out obtaining the literal `K c` needed by the current variable
arm from unchanged NEXT alone. It does not rule out obtaining an already
applied `c r N`, or changing NEXT to expose `c` in an additional mode.

Second, reusing a stream-independent NEXT directly as the variable handler
has incompatible obligations under the usual rigid open-term parser laws.
The proposed reader

```text
s I (lambda u. s u (s s u)) Q
```

would require `(Q F r) R = c r R` whenever `r` is a unary variable tail
ending in suffix `R`. Take `R = U_1(N)` and
`r = 1010 ++ N = U_1(R)`. This is a valid such tail, but it is also the
two-child stream for an APP node whose children are both variable 1.
The APP obligation requires `Q F r = c T N`, where
`T = lambda env. v1 env (v2 env)`. Consequently the variable case would
produce `c T N R`, with three arguments at rigid head `c`, whereas it must
produce `c r R`, with two. These cannot agree. This uses the full
variable equation; it does not cancel its correlated suffix argument.
This is a scoped open-parser obstruction, not a theorem about all machines
satisfying only the closed contract. It also does not cover a NEXT that
depends on the whole outer stream. The actual 157 is refuted separately on
the closed identity above.

The direct attempt to float unchanged NEXT above `lambda list` also has an
exact cost balance: it saves four index bits in NEXT, but adds four bits
for the let, three for its use, and one for the deeper continuation capture
in VAR. The result is four bits larger, 166. This accounts only for that
literal refactoring, not arbitrary protocols or lets.

## Assessment

The constant-stream diagonal is a useful new equation, but its complete
construction gives no size gain. The best new protocol here, whole-prefix
variables, exposes a real three-bit reader saving and an exact ten-bit cell
cost; this cell is a construction, not a proved minimum for the shifted
protocol.

A smaller interpreter could still come from a cheaper shifted cell, from a
NEXT with an additional continuation-extraction mode, or from a reader and
recursion scheme that avoid factoring the reader into a separately stored
function. The unchanged NEXT's continuation projection is blocked as
proved above. This lane establishes neither a sub-162 interpreter nor a
162-bit lower bound.

Evidence: `*.check18.log`, `whole_prefix.check21.log`, `*.letopt*.log`,
`reader_facts.json`, and `protocol_checks.json`. Reproduction uses
`check.py`, `reader_facts.py`, and `protocol_checks.py`; candidate sources
are explicit named-lambda terms, with their generating formulas retained in
`build_candidates.py`.
