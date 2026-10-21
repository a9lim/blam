# Interpreter protocol constraints

These are exact symbolic arguments and explicit constructions by Codex. They
apply to the stated protocols, not to arbitrary interpreters. The targeted
checks perform no candidate enumeration.

## A free semantic parameter in the skip


Write

```text
K = λu v.u                 F = λu v.v
Z_t = λu r.r t
H(q,c) = λb.b Z_q c
R_a(q,c) = λs.s H(q,c) (s s a).
```

For every unary prefix `1^n 0 ++ N`, including `n=0`,

```text
s s ->* K N
s s a ->* N.
```

The second equation holds for arbitrary `a`, including divergent terms. The
proof is the same structural induction as the existing skip law, followed by
one erased application. Consequently the last skip operand can be any
in-scope term without changing the parser's behavior on source encodings.
The structural parser proof therefore transfers, including divergent source
programs; finite batteries are supplementary evidence.

Off the stream domain, the choice matters:

```text
R_a F    ->* a
R_a K    ->* H(q,c)
R_a I    ->* a Z_q c
R_a Z_t  ->* a t t.
```

For the last identity,

```text
Z_t H(q,c) (Z_t Z_t a)
  -> (λr.r t) (a t)
  -> a t t.
```

These equations were checked with all parameters bound rigidly. They expose
an off-domain control channel that the `s s s` reader does not have.

Four complete variants replace only the final `list` in the 165's skip:

| Erased operand | Bits | Off-domain operation |
|---|---:|---|
| `next` | 166 | `E C F -> Q_C` |
| `cont` | 167 | `E C F -> C` |
| `intL` | 168 | `E C F -> E` |
| `x` | 169 | `E C F -> G`, the ordinary knot generator |

These are complete interpreter constructions, all larger than 165. The reset identity in the
168-bit variant follows by finitely unfolding its existing knot once;
the script additionally checks the reset followed by parsing `I`.

## Cheap application-only third operands

Consider the ambient frame `[s,j,c,p,x]`, innermost first, with `j` the
rigid NEXT continuation and `c` the rigid result continuation. Let `H`
be any term in this frame, including one that depends on `s`; impose no
normal-form or independent-handler assumption. The required reader laws are

```text
s = cons K R:                  s H T =β R j
s = 1^n 0 ++ N, n >= 1:        s H T =β c (tail s) N.
```

**Domination theorem.** If `T = s j` satisfies these laws, replacing that
operand by `T = s`, without changing `H`, also satisfies them and saves
5 bits. The same conclusion holds for `T = s c`, saving 6 bits.

More generally, `s a` is dominated this way when `a` is a rigid ambient
variable absent from the required outputs. In the stated frame this gives:

| Original operand | Operand bits | Replacement | Bits saved |
|---|---:|---|---:|
| `s j` | 7 | `s` | 5 |
| `s c` | 8 | `s` | 6 |
| `s p`, with `p` rigid | 9 | `s` | 7 |
| `s x`, with `x` rigid | 10 | `s` | 8 |

The last two rows require rigidity. They do not classify operands that
actually invoke a recursive parser or generator in those slots.

Here is the proof for arbitrary correlated `H`. First take `R` and `N`
to be fresh rigid variables. The required outputs are then beta-normal.
Normalize just the selected third operand, using

```text
(cons b r) a → a b r.
```

Confluence ensures that the reader can still reduce to the same required
normal output after this preliminary step. Mark the resulting occurrence
of `a b r` as an opaque box. It is beta-normal, has a rigid head, and
mentions no enclosing local variables. A beta reduction outside it can
copy or erase the box, but cannot split it or change its contents.
Applying it to further arguments also retains the whole box as a subterm.

No marked box can occur in the required output:

* With `a = j`, the zero output `R j` contains `j` only as a bare leaf;
  the variable output `c r N` contains no `j`.
* With `a = c`, the zero output contains no `c`. The variable output has
  only one `c`-headed subterm with two arguments, namely `c r N`, whereas
  the box is `c F r`. These differ because `r` is a nonempty Scott cell,
  not `F`: its lambda body is an application, while `F`'s lambda body is
  another lambda.
* A different rigid ambient head absent from the outputs cannot occur
  in either output at all.

Thus every marked copy is erased by the successful reduction. Replace the
initial box by `s` and replay the same contractions outside its residuals.
Those contractions remain valid and erase every replacement copy, giving
the same output. Other occurrences of `s` inside `H` are untouched. Finally,
stability of beta reduction under capture-avoiding substitution replaces
the fresh rigid `R,N` by arbitrary suffixes, so this is a symbolic result
for every unary length and suffix.

### Kernel-checked replacement principle

`Blc.SelfintInert` proves the shared mechanism independently of the
reader architecture. Substitution by a rigid beta-normal term cannot
create a beta redex: every step after substitution reflects to a step
before it. The module lifts this reflection to finite reductions.

Its predicate `Avoid a n` means that `n` contains no copy of `a`,
with the appropriate free-variable shift beneath each enclosing lambda.
If substituting `a` for a marked variable reaches such an output, the
reflected reduction ends with zero occurrences of that variable. The
same source reduction therefore works with any replacement.

In the final-argument form, if `a` is rigid and beta-normal, `n` is
normal, `Avoid a n`, and `f a =β n`, then

```
∀ b, f b →* n.
```

Only the selected argument is replaced; `f` may contain other copies
of `a` or the stream. The directed version does not require a normal
target. Normality in the beta-join version supplies a directed reduction
to that target. The specific operand equations and absence checks in
this section remain handwritten applications of this kernel-checked
principle.

### Right-associated self-application is also dominated

The other 10-bit all-`s` application tree is `s (s s)`. Its exact equations
are

```text
s = cons K R:                 s (s s) →* R R,
s = 1^n 0 ++ N, n >= 1:       s (s s) →* N (tail s).
```

For the first equation, `s s →* K R`, followed by
`s (K R) →* (K R) K R →* R R`. For the second, write `X=tail s`;
then `s s →* K N` and `s (K N) →* (K N) F X →* N X`.

For fresh rigid `R,N`, both results are beta-normal rigid boxes. The box
`R R` cannot occur in the required `R j`, since `R,j` are independent.
The box `N X` cannot occur in `c X N`: throughout the finite Scott term
`X`, and in the outer result, every occurrence of `N` is a bare leaf.
The preceding residual-box argument therefore applies unchanged. Any
correct reader using `T=s (s s)` stays correct after replacing only that
operand by `s`, saving eight bits. The handler may retain other occurrences
of the whole stream and arbitrary beta redexes.

### Classification through ten bits

An application-only operand in the fixed frame has leaf costs
`|s|=2`, `|j|=3`, `|c|=4`, `|p|=5`, and `|x|=6`, with two bits per
application. At ten bits it has at most two applications. If it has two,
all three leaves must be `s`, so the only shapes are `(s s) s` and
`s (s s)`. With one application it is `a b` for ambient variables
`a,b` whose costs sum to at most eight.

Every such one-application operand with a rigid head is dominated by `s`:

* A `j`-headed application cannot survive in either target: the only
  target occurrence of `j` is a bare zero-branch leaf.
* The only allowed `c`-headed applications are `c s`, `c j`, and `c c`.
  The zero target contains no `c`. On a variable stream, the one-argument
  `c` prefix in the target is `c X`. None of `s,j,c` equals `X`: `s`
  has one more Scott cell, and the other two are independent rigid
  variables. Hence the marked application cannot occur in that target.
* A `p`- or `x`-headed application cannot survive, because those rigid
  variables are absent from both targets.

The same absence argument dominates the bare operands `p` and `x`.
All boxes here are already normal after replacing `s` by the normal
Scott stream; the same copy-or-erase proof and substitution lifting apply.
Together with the `s a` and right-associated arguments above, this leaves
exactly the following representatives that these domination results do
not remove:

| Operand | Bits |
|---|---:|
| `s` | 2 |
| `j` | 3 |
| `c` | 4 |
| `s s` | 6 |
| `(s s) s` | 10 |

The bare `j,c` exceptions are substantive. Same-handler replacement by
`s` is not valid in general. For example,

```text
H_j = λb r. b r (λt. c r (r r t)),       T = j,
H_c = λb r t. b (r j) (t r (r r t)),     T = c
```

both satisfy the two reader laws. On the variable branch, the unary tail
`r` obeys `r r t →* N` for either supplied operand. Replacing `j` by `s`
in the first reader instead gives `R s` on the zero branch. Replacing `c`
by `s` in the second instead gives `s X N` on the variable branch, which
has no free `c` and cannot yield `c X N`. Thus those two operand families
need their own handler analysis; a handler may obtain the corresponding
required output leaf from the operand itself.

The per-operand domination proofs and the complete classification were
independently reviewed. They neither identify the
operands as beta-equal nor prove a minimum reader size. They reduce the
application-only operand classification through
ten bits to the five displayed families. The `T=j` and `T=c` families
remain open at the budgets needed for a reader improvement.
The separate proof in `cheap-tail-bound.md` excludes every `T=s` handler
below 35 bits and every productive-thunk `T=s s` handler below 31 bits.
With the standard-skip bound, the existing 43-bit reader is minimal
across the other three operand families.
No conclusion about arbitrary sub-165 interpreters follows.

## The raw NEXT diagonal still fails for every skip function

The existing five-argument obstruction is stronger than its original
`s s s` presentation suggests. Allow completely arbitrary skip terms,
including ones depending on the stream:

```text
R_i = λs.s H_i S_i(s)
H_i = λb.b (λu r.r q_i) c_i.
```

Then, without inspecting either skip term,

```text
H_i H_j ->* c_j q_i c_i
R_i R_j ->* c_j q_i c_i S_j(H_i) S_i(R_j).
```

The second equation is just

```text
R_i R_j
  -> R_j H_i S_i(R_j)
  -> H_i H_j S_j(H_i) S_i(R_j).
```

Retain the current NEXT interface,

```text
A(f)   = λe a.f (cell a e)
V(f,g) = λe.f e (g e)
a_f    = λg.C V(f,g)
q      = λb.P (λf.b (C A(f)) (P a_f)).
```

As in the existing derivation, put

```text
k(f) = q (C A(f)) (P a_f)
d_f  = λg.C A(f) (C A(g)) (P a_g).
```

Then

```text
q q = P k
k(f) = P d_f (P a_f) = R_(d_f) R_(a_f)
     ->* C V(f,q_(d_f)) d_f
           S_(a_f)(H_(d_f)) S_(d_f)(R_(a_f)).
```

On quoted `I` with rigid tail `N`, `P k` supplies its parsed value `f`
followed by `N`. The result has **five arguments at rigid head `C`**,
whereas the contract requires exactly two. No reduction inside those
arguments can remove the three extra arguments at the rigid head.

Thus replacing the skip by *any* extensionally correct alternative cannot
turn the unchanged NEXT diagonal into the required parser. This includes all
four erased-operand variants and more general stream-dependent skip
computations. It does not exclude a different NEXT protocol or a different
handler shape.

The old `P P P` head-loop proof specifically uses `s s s`; it should not be
silently transferred to the erased-operand family. The argument above is the
valid stronger obstruction for the raw NEXT-diagonal proposal.

## Constructive routes considered

An internal reset `E C F = E` or generator extraction `E C F = G` does not
by itself create a cheaper fixed point: using it to recover the recursive
parser requires that parser to be available already. Likewise,
`E C F = C` gives a continuation-return instruction, but its arity differs
from the no-input parser `λk.k k`; appending the missing fake value also
appends it on the real second-parse branch unless another mode adapter is
introduced.

Self-application of a Scott pair also has a concrete payload-duplication
cost. For `D = λh.h g r`,

```text
D D ->* g g r r.
```

It can perform the generator diagonal while supplying a field, but supplies
that field twice. A complete construction must discard or use the duplicate
before reaching the rigid public continuation. Simply calling it a
“pair-carried knot” does not eliminate that obligation.

These observations leave the productive target precise: a revised control
protocol in which an erased skip operand carries a *solvable* recursion or
return instruction, and that instruction performs an already-required
semantic operation. An explicit adapter that merely recovers the current
parser repays the hoped-for saving. A smaller protocol of this kind remains open.

## APP cannot supply the full parser through an idempotent control response

The semantic application `lambda e.f e (g e)` already duplicates an
environment. A proposed reuse makes a special environment `q` expose a
recursion generator from each parsed value, so that this same APP operation
performs the generator's self-application. The following obstruction uses
actual source values, not independent rigid operands.

First, **no interpreter satisfying the exact contract is idempotent**:
`E E` cannot be beta-equal to `E`. Write

```text
I = lambda x.x
F = lambda z.I
Q(N) = quote(I) ++ N
     = cons K (cons K (cons F (cons K N))).
```

For a fresh rigid `r`, two uses of the interpreter contract give

```text
E E Q(Q(r)) =beta E F Q(r) =beta F F r =beta r.
```

If `E E =beta E`, this forces `E Q(Q(r)) =beta r`. Apply both sides to
`Q(F)` and use the contract once more:

```text
r Q(F) =beta E Q(Q(r)) Q(F)
       =beta Q(Q(r)) F F
       =beta cons F (cons K (Q(r))).
```

The left side is beta-normal with rigid head `r`; the right side is
beta-normal with an outer lambda. Church–Rosser excludes their equality.
`Blc.SelfintControl.selfInterpreter_not_idempotent` kernel-checks this
argument from `IsSelfInterpreter`, deriving arbitrary continuation and
suffix instances from its rigid-placeholder formulation. It assumes no
parser architecture.

Now let `V(M,N)` be a context-independent internal value for source `M`
followed by suffix `N`, allowing a changed representation and a separate
public decoder. Fix a control seed `q` and write `H(M,N) = V(M,N) q`.
Assume APP remains pointwise application at this seed:

```text
H(M L,N) =beta H(M,quote(L) ++ N) H(L,N).
```

For just one suffix `R`, suppose the three actual control responses agree:

```text
H(I,R) =beta H(I,Q(R)) =beta H(I I,R) =beta G.
```

The APP equation at `(I,I)` then gives `G =beta G G`. Therefore `G G`
cannot be the full exact interpreter `E`: that additional equation would
give `G =beta E` and hence `E E =beta E`, contradicting the proof above.
This last implication is also kernel-checked as
`selfInterpreter_not_idempotent_generator`; the stated APP protocol
reduction to its hypotheses is the handwritten argument above.

A common generator response for every source and suffix implies these
hypotheses, but is stronger than necessary. Suffix independence on `I`
and invariance of the control response under `I I -> I` already suffice.
Correctness after a public decoder does **not** imply either property of
the internal values. Source-dependent responses that distinguish these
cases, a nonhomomorphic control projection, or a bootstrap targeting a
continuation-specific internal state instead of `E` remain outside this
obstruction.

The pointwise metadata construction below gives another precise distinction.
Write `F = lambda e.I`, so `S(F,F) =beta F`, and place an arbitrary
parser `P` in the remainder field of `G = B_P(F)`. Its application and
projection equations give

```text
G G =beta G,             G K F ->* P.
```

Thus an idempotent value can store a parser without satisfying the excluded
equation `G G =beta P`. This does not bootstrap the parser: the definition
of `G` already contains `P`. It supplies no smaller interpreter or saving
in the recursion code by itself.


## Closed-source correctness already forces closed internal values

Consider a context-independent compositional parser with a transparent root
callback:

```text
P C (code(M) ++ N) ->* C V(M,N) N,
```

where `V` is independent of `C` and of the syntactic context containing `M`.
If `P` itself satisfies the required closed-source contract, then for every
closed `M`,

```text
V(M,N) =_beta λz.M.
```

The argument uses the contract with rigid `C,N` and Church-Rosser: a common
reduct of the two rigid-`C` applications must have common reducts in their
corresponding argument positions. This does not require correctness of
intermediate closures on arbitrary open terms or arbitrary environments.

Consequently the existing cell/APP alias obstruction remains even if one
relaxes open-parser correctness as far as possible. Let

```text
X1^N       = cons K N
X(n+1)^N   = cons F Xn^N
APP(f,g)   = λe.e f g.
```

The closed term `I` necessarily compiles to `K I =_beta F`, including when
its suffix contains the next operand. Therefore

```text
APP(V(I,...), Xn^N)
  =_beta λe.e F Xn^N
  =_alpha X(n+1)^N.
```

The bodies `I b` and `a` in the contexts `λa b.[...]` thus acquire identical
values with the same suffix. If ABS depends only on the child value and
suffix, the complete closed sources

```text
λa b.I b            λa b.a
```

also acquire identical values, although their required beta-normal forms
differ. No choice of environment cell repairs this collision.

Thus the assumption of canonical closed internal values in the previous
alias theorem is derivable from root transparency and context independence;
it is not an extra consequence of an overly strong open-term interface.
A successful alternative must change at least one of raw variable values,
root transparency, context independence, or the information carried through
ABS.

The direct common-combinator idea does not yet supply that escape. Both the
cell and APP use the skeleton

```text
D a e f g = f a (g e).
```

But cell construction partially applies `D` to its first two fields, whereas
APP must feed the *same whole environment* into both fields. Making the cell
itself act as APP requires overloading its behavior on parsed values versus
the Boolean selectors. The canonical closed value of `I` is exactly `F`,
so these are not disjoint domains. A value wrapper or context distinction
must preserve additional information before such overloading is meaningful.

## Eta-optimized combinator values cannot have a uniform beta repair

Ordinary SK bracket abstraction can preserve beta equality if it retains
lambda structure instead of applying eta optimization. The tempting cheaper
route is to erase eta expansions during compilation and repair the public
result with a fixed decoder. That route has an information-loss obstruction.

Let `R` be any representation and `D` a decoder using only that
representation. If

```text
R(I) =_beta R(λf x.f x),
```

then beta congruence forces

```text
D(R(I)) =_beta D(R(λf x.f x)).
```

The two required results are distinct beta-normal forms. Hence no such `D`
can satisfy the exact interpreter contract on both programs. This applies
to any representation that collapses eta equivalence, irrespective of the
decoder's size or computation time.

Retaining the original code, an eta-shape annotation, or another context
parameter avoids the hypothesis. A decoder supplied only an eta-collapsed
value cannot restore the missing syntactic distinction. This explains why
an eta-only internal protocol cannot be made beta-exact merely by adding a
uniform boundary coercion.


## Two-sided beta inverses are trivial


**Theorem.** Let `F` and `G` be closed untyped lambda terms, and let `z` be a
fresh variable. If

```
F (G z) =beta z
G (F z) =beta z,
```

then `F =beta I` and `G =beta I`.

**Proof.** Since `z` is beta-normal, Church–Rosser gives reductions
`F (G z) ->* z` and `G (F z) ->* z`. A head-normalizing application has a
head-normalizing operator, so both `F` and `G` have head normal forms.
Closed head normal forms have the shape

```
lambda a1 ... an. ai U1 ... Uk
```

with `n >= 1` and `1 <= i <= n`.

The first reduction forces `F` to have exactly one leading abstraction:
if its head normal form had `n >= 2`, applying one argument would leave an
outer abstraction. Beta reduction preserves an existing outer abstraction,
so this reduct could not have the common reduct `z`. The second reduction,
separately, forces `G` to have exactly one leading abstraction. Thus their
head normal forms are

```
F ->* lambda a. a U1 ... Uk
G ->* lambda b. b V1 ... Vl.
```

Apply the first form to `G z`, then reduce the head occurrence of `G`.
The result has the form

```
z V1[z/b] ... Vl[z/b] U1[G z/a] ... Uk[G z/a].
```

Its rigid head is `z`; reducing inside an argument cannot remove a head
argument. Therefore its number of head arguments, `l + k`, must be zero.
Both head normal forms are `lambda a. a`, as required. ∎

This proof uses head normalization and Church–Rosser as standard lambda
calculus facts; it is a handwritten argument, not a Lean theorem in this
repository.

The claim is about two-sided inverses on arbitrary terms. It permits
nontrivial retractions, such as

```
J x = lambda k. k x
D v = v I,
```

for which `D (J x) ->* x` but `J (D z)` does not reduce to `z`. It also
permits inverses restricted to a chosen representation domain.

## One-sided retractions and the leaky cell

A one-sided retraction can support an exact value representation. Let `A`
and `D` be closed terms satisfying `D (A x) =beta x` for an arbitrary fresh
variable `x`. Keep the parser's control and raw unary variable selectors,
but require environment lookup to return `A a` for the corresponding source
argument `a`. The compositional value constructors can then be

```text
V_n(e)       = X_n e
V_lambda.M(e) = A (lambda a. D (V_M (Cell_A(a,e))))
V_MN(e)      = A (D (V_M e) (D (V_N e))).
```

Here `Cell_A(a,e)` extends the environment with `A a`. Induction on the
source term gives `V_M e =beta A (M[rho])` whenever `e` represents the
substitution `rho`. In particular, if `P_A` is the parser returning these
values and the unchanged remainder, its public adapter is

```text
E_A C s = P_A (lambda v. C (lambda z. D (v z))) s.
```

For closed `M`, the arbitrary base environment `z` is unused, and this gives
`E_A C (quote(M) ++ N) =beta C (lambda z.M) N`. The argument uses finite
structural induction and beta congruence, not normalization of `M`, so it
includes divergent source terms. No two-sided inverse is needed.

This construction does not make the existing leaky cell cheaper. Define

```text
cons b r = lambda h. h b r
X_1(N) = cons K N
X_(n+1)(N) = cons F (X_n(N))
L(h,e) = lambda b. b h (lambda r. r e).
```

The raw selectors satisfy

```text
X_1(N) L(h,e)     ->* h N
X_(n+1)(N) L(h,e) ->* X_n(N) e.
```

Under the compositional scheme above, the first result must be `A a`,
including for arbitrary rigid `N`. Taking `A = K`, with decoder
`D = lambda v.v I`, the head can be stored as `K (K a)`:

```text
X_1(N) L(K (K a),e) ->* K (K a) N -> K a
L(K (K a),e) =beta lambda b. b (lambda u v.a) (lambda r.r e).
```

In the original cell's capture layout `[a,e,...]`, this explicit cell costs
28 bits, against 24 for `lambda b r.b a (r e)`. Both have three applications
and index excess six; the retracted leaky cell has four lambdas instead of
two. APP and the public adapter also perform decoding. Thus this particular
`K`-retraction construction does not recover the leaky cell's apparent
saving. This is an accounting result for the stated raw-selector and
compositional protocol, not a lower bound on arbitrary retractions or a
claim that `K` is the shortest possible wrapper.

## A proper applicative retraction

One-sided representations can preserve application exactly. Codex's explicit
construction is

```text
F   = lambda a b.b
t   = lambda r y x h.h r (x y)
A x = lambda h.h t x
D v = v F.
```

The projection gives `D (A x) ->* x`, while

```text
(A x) (A y)
  ->* (A y) t x
  ->* t t y x
  ->* lambda h.h t (x y)
  = A (x y).
```

These are finite reductions with `x,y` rigid, so substitution extends them
to arbitrary terms, including divergent ones. The closed `A` is a proper
representation: its beta-normal form differs from `I`. Its image of `I` is
idempotent under application and is not `F`. Thus the earlier transparent
collision `V(I) = F` does not apply to this representation. In particular,
application preservation plus a one-sided decoder does not force the
representation to be the identity.

The explicit closed terms cost 28 bits for `t`, 41 for `A` with `t` inlined,
and 12 for `D`. These are construction sizes, not minimum claims. The
targeted script `tools/self-interpreter/theory/applicative_retraction.py`
checks these sizes and all displayed equations with rigid parameters;
its report is `data/self-interpreter/theory/applicative_retraction.json`.
This supplies a representation, not a complete smaller interpreter.

### The ordinary wrapped environment still loses information

The retraction does not repair the cell/APP alias while the ordinary
extension protocol remains. This has a representation-independent
obstruction. Let `A,D` be any closed terms with `D (A x) =beta x`; no
application-preservation assumption is needed. Retain raw variable values
and the usual extension with represented heads:

```text
X1(N)       = cons K N
X(n+1)(N)   = cons F (Xn(N))
Cell(a,e)   = lambda b r.b (A a) (r e)
APP(f,g)    = lambda e.e f g.
```

The selectors satisfy `X1(N) Cell(a,e) ->* A a` and
`X(n+1)(N) Cell(a,e) ->* Xn(N) e`. Require the compositional value
interpretation `V(M) e =beta A(M[rho])` under the represented environment.

Take fresh rigid variables `a,b,c,z,N`, set

```text
e = Cell(c, Cell(b, Cell(a,z)))
R = quote(var 2) ++ N = cons F (cons F (cons K N)),
```

and consider the source application `var 1 var 2`. Its left parsed value is
`X1(R)`, and its right value is `X2(N)`. Keeping this actual suffix
correlation, the alias reduces as follows:

```text
e X1(R) X2(N)
  ->* X1(R) (A c) (X2(N) (Cell(b, Cell(a,z))))
  ->* (A c) K R (A a).
```

The final term contains no `b`, whatever the closed representation `A`.
Neither applying the closed decoder `D` nor beta reduction can introduce a
fresh free `b`. Correctness instead requires its decoded result to be
`c b`, a beta-normal term containing `b`. Church–Rosser gives a
contradiction.

Thus no one-sided retraction, including an applicative one, makes this
alias correct with raw selectors and this extension interface. The script
checks the information-losing equation with `A` itself rigid. This argument
uses the stated compositional interpretation for open terms; it is not a
new unconditional theorem about the closed-source interpreter contract.
An environment-dependent wrapper carrying additional context, a different
extension operation, or extra source information remains outside it.

### A complete parser with applicative remainder metadata

An explicit construction uses the box tag to carry the source remainder.
Application combines ordinary closure payloads pointwise and propagates
the right operand's remainder:

```text
S(x,y) = lambda e.x e (y e)
G      = lambda g n u y x h.h (lambda r.r g n) (S(x,y))
t_N    = lambda r.r G N
B_N(x) = lambda h.h t_N x.
```

The unused `u` absorbs the extra metadata supplied by self-application.
For arbitrary, independently chosen `M,N,x,y`,

```text
t_N F                 ->* N
B_N(x) F              ->* x
B_M(x) K F            ->* M
B_M(x) B_N(y)         ->* B_N(S(x,y)).
```

For the last equation, `t_M t_N y x` reduces to `G G N M y x`.
Thus the tag retains the right remainder even when the two input tags
differ. This exactly matches parsing an application: the left operand's
remainder begins with the right operand, and the right operand's remainder
is the result's remainder.

The abstraction map preserves the existing tag:

```text
Abs = lambda tag body h.
        h tag (lambda env arg.body (lambda b r.b arg (r env))).

B_N(f) Abs ->* B_N(lambda env arg.f (Cell(arg,env))).
```

Here `Cell` is the original unwrapped environment cell. Define a
continuation-free parser `P` by the following recursive equations:

```text
P (1^n 0 ++ N)          ->* B_N(Xn(N))
P (00 ++ code(M) ++ N)  ->* (P (code(M) ++ N)) Abs
P (01 ++ code(M) ++ code(L) ++ N)
  ->* v (P (v K F)),    where v = P (code(M) ++ code(L) ++ N).
```

In the application equation, if `R = code(L) ++ N`, the first parse
returns `v = B_R(f)`, so `v K F`
returns the correct second-parse stream `R`. The final application returns
`B_N(S(f,g))`.

The implementation uses the 165's whole-stream reader with
`Box = lambda v n h.h (lambda r.r G n) v` as its variable continuation.
Its second-tag handler factors the first boxed value across both branches:

```text
Next bit rest =
  (lambda v.v (bit Abs (P (v K bit)))) (P rest).
```

On APP, the actual `bit` is `F` and supplies the second suffix projection;
on ABS, that entire expression is erased. The public boundary is

```text
E C s = P s (lambda tag value.C value (tag F)).
```

Structural induction on the source gives the same closure semantics as the
165, with the remainder stored in the box. The public boundary consequently
reduces to `C (lambda z.M) N` for every closed source `M`. This handwritten
argument does not normalize `M`; it includes divergent source terms.

The complete interpreter costs **303 bits**: its closed parser is 259,
the public adapter is 42, and their application costs two. Nested within
the parser, `G` costs 62, the closed variable-box constructor 90, and `Abs`
51; these nested sizes are not an additional sum. The separate tag and
boxing code outweigh the saved application plumbing. A smaller construction
would need to share those operations with the parser itself.

`tools/self-interpreter/theory/metadata_parser.py` generates
`data/self-interpreter/machines/int303_metadata.{lam,blc}` and checks the
rigid projection, application, and abstraction equations. The complete
interpreter passes the standard battery, and tail-projecting probes return
the exact rigid suffix on both `Omega` and `lambda a.Omega`. The report is
`data/self-interpreter/theory/metadata_parser.json`; current measurements
belong in `docs/STATUS.md`. No candidate enumeration is involved.

Pushing the public consumer
`lambda tag value.C value (tag F)` into the recursive productions removes
the boxes and their tags. On genuine source encodings, the resulting clauses
are exactly `C Xn N`, `C (ABS f) N`, and `C (S(f,g)) N`: the ordinary CPS
interface of the 165. In particular, the separate `G` disappears because
its rebuilt tag is immediately projected to the remainder. This fusion
removes the added representation overhead but leaves no concrete bit saving
over the 165. A further saving would require the tag operation to perform
another necessary control task before consumption. These source-domain
equations do not assert beta equality of the two complete parsers on
arbitrary inputs.

### A shared parser and application generator

Codex's explicit 323-bit construction makes the value's application control
the parser generator itself. It establishes that this sharing is possible;
the added representation still costs more than the 165. Write

```text
F             = lambda e x.x
S(f,h)        = lambda e.f e (h e)
Cell(a,e)     = lambda b r.b a (r e)
A(f)          = lambda e a.f (Cell(a,e))
V_g(f,N)      = lambda k.k g f N
Abs           = lambda g f n.V_g(A(f),n)
Map_f         = lambda g h n.V_g(S(f,h),n)
Box_g         = lambda value tail.V_g(value,tail)

P_g(r)        = g g r r F r
Next_g        = lambda bit rest.
                  (lambda v.bit (v Abs) (v v)) (P_g(rest))
Read_g(r)     = (lambda next.
                  r (lambda bit.bit (lambda unused tail.tail next) Box_g)
                    (r r r)) Next_g

G             = lambda g u v f r.Read_g(r) Map_f
E             = (lambda g C s.
                  (g g s s F s) (lambda q f n.C f n)) G.
```

The `u,v` arguments of `G` are unused. Initial and first-child calls fill
their positions with the already-bound stream variable. For independently
rigid `g,f,R,h,N`, the box application equation is

```text
V_g(f,R) V_g(h,N) ->* g g h N f R.
```

In particular, if `v=V_G(f,R)`, then `v v ->* G G f R f R`. This enters
the same `G` used by `P_G`: after consuming the two unused arguments, it
parses `R` with accumulator `f`. There is no separate application tag
generator. The right box's two fields are ignored; when `R` is the actual
stream beginning with the right operand, that operand is parsed from `R`.
The other box equations are

```text
V_g(f,N) Abs   ->* V_g(A(f),N)
V_g(h,N) Map_f ->* V_g(S(f,h),N)
V_g(f,N) (lambda q value tail.C value tail) ->* C f N.
```

For correctness, retain the ordinary variable closures `X_n(N)` and define
the canonical closure with its actual source suffix by

```text
D(var n,N)    = X_n(N)
D(lambda M,N) = A(D(M,N))
D(M L,N)      = S(D(M,quote(L) ++ N), D(L,N)).
```

Each `D(M,N)` is syntactically a lambda abstraction. Therefore
`S(F,D(M,N)) ->* D(M,N)` by beta reduction: `S(F,h)` reduces to
`lambda e.h e`, which beta-reduces to `h` when `h` is lambda-headed. This
last equality is not asserted for an arbitrary rigid `h`.

For arbitrary terms `f,N`, structural induction on the source proves

```text
Q_f(quote(M) ++ N) ->* V_G(S(f,D(M,N)),N),
where Q_f(s) = G G s s f s.
```

The two unused fields can be changed freely. In particular `P_G=Q_F`, so
the lambda-headed observation gives
`P_G(quote(M) ++ N) ->* V_G(D(M,N),N)`.

For a variable, the whole-stream reader returns `V_G(X_n(N),N)` and
`Map_f` gives the result. For an abstraction, the induction hypothesis on
its body gives `v=V_G(D(M,N),N)`; the second tag selects `v Abs`, and the
common `Map_f` finishes the recurrence. For an application `M L`, put
`R=quote(L) ++ N`. The first parse gives `v=V_G(D(M,R),R)`, and the
second tag selects

```text
v v ->* G G D(M,R) R D(M,R) R
    ->* V_G(S(D(M,R),D(L,N)),N).
```

The last reduction uses the induction hypothesis on `L`, after ignoring
the two unused fields. The common `Map_f` finishes the outer recurrence.
The public consumer returns `C D(M,N) N`; the ordinary closure/environment
induction gives `D(M,N) ->* lambda z.M` for closed `M`, using the same
`X_n`, `Cell`, `A`, and `S` semantics as the 165. This handwritten proof
establishes the exact contract without normalizing the source program and
therefore includes divergent sources.

The application equation is source-correlated: it does not preserve
pointwise semantic application for independently chosen boxes, nor does the
projection extracting the constant `G` field preserve application. Thus it
does not meet the constant-control obstruction's hypotheses. The full
internal values depend on payload and remainder, and `G G` is the
accumulator parser, not the complete public interpreter `E`.

The closed generator costs 262 bits, the public adapter 59, and their
application two, totaling **323**. In the generator's actual binding frame,
its five binders cost 10, the `next` let four, the reader 73, NEXT 124,
and the common map plus its application 51. These sizes sum to 262.
The explicit triple boxes, their consumers, and the accumulator map
outweigh the eliminated separate tag operation. This is a construction
demonstrating sharing, not a size lower bound or a smaller interpreter.

`tools/self-interpreter/theory/shared_tag.py` generates
`data/self-interpreter/machines/int323_shared_tag.{lam,blc}` and checks the
rigid box equations, the standard battery, and exact suffix extraction on
`Omega` and `lambda a.Omega`. Its report is
`data/self-interpreter/theory/shared_tag.json`; current measurements belong
in `docs/STATUS.md`. No candidate enumeration is involved.

## Swapping a closure's two arguments is not an exact involution

A tempting wrapper swaps a closure's environment and source-argument
positions:

```
J f = lambda a e. f e a.
```

However,

```
J (J f) ->* lambda e a. f e a.
```

For a rigid variable `f`, the right side is beta-normal and distinct from
`f`. It is an eta-expansion, not a beta inverse. This is also visible on
closed terms: with `Omega = (lambda x. x x) (lambda x. x x)` and
`f = lambda e. Omega`, the two expressions reduce respectively to
`lambda e a. Omega a` and `lambda e. Omega`. Their only remaining redex is
the self-loop in `Omega`, so they have no common reduct.

Restricting the input to closures that always already expose two leading
abstractions would make the swap an involution on that domain. Raw variable
closures do not satisfy this restriction: evaluation can return an arbitrary
runtime argument. Enforcing such a domain therefore requires a changed
value representation and a beta-exact root decoder.

## Recursion entered through Scott handlers

Two explicit constructions move recursive entry to the input stream's
Scott eliminator. The direct form costs 206 bits; sharing the self-application
inside its generator gives 196. Both have handwritten correctness derivations
and pass the bounded battery and divergent-source suffix probe. Their
canonical sources are `data/self-interpreter/machines/int196_stream_handler`
and `int206_stream_handler`, each with `.lam` and `.blc` encodings. The
reproducer is `tools/self-interpreter/theory/stream_handler.py`, and current
results are in `data/self-interpreter/theory/stream_handler.json` and
`docs/STATUS.md`.

### Equations


Use the current semantic constructors:

```
A(e)   = lambda env arg. e (lambda x y. x arg (y env))
B(e,f) = lambda env. e env (f env).
```

Define a generator whose two final inputs are an already-exposed bit and tail:

```
H = lambda h c b r.
      b
        (r (lambda d s.
          s (h h (lambda e.
            d (c A(e))
              (lambda t. t (h h (lambda f. c B(e,f))))))))
        (c r (r r r)).

E = (lambda h c s. s (h h c)) H.
```

The direct source is precisely this term. The shared source replaces the body
of `lambda h` in `H` by a let `p = h h`, then uses `p` at both recursive entry
sites. That ordinary beta expansion reduces the wire size by 10 bits.

For the argument, write

```
P_c = lambda s. s (H H c).
```

Then unfolding the generator on a Scott cell gives

```
P_c (cons b r)
  ->* b
        (r (lambda d.
          P_(lambda e. d (c A(e)) P_(lambda f. c B(e,f)))))
        (c r (r r r)).
```

This is the ordinary 168-bit parser recurrence, with the Scott elimination
performed at the call site:

* A variable has `b = F`. Its closure is the raw unary tail `r`, and
  `r r r` reduces to the remainder after the variable's terminating zero.
* A constructor has `b = K`. Reading `r` exposes its second tag `d` and the
  first subterm stream. That subterm is parsed with the displayed
  continuation.
* For `d = K`, the continuation returns `A(e)` and the first parse's remainder.
* For `d = F`, it parses the second subterm at that remainder, then returns
  `B(e,f)` and the second remainder.

The existing closure denotation induction therefore applies unchanged.
This is a handwritten correctness derivation and a finite battery result;
these two terms do not have separate Lean proofs.

### Cost and limitation

The input supplies the next tag and tail, but it does not supply the recursive
handler. The control cycle is `h h`. A recursive parse now needs the adapter

```
lambda stream. stream (h h continuation)
```

at every boundary where the old parser could be applied directly to the
continuation. Sharing `h h` helps, but those adapters remain. This route
changes the placement of recursion rather than removing its control cost,
and neither term improves the 165-bit record.

The elementary cross-application identity explains why unary skipping is
cheaper:

```
(cons b r) (cons d t) ->* b d t r
s s ->* b b r r.
```

On `b = F`, the second equation continues as `r r`; on `b = K`, it stops at
`K r`. This loop needs no evolving constructor continuation. A general
parser must carry that continuation as well as the handler that acts on the
next stream.

Hoisting the skip through this distributed protocol does not recover the
165's saving. The root adapter and both recursive adapters each need a
whole-stream skip. The directly derived formula costs 220 bits; no search
is needed to see that this arrangement is larger. The shared-generator
construction above does combine semantic application and parser entry,
using a larger boxed interface. A protocol that makes such sharing cheaper
than the 165 remains open.

## Reproduction

`python tools/self-interpreter/theory/erased_skip.py --battery` checks the
symbolic identities and the four complete variants. Their source and wire
encodings are `data/self-interpreter/machines/int_skip_*.{lam,blc}`; the
results are `data/self-interpreter/theory/erased_skip.json`. Current measured
verification is in `docs/STATUS.md`.
