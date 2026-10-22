# share46: specialized factories and absorber sharing

**No reader of weight at most 45 was found. No complete interpreter was
assembled, battery-run, or polished.** Five correct sharing refactorings
were constructed at weights 68, 69, 70, 71, and 75. All five beta-reduce to
the canonical weight-46 reader; these are expansions of the existing
algorithm, not new interpreter algorithms.

The useful results are a complete sub-46 exclusion for one specialized
factory family, a uniformity obstruction for sharing an opaque-j absorber,
and an all-size exclusion for a family in which the stream supplies the
factory's specialization argument. The unrestricted sharing problem and
weight-46 bound remain open.

All proofs below are **handwritten**, not Lean proofs. `checks.py` checks
ten specified constructions, their prices, and the reductions described
below. There was no term enumeration, no other-agent consultation, and no
coordination with the proof lane. All writes are in this lane directory.

## 1. Factory equations and complete source prices

Use `C = lambda q.c`, `F = lambda a b.b`, `K = lambda a b.a`, and
`I = lambda a.a`. At a reader-body position with frame `[s,c]`, consider:

| Shared term | Equations | Definition price |
|---|---|---:|
| `D = lambda x.x x` | `D F = I`, `D s = s s` | 8 |
| `J_c = lambda x.x c` | `J_c F = I`, `J_c K = C` | 10 |
| `H_c = lambda x.x C` | `H_c F = I`, `H_c I = C`, `H_c s = s C` | 13 |

Every equation is a beta reduction. For example, `J_c K -> K c -> C`,
and `H_c s -> s C`. The supplied `H_c H_c = c` identity is also valid;
we do not count it as new.

These helpers solve the requested roles constructively. `D` supplies both
the selector and the self-application that absorbs the opaque argument.
`J_c` and `H_c` supply both the selector and the constant continuation.
Within the precise prefix-factory grammar `lambda x.x A`, with A independent
of x, the choices A=c and A=C are the cheapest literal definitions of the
respective fixed roles `T K=C` and `T I=C`: those equations force A=c and
A=C, respectively. At these tiny costs a source redex containing the needed
c costs more than those literal choices. This is not a minimum theorem for
arbitrary factories and arbitrary specialization arguments.

Moving one lambda between the helper and its specialization argument does
not save anything here: replacing H_c by J_c saves three definition bits,
while replacing its I argument by K costs three. The successful literal
reader below therefore still costs 75.

### Complete readers, priced before checking

In this table `let h=T in B` denotes the literal redex `(lambda h.B) T`.
The exact source strings are in `checks.py` and `checks.json`.

| Reader | w | cost | depth(j) | L | V | X |
|---|---:|---:|---:|---:|---:|---:|
| `lambda s.(let h=D in s(h F)(lambda u.s C(h s u)))j` | 68 | 64 | 1 | 7 | 11 | 10 |
| `lambda s.(let h=H_c in s(h F)(lambda u.h s(s s u)))j` | 69 | 65 | 1 | 7 | 11 | 11 |
| `(lambda h s.s(h F)(lambda u.h s(s s u))j) H_c` | 70 | 62 | 2 | 7 | 11 | 8 |
| `((lambda h n s.s(h F)(lambda u.h s(s s u))n) H_c)j` | 71 | 71 | 0 | 8 | 12 | 11 |
| `lambda s.(let h=J_c in s(h F)(lambda u.s(h K)(s s u)))j` | 75 | 71 | 1 | 8 | 12 | 11 |

The last row's structural counts are independently recorded by the checker;
the preceding prices were derived from the factory equations and literal
source before checking. All five normalize to

    lambda s.s I (lambda u.s C(s s u))j.

Thus their all-length correctness follows by beta conversion to the
canonical reader, not merely by the n=1..3 probes. In particular, the
weight-69 version improves the supplied weight-75 H_c refactoring by using
`h s` directly instead of `s(h I)`. It does not improve the weight-46 reader.
The depth-zero weight-71 construction explicitly tests a c-containing
definition above lambda s with no hole-depth tax; its definition and uses
still cost too much.

## 2. A complete sub-46 exclusion for specialized prefix factories

Consider exactly the source family

    R = lambda s. ((lambda h.s(h F)(h B)) (lambda x.x A)) j,       (1)

where

- A is arbitrary source syntax with free names among x,s,c;
- B is arbitrary source syntax with free names among h,s,c;
- A and B contain no j; bound names are hygienic.

Source redexes and any number of source lambdas are initially allowed.
The selector equation is automatic, even when A depends on x:

    (lambda x.x A) F -> F A[F/x] -> I.

This family therefore specializes one source helper at two different
arguments. B can be h itself, so self-specialization is included. This is
not the previously excluded family using one unchanged callback twice.

### Exact price

Let a be the ordinary price of A in frame `[x,s,c]`, and b that of B in
frame `[h,s,c]`. Counting the source outside these two subtrees gives

    w(R) = 39 + a + b.                                         (2)

One way to check the fixed 39: the outside source, excluding the whole
helper and the F and B operands, contributes 27 including hole depth; F
costs 6, and the helper's lambda, application, and x leaf cost 6.

A successful reader must contain c. Otherwise beta reduction cannot
introduce the rigid c in the unary output. Thus at least one of A,B
contains c.

For w<=45, equation (2) gives a+b<=6. A bare c costs 4 in either frame.
Any compound containing c costs at least 7: putting it under a lambda costs
at least 2+5, and an application containing it costs at least 2+4+2.
Since the other subtree costs at least 2, the c-containing subtree must be
the bare leaf c. The other subtree must cost at most 2, hence it is the
nearest bound-variable leaf. There are exactly two possibilities:

    A=c, B=h;          A=x, B=c.

Both have weight exactly 45, and both beta-reduce to

    lambda s.s I (c c) j.

On a zero cell this returns r j. On every positive unary cell, s I=I,
so it returns c c j. That is not beta-equal to c U_(n-1)(N) N: both have
rigid head c, and their respective first arguments c and the stream cell
are distinct beta-normal forms.

**Conclusion:** no reader in the entire source family (1) has w<=45.
This proof counts the definition, both uses, and every capture before
reduction; it never adds the prices of two expanded helper copies.

The two boundary cases were directly checked at n=1..3, at weight 45.
Their failure for all n is the preceding symbolic reduction.

### Two specified placements of the definition above lambda s

For the related source

    (lambda h s.s(h F)(h B)j)(lambda x.x A),

with A free in x,c and B free in s,h,c, direct counting gives

    w = 44 + |A|_[x,c] + |B|_[s,h,c] >= 49

whenever c occurs. The minimum operand sum is at least 5, since c costs at
least 3 and the other operand at least 2. A fixed weight-49 example appears
in the check log; it is not a reader.

For the depth-zero placement

    ((lambda h n s.s(h F)(h B)n)(lambda x.x A))j,

with A free in x,c and B free in s,n,h,c, counting instead gives

    w = 45 + |A|_[x,c] + |B|_[s,n,h,c] >= 50.

These are exact-source lower bounds for these contexts only. In particular,
they do not exclude arbitrary depth-zero readers or other let placements.

## 3. A rigid absorber cannot specialize at the same argument position

**Uniformity lemma.** Suppose T and Y have no free j, and

    T j =beta Y.

Then, for every term A, capture-avoiding substitution in this equality gives

    T A =beta Y.                                               (3)

This elementary lemma allows arbitrary source redexes, arbitrarily many
lambdas, and A containing copies of T. It is not a finite-input observation.

Fix a genuine unary input and apply (3):

- If `T j = N`, then `T A = N` for every A. The same argument position
  cannot specialize T to I, C, or `c U_(n-1) N`.
- If `T j = c U_(n-1) N`, then `T A` has that value for every A. It cannot
  be the selector I.

As a precise reader consequence, a source beta-equal to

    lambda s.s (T_s A_s) T_s j

cannot satisfy the unary reader law if `T_s A_s=beta I` on unary inputs
and T_s,A_s are j-free. The selector forces `T_s j=c U_(n-1) N`; (3) then
contradicts the assumed selector equation. This has no size or lambda-count
restriction.

For the proposed shared N-extractor/absorber, `T_s=s s` is already the
cheapest familiar example of the uniformity: on unary input it is K N,
and all arguments, including itself, produce N. Sharing that same
application position cannot also supply an identity selector.

**Boundary:** this does not prohibit `T A=I` together with
`T B j=c U_(n-1) N`, where specialization by B occurs before j is absorbed.
It also does not prohibit different surrounding application contexts.
Those are precisely the remaining higher-order sharing mechanisms.

## 4. Let the stream supply the specialization argument

The literal F in (1) costs six bits. A natural way to remove it is to use
s itself to supply the bit to the shared factory:

    T_s = lambda x.x A_s,
    R_A = lambda s. ((lambda h.s h(h c)) T_s) j,                 (4)

where A_s is arbitrary source syntax free only in s (and in particular
independent of x and j). Both source occurrences of h are shared uses.
The selector and continuation equations on a cell `s=cons b r` are

    s T_s -> b A_s r,
    T_s c -> c A_s.

Consequently `s T_s=A_s` on zero input, while `s T_s=r` on positive
unary input. This supplies F by opening the input rather than by writing it.

But on a unary input, r itself is a cell, including n=1:
write `r=cons b' t`. Equation (4) then gives

    R_A U_n -> r(c A_s)j -> c A_s b' t j.

This has four arguments under the rigid c head. The required answer has
two. Subsequent reductions inside A_s cannot remove those outer
applications; if A_s does not normalize, the expression cannot equal the
normal target either. Thus **the entire family (4) fails at every unary
length, regardless of A_s's size or source redexes**.

Two choices have particularly low prices and satisfy the zero law:

| A_s | Price inside `[x,s,c]` | w(R_A) | Zero result | Unary result |
|---|---:|---:|---|---|
| `s s` | 8 | 43 | r j | `c (K N) b' t j` |
| `s I` | 9 | 44 | r j | `c I b' t j` |

The fixed outside price here is 31, and B=c costs 4, so w=35+|A_s|.
On zero input both choices A_s reduce to K r and hence erase `T_s c`
before passing j to r. They are tempting low-weight near misses, but their
unary failure is structural rather than a short-test accident.

This differs from the known identical-callback exclusion: the second use
is specialized by c, and the first use receives the actual stream's tag
and tail. The helper may contain arbitrarily many lambdas through A_s.

## 5. Verification and remaining route

Artifacts:

- `NOTES.md`: equations and prices recorded before candidate checks;
- `checks.py`: ten fixed constructions, no generated terms;
- `checks.json`: exact sources, full weight tuples, and check outcomes;
- `checks.log`: human-readable results and selected failure normal forms.

Run `python3 checks.py` from this directory. The run used one process and
reported 0.0017 seconds. The five successful refactorings passed the
supplied n=1..3 reader checker and normalized to the canonical source;
comparison used a de Bruijn fingerprint independently of `rd.alpha_eq`.
The other five candidates failed as predicted. No source or semantic
exhaustiveness claim depends on normalization fuel.

The live possibility is a helper whose **first specialization constructs a
new closure**, which subsequently absorbs j, while another specialization
returns a selector or a stream-transforming callback. The simple absorber
uniformity lemma cannot identify these different closures. Likewise, the
39+a+b bound relies on the literal F-specialization and outer serial spine;
a source whose bit argument is supplied by the stream can avoid that fixed
price, although the direct family (4) loses by rigid-head arity.

A promising next constructive target is therefore an equation system
`T A=I`, `T B j=c r N`, with A supplied by the input and B sharing the
stream-dependent extraction work, while the zero branch routes j directly
to its rigid tail. The evidence here says why three cheap realizations
fail; it does not establish that every realization must cost 46.

## 6. Follow-up: captured closures and the Delta length-one defect

**No sub-46 reader was found.** The supplied close46 result supersedes
pursuing arbitrary contexts built only from the fixed C_m/H_m factories.
I read `close46/REPORT.md` and the relevant statements in
`ClosureBarrier.lean` and `BoundaryAlgebra.lean`; I did not rerun their Lean
checks or coordinate with that lane. Its kernel-check status is inherited
from the supplied report. All new arguments in this section are handwritten,
with the specifically identified fixed identities and prices checked by
`followup_checks.py`.

### 6.1 A helper genuinely producing the two different closures

Let C_1=lambda q.c and define

    G_c = lambda x u. x C_1 (x x u).

The intended role equations are

    G_c F =beta I,
    G_c s =beta lambda u.s C_1(s s u).

They hold by direct reduction:

    G_c F -> lambda u.F C_1(F F u)
          -> lambda u.u = I,
    G_c s -> lambda u.s C_1(s s u).

The helper additionally satisfies

    G_c I =beta C_1,
    G_c K =beta C_2.

This helper is outside the fixed-continuation factory grammar: its residual
lambda captures x and computes with that captured function. The stream s
is its second specialization argument. It is the cheapest successful
helper found in this follow-up, **not a proved minimum over all helpers**.

Its exact definition price is 30 in frame [c], or 31 in frame [s,c].
There are three lambdas, four applications, five leaves, and index sum 6
in frame [c]. Using it gives

    lambda s. ((lambda g.s(g F)(g s)) G_c) j,       w=67,
    (lambda g s.s(g F)(g s)j) G_c,                 w=70.

For the local version the complete source price is

    27 + |F| + |s|_[g,s,c] + |G_c|_[s,c]
      = 27 + 6 + 3 + 31 = 67.

Both readers beta-reduce to the canonical weight-46 reader. Their exact
normal-form equality was checked, in addition to the n=1..3 reader probes.
They solve the requested two-role equations but do not compress their use.
In this literal two-specialization context, a sub-46 source would require
`|G|+|X1|+|X2|<=18`; this G already costs 31 before the arguments.

#### Supplying the tail or the computed square directly

If the stream supplies its tail r, the cheaper definition

    J_c = lambda x u.c x(x x u)

costs 27 in frame [c] and obeys

    J_c r = lambda u.c r(r r u).

This is the correct absorbing arm for the tail, since r r=K N on every
unary tail, including r=U_0(N). But **J_c A cannot be I for any A**:
applying it to a fresh rigid v yields the rigid c-headed expression
`c A(A A v)`, whereas I v=v. No reduction inside A changes that head.
Thus saving the constant callback by directly naming c also removes the
selector specialization. This is an exact obstruction for this helper,
not a general theorem about tail-parameterized helpers.

The analogous square-capturing helper

    Q_s = lambda x u.s C_1(x u)

has `Q_s(s s)=lambda u.s C_1(s s u)`, but on unary input every Q_s A,
after application to a fresh v, is c-headed. It likewise cannot specialize
to I. The dependence of G_c's *head* on its specialization argument is
what permits F to erase c in its selector use.

For comparison, directly accepting the bit and tail from the stream gives

    lambda s.s(lambda b r.b r(lambda u.c r(r r u)))j,   w=52.

Here the callback equations are `G K r=r` and
`G F r=lambda u.c r(r r u)`. This is the already recorded Grok reader
shape, rechecked as a baseline rather than claimed as new.

### 6.2 An all-size obstruction to repairing Delta's middle operands

The supplied Delta operand is

    D(s)=s Delta I(s s)j,       Delta=lambda x.x x.

It returns j on zero, N j at n=1, and N at every n>=2. Consider the more
general repair family

    D_AB(s)=s Delta A B_s j,                                  (5)

where A has no free s or j, and B_s has no free j. A and B_s may have
arbitrary source lambdas and redexes; A may contain other rigid parameters.

On zero, s Delta=K, so (5) reduces to A j. If it is a valid j/N dual,
we must have A j=beta j. Rigid substitution then gives

    A X=beta X     for every X, in particular A K=beta K.

At n=1, s Delta=U_0(N), and therefore

    D_AB(U_1) =beta U_0(N) A B_s j
              =beta A K N B_s j
              =beta K N B_s j
              =beta N j.

This contradicts the required N. Thus **no choice of B_s and no
stream-independent replacement of I repairs this entire family**, at any
size. This includes replacing s s by a different extractor or a captured
closure: the n=1 branch erases that middle operand before reaching j.
A successful repair retaining this spine must change the first callback,
make A stream-dependent, or change the surrounding application structure.

There is also no stream-independent postprocessor repair. If P is j-free
and P(D(Z(r)))=j, then P j=j, hence P X=X by substitution. Consequently
P(D(U_1))=P(N j)=N j. This statement assumes P is independent of s and the
rigid suffix N; it does not prohibit a repair obtaining fresh information
from the original stream.

### 6.3 A literal one-bit-cheaper repair, and its full reader price

Replace Delta by the closed K:

    D_K(s)=s K I(s s)j.

Its equations are exact at every unary length:

    D_K(Z(r)) -> K I(s s)j -> I j -> j,
    D_K(U_n)  -> F I(s s)j -> (s s)j -> N,      n>=1.

Delta costs 8, whereas K costs 7. Thus the weighted open dual
`lambda s.D_K(s)` costs **33**, one less than the supplied dual's 34.
In the supplied near-reader context this gives the correct reader

    lambda s.s I(s C_1)(s K I(s s)j),             w=55.

This is a complete price for the repair: the supplied 56-bit near-reader
becomes correct and one bit smaller, but remains nine bits above 46.
Reordering the same branch work gives

    D'_K(s)=s K j(s s s),
    lambda s.s I(s C_1)(s K j(s s s)),            w=53.

The dual costs 31 and the complete reader costs 53. This latter reader was
already recorded by refute46; it is not a newly discovered algorithm.

K is explicitly **not** an atom of close46's closed grammar. It is itself
a seven-bit closure factory: K A constructs a function capturing the
arbitrary computed A. Thus this repair does not contradict that theorem,
and Delta is not the only inexpensive callback outside its grammar.

### 6.4 Padding fixes length one but changes the zero interface

A second repair is to prepend one unary cell virtually:

    P_s = cons F s = lambda f.f F s.

The exact identities, valid for arbitrary s, are

    P_s Delta =beta s,
    P_s P_s =beta s s.

For the second identity, `P_s P_s -> P_s F s -> F F s s -> s s`.
Consequently

    D(P_s) =beta s I(s s)j.                                  (6)

Now (6) returns N on **every** positive unary input, including length one.
On zero it returns r j rather than bare j. Its weighted lambda-s form
costs 24: the padding and Delta cancel, saving ten bits versus the
original dual while changing its zero-side interface.

A compatible return selector is

    H_s=s(lambda b r.b I(c r)).

It has the equations

    H_Z =beta I,
    H_U =beta c U_(n-1)(N).

Therefore the complete construction

    lambda s.s(lambda b r.b I(c r))(s I(s s)j)                 (7)

is a correct reader for all lengths. Its exact price is **54**:

    |H_s|=28,
    |s I(s s)j|=18       (j leaf priced zero),
    final application=2, outer lambda=2, hole tax=4.

Equivalently its counts are L=5,V=10,X=4,d=1, giving 54. This accounts for
the changed zero interface; quoting only the 24-bit partial reader would
hide the expensive return selector.

### 6.5 Capturing the whole return with K

Let A_s=s C_1(s s s), which is c r N on unary inputs and costs 22 in
frame [s,c]. Then K A_s is an absorbing closure, giving

    lambda s.s I(K(s C_1(s s s)))j,             w=49.

The arm costs 7+2+22=31, and the rest of the reader costs 18. Contracting
the K redex yields the already known weight-47 ignore-u reader
`lambda s.s I(lambda u.s C_1(s s s))j`. This is another existing algorithm
written with an explicit computed-argument closure factory.

Sharing K also with the selector via `F K=I` gives

    lambda s.((lambda k.s(F k)(k(s C_1(s s s))))K)j,   w=67.

The first hand estimate was 60; the pinned price check exposed an omitted
7-bit charge for the relocated K definition. The corrected delta from 49
is +6 for the selector replacement, +6 for captured free-variable indices,
+4 for the let, +7 for its definition, and -5 for its arm reference.
`NOTES.md` retains that correction. No optimality claim relies on it.

### 6.6 Evidence and remaining boundary

`followup_checks.py` checked exactly eight reader sources, four dual
sources, and seven symbolic identities. All eight readers passed n=1..3;
the duals had their predicted zero/n1/n2/n3 outputs; all seven identities
had equal beta-normal forms. The local and external G_c readers also had
the same beta-normal form as the canonical reader. The final run took
0.0017 seconds in one process. Sources, price tuples, outputs, and the
identity list are in `followup_checks.json`; stdout is in
`followup_checks.log`. There was no enumeration or long computation.

All-length correctness above follows from the displayed stream equations,
not an extrapolation from those probes. The impossibility of family (5)
and of the stated fixed postprocessors is handwritten, not kernel-checked.
No complete interpreter was assembled, battery-tested, or polished.

The useful new boundary is specific: changing only the extractor beneath
`s Delta A ... j` cannot fix n=1 with a stream-independent A. Allowing K
fixes it cheaply but still leaves the full return/dispatch context at 53
or 55. A capturing helper can solve the selector and absorbing-arm roles,
as G_c does, but its literal two-specialization context is far over budget.
Other stream-dependent specializations, different outer contexts, and
capturing helpers that share more of that surrounding work remain open.
