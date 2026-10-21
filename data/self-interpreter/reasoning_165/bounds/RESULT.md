# A hand-proved 165-bit bound for a curried-selector reader class

No sub-165 interpreter was found or claimed. No new complete interpreter was
constructed. The sole complete interpreter checked was an unchanged copy of
the current 165-bit reference. The work below is a mathematical lower bound
for an explicitly restricted class, not a new exhaustive search and not an
unconditional optimality result.

## Verified artifacts

`proof_check.py` checks the exact BLC prices and the explicitly derived beta
identities below. It contains no term enumeration. It then checks the copied
reference at two threads, using the repository's unoptimized compiler and
battery. The observed runtime for the entire script was 2.29 seconds.

```text
two-argument diagonal arm, second copy: 14 bits
two-argument diagonal arm, first copy: 15 bits
one-argument diagonal arm: 12 bits
zero-argument diagonal arm: 10 bits
handler m=0: 27 bits
handler m=1: 33 bits
handler m=2: 40 bits
skip: 10 bits
reference reader body: 43 bits
APP lift: 19 bits
cell m=0: 25 bits
cell m=1: 24 bits
explicit cost and beta-identity checks: PASS (no enumeration)
  165 bits  ok=667 skip=1 fail=0  .../bounds/reference165.lam
```

The passing line is for the existing reference, not a new candidate. Later
focused checks also verified the 15-bit known-K repair and all 18 explicit
application-only cases of the strengthened zero-arm proof below. The
lower-bound proofs themselves are the arguments below; the Python checks
verify their witnesses, arithmetic, and those cases, not every quantified
assertion. These are hand proofs, not Lean formalizations.

## 1. Definitions and the scope of the main theorem

Write K = lambda a b. a and F = lambda a b. b. Use j for `next`, c for
`cont`, and s for the whole stream. The reader's ambient frame, innermost
first, is exactly

```text
[s, j, c, p, x].
```

Consider readers `s H S` satisfying all of the following:

1. S has the stop-at-first-zero law: for every k >= 0 and fresh rigid T,
   with s = `1^k 0 ++ T`, S reduces to T. All other ambient variables are
   independent rigid symbols when this law is checked.
2. H is a curried, single-case selector:

   ```text
   H = lambda b r1 ... rm. b A B.
   ```

   A and B may be arbitrary lambda terms, including beta redexes and further
   occurrences of the tag b. They may use their available r_i and ambient
   variables. There are no common arguments after `b A B`.
3. The handler laws are parametric:

   ```text
   H K R R =beta R j
   H F R T =beta c R T
   ```

   Here R and T are fresh independent rigid variables, and s, j, c, p, x
   are also independent rigid variables. In particular, the handler cannot
   exploit s being a Scott cell, or R containing T as a stream suffix.

The 165's reader belongs to this class. Its zero-branch law is diagonal:
the two supplied tails are the same R. They are NOT assumed independent.

**Theorem.** Every reader in this class costs at least 43 bits. With the
165's remaining syntax unchanged, every such complete interpreter costs at
least 165 bits. The reference attains both bounds.

This class is narrower than arbitrary `s H S` readers, and much narrower
than all readers using the current NEXT interface. The restrictions above
are assumptions, not consequences of the interpreter contract.

## 2. Elementary cost facts

For any term, including an open one, let L and A count its abstraction and
application nodes and X be the sum of zero-based variable indices. Then

```text
size = 2 L + 4 A + 2 + X.
```

A required free ambient variable at 1-based position d contributes at least
d-1 to X, even if its occurrence has been moved outside all local binders.
Beta reduction cannot introduce an absent free variable.

Two small facts handle possible beta-compressed branches:

* A term with at most one syntactic abstraction cannot normalize to two
  leading abstractions. If it has a beta redex, that redex consumes its only
  abstraction and its argument contains no abstraction to copy; if it has
  no redex the claim is immediate. The same argument shows that a NON-normal
  term normalizing to even one abstraction must contain at least two
  abstraction nodes.
* A non-normal term whose normal form has an application must have at least
  two application nodes. With only one, the redex consumes the sole
  application, and there is no application in its body or argument to copy.

Applying a term to fresh rigid variables cannot conceal non-normalization
inside its resulting normal form. After its leading abstractions are
consumed, substitution of rigid variables merely renames variable leaves;
it creates no beta redex. This also holds for a non-injective renaming such
as replacing two variables by the same fresh R. Thus the normal forms in
the following classifications are forced by the stated laws.

## 3. The diagonal arm: an exact normal-form classification

Suppose Z has no free R and

```text
Z R R =beta R j
```

for fresh rigid R, with j and every other ambient symbol rigid. Then Z has
exactly one of the following beta-normal forms:

```text
lambda u v. u j
lambda u v. v j.
```

Proof: a normal form with no leading lambda cannot acquire the fresh head
R. With one leading lambda, the second supplied R is the final argument of
the result, whereas the required final argument is j. Three or more leading
lambdas leave a lambda after the two applications. With exactly two, the
body must have one of their bound variables at the head and exactly the
single argument j. Identifying the two variables admits exactly the two
displayed bodies.

In the actual arm frame `[b,s,j,c,p,x]`, those forms cost 15 and 14 bits.
No non-normal representative is shorter: it needs L >= 2, A >= 2, and the
required j occurrence gives X >= 2, hence size >= 16. Therefore the exact
minimum is **14**, achieved by `lambda u v. v j`.

This proves a precise version of “the duplicate must be consumed”: under
the rigid, source-independent arm law, both leading lambdas are forced in
normal form, and introducing beta redexes cannot make the arm cheaper.
The next argument also covers borrowing lambdas from the known tag K.

For use below, the corresponding one-argument diagonal law is

```text
Z R =beta R j,
```

where Z may already contain the free R. Its normal forms are exactly
`lambda t. R j` and `lambda t. t j`. In the frame `[r,b,s,j,c,p,x]` their
costs are 13 and 12. A non-normal representative has L >= 1, A >= 2,
X >= 3, hence size >= 15. The exact minimum is **12**.

With both r and t in scope, requiring `A[t:=r] =beta r j` forces the
normal form to be `r j` or `t j`. The exact minimum in
`[t,r,b,s,j,c,p,x]` is **10**, attained by `t j`. The same bound follows
just from the necessary j leaf, a necessary r-or-t leaf, and an application.

### Borrowing K from the tag does not lower these minima

Now allow the arm to contain b, specialized to K in the zero branch.
Other ambient variables remain rigid, including s. The 14-bit bound still
holds. Here is a complete small-syntax argument, with no term enumeration.

For a hypothetical arm of size at most 13, the required j occurrence gives
X>=2, hence `2L+4A<=9`. If the arm does not contain b, the previous proof
applies. If it does contain b, both b and j must be leaves, so A>=1.

* A=1: b and j are the only two leaves, and every explicit local lambda is
  vacuous. The term is an outer chain of vacuous lambdas around an
  application of two such chains, ending in b and j in either order. If
  the function-side chain ends in j, the result is j-headed. If it ends
  in b and has a lambda, the j argument is erased. Otherwise its head is
  K and it returns a constant abstraction chain ending in j. None can
  return `R j` after two fresh R arguments.
* A=2: the cost inequality forces L=0. The two non-j leaves have combined
  cost at most five, so they are b,b or b,s. For b,b,j the six trees
  `(b b) j`, `(b j) b`, `(j b) b`, `b (b j)`, `b (j b)`, `j (b b)`,
  after b:=K, reduce respectively to K, j, `j K K`, a constant two-lambda
  function returning j, a constant function returning `j K`, or
  `j (K K)`. None satisfies the diagonal law. For b,s,j there is only
  one K in an application-only tree over rigid s and j. If K is the
  head it is applied at least once, leaving at most one leading lambda;
  otherwise the head is rigid s or j. It cannot have the two-lambda
  normal form forced by the diagonal law.

These exhaust the possible costs. Thus reuse of K still cannot beat 14.
The known repair `b (lambda v.v j)` costs 15, consistent with the bound.

For the one-argument arm, a hypothetical size at most 11 has X>=3 and
therefore `2L+4A<=6`. A term mentioning both b and j must have exactly
one application, with those two leaves. The same vacuous-chain argument
rules it out. The tag-free case was already bounded by 12. Thus the
12-bit minimum also survives arbitrary use of b:=K. The nullary 10-bit
minimum uses only required free-leaf costs, so allowing b changes nothing.

Consequently the next table allows arbitrary additional tag occurrences
inside both arms. In the one branch b:=F, only the required independent
free leaves are used to establish the B bounds.

### Stronger standalone result: the whole zero cell does not beat 14 either

Keep the actual arm frame `[b,s,j,c,p,x]`, but now substitute BOTH

```text
b := K,
s := cons K R = lambda f. f K R,
```

where R,j,c,p,x are independent rigid variables. Any arm Z satisfying

```text
Z[b:=K,s:=cons K R] R R =beta R j
```

still costs at least **14 bits**. This lets the arm exploit the actual
whole input cell and its already-stored R, as well as the known K.

The same budget inequality `2L+4A<=9` holds below 14. Cases with neither
b nor s use the original rigid proof. A one-application term involving s
has precisely the leaves s,j, so again all its explicit lambdas are
vacuous. A lambda on the function side that ends in s erases the j
argument. Without that lambda, s applied to `lambda^k.j` reduces to
`j K R`, `j R`, or j for k=0,1,2. Other orientations are j-headed.
Outer vacuous lambdas cannot change any of these into `R j`.

For two applications, L=0 and the only possibilities are the six b,b,j
trees already treated and the twelve b,s,j trees. Four latter trees have
j as their function head immediately. The other eight reduce as follows,
before supplying the final R,R:

| Tree | Reduct after substituting K and cons K R |
|---|---|
| `(b s) j` | `cons K R` (j erased) |
| `(b j) s` | `j` |
| `b (s j)` | `lambda u. j K R` |
| `b (j s)` | `lambda u. j (cons K R)` |
| `(s b) j` | `K j` |
| `(s j) b` | `j K R K` |
| `s (b j)` | `j R` |
| `s (j b)` | `j K K R` |

All retain a wrong rigid head after the final applications, except the
first, which has erased the required j. This exhausts the costs below
14. The existing `lambda u v.v j` attains 14. The 18 application-only
cases were directly normalized as a focused check of this hand case split.

This stronger standalone result does not make j or the recursive parser
non-rigid, and it does not resolve the variable branch's stream/suffix
correlation. It therefore does not remove the scope restrictions of the
full reader theorem.

## 4. Price every currying cut of the handler

There are only three possible cuts. m >= 3 leaves an outer lambda after
applying H to b, R, and T, contradicting either handler law.

| m | Cheapest zero arm A | Cheapest one arm B | Dispatch/prefix | A | B | H |
|---|---|---|---:|---:|---:|---:|
| 0 | `lambda u v. v j` | `c` | 8 | 14 | 5 | **27** |
| 1 | `lambda t. t j` | `c r` | 11 | 12 | 10 | **33** |
| 2 | `t j` | `c r t` | 14 | 10 | 16 | **40** |

The zero-arm prices, including reuse of b:=K, were proved in section 3.
The one-arm bounds do not
assume normal syntax: the laws require, respectively, the free leaves c;
c and r; and c, r, t. Their exact leaf prices plus the necessary number of
application nodes give 5, 10, and 16. Each displayed B attains the bound.
The prefix price is the literal cost of its m+1 lambdas, tag occurrence,
and two applications.

Thus currying one tail into H costs at least six extra bits; currying both
costs at least thirteen. Allowing arbitrary beta redexes INSIDE the arms
does not evade these bounds. This is a costed separation statement for the
two roles, rather than an assumption that the arms have the reference form.

More generally, if j and c occupy ambient positions d_j and d_c before b
is bound, the three handler minima are

```text
22 + d_j + d_c,
28 + d_j + d_c,
35 + d_j + d_c.
```

At the reference positions d_j=2, d_c=3 these are 27, 33, and 40.

## 5. The skip costs at least ten bits, without a normal-form restriction

Every term below ten bits has at most one application, by the size formula.
A syntactic outer lambda cannot return the fresh rigid suffix T. An atom
cannot do so either: s is a Scott cell, and other ambient atoms are rigid
and different from T.

If there is one application U V, each of U and V is a chain of lambdas
ending in a variable. A lambda-headed U can only leave a lambda or return
one of those variable/abstraction-chain values; none is the hidden T.
A rigid U other than s gets stuck with the wrong head. Thus only `s Q`
remains, where Q costs at most five bits.

Test just s = `0:T`. If Q is an ambient rigid variable q, the result is
`q K T`; if Q=s, the result is `K T`. The other possibilities within five
bits are `lambda u.u` and `lambda u.s`; they yield `K T` and `T K T`,
respectively. None is T. This proves the lower bound ten.

At ten bits, a two-application term has L=X=0, so its three leaves must
all be s. The two possibilities are `(s s) s` and `s (s s)`. On `0:T`,
the latter is `T T`, so fails. With one application, the only additional
candidate that passes `0:T` is `s F`; it returns the immediate tail and
fails `10:T`. Hence `(s s) s` is the unique solution through ten bits.

For completeness its law is proved by induction on k, not by the finite
checks: for s=`0:T`, `s s ->* K T`; for s=`1:r`, `s s ->* r r`.
Consequently `s s ->* K T` for every `1^k0:T`, and `(s s) s ->* T`.

The reader's two applications and source occurrence cost six bits.
Sections 4 and 5 therefore give **6 + 27 + 10 = 43**. All other syntax in
the 165 costs 122, yielding the claimed conditional **165** bound.

## 6. An independent 19-bit bound for the fully parametric APP lift

In the actual lift frame `[g,f,b,c,p,x]`, suppose a term V satisfies

```text
V E =beta f E (g E)
```

for a fresh rigid E, with all frame variables rigid. Then **size(V) >= 19**,
with no syntax restriction on V.

First, V has the unique normal form `lambda e. f e (g e)`. It must normalize
because application to a fresh variable normalizes. With zero leading
lambdas its final supplied argument would be E, whereas the required final
argument is `g E`; with two leading lambdas one would remain. One leading
lambda forces the displayed body. Its size is 19.

For a possible non-normal V, at least two lambda nodes are necessary by
the elementary fact in section 2. At least three application nodes are
also necessary. To see this without assuming size-monotone beta reduction,
if x occurs q times in B, contracting `(lambda x.B) Q` changes the number
of application nodes by

```text
-1 + (q-1) A(Q).
```

An increase would require q>=2 and A(Q)>=1, hence at least
`1 + (q-1) + A(Q) >= 3` applications already in the redex. Therefore terms
with at most two applications cannot normalize to a form with three.
Finally the required free f has ambient index 2, so X>=1. Consequently

```text
size(V) >= 2*2 + 4*3 + 2 + 1 = 19.
```

This supplies an analytic proof of the parametric lift minimum, rather
than relying on its exhaustive-search record. It does NOT show that a
contextual APP replacement, or a changed value representation, costs 19.

## 7. A second costed comparison: the cell currying cut

The single-case grammar with b used only at its outer dispatch, now in
frame `[a,e]`, gives a small exact
comparison for cells satisfying

```text
D K N =beta a,
D F R =beta R e,
```

with a,e,N,R independent rigid variables. Require
`D = lambda b r1 ... rm. b A B`, with b used only at this dispatch.
Only m=0,1 are possible. Their exact prices are:

| m | A | B | Prefix | A | B | D |
|---|---|---|---:|---:|---:|---:|
| 0 | `lambda u.a` | `lambda r.r e` | 8 | 6 | 11 | **25** |
| 1 | `a` | `r e` | 11 | 4 | 9 | **24** |

The nullary-arm minima are forced by required free-leaf occurrence costs.
For m=0, the normal forms of the two arms are forced as displayed.
Non-normal representatives of the first arm cost at least 9 (a lambda,
an application, and the required a occurrence); those of the second cost
at least 14 (a lambda, two applications, and the required e occurrence).
Thus neither improves the listed prices.

The cell and reader favor different cuts: binding the remaining argument
before dispatch saves one bit in the cell, but costs six in the reader.
This explains a concrete limitation on reusing a single curried selector
shape for those two jobs. It is not a theorem against every shared helper.

## 8. Exactly where the broad proof attempt stops

The unresolved step is NOT optimizing A or B inside this class; their
prices above are proved even with beta redexes. It is showing that an
arbitrary cheaper reader can be brought into the single-case grammar
without increasing its BLC size. I do not have such a theorem.

In particular, the main result does not cover:

* use of s as a Scott cell inside an arm;
* dependence on the real variable-tail relation `R=1^(n-1)0:T`;
* extra common arguments after `b A B`, or a different outer reader head;
* using the real parser or NEXT implementation where the proof assumes a
  rigid neighbour;
* moving, sharing, or changing syntax outside the 43-bit reader.

Several of those are exactly the ways the 165 escaped the old module
grammar. In particular the current proof does not discharge the record's
capped joint-reader candidates. Nor does it establish a decomposition
theorem for every self-interpreter.

Additional tag occurrences inside A and B ARE covered: borrowing K from
the zero tag cannot lower either diagonal-arm minimum at these budgets.

My read: simply changing the number of tails bound before dispatch, or
beta-compressing the independent arms, is mathematically closed in this
class. A sub-165 reader needs a correlation that those laws deliberately
erase, or shared syntax crossing the selector boundary. The most concrete
remaining correlation is that the same Scott stream supplies both a value
selector and the stop-at-zero tail. That is a target for a construction,
not evidence that one exists.

## 9. Complete-interpreter ledger

| File | Bits | Observed battery | Idea/status |
|---|---:|---|---|
| `reference165.lam` | 165 | `ok=667 skip=1 fail=0` | Unchanged copy of the known hoisted-skip reader; witness for the conditional bound only. |

No other complete interpreter was constructed. No sweep, hole search,
external consult, package installation, or repository modification was
performed. All created files are in the assigned scratch directory.
