# Theorem S adversarial review

Verdict: **correct as a computer-assisted exclusion, after making the omitted case-(c) budget argument explicit.** No counterexample found. This is source review, independently rerun finite searches, and handwritten reasoning; it is not a Lean verification. The minimum-reader corollary remains conditional on the quoted settled depth results, which were read but not re-proved here.

## Required repair to the written proof

The inference “j inside the (c) arm A implies A = j” is not syntactic. Its missing cost argument is short. Since j is in A, deletion leaves a j-free unary core, whose body costs at least 22. The site is at M-depth zero and costs sigma = 15 + |A|. Thus 39 >= |M| >= 22 + 15 + |A|, so |A| <= 2. A composite A containing j at depth zero costs at least 4, while an abstraction above j is forbidden. Therefore A = j. I independently checked all 16,459 j-free terms through cost 21: none satisfies even U1, with no uncertified caps. ccase.py then closes the remaining case.

The zero-law argument excluding j in W is valid by contextual beta-conversion: at zero, (a) becomes r, and (c) becomes A, so the whole source becomes j-free if its unique j was in W. Type (b) puts every occurrence in D under the handler lambda, directly contradicting the depth hypothesis.

For type (b), retain the exact definition from zcore NOTES: the source must contain the application s (lambda x. P). “Direct argument of s” must not be broadened to an arbitrary later operand of an s-headed spine. For the exact definition, s (lambda x. P) at unary reduces to P[F/x] U_(n-1), and every selected x A W can be deleted by congruence, regardless of surrounding redexes or lets.

## Coverage audit

- A source occurrence j T cannot produce the bare j in r j: its residuals remain applied or are erased. Unique-source j rules out the erased alternative. Thus the original path ends R. In the retained-j case of the syntactic theorem, D is disjoint from j, so deletion preserves this path exactly. The empty path is M = j and immediately fails zero.
- All ancestors of j are applications. A path of length ell costs at least 6 + 4 ell in the whole reader: outer lambda 2, j's depth tax 4, and application plus j-free sibling at least 4 per edge. Hence ell >= 8 cannot fit B = 37.
- The X partition is complete: lambda root; bare s/c (immediate failures); or application X1 X2 with X1 = s, c, lambda, or application. The c-headed case fails immediately.
- Untabled narrow.py does permit a needed function-position hole to become a lambda: its prohibition is conditional on betanormal, which these runs set false. Its variable, lambda, and application choices cover the full source syntax. Needed-head failures and rigid-head/arity mismatches persist under refinement. With j fixed in the prefix, open holes are j-free and their minimum cost is 2. The additional lower-bound charge for a missing c is conservative. Thus the usual follow-the-concrete-source completeness argument applies to these searches.
- The filler budget is exact: |M'| <= 31, each template hole has already been charged 2, and expand assigns the shared remaining slack 31 - |template| across all holes. A filler at lambda depth d is enumerated in frame d+2 (local binders, s, c). No j is available in these fillers.
- insert_sites enumerates a superset of syntactic sites: every j-free E at every subterm W, including root/leaves and newly filled positions. E uses the same frame d+2 as W. No lambda is added above W, so j's tax is unchanged, and the added cost is exactly |E|+2. Testing arbitrary E instead of only dispatchers is harmless over-inclusion.
- The automatic cycle check compares identical readback heads and active stack suffixes while tracking the untouched stack base. The handwritten residual cutoffs are uniformly divergent: G = lambda x. x ((lambda y. x) H) and H0 = lambda x. x (I x) both beta-reduce to Delta = lambda x. x x, independently of any filler. Their self-applications are beta-equivalent to Omega, including when further arguments follow.

## Reproduction

No source files were changed. Python bytecode writes were disabled. Scratch runners, JSON results, and logs are confined to this review directory.

- ccase.py: 80,976 terms, exactly 3 cores (costs 22/23/24), 27 insertions, zero hits and zero uncertified caps.
- pathR.py: 253 insertions, zero hits.
- Four X narrowings at B=37, laws U1/U2:
  - lambda-rooted: 12,740 states; one template, zero fuel cuts. Filling its <=3-bit hole gives precisely V and X29.
  - (s _) j: 18,649 states; zero templates/cuts.
  - ((lambda y. _) _) j: 39,754 states; zero templates, one G cutoff.
  - ((_ _) _) j: 45,761 states; zero templates, one H0 cutoff.
- Re-ran every R-ending path of lengths 2 through 7, including the alpha paths, rather than relying on the stored JSON files:

| Path length | Paths | States | Templates | Insertions | Fuel cutoffs |
|---|---:|---:|---:|---:|---:|
| 2 | 2 | 125,891 | 62 | 49,864 | 3 |
| 3 | 4 | 102,044 | 36 | 19,406 | 0 |
| 4 | 8 | 61,833 | 9 | 7,361 | 0 |
| 5 | 16 | 28,284 | 2 | 214 | 0 |
| 6 | 32 | 9,612 | 0 | 0 | 0 |
| 7 | 64 | 2,231 | 0 | 0 | 0 |

Totals: 126 paths, 329,895 states, 76,845 insertions. Every insertion run had zero hits, zero uncertified caps, and zero core caps. All three residual narrowing cuts are the G/H0 families above. The complete partition runner took 21.8 seconds, at most two worker processes. In particular LRR/RLR/RRR reproduce 30,310/21,420/33,621 states and 1,697/916/15,113 insertions.

Positive controls independently recover exactly the weight-46 reader from V j at body budget 40 and exactly the weight-47 reader from X29 j at body budget 41; 250 insertions each, no uncertified caps.

The small xcheck reproduces exactly core20 among 60,427 one-j terms through body cost 22, matching the narrowing template on RR. Its six brute-force fuel caps were independently certified non-solutions. The script's /dev/stdout JSON transport failed in this harness; an in-memory copy using review/xcheck_last.json instead completed. No search logic was changed.

## Construction attempts

Independently checked the weight-39 and weight-40 near misses: both satisfy zero but return c U0 N j on U1. The standard absorbed versions give weights 46 and 47. A type-(c) attempt with composite A = s j weighs 47 and returns j K r on zero, so fails. A cheap handler-self-dispatch attempt of weight 55 still leaves the surplus final j on unary.

I also tried every local one-lambda absorber repair of the weight-39 near miss obtained by wrapping a j-free subterm and replacing any subset of its outward-variable leaves by the new binder, keeping weights <=47. All 76 variants fail. These are construction probes, not a separate completeness claim.

## Boundary on the new generalization in NOTES section 12

The stronger assertion with merely j not in E does not follow from this path proof. If W = j in a function-position E W, deletion can change j's immediate parent from an argument position to a function position. For example the unary core context s (lambda q. c) (s s ((K j) s)) has j in an argument position, but deleting K j -> j gives s (lambda q. c) (s s (j s)), whose j-path ends L. K has cost 7 and is j-free. Both terms satisfy the unary laws; neither is a reader. This is a counterexample to path preservation under the generalized deletion, not a counterexample to Theorem S or to the generalized nonexistence conclusion. Closing that stronger conclusion requires covering the newly possible applied-j cores or an additional lemma excluding them. The stated syntactic-site theorem avoids this issue because zero excludes j in W.
