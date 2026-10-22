# NEXT under the 162 reader

No sub-162 interpreter was found. The new stream capture is mathematically
substantive: any closed interpreter `Q` embeds in this NEXT slot at
`|Q| + 17`, versus the old frame's `|Q| + 44`. Consequently an unrestricted
96-bit lower bound here would imply a **79-bit global interpreter floor**.
The old 92-bit theorem cannot simply be transported and called exhaustive.

A new continuation-exposure protocol works at **177 bits**, unchanged by
the specified let optimization. A handwritten lower bound gives 177 for
its explicit, normal, single-guard family. There are also exact
obstructions to returning through unchanged V, to keeping only either
second-tag projection `r I` or `r b`, and to a unary diagonal being the
sole carrier of an open APP operand. None excludes all stream-correlated
NEXT protocols.

## 1. Complete constructions and verification

All paths in this report are relative to this lane unless stated otherwise.
The named `.lam` files have matching `.blc` files.

| Source | Written bits | Let optimization | Exact battery line | Idea |
|---|---:|---:|---|---|
| `variable_mode.lam` | 177 | 177 | `177 bits  ok=667 skip=1 fail=0  variable_mode.lam` | NEXT is canonical on constructors and becomes `K c` on variable streams; the variable arm obtains its continuation from NEXT. |
| `embedded162.lam` | 245 | 235 | `245 bits  ok=667 skip=1 fail=0  embedded162.lam` | Instantiate the arbitrary-Q embedding with the existing 162. |
| `embedded162_direct.lam` | 223 | 223 | `223 bits  ok=667 skip=1 fail=0  embedded162_direct.lam` | Hand-contract the unused outer recursion of the preceding construction. |

The best rendering of the **embedding algorithm** built here is therefore
223, not 235. The 235 is what letopt returned on the 245 source; the direct
223 has its own battery and polish run. It is a beta reduct: the outer
`intL` binding is unused, its generator consequently ignores its argument,
and the outer diagonal contracts away. No claim is made that letopt found
the minimum of an entire beta-equivalence class.

The polished 177, 235 and 223 encodings were independently run through the
same exact battery and each returned `ok=667 skip=1 fail=0`. Each of the
three written sources also returned the exact rigid suffix on `Omega`,
`lambda x.Omega`, and `Omega Omega`: nine checks in `suffixes.json`.
`fixed.py` checks **66 fixed symbolic beta equalities**, the new frame's
component prices, and the +17 embedding price; results are in `fixed.json`.
Those symbolic checks use the repository's Python beta normalizer, not Lean.

`check.py` uses the repository battery with exactly two workers and the
same two-cut letopt configuration used by `polish.py` above 175 bits, with
two letopt threads and a 45-second per-call timeout. All calls completed.
There was no candidate enumeration, hole search, component sweep, new Lean
build, or external consult. All files written are in this lane.

Reproduce:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/next/fixed.py
PYTHONDONTWRITEBYTECODE=1 RAYON_NUM_THREADS=2 python3 tmp/round3/next/check.py variable_mode.lam embedded162.lam embedded162_direct.lam
PYTHONDONTWRITEBYTECODE=1 RAYON_NUM_THREADS=2 python3 tmp/round3/next/suffixes.py
```

## 2. Notation and new frame equations

Write `p=intL`, `c=cont`, `s=list`, with NEXT's ambient frame
`[s,c,p,x]`, nearest first. Define

```text
K = lambda a b.a                 F = lambda a b.b
I = lambda a.a                   cons b t = lambda h.h b t
A(e) = lambda env arg.e (lambda z y.z arg (y env))
B(e,g) = lambda env.e env (g env)
N0 = lambda b.p (lambda e.b (c A(e)) (p (lambda g.c B(e,g))))
V_s = lambda u.s (lambda q.c) (s s u).
```

The fixed surrounding source costs 66, and `|N0|=96` in this frame.
When the current term starts with a constructor, put
`s=cons K r`, `r=cons b t`. Direct beta reduction gives

```text
s (lambda q.X) = X r             q fresh for X
s I = K r                       s s = K r
s K = K                         s F = r
s F K = b                       s F F = t
s (s s) = r r

r I = b t       = K t on ABS, I on APP
r b = b b t     = K   on ABS, t on APP
r r = b b t t   = K t on ABS, t t on APP.
```

For example `s (s s) -> s (K r) -> (K r) K r -> r r`.
The second-tag identities follow by substituting K and F in their displayed
middle expressions. These equations are valid for arbitrary `t`, not just
valid code. Many individual Scott identities were already in the record;
the relevant new consequences and prices are below.

For a list-dependent replacement `N_s`, the off-domain reader equations
must retain its actual list substitution:

```text
P c K = N_K,       P c F = N_F,       P c I = c.
```

The first two are not in general the same NEXT. For K the outer reader
selects its last operand; for F the variable arm reduces to I and does the
same; for I the variable arm reduces to `K c`, erasing that operand. These
are algebraic equations for arbitrary N, not assumptions that N is the
old stream-independent function. Thus an argument relying on
`P c K = P c F` silently discards a freedom of the new frame.

### Arbitrary interpreter embedding: +17

For any **closed** exact interpreter Q, take

```text
N_Q = lambda b t.Q c s.
```

Every closed source starts with zero. The unchanged reader on its whole
stream s therefore produces `N_Q b t`, which reduces to `Q c s`, and Q's
contract finishes the proof. This does not assume an open-source contract,
a particular value representation, or termination of the source.

The cost, in `[s,c,p,x]`, is exactly

```text
|N_Q| = |Q| + 4 + 4 + 5 + 4 = |Q| + 17:
                lambdas  apps  c   s.
```

Q is closed and pays no added index bits. Hence

```text
(every correct N in the new frame has |N| >= 96)
    implies (every exact closed Q has |Q| >= 79).
```

This is a handwritten proof with a mechanically checked size and a concrete
passing instantiation. It is not a lower bound asserting that 17 is the
cheapest possible adapter.

## 3. NEXT exposes the continuation on variables: the 177

Replace the variable arm and NEXT by

```text
W_s = lambda u.s u (s s u)

N_s = lambda b.(s K)
        (p (lambda e.b (c A(e)) (p (lambda g.c B(e,g)))))
        c.
```

On a constructor `s K=K`, so `N_s` is exactly N0. On a variable
`s=cons F r`, `s K=F`, so `N_s=K c`. Consequently

```text
s I W_s N_s -> W_s N_s
            -> s N_s (s s N_s)
            -> N_s F r N
            -> c r N.
```

Here `s s -> K N` is the ordinary unary-code identity, so the occurrence
of NEXT in the skip is erased without evaluation. The three recursive
syntax equations are therefore the canonical ones, with unchanged raw
unary variable values, A, and B. Structural parsing and the existing
environment interpretation give the exact contract, divergent sources
included. This is a handwritten transfer proof; the batteries are separate
finite evidence.

`W_s` costs 23: one lambda, four applications, three occurrences of s at
index 1, and two occurrences of u at index 0. It saves five against V.
The new NEXT costs 116, twenty more than N0. Total `66-5+116=177`.
Unlike the known 177 optional-second-parse construction, this one adds an
**on-variable continuation-extraction mode to NEXT**. It performs no
optional parse and does not change the value builders.

### Exact 177 minimum in a specified guard family

This theorem is **handwritten**, with all attaining shapes and prices
checked. Its restrictions are essential:

1. Keep the outer knot and `s I W_s N_s` reader above, including literal W.
2. N is beta-normal as an open term. Its only use of s is **one** guard
   `h=s K`, used with exactly two branch operands. No applications follow
   that guard's two arms within the source spine.
3. Every occurrence of the incoming second tag is likewise a saturated
   two-arm selection. Neither tag is borrowed as data. Repeated second-tag
   tests are permitted.
4. With p,c rigid, on `h=K` require the two canonical branch laws
   `N K t=p (lambda e.c A(e)) t` and
   `N F t=p (lambda e.p (lambda g.c B(e,g))) t`.
5. On `h=F`, require `N b t=c t` for **both** Boolean b. Actual variable
   execution needs only `b=F`; the stronger reset law is part of this
   family, not a consequence of the public contract.

The true branch's smallest source is 96 in this frame. This follows from
the existing normal/two-arm canonical-control theorem, repriced here: its
nine reduced forms cost

```text
104, 97, 96, 113, 112, 121, 120, 108, 107.
```

The proof is the existing common-head-path argument: Boolean substitution
only prunes branches under the saturation restriction; redundant tests
can be deleted; the common path of the two canonical normal forms is p,
its argument, and its initial `lambda e`. Fresh-tail application permits
the normal function itself or its single eta-expanded interface, yielding
the nine forms. See
`data/self-interpreter/reasoning_floor/next-proof-codex/REPORT.md`, section 4.
This imports that **conditional handwritten theorem**, not an unrestricted
claim about all NEXTs.

The unique h test must dominate the branch's changing rigid head p/c.
It cannot sit below an unchanged rigid head. It cannot sit in only one
arm of a preceding b test: the other arm would then be independent of h,
contradicting the required p/c change for that b. Thus, after deleting
redundant b tests, h can occur only before the leading binders, after b,
or after b and t. More than two leading binders would leave a lambda
after both arguments, contradicting either neutral target. The minimum
prices in these three positions are:

| Guard position | Least form | NEXT bits |
|---|---|---:|
| Outside b | `h N0 (lambda b.c)` | 117 |
| Inside b | `lambda b.h (p (lambda e.b ... ...)) c` | **116** |
| Inside b,t | `lambda b t.h (p (lambda e.b ... ...) t) (c t)` | 133 |

For the middle row the accounting is
`2 + 12 + 4 + 94 + 4 = 116`: b binder, h, selection applications,
canonical true body, c. The outside row is `11+4+96+6=117`.
The last is `4+13+4+103+9=133`.

Consequently the complete reader in this family costs at least
`61+116=177`, attained by `variable_mode.lam`. This excludes paying for
the five-bit V saving through this separate first-tag guard. It does not
cover a weaker unreachable-corner law, more intertwined tag uses,
additional list eliminations, non-normal source compression, or another
variable arm.

## 4. Exact obstructions and additional conditional prices

### Unchanged V cannot be the sole return-continuation carrier

On every constructor `s=cons K r`, independently of its second tag,

```text
V_s =beta lambda u.c r r.
```

Proof: `s (lambda q.c)=c r` and `s s u=r`.

Suppose a proposed constructor controller contains the current rigid C
only through occurrences of this V, while its other helpers, including
the global parser/generator, contain no free C. Arbitrary applications,
copies, erasures, and recursive uses of V are allowed. Then every
surviving C-headed result has the form

```text
C r r arguments...
```

The two application edges already attached to a rigid C cannot be
contracted; beta substitution may copy or erase that entire expression
or append arguments, but cannot extract its bare head. This is an origin
argument on beta steps. In particular two-argument public output would
have second argument r. For any genuine constructor quotation r is a
nonempty Scott stream with an outer lambda, whereas the required fresh
suffix N is rigid. They cannot be beta-equal.

Thus unchanged V cannot replace all constructor-side occurrences of c,
at **any size**, under this sole-carrier hypothesis. In particular
`p V_s code` cannot repair it: it appends the parsed remainder after the
already applied `C r r`. The 177 escapes by changing both the variable
arm and NEXT; it does not extract c from the unchanged V.

### I selection and its reverse lose an entire input branch

If the only dependence of a controller on `(b,t)` is through
`r I`, with `r=cons b t`, the APP case is independent of t because
`r I=I`. Fix the closed source `I I` and vary its rigid suffix between
fresh N and N'. The controller has identical input, but the required
outputs `C (lambda z.I) N` and `C (lambda z.I) N'` have distinct normal
forms. No controller of any size can satisfy both.

The reverse selection `r b` preserves t on APP but is K on ABS. Fix
the closed source `lambda x.x` and vary its suffix to obtain the same
contradiction in the ABS branch.

These impossibilities allow arbitrary code after the projection, including
the real parser. They explicitly exclude a second input-dependent channel,
such as the retained whole s or a continuation that captures it. The new
frame supplies exactly such a possible channel; information loss is not
by itself an exclusion of every repaired construction.

For the direct rigid-law interface there is also a head obstruction:
`r I X Y` becomes `t Y` on ABS, and cannot equal a p-headed canonical
parse when t and p are independent rigid variables. Making Y an actual
stream handler leaves this rigid-law fragment and must be priced as a
changed parser entry, not treated as a free selector replacement.

### A nested list diagonal loses open APP indices

The tempting `s (s s)` equals `r r`: K t on ABS and `t t` on APP.
Let

```text
t1 = code(var 1) ++ code(I) ++ N
t2 = code(var 2) ++ code(I) ++ N.
```

Both diagonals are `K (code(I) ++ N)`. Thus using this as the sole carrier
of an APP's children cannot implement the uniform ordinary open-value
protocol: the applications `var 1 I` and `var 2 I` require distinct
values. Under two enclosing canonical abstractions they yield the distinct
normal terms `lambda a b.b I` and `lambda a b.a I`.

The hypothesis is that the continuation and remaining controller provide
no additional dependence on t; canonical ancestor continuations meet it.
An ancestry-sensitive continuation retaining the original stream is outside
this obstruction. Also, at the root of a closed APP the first child
begins with zero, so `t t` merely removes that known zero into a thunk and
does not have this collision. It is the **open recursive APP** obligation
that refutes the simple uniform protocol. This distinction matters.

### Cheapest recovery with ordinary selector chains

Consider only source expressions `s D1 ... Dm` with each Di literally
I, K, or F, and no other input-dependent occurrence. In a context d
binders below s, the unique minimum uniform second-tail projection is
`s F F`, of size **18+d**. The unique minimum second-tag projection is
`s F K`, of size **19+d**.

Proof: with zero or one operand none returns t or b uniformly. With two,
`s I D=r`, `s K D=K D`, and `s F D=r D`; only D=F returns t, and only
D=K returns b. Three operands already cost at least
`(2+d)+3(2+4)=20+d`, even using I everywhere, and further operands cost
more. These are exact bounds in this stated grammar. They do not bound
diagonals, callbacks, or sharing with semantic code. The constructor's
known first bit can be obtained uniformly over all first tags by `s K`;
its literal closed selector K costs seven. No closed selector below seven
implements `D b r=b` (the only possibilities are I at four and F at six).

### Tail-before-tag normal interface costs at least 107

With p,c rigid, unchanged literal A and B, beta-normal source, no use of
the correlated s, and second-tag occurrences only as saturated two-arm
tests, require a handler T with

```text
T t K = p (lambda e.c A(e)) t
T t F = p (lambda e.p (lambda g.c B(e,g))) t.
```

T must expose both incoming binders: after only the first one, a rigid
head cannot swallow the subsequently supplied tag and make t its final
argument. Pruning tag tests and following the common p head leaves the
three minimal placements

```text
lambda t b.b (p K0 t) (p K1 t)                    121
lambda t b.p (b K0 K1) t                         108
lambda t b.p (lambda e.b (c A(e)) (p B_e)) t      107.
```

Here `K0=lambda e.c A(e)`, `K1=lambda e.p B_e`, and
`B_e=lambda g.c B(e,g)`. Common syntax can be shared only along those
head paths under the saturated-selector restriction; redundant tests
only delete source. Thus **107** is exact in this normal canonical
tail-first family, eleven above the current 96, before accounting for
how the reader supplies the reversed arguments. This does not rule out
a source-cell-consuming interface or source beta redexes that compress it.

### Sinking the parser let into the newly available NEXT scope

For the literal canonical reader and NEXT, one can price all new legal
positions of the unchanged `p=x x` binding without a search. Relative to
the 162:

| Binding placement | Change |
|---|---:|
| Above c, s, b (current) | 0 |
| Under c, over the entire s reader | +3 |
| Under c,s, over the entire reader body | +7 |
| In the NEXT operand only, before b | +2 |
| In the NEXT operand only, after b | +3 |

For the genuinely newly scoped fourth row, the two p leaves move two
levels closer (-4), the two constructor c leaves move one level deeper
(+2), and the two x leaves in `x x` move two levels deeper (+4): net +2.
After b the changes are -6, +2, +1 for the b selection, and +6 for the
two x leaves: net +3. The two whole-reader placements additionally push
the variable return's c, or the reader's four s references, deeper.
This is exact source accounting for these placements, not an exclusion
of a different recursion scheme. No known interpreter variant was
rebuilt or re-batteried for this table.

## 5. Where a saving could still hide

The promising freedom is still that N has **different behaviour on the
variable stream where it is erased or repurposed**, and on a constructor
stream where it executes. The 177 demonstrates a usable extra mode; its
failure to pay is explained by reading the first tag again through a
separate guard. A construction that lets the original reader's dispatch
also select that mode, or uses an otherwise erased operand as a semantic
carrier, is outside the bound above.

The other live case is a stream-aware continuation that preserves the
information a selected projection loses. The r-I and diagonal obstructions
pin precisely what must be retained, but a separate projection price is
not an additive lower bound when the same application can perform parsing
or value construction. The previous record gains are reasons to keep
that distinction explicit.

I would not pursue an unrestricted 96 theorem by adding module minima.
The +17 embedding shows that it already contains a substantial global
interpreter lower bound. A next proof should instead isolate the useful
ways N can use the captured stream, or the exact off-domain calls
`P c K=N_K` and `P c F=N_F`, with source-origin-sensitive accounting.
No proof here excludes all sub-162 interpreters or all sub-96 NEXTs.

## 6. Follow-up: reader-selected modes, and the missing reset base case

**No sub-162, and no improvement over the preceding 177, was found.**
There is a stronger obstruction than the price of the proposed reset
route: replacing the variable arm changes the parser on I. The proposed
180-bit route is not a correct interpreter. It makes `P c I` call
`P (K c) I` indefinitely. The same problem defeats a 179-bit combination
with the existing shared-return NEXT, and a new 180-bit use of the APP
builder as a variable-return adapter.

Two constructions do let the original reader select a non-Boolean NEXT
mode, with no second first-tag read. They bypass the first recursive parse
in that mode, and both polish to 185 bits. Reusing the actual first tag
to build the marker improves one of them to **182 bits**. A stream-aware
continuation also repairs second-tag I selection, at 191 bits. The new general
obstruction below explains why the bypass is necessary, without assuming
that the desired variable result exposes a literally bare c.

### 6.1 Complete terms and checks

All seven complete sources are in this directory. `followup.py` builds them,
prices them in the actual frame, and checks 41 fixed beta identities.
The four correct sources were polished by `check.py`, using the same
two-cut regime that `polish.py` chooses above 175 bits, with two workers
and a 45-second cap per letopt invocation. All four runs completed.
The polished encodings were battery-checked too; corresponding
`*.polished.lam` files round-trip to those encodings exactly.

| Complete source | Written | Written battery | Polished | Polished battery | Idea |
|---|---:|---|---:|---|---|
| `reset_raw.lam` | 180 | `180 bits  ok=0 skip=1 fail=667` | not applicable | not applicable | Coordinator's raw-c arm and D/I reset; fails because the reset law changes. |
| `reset_shared.lam` | 179 | `179 bits  ok=0 skip=1 fail=667` | not applicable | not applicable | Same reset variable arm, existing shared-return NEXT; the same exact loop. |
| `reset_app_identity.lam` | 180 | `180 bits  ok=0 skip=1 fail=667` | not applicable | not applicable | Unchanged NEXT, two reset streams, APP value builder with first value F. |
| `marker_late.lam` | 187 | `187 bits  ok=667 skip=1 fail=0` | 185 | `185 bits  ok=667 skip=1 fail=0` | Pass c after the selected constructor callback; J selects c itself. |
| `marker_dual.lam` | 186 | `186 bits  ok=667 skip=1 fail=0` | 185 | `185 bits  ok=667 skip=1 fail=0` | J erases both parser operands, then both constructor callbacks. |
| `marker_bit.lam` | 184 | `184 bits  ok=667 skip=1 fail=0` | 182 | `182 bits  ok=667 skip=1 fail=0` | The stream supplies F; one lambda builds J, saving three bits in the variable arm. |
| `stream_second.lam` | 191 | `191 bits  ok=667 skip=1 fail=0` | 191 | `191 bits  ok=667 skip=1 fail=0` | First parse preserves the value/rest; the continuation retains the source cell needed by I selection. |

Here “polished” is the attained minimum over 0--2 let cuts, not a minimum
over all beta-equivalent representations. The failed constructions were
not polished: their exact head-divergence proofs below already refute
them on the closed identity. Their reported failures are all fuel
outcomes, not wrong normal forms; the proof, rather than the cap, is the
refutation.

Evidence is in each `*.checks.json`, `*.letopt0.log`, and
`*.polished0.blc`. `followup_suffixes.json` additionally records 24 exact
rigid-suffix checks: Omega, lambda-Omega, and Omega Omega for each correct
source and its polished rendering. Each uses continuation F and returns
the fresh suffix, with normal form `0010` under its binder. The hand
proofs use induction on finite source syntax, not normalization of the
source program; they therefore include divergent source programs.

### 6.2 Why the proposed 180 loops

Use R for a variable's final suffix, and let

```text
D       = lambda a b d.a
A_e     = lambda env arg.e (lambda z y.z arg (y env))
B_e,g   = lambda env.e env (g env)
X_e     = lambda v.p (lambda g.c B_e,g)
Q_c     = lambda b.p (lambda e.b c X_e A_e)
W_s     = lambda u.s (u D I) (s s u)
P c s   = s I W_s Q_c.
```

The constructor equations are correct even with p rigid:

```text
Q_c K = p (lambda e.c A_e)
Q_c F = p (lambda e.p (lambda g.c B_e,g)).
```

The claimed variable reduction, however, requires

```text
Q_c D I = p (lambda e.c) I = P (K c) I.
```

That is K c only if this *new* parser has the old reset law. In fact,
substituting s=I in its complete reader gives

```text
P c I
  -> W_I Q_c
  -> (Q_c D I) Q_c
  -> P (K c) I Q_c.
```

This equation holds for every c, including `K c`, `K (K c)`, and so on.
Head reduction always has another saturated `P k I` to evaluate, with
more arguments waiting outside it. It never reaches a head normal form.
For a genuine variable stream, the reader instead reaches

```text
W_s Q_c -> (Q_c D I) F r R
         -> P (K c) I F r R,
```

which has the same infinite head reduction. Parsing the finite closed
identity reaches a variable, so this is a closed-contract counterexample.

The exact written price is W=41 and NEXT=101. The baseline W=28 loses
13 bits and NEXT=96 loses five: 180 total. In the displayed raw-c
factorization, the APP arm must ignore the common value argument, so
`X_e=lambda v.p (lambda g.c B_e,g)` adds one lambda and one index bit on
each of p,c,e, exactly five bits. This is the exact price in the family
where that argument is opaque and ignored, with the literal A/B builders.
It is not a lower bound on arbitrary ways to use A_e as data.

The displayed W has the 23-bit skeleton `lambda u.s u (s s u)`, plus D
(10), I (4), and two applications (4): 41. D must select the first of
three rigid arguments in this template. Its unique beta-normal form has
three lambdas and index 2, hence ten bits; no shorter closed source has
a beta redex capable of representing it. This is a template price, not
a lower bound on all variable arms.

`reset_shared.lam` substitutes the already known 100-bit shared-return
NEXT:

```text
Q_c = lambda b.p (lambda e.(b c p)
        (lambda y.b (lambda arg.e (cell arg y))
                    (c (lambda env.e env (y env))))).
```

With b=D, `(b c p)` is K c, so `Q_c D I=P (K c) I` again. It saves one
bit over the suggested construction, but shares the exact same defect.
This is a new joint use of that known NEXT, not a newly claimed NEXT
factorization.

### 6.3 An already-applied c route also needs a base case

There is an exact way to make the APP builder reproduce a variable value:

```text
B_F,r = lambda env.F env (r env) =beta r
```

when r is an actual Scott cell. Expanding `r=lambda h.h d q` makes the
last equality beta, not merely eta. For a general opaque g,
`B_F,g=lambda env.g env` would only be eta-equal to g.

This suggests retaining the original NEXT Q and using

```text
W_s = lambda u.s (lambda b.u b I b I) (s s u).
```

On a genuine variable this produces

```text
Q_c F I F I r R.
```

If `P k I=k` still held, the first I would supply the first parsed value
F, the second I would supply r as the second parsed value, and the result
would be `c B_F,r R=c r R`. The callback extracts the actual first tag F
and r from s; it costs 46 bits, compared with 59 when F,F,r are written
separately. The complete source is 180 bits.

But the new reset expansion is

```text
P c I -> Q_c Q_c I Q_c I
      -> P kappa_c I Q_c I

kappa_c = lambda e.Q_c (c A_e) (p (lambda g.c B_e,g)).
```

Again the equation is uniform in the continuation, so the next head call
on I has the same form. This construction is head-divergent on variables.
The APP identity is useful, but it does not supply the reset's missing
base case.

### 6.4 A general obstruction when every return is behind the first parse

**Handwritten theorem, not a Lean theorem.** Consider the usual syntactic
self-application fixed point of a functional of the form

```text
F(p) = lambda c s.R(s, p, lambda b.p H(p,c,s,b)).
```

The hypotheses are:

1. R has no occurrence of c except through its displayed NEXT argument.
   In particular a replacement variable arm may use s, p, and its NEXT
   operand arbitrarily, but has no independent occurrence of c.
2. In that NEXT, c occurs only inside H, the first (continuation)
   argument of p. The unshown stream argument is supplied later. There
   is no c-dependent second argument of p or other independent c channel.
3. The recursion is the explicit usual knot, not an arbitrary mathematical
   solution of the equation `P=F(P)`.
4. The input S and all other helpers are independent of the fresh rigid C.

Then the resulting P cannot have `P C S =beta C A B` for any A,B. In
particular it cannot satisfy the interpreter contract even on the closed
identity. H may contain raw c, arbitrary builders, actual parser calls,
and the whole captured input s; its internal structure is unrestricted.

Proof: call a closed parser q continuation-independent if it beta-reduces
to `lambda k.Q` with k absent from Q. For such q,

```text
lambda b.q H(q,c,s,b) ->* lambda b.Q,
```

which is independent of c. By the first hypothesis, F(q) is therefore
continuation-independent too. Start with `q0=lambda k.Omega` and iterate
`q_(n+1)=F(q_n)`. Induction shows that every finite unfolding can erase
its continuation argument completely.

Any finite head reduction of the usual knot to the fresh rigid C would
already occur in a sufficiently deep finite unfolding: choose a depth
beyond every recursive occurrence forced in that reduction and replace
the still-unforced recursive leaves by q0. Thus some `q_n C S` would have
head C. But `q_n C S` also beta-reduces to a term with no C at all.
Confluence contradicts this: reductions from a rigid-C-headed term retain
that C, while beta reduction cannot introduce a free variable absent from
the other reduct. This proves the claim.

The raw-c, shared-return, and APP-identity reset attempts all meet these
hypotheses. This excludes the *entire first-parse-before-mode family*,
regardless of marker size or the number of reset arguments. It is stronger
than an obstruction to extracting bare c: an already-applied `c r R`
also cannot be produced.

The 177 escapes because its guard can return c before making the first
parse. The following two constructions escape for the same precise reason.
An independent c in the variable arm, or c transmitted through another
input/data channel, also lies outside the theorem. This is not a global
interpreter lower bound.

### 6.5 Two working modes selected by the original reader

Let `J=lambda a b d.d`, eight bits. K,F,J are three distinct modes. No
second inspection of `s K` appears in either construction.

The continuation-last construction is

```text
Q_c = lambda b.b
        (lambda k.p (lambda e.k A_e))
        (lambda k.p (lambda e.p (lambda g.k B_e,g)))
        c
W_s = lambda u.s (lambda q.u J) (s s u).
```

K and F choose the ordinary ABS and APP functions and give that function
c. J discards both functions and returns c itself. Therefore

```text
Q_c K = canonical ABS parser
Q_c F = canonical APP parser
Q_c J = c
W_s Q_c = (Q_c J) r R = c r R       on a variable
P c I = Q_c J = c.
```

The latter reset now follows without any recursive parse. In the actual
frame, NEXT costs 113 and W costs 36; with the fixed 38 bits outside these
two operands, the source is 187. Letopt gives 185.

The second construction uses the marker to erase two pairs of operands:

```text
Q_c = lambda b.(b p p)
        (lambda e.b (lambda k.k A_e)
                    (lambda k.p (lambda g.k B_e,g)) c)
W_s = lambda u.s (u J) (s s u).
```

For K/F, `b p p=p`, and the inner selection gives the ordinary constructor
continuation. For J, `J p p=I`, while the inner selection discards both
constructor callbacks and gives c. Thus

```text
Q_c J = lambda e.c = K c
W_s Q_c = (Q_c J) F r R = c r R
P c I = (Q_c J) Q_c = c.
```

Here NEXT is 115 and W is 33; the source is 186 and polishes to 185.
This uses the reader's existing dispatch as requested: a constructor
supplies K/F, while W supplies J. In particular, J is effective before
the first recursive parse, not just inside its continuation.

J is the unique beta-normal third projection on three rigid arguments.
Its three lambdas and innermost variable cost eight bits, and no shorter
closed term can normalize to it. Accordingly the fixed W templates have
exact costs 36 and 33: respectively the original 28-bit return callback
with c replaced by `u J` (net +8), and the 23-bit mode skeleton with
`u` replaced by `u J` (+8+2). The 113/115 NEXT figures are exact source
prices, not minima over all three-mode implementations. Neither 185
polish result is asserted to be a general lower bound.

One more use of the supplied first tag saves three bits. Retain the
continuation-last Q, but replace its variable arm by

```text
W_s = lambda u.s (lambda b.u (lambda a.b)) (s s u).
```

On a genuine variable, the callback receives b=F, so `lambda a.b=J`,
and s supplies r as its next argument:

```text
W_s Q_c -> Q_c (lambda a.F) r R = Q_c J r R = c r R.
```

Inside that callback the marker `lambda a.b` costs five bits. Replacing
`lambda q.u J` by `lambda b.u (lambda a.b)` saves three bits, taking W
from 36 to 33. `marker_bit.lam` therefore measures 184 and polishes to
**182**. This proof needs only the genuine variable bit F; it does not
assume a reset law on the off-domain stream I.

For all three marker constructions the constructor and variable equations
are the canonical ones. Induction over the encoded finite term proves
the same open-value parser law and hence the closed contract. This proof
does not evaluate the interpreted term. The 41 symbolic checks, batteries,
and divergent-source suffix checks independently support these equations.

### 6.6 Second-tag I selection with a retained source cell

This construction keeps the original variable arm and defines

```text
Q_c = lambda b t.p
        (lambda e.(b t)
          (lambda u.p (lambda g.c B_e,g))
          (lambda a r.c A_e))
        t.
```

The first parse already retains e and supplies its remaining suffix to
the selected continuation. The continuation also captures t. Since the
first child has a nonempty code, write `t=cons d q`.

On ABS, `b t=K t`, so the selection becomes

```text
(K t) X Y = t Y = Y d q = c A_e.
```

On APP, `b t=I`, so it becomes

```text
I X Y = X Y = p (lambda g.c B_e,g).
```

Thus loss of t by the APP I-selection is harmless here: the first parse
has already consumed it, and retained e plus the suffix. The ABS case
uses the captured source cell only to discard its two fields. The proof
needs t to be a genuine nonempty cell; it does not claim the ordinary
rigid-tail NEXT law on arbitrary t in the ABS case.

Its exact NEXT price is 125. First eta-exposing t takes the canonical 96
to 107. In the frame under `lambda e`, replacing `b U V` by
`b t (lambda u.V) (lambda a r.U)` then costs:

| Change | Bits |
|---|---:|
| Extra application and the t occurrence | 2+3 |
| APP constant consumer: lambda u and shifted p,c,e | 2+3 |
| ABS constant consumer: two lambdas and two-level shifts of c,e | 4+4 |
| Total beyond 107 | 18 |

This gives 191 bits for the complete interpreter, unchanged by two-cut
polish. The constants are the unique beta-normal forms when their fresh
arguments must be ignored and U,V are the fixed opaque canonical actions.
So the 125 price is exact in that literal constant-consumer family. It
does not exclude a consumer that uses the passed source fields or another
value protocol to share work.

### 6.7 Remaining opening

The useful sharpened requirement is **a variable mode must bypass the
first parse**, if all its access to c is through NEXT. Supplying I as an
alleged reset, changing the marker's arity, or rearranging raw c inside
the first parse's continuation cannot provide that bypass. The erased
parser operands in `marker_dual` demonstrate one real bypass. Reusing F
to form J gets the best new bypass to 182, still above the earlier
explicit-guard 177.

The skip's junk can participate in another use such as `u J` before it
is erased. If its only occurrence is `s s u` on a unary source, however,
the result is R independently of u, so that sole channel communicates
no mode. Both working marker constructions use precisely the extra
pre-erasure occurrence, not a hidden effect of the skip.

A sub-162 in this direction still needs a substantially cheaper bypass,
or a joint change that gives the variable arm an independent return
channel without restoring the original cost. No result here bounds all
such bypasses, all changed environment cells, or all stream-aware
continuations. All work stayed in `tmp/round3/next/`; no enumeration,
new consult, tracked-file edit, or long-running sweep was used.
