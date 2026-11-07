# Proposed source-eta cut: price checked, law transport not formalized

This is not used in the certified inventory or its 580-source remainder.
It is the most promising next source reduction I found.

## Statement and exact price

Let `C[λx. P x]` be a full-law one-hole reader with x absent from P, using
capture-avoiding notation. Eta-contracting this occurrence to `C[P]`
preserves scope and the single source j. If it also preserves the reader
laws, it contradicts global weight minimality, since

    w(C[λx. P x]) - w(C[P])
      = 6 + F_nonj(P) + 4 h(P) > 0.

Here F_nonj counts P's free leaves other than the distinguished source j,
relative to this subterm; h counts j. Other binders captured from C count
as ordinary free leaves. This is **kernel-checked** in `EtaPrice.lean` as
`eta_context_price` (written as `6 + freeLeaves(P) + 3 occ_j(P)`) and
`eta_context_strict`, for arbitrary terms and source contexts, with no
reader or normality hypothesis. Its axioms are propext and Quot.sound.

## Proposed law transport [handwritten; not kernel checked here]

Every target of a rigid reader law is both beta-normal and eta-normal:
`r j`, and `c U_(n-1)(N) N`. Each Scott cell has the shape `λf. f b tail`,
which has no eta redex; K and F have none either. This is special to the
reader targets: arbitrary eta-equivalent interpreters need not meet an
exact beta contract.

The required reduction lemma is the following oriented postponement
property, not merely beta-eta confluence:

    M ->eta M',   M ->beta* T
    imply some T' with M' ->beta* T' and T ->eta* T'.

A handwritten proof proceeds by commuting the marked eta contraction
through a beta reduction, then induction over the beta sequence. Disjoint
steps commute. A beta step duplicating or erasing the argument duplicates
or erases the eta residuals on the T side. A beta step inside the eta
function transports by congruence and substitution. In the critical
application `(λx. P x) A`, both routes reduce to P A. In the other critical
shape `λx. (λy. B) x`, where x is fresh for the function, contracting the
inner beta step produces the same abstraction up to alpha conversion as
contracting eta. The general substitution transport requires residual
eta contractions and freshness to be stated explicitly.

Apply that lemma to each actual probe `(R Z)` or `(R U_n)`, whose beta
normalization to its target is supplied by the reader law. Eta-normality
of T forces T'=T. Thus the contracted source would satisfy every reader
law. This never assumes R itself has a normal form, and source eta
contraction does not copy j.

I believe this establishes eta-freeness of minimum readers, but I have not
formalized the commuting/substitution lemma or had an independent review.
Consequently this is a proposed handwritten cut, not a kernel-backed
closure of the remaining exceptions. Do not replace this oriented lemma
by the weaker observation that beta-eta normal forms coincide.

## Exact effect on this lane's unresolved catalogue

`eta_inventory.py` identifies a literal source eta redex in:

| Cell | Sources |
|---|---:|
| k=5,d=0 | 0 |
| k=4,d=1,j in A | 53 |
| k=4,d=1,j in B | 278 |
| k=4,d=1,j in pending operands | 15 |
| Total | 346 |

For every source it records the path, contracted source, exact saving and
new weight in `eta_inventory.json`, and checks the price above against the
actual source trees. If the law-transport proof is accepted or formalized,
the boundary remainder drops from 580 to 234: 157 / 5 / 60 / 12 by cell.
Until then, `SURVIVORS.tsv` and `remaining.json` retain all 580.
