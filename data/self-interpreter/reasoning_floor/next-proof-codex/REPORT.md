# NEXT proof lane: a conditional 92-bit theorem, with the actual-contract gap exposed

**No sub-165 interpreter found. The requested unrestricted 92-bit theorem is not proved.**

There is a complete handwritten 92-bit theorem for a precisely specified
normal-source control fragment, without opaque ABS/APP module boundaries.
It allows arbitrarily many repeated tag tests and explicit tail binding.
Its proof reduces every member to one of nine forms; their costs are
92, 93, 99, 103, 104, 107, 108, 115, and 116. A separate handwritten lemma
closes the two normal-source, single-shared-argument cases with one bare
branch head, at 96 and 97 bits. Neither result assumes that the old
shared-argument catalogue was exhaustive.

For the unrestricted question, the main new results are:

* exact necessary-and-sufficient **actual-parser root laws**;
* a four-way head-normal-form classification after substituting the actual
  knot values, rather than declaring `intL` rigid;
* a passing 184-bit witness showing that the rigid-parser branch laws do
  **not** follow from the actual contract, even with the fixed knot and
  reader and unchanged semantic values;
* an embedding of any closed self-interpreter Q into this NEXT problem
  with `|N_Q| = |Q| + 44`. Thus the unrestricted 92-bit theorem would also
  establish an unconditional **48-bit interpreter floor**.

All proofs below are handwritten. The fixed equalities, inequalities,
sizes, and four finite batteries are checked. No new Lean theorem is claimed.

## 1. Notation and the laws actually forced

Write `c,p,x` for the ambient frame `[cont,intL,x]`, nearest first.
Let `G_N` be the right-hand knot operand in the question, and put

```
P = G_N G_N,
J_c = N[c/cont, P/intL, G_N/x],
H(j,c) = lambda b. b (lambda u r. r j) c,
R(j,c,s) = s H(j,c) (s s s).
```

The displayed `E_N` reduces to `P`. The fixed lets and reader give the
following finite reductions, independently of the contents of N:

```
P c s          ->* R(J_c,c,s),
G_N q c s      ->* R(N[c/cont, q q/intL, q/x],c,s).
```

The second equation matters: using `x` at another argument invokes a copy
of N with **both** its recursive parameters changed. It is not an opaque
extra constant.

Let `U_n(T)` be the Scott stream `1^n 0 ++ T`, for n >= 0. Directly from
the reader:

```
P c U_n(T)                         ->* c U_(n-1)(T) T       (n >= 1),
P c (cons K (cons b t))             ->* J_c b t.             (1)
```

In the second equation b and t can be arbitrary terms. In the first,
`U_n(T) U_n(T) ->* K T`; the remaining application in the skip returns T.
The first-bit F selects c and the stream supplies `U_(n-1)(T)` itself.
For the second equation the whole-stream skip returns `cons b t`; the
zero arm discards the duplicate and applies that cell to `J_c`.

Write `code(M,T)` for the quotation of a possibly open source M with
suffix T, and `kappa(M) = lambda z.M` with z fresh. Then the requested
closed-source contract is equivalent to exactly these two families:

```
J_c K code(B,T)
    =beta c (kappa(lambda B)) T             whenever lambda B is closed;

J_c F code(L,code(R,T))
    =beta c (kappa(L R)) T                  whenever L and R are closed.   (2)
```

Here `J_c` contains the **actual** P and G_N. Necessity follows from (1)
at the two constructors. Sufficiency follows because a closed source has
an abstraction or an application at its root; it cannot have a variable
root. This also covers divergent source terms: only finite beta
conversions and the syntax of the root were used.

The initially rigid c,T can subsequently be replaced by arbitrary terms
by capture-avoiding substitution. In particular the contract legitimately
gives

```
P k code(A,T) =beta k (kappa(A)) T
```

for every **closed** A and arbitrary k,T. It does not give this statement
for open A. In the ABS law in (2), B may be open with its one outer
variable bound by the displayed abstraction; that is the exact quantifier.

### What the raw variable return does, and does not, force

If a continuation uses the returned raw value as `U_(n-1)(T) e`, then
Scott application forces the lookup equation

```
(cons b r) e -> e b r.
```

This fact is unconditional. Existence of a uniform family of environment
cells for **every** candidate N is not. N can bypass the fixed parser for
its recursive work entirely; section 3 gives a finite explicit construction
that does this. Likewise, (2) does not assert a context-independent parsed
value for every open compound source. Such a value interface has to be
proved or assumed before the cell/lift bounds can be summed.

At least one source occurrence of `cont` in N **is** forced. If N omitted
it, J_c would contain no free c: P and G_N are closed. After the constructor
handoff (1), reduction could not create the free c required by, for example,
the contract on I.

The two tag cases must also genuinely differ. Use the same stream
`t = code(I,code(I,T))` in both cases of (2). The ABS instance must return
suffix `code(I,T)`, whereas the APP instance must return T. These cannot
be beta-equal for fresh rigid T.

### An actual-neighbour head structure theorem

For fresh rigid c, a correct `J_c` has one of these head normal forms:

```
lambda b.   b A1 ... Ak                    k >= 2;
lambda b s. c A B;
lambda b s. b A1 ... Ak                    k >= 2;
lambda b s. s A1 ... Ak                    k >= 1.            (3)
```

The arguments may contain arbitrary reductions and recursive helpers.
This is a statement about the actual instantiated head normal form, not
about disjoint pieces of the finite source N.

Proof. A normal contract instance, such as I, makes `J_c K t`
head-normalizable. Head normalization reflects to the function, so J_c
has a head normal form. Its only possible free variable is c. More than
two leading lambdas would leave an outer lambda after the two arguments,
which cannot join a c-headed result. With no leading lambda its head must
be c; rigid arity forces `J_c = c`, which returns the tag and unparsed
stream. With one leading lambda, a c head makes the unparsed stream the
last output argument, also impossible. Its head is therefore the bound
tag. With zero internal arguments an abstraction remains; with one, the
F case returns the raw stream. Thus it has at least two. With two leading
lambdas, a c head has exactly two arguments by rigid arity, a tag head
needs at least two to consume the Boolean, and a stream head needs at
least one to eliminate the Scott cell. These exhaust the free and bound
heads. QED.

For the actual 165, substituting its P,G and exposing only the head gives
the **fourth** shape, with two leading lambdas and stream-head arity two.
The fixed Python head trace checks this. It is therefore especially
important not to confuse the source's rigid-p presentation with its actual
head decomposition.

## 2. The real parser is a usable combinator

For every N, the fixed reader gives

```
P c K                 =beta H(J_c,c),
P c F                 =beta F,
P c I                 =beta lambda r.r J_c,
P c (lambda u v.X)    ->* X.                                (4)
```

The first three are the previously recorded off-stream identities, now
noted to be independent of NEXT. For the last, let `s=lambda u v.X`, with
u,v fresh for X. Then `s s s ->* X`, while `s H X ->* X`. The handler,
continuation, and NEXT are erased without being evaluated. This is the
recorded constant-stream identity `R(K(K X)) = X` in the useful two-lambda
form; it is not a new reader identity.

Put

```
A(f)   = lambda e a.f (lambda u r.u a (r e)),
V(f,g) = lambda e.f e (g e),
B(f)   = lambda g.c V(f,g).
```

Consider this replacement, in the exact original frame:

```
N_ret = lambda b.p (lambda f.
          b (p f (lambda u v.c A(f)))
            (p B(f))).                                     (5)
```

It costs **111 bits**, so its complete interpreter costs **184**. By (4),
the ABS return `P f (lambda u v.c A(f))` reduces to `c A(f)` for the
actual changed parser P itself. The APP branch is unchanged. Consequently
the parser has the same three syntax-recursion equations as the 165:
raw variable return, A for abstraction, and V for application. Induction
on source syntax gives the same parsed closures and suffixes; the usual
environment induction gives the exact closed-source contract, including
divergent programs. This is a handwritten correctness transfer, not an
assumption that two fixed points are beta-equal.

But with p rigid,

```
N_ret K t
  =beta p (lambda f.p f (lambda u v.c A(f))) t
```

is a different normal form from `p (lambda f.c A(f)) t`. Both the actual
constant-stream identity and the rigid-p inequality are checked. Thus
the rigid branch law used in section 4 is a **real additional hypothesis**,
not a consequence of (2). The witness is beta-normal as an open N and
uses the tag only once with exactly two arms; this isolates the rigidity
gap from the other restrictions in that theorem.

## 3. An arbitrary interpreter embeds into NEXT

For any closed self-interpreter Q satisfying the exact contract, define

```
N_Q = lambda b t.
        Q c (lambda h.h K (lambda j.j b t)).                 (6)
```

This uses neither p nor x. For every closed source, the fixed reader
consumes its initial zero and second tag; (6) rebuilds precisely those
two cells and calls Q on the original stream. Equation (1) therefore
proves E_(N_Q) correct directly from Q's contract. No assumption about
Q's behaviour on open programs or environments is necessary.

The source cost is exactly

```
|N_Q| = |Q| + 44,
44 = 4                  outer lambda b,t
   + 4                  the two applications to Q
   + 4                  c at depth two
   + 32                 the two-cell stream, including literal K.
```

The inner cell costs `2+4+2+5+4=17`; the outer one costs
`2+4+2+7+17=32`. Q is closed, so placing it under the new binders does not
change its cost. The fixed surrounding interpreter costs another 73 bits.

It follows, without any unproved lower bound, that

```
[ every correct N in the question has at least 92 bits ]
    implies
[ every closed self-interpreter Q has at least 48 bits ].   (7)
```

This implication is a useful measure of the unrestricted question's
scope. A proof that assumes every N uses p for the two child parses has
silently excluded even (6). The concrete Q=165 instance is **282 bits**
overall, with a 209-bit NEXT, and passes the battery.

## 4. A complete conditional 92-bit theorem

This theorem prices a whole NEXT region, including dispatch placement;
it does not assume an opaque-module grammar. Its semantic and syntactic
restrictions are explicit.

Keep c,p,x **independent rigid** in frame `[c,p,x]`, and use the literal
normal A,V above. Define the following normal terms, at their displayed
scopes:

```
K0 = lambda f.c A(f),
K1 = lambda f.p B(f),
T0 = p K0,
T1 = p K1,
eta(T) = lambda r.T r.              r fresh for T
```

Assume:

**R. Rigid canonical branch laws.** For a fresh rigid t,

```
N K t =beta T0 t,
N F t =beta T1 t.                                           (8)
```

**B. Source normality.** N is beta-normal as an open term in `[c,p,x]`.

**D. Two-arm selector use.** Every occurrence of the binder receiving the
first argument is the head of a maximal application spine with **exactly
two arguments inside N**. In other words, every tag use is `b U V`; it
is not a bare data occurrence, a partial application, or `b U V W ...`.
The number of occurrences of b is unrestricted. The rest of the source
syntax is unrestricted subject to B and D.

R is sufficient for the fixed reader to implement the usual syntax
recursion after substituting its actual P,G; structural induction then
gives the interpreter contract. Section 2 shows that R is not necessary.

**Theorem.** Under R, B, D, `|N| >= 92`. Equality holds only for

```
lambda b.p (lambda f.b (c A(f)) (p B(f)))                    (9)
```

up to alpha conversion.

### 4.1 Normalization is pruning in this fragment

First N has a leading lambda. If a beta-normal N had none, it would be
headed by one of c,p,x. The two supplied arguments cannot change that
rigid head; the only arity-compatible possibility would be N=p, which
has the wrong first argument K on the first test. Write `N=lambda b.T`.

Replacing b by K or F now only selects the first or second child of each
two-arm tag use. It creates no other internal beta redex. To see this,
the result of `b U V` could create a redex with a surrounding application
only if that surrounding application gave the tag a third argument,
which D forbids. All pre-existing source redexes are forbidden by B.
Thus the two pruned terms `T_K,T_F` are beta-normal.

For a normal term W and fresh rigid t, the equation `W t =beta Ti t`
forces exactly one of

```
W = Ti,       W = eta(Ti).                                  (10)
```

Indeed, if W has no leading lambda, rigid spine comparison forces W=Ti.
If it has a leading lambda, substituting the fresh variable t into its
normal body is only renaming, so the body is literally `Ti t`. More than
one leading lambda would leave an outer lambda after applying t. This is
a beta argument: it does not identify Ti with eta(Ti).

There are consequently four pairs `(T_K,T_F)`, according to the two
independent choices in (10).

### 4.2 Repeated tests cannot produce an additional minimum shape

Inside a selected K arm, specialize every remaining tag test to K; inside
a selected F arm specialize every remaining one to F. This is valid for
both complete executions, since the arm is reached only in its matching
case. Every such specialization deletes the dispatch leaf, its two
applications, and one branch. It introduces no node, changes no enclosing
binder of the surviving branch, and strictly decreases the BLC size.

Likewise, a subtree with identical pruned results on K and F can be
replaced by either of its fully specialized versions. That preserves both
results and cannot increase cost. This operation also removes x and any
other material present only in unreachable subtrees.

To classify the remaining tree, use normal head spines rather than raw
binary-application nodes. A non-tag head and its arity cannot change
under pruning. The heads of `c A(f)` and `p B(f)` differ. Therefore the
tag choice must occur before that differing head; it cannot be split
between a separately selected head and a separately selected payload,
since `(b c p) W` violates D. The common head path of T0,T1 is exactly
`p`, its single argument, and the lambda f at the start of that argument.
For the two eta expansions it is the extra lambda r, then p with its two
arguments, of which the last is the same rigid r and the first is K0/K1.
This proves the following exhaustive list after strictly decreasing
pruning. It does not postulate disjoint ABS/APP modules.

### 4.3 The nine forms and their original-source prices

All variables in each row are hygienically scoped as displayed; A and B
are expanded literally before measuring. The left two digits say whether
the K and F branches in (10) have the final eta expansion.

| choices | form | L | A | X | bits |
|---|---|---:|---:|---:|---:|
| 00 | `lambda b.b T0 T1` | 9 | 14 | 23 | 99 |
| 00 | `lambda b.p (b K0 K1)` | 9 | 13 | 21 | 93 |
| 00 | `lambda b.p (lambda f.b (c A) (p B))` | 8 | 13 | 22 | **92** |
| 01 | `lambda b.b T0 (eta(T1))` | 10 | 15 | 26 | 108 |
| 10 | `lambda b.b (eta(T0)) T1` | 10 | 15 | 25 | 107 |
| 11 | `lambda b.b (eta(T0)) (eta(T1))` | 11 | 16 | 28 | 116 |
| 11 | `lambda b r.b (T0 r) (T1 r)` | 10 | 16 | 29 | 115 |
| 11 | `lambda b r.p (b K0 K1) r` | 10 | 14 | 26 | 104 |
| 11 | `lambda b r.p (lambda f.b (c A) (p B)) r` | 9 | 14 | 27 | 103 |

Each price is `2L+4A+2+X` in the original frame `[c,p,x]`. All nine exact
terms and both laws per term are checked. Pruning was strictly decreasing
whenever it changed the source, and only one row has cost 92. This proves
the bound and uniqueness. QED.

Repeated tests satisfying D are covered by this proof. In particular,
“there might be more than one dispatch” is not a remaining case within
this fragment. Using the tag as data or applying an argument after its
two arms is a remaining case.

## 5. A repaired bare-head shared-argument lemma

The earlier nextfuse proof inferred too much from the distinctness of A
and B. The following narrower statement has a residual/head argument.
It handles two families that D excludes.

Work after the first parse, with f,c,p,x independent rigid. Suppose the
single shared argument and the two adapters are beta-normal and do not
contain the tag. Require

```
K X Y Z =beta c A(f),
F X Y Z =beta p B(f).                                      (11)
```

Then:

* If X=c, necessarily `Z=A(f)` and `Y=lambda z.p B(f)`, with z unused.
* If Y=p, necessarily `Z=B(f)` and `X=lambda z.c A(f)`, with z unused.

Proof of the first case. Rigid c and normality force Z literally A(f).
If normal Y has no leading lambda, it cannot consume A and have the
required p-headed spine: the only arity-compatible possibility Y=p
would give p A, not p B. Write `Y=lambda z.D`, with D normal.

Consider the first occurrence of z demanded in normal-order normalization
of `D[A/z]`. Before that demand there is no computation: D was normal.
Its enclosing path consists of surviving lambdas and rigid-headed
argument positions. Thus the result of A at that position must match a
subterm of the prescribed normal output `p B(f)`.

For arbitrary arguments U,V,W_i, the possible head structures of A are:

```
A                  = lambda e a.f (Cell(a,e));
A U                -> lambda a.f (Cell(a,U));
A U V W1 ... Wk    -> f (Cell(V,U)) W1 ... Wk,
Cell(v,u)          = lambda d r.d v (r u).
```

None can occupy any position of `p B(f)`: that target has no two-leading-
lambda subterm; its one-lambda f-headed subterm is the lift, whose f has
two arguments rather than one; and each f-headed application has the
bound environment variable, not a two-lambda cell, as its first argument.
Other subterms have different heads. These observations do not depend on
the chosen U,V,W_i. Therefore no such first demand exists. Normal D
cannot contain z, and literal normal-form equality forces `D=p B(f)`.

For the second case, normality and rigid p force Z=B(f). Use the same
first-demand argument for a normal adapter applied to B. With no supplied
argument B has one leading lambda and a free c beneath it, which occurs
nowhere in A. With one argument U it gives

```
c (lambda e.f e (U e)).
```

The only possible matching free-c-headed position in `c A(f)` is its
root, but the displayed payload has one leading lambda followed by
rigid head f, whereas A has two leading lambdas. With more arguments its
c-spine arity is too large. Thus B also cannot be demanded at a surviving
normal-form position. The adapter is exactly `lambda z.c A(f)`. QED.

Reinsert the first parse and tag binder. The two forced sources are

```
lambda b.p (lambda f.b c (lambda z.p B(f)) A(f))       97 bits;
lambda b.p (lambda f.b (lambda z.c A(f)) p B(f))       96 bits.
```

Their full interpreter sizes are 170 and 169, agreeing with the old
measurements; both branch laws and prices were independently rechecked
here. A bare branch head cannot take two or more common arguments, since
the rigid c or p would then have too many arguments. This lemma does not
cover non-normal adapters, tag-dependent shared payloads, or the case in
which neither branch head is bare.

### The pair-packing case is real

The review's construction is legal:

```
Z = lambda h.h A(f) B(f),
X = lambda z.c (z K),
Y = lambda z.p (z F),
N_pair = lambda b.p (lambda f.b X Y Z).
```

Both adapters use their shared argument and neither repeats the tag.
Its rigid branch equations are direct beta reductions. Expanded in the
actual frame, N_pair costs **132 bits** and its complete interpreter
costs **205**. The battery passes. This prices that explicit construction
only; it is not a bound on arbitrary packing or common-payload schemes.

## 6. Complete interpreter ledger and verification

Every complete interpreter built in this lane is listed here. The
reference is a freshly parsed copy of the existing term; exact AST equality
was checked before testing.

| file | NEXT | full bits | exact battery line | purpose |
|---|---:|---:|---|---|
| `reference165.lam` | 92 | 165 | `165 bits  ok=667 skip=1 fail=0  reference165.lam` | unchanged attaining reference |
| `pair_packet.lam` | 132 | 205 | `205 bits  ok=667 skip=1 fail=0  pair_packet.lam` | complete version of the review's shared-packet counterexample |
| `actual_parser_return.lam` | 111 | 184 | `184 bits  ok=667 skip=1 fail=0  actual_parser_return.lam` | actual parser implements the ABS return; rigid-p law fails |
| `embedded_reference.lam` | 209 | 282 | `282 bits  ok=667 skip=1 fail=0  embedded_reference.lam` | instantiate the arbitrary-Q embedding with the 165 |

All have matching `.blc` files. Their general correctness arguments are
in sections 2, 3, and 5; the batteries alone establish only those finite
instances. No candidate below 165 was produced, so no sub-165 polish run
was triggered. These are the exact written-source sizes, not claims of
minimal representation for the larger witnesses.

`checks.py` parses unoptimized source directly and writes only here.
The complete run used exactly two battery workers, took 7.615 seconds,
and is recorded in `checks.json`. The subsequent focused run, recorded in
`fixed_checks.json`, took 16.153 seconds and checks:

* 47 fixed beta equality/inequality comparisons with both Python and Rust
  normalization, including all nine forms, the two bare-head cases, and
  exact rigid-suffix recovery on Omega and lambda-Omega for all four
  complete interpreters;
* the actual reference NEXT's two-lambda, stream-headed head form;
* the original-source prices and the +44 embedding overhead;
* a concrete size-increasing affine beta contraction.

The last example is

```
lambda f g h.(lambda q.lambda a b c d.q a b c d) (f g h)
  -> lambda f g h a b c d.f g h a b c d.
```

Its sizes are **59 -> 61**. Moving the three free leaves of the argument
under four lambdas adds twelve index bits; removing the q leaf, its binder,
and the redex application removes ten. Hence even an affine contraction
can increase source cost. Source normality in section 4 cannot simply be
assumed without a compression argument.

Reproduce the fixed checks without rerunning batteries:

```
PYTHONDONTWRITEBYTECODE=1 RAYON_NUM_THREADS=2 \
  python3 tmp/overnight/next-proof-codex/checks.py --fixed-only
```

Omit `--fixed-only` for the four two-worker batteries as well. No N
enumeration, letopt sweep, external consult, or Lean run was used.

## 7. Exact residual cases and the next proof step

Here is an exhaustive partition of candidates not covered by the 92-bit
theorem, using the first failed condition in order. It is a partition by
explicit hypotheses, not a claim that the mechanisms listed within each
part have themselves been classified.

**R fails.** The actual correct candidate does not satisfy the independent
canonical branch laws (8). This includes actual-P/G computations such as
(5), nonstandard or body-dependent open values/environments, bypassing the
fixed parser as in (6), and parsing/control protocols whose canonical
intermediate closures cannot be exposed independently. The env report's
cell theorem assumes uniform lookup laws across bodies; its actual-value
lift theorem assumes the unchanged environment protocol. Neither supplies
the missing implication from (2) to R. The 184-bit witness proves that R
itself cannot be an unconditional conclusion without first finding a
size-nonincreasing replacement for such actual-helper uses.

**R holds but B fails.** Source beta redexes compress the region, possibly
sharing code or moving captures. Their normal form may be one of the
priced shapes while the source is smaller. The 59 -> 61 example shows why
normal-form pricing alone is insufficient. A valid extension must charge
the original source origins or prove appropriate wire-cost inequalities
for these compression cases.

**R and B hold but D fails.** The tag is used as data, partly applied, or
receives shared post-selection arguments. Section 5 closes the specified
single-shared-argument families with one bare head and tag-independent
normal payloads/adapters. Still open are both non-bare adapters (including
general pair packing), tag-dependent common payloads, more common arguments,
and Boolean data borrowing across semantic construction and control.
Repeated tests whose every use is fully saturated at exactly two arms are
already covered by section 4; repetition alone is not a separate residual.

The actual head forms (3) supply a sound starting decomposition but no
92-bit pricing: their code may originate in the unchanged reader, in a
specialized copy of N inside G_N, or in shared source arguments. A genuine
full proof needs an ancestry-sensitive bound on those origins, together
with an interface theorem strong enough to replace R. Counting the 24-bit
cell, 19-bit lift, and old header independently does not provide either.

The most concrete next lemma would bound **useful off-stream calls of P
and specialized calls of G_N below the 92-bit budget**, while preserving
their real reader equations (4). Even a result that replaces such calls
by a no-larger canonical control term would remove a substantial part of
the first residual class. It cannot be justified by declaring P rigid.

My read: the ordinary normal control arrangement really is at its floor,
and the two bare-head factoring cases have no hidden saving under their
stated hypotheses. I have no rigorous reason to exclude all of the
actual-helper, alternate-protocol, or source-compression cases. The
unrestricted optimality question remains open after this lane.
