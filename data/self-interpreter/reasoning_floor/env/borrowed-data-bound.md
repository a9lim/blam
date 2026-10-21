# A scoped bound for borrowing input data

This is a handwritten origin-and-size argument, not a Lean theorem. It
extends the rigid cell/lift bounds by permitting actual supplied Scott input
data inside the candidate. It does **not** identify all correct environment
protocols with these rigid laws.

## Exact class and conclusion

Write

```
K = lambda x y.x
F = lambda x y.y
cons b r = lambda h.h b r
Cell(a,e) = lambda b r.b a (r e)
Lift(f,g) = lambda e.f e (g e).
```

A *data loan* is K, F, or a finite Scott bit stream with a fresh rigid tail.
Any finite collection of such loans may be made available as ambient
variables. Their bits and lengths may be chosen favorably for the proposed
construction; they need not be treated as opaque. Their tails, however, are
independent of the semantic parameters and the locally bound variables.
Inlining a literal lambda term in the candidate is ordinary source code,
not a loan. A parsed closure, parser, or NEXT implementation is not a loan.

Price the candidate's own BLC source, with loans priced as ordinary ambient
variable references. The cell's frame starts `[a,e,...]`, innermost first;
the lift's frame starts `[g,f,...]`. Loan variables and any additional rigid
ambient variables occur farther out. These are the 165's actual respective
frames after ignoring unused ambient binders; restoring those binders can
only increase costs.

**Cell theorem.** If a candidate C satisfies, for fresh rigid a,e and the
chosen loans,

```
C(a,e; loans) =beta lambda b r.b a (r e),
```

then its source costs at least **24 bits**.

**Lift theorem.** If a candidate V satisfies, for fresh rigid f,g,

```
V(f,g; loans) =beta lambda e.f e (g e),
```

then its source costs at least **19 bits**.

The bounds allow arbitrary source beta redexes. They are attained by the
ordinary cell and lift without loans. With the other 122 bits of the 165's
frame retained, borrowing input data while preserving these two exact laws
cannot yield a sub-165 interpreter.

The cell hypothesis is deliberately stronger than Boolean lookup alone.
For example,

```
Curried(a,e) = lambda b.b (K a) (lambda r.r e)
```

satisfies `Curried(a,e) K n = a` and `Curried(a,e) F r = r e`, but is not
beta-equal to `Cell(a,e)` for a rigid non-Boolean b. It lies outside the cell
theorem. The complete 171-bit candidate in this lane uses this distinction.
In particular, this note proves neither a lower bound for every lookup cell
nor a lower bound for every changed value representation.

## Origin facts

Expand the data loans and color every original candidate lambda,
application, and variable occurrence *code*. Color the inserted data *data*.
Origins are retained under substitution, copying, and reduction.

1. Every data-origin application has an argument which is an unchanged
   Boolean or unchanged suffix of a loan (up to lifting beneath binders).
   These arguments contain no code-origin occurrences. Indeed the only
   applications in the inserted data are `h b` and `(h b) r`; neither b nor
   r contains h or any surrounding source binder. Their only possible free
   tail is rigid and independent. Subsequent substitutions therefore cannot
   insert code into those right operands.

2. Data-origin binders remain affine. A Scott binder has its one head
   occurrence and unchanged fields. K's outer binder has one occurrence;
   its remaining binder is erasing even if a source term is substituted
   into the body. F's remaining binder is the closed identity. In
   particular, no data-origin lambda can become a live lambda capturing
   fresh semantic parameters or a local code binder.

3. In any subtree, if it contains k occurrences of a particular code-bound
   variable, it has at least k-1 code-origin applications. More generally,
   the number of code-variable leaves is at most one plus its code-origin
   application count. Data applications have a code-free right child by
   fact 1, so they contribute only unary edges to the tree connecting code
   leaves. Lambdas also contribute unary edges. Only code applications can
   join two such branches. This proves the leaf inequality directly at
   every reduction state.

4. With at most one code lambda in the initial source, there can never be
   two surviving code lambdas. Data binders cannot duplicate it. Before
   its first contraction it is the sole occurrence and therefore cannot
   also occur in the disjoint argument of that contraction. Contracting it
   removes the last code lambda. This is a one-lambda observation, not a
   general assertion that beta reduction cannot copy lambdas.

The displayed normal forms of Cell and Lift contain no data-origin
application: every one of their application arguments mentions fresh
semantic parameters or local code binders. Their live capturing lambdas
cannot be data-origin either. Consequently Cell requires three surviving
code applications and two surviving code lambdas; Lift requires three
code applications and one surviving code lambda.

## Three-application conservation

Let A count current code-origin applications. As long as A <= 3, a beta
step cannot increase A.

For a code-origin redex with a code lambda, let u be the body's code
application count, v the argument's count, and k the bound-variable
occurrence count. The count changes by

```
(k - 1) v - 1,        with u + v + 1 <= 3 and k <= u + 1.
```

The change is at most zero. Equality requires exactly

```
u = 1, v = 1, k = 2,
```

and the redex uses all three code applications. A code-origin redex whose
lambda is data-origin strictly decreases A, because that binder is affine.
A data-origin redex cannot increase A: its argument contains no code by
origin fact 1. This proves the conservation claim. In particular, a source
with at most two code applications cannot produce either target.

There is an additional restriction for the cell's three-application case.
Suppose a reduction starts with A=3 and reaches Cell. It must keep A=3
throughout. Consider a hypothetical first contraction at a code-origin
application. It must be the equality case above. The body has exactly two
code-variable leaves, both the variable being substituted; the context has
no code applications and cannot contain another code-variable branch.
All surviving occurrences of the independent free parameters a,e must
therefore be in the argument. That argument has one code application and
at most two code-variable leaves, so its two leaves are a and e. Every
remaining code lambda in body, argument, or context is vacuous: there is no
leaf left for its own bound variable. Copying this argument therefore
cannot produce a live code lambda. Data lambdas cannot supply the target's
live captures either. This contradicts the cell target.

Thus in a successful three-application cell construction **no code-origin
application is contracted**. Data-origin contractions may consume a code
lambda on raw data, but cannot copy code or move an a/e-containing payload
under a new code binder. Every target code binder and every a/e occurrence
retains its original source ancestry, possibly with intervening ancestors
removed.

## Cell accounting

The open-source size identity is still

```
size = 2L + 4A + 2 + X,
```

with zero-based indices measured in the displayed ambient frame.

Origin facts 2 and 4 force L >= 2. Three-application conservation forces
A >= 3.

* If A=3, the preceding argument excludes all code-application
  contractions. The target's a and e occurrences must already have been
  beneath its two surviving code lambdas in the source. They contribute
  index excess at least 2 and 3 respectively. The occurrence of outer
  target binder b beneath inner target binder r contributes at least one
  more. Thus X >= 6 and the size is at least
  `2*2 + 4*3 + 2 + 6 = 24`.

* If A>=4 and L>=3, the size is at least `6+16+2=24` immediately.

* The only remaining possible sub-24 case has L=2, A=4, X<=1.
  The required free occurrence of e consumes at least one excess bit.
  It must therefore occur outside every source lambda. So must every a
  occurrence, and no more distant ambient variable can occur. All bound
  occurrences have index zero. Every lambda subterm is consequently closed
  in isolation. This property is preserved by beta reduction: an outer
  substitution cannot enter a closed nested lambda. It rules out the
  target's open capturing lambda subterms. There are no loan references in
  this case, since their base indices are at least two.

* A>=5 with L>=2 already costs at least 26.

These cases exhaust every source below 24 bits.

## Lift accounting

Here L>=1 and A>=3 by the same origin and application-count facts.

* If L=1, the sole code lambda must survive; contracting it would leave
  none, since the data cannot duplicate it beforehand. Both required free
  occurrences f,g must already lie under this surviving binder. In frame
  `[g,f,...]` they contribute index excess at least 1+2=3. Thus the size is
  at least `2+12+2+3=19`.
* If L>=2 and A>=3, the syntax costs at least 18 and the required free f
  occurrence contributes at least one excess bit. The size is at least 19.
* If A>=4 and L>=1, syntax alone costs at least 20.

This proves the claimed 19-bit bound.

## Verification boundary

`check.py` checks the attained module costs, seven fixed beta identities,
the non-equality of the curried and canonical cells, two full two-worker
batteries, and suffix extraction on Omega and lambda-Omega. It does not
implement an origin calculus or machine-check this lower-bound proof.

The origin lemmas and the equality case of the three-application argument
are the parts to formalize or independently review before promoting this
handwritten bound to an authoritative repository theorem. No exhaustive
search, external consult, or Lean run was performed in this lane.
