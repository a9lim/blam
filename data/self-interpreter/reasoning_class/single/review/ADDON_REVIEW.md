# Follow-up review: small replacements and reverse S2

1. **Small replacements: correct.** Reproduced all three runs: I 30,832, F 16,124, K 12,335 replacements; each has 247 cores, zero hits and zero uncertified caps. Independently rebuilt the expanded core set from the previous review's freshly regenerated P_*.json files plus V j and X29 j: exact set equality, 247 unique cores, nothing missing or extra. All 247 unfiltered expanded cores satisfy U1/U2/U3, so the script's unary_ok filter (which includes U3 although the replacement hypothesis mentions only U1/U2) loses nothing here.

A j-free source subterm is disjoint from the unique j occurrence; saying it is not an ancestor of j makes the required path preservation explicit, but is redundant with j-free in this tree setting. The replacements keep j's path and depth unchanged and save >=8 bits. The reverse enumerates every literal closed I/F/K occurrence and all j-free fillings in the correct frame, at the exact budget.

The stated consequences follow for a genuine cell-bit binder x: the source contains s (lambda x. P), so unary substitution supplies F, and F A = I independently of A. The subterm x A is under lambda x and hence cannot contain j under the depth hypothesis. Its cost is 2+|x|+|A|, giving threshold |x|+|A|>=10. Likewise s (lambda x. x A) = r = s F on unary, including A depending on x; the handler costs 6+|A|, giving |A|>=8. Keep the exact handler provenance, rather than assuming any let-bound x is a bit.

2. **Reverse S2: the restricted computed result is correct; the claimed general S2 exclusion is broken as a proof.** Reproduced 233 cores, zero candidates at body budget 39; with only that budget changed to 47, reproduced 121 candidates, zero hits/caps. The 14 cores omitted relative to the full 247 contain no lambda/lambda redex, so their omission is harmless for this enumerator.

The reindexing Aq = reindex(Ap, dq-dp) is correct for its stated restriction: Ap may use only variables outside the let, and Aq then uses no y or intermediate binder above D. free_min correctly enforces this restriction. What is missing is a proof that all intended S2 cases obey it.

The forward S2 substitution requires two clarifications:

- Even when H = lambda y. y A W, H K = A[K/y], not a raw copy of A unless y is absent from A. Example H = lambda y. y y I gives H K = K. The reverse code cannot reconstruct y-dependent A from the specialized result.
- If D is merely anywhere in P, a selector call generally returns the surrounding context too. H = lambda y. c (y s I) has D = y s I, but H K = c s, not A = s. Allowing every q in the reverse is over-inclusion for the root-D S2 rule; it does not validate a forward rule which replaces g K by A for arbitrary q.

The selector enumeration is also explicitly restricted to closed terms of cost <=9. K suffices when every permitted Y can be replaced by K without increasing cost, preserving the laws and leaving the edited core unchanged. That argument is available for j-free selectors known to cost >=7 and behave as K in both laws, but it must be stated. It does not follow for arbitrary local selector aliases costing 2; the quoted small-selector check was over [s,c], not arbitrary local frames.

Finally, the docstring says pairs are tried, but the code replaces exactly one p in Bp and contains no pair loop. The arithmetic “about 17” is not a multiple-call proof. For root D, hygienic y-independent A of source cost a with f outward leaves, and k disjoint selector calls at depths d_i, the exact difference is

    |M| - |M'| = 6 + sum_i |g Y_i| - (k-1)a - f sum_i d_i.

If |Y_i|>=7, this is at least

    6 + 11k - (k-1)a - (f-1) sum_i d_i.

Thus neither an approximately constant saving nor two A-copies individually >=15 follows from the one-call formula.

There is a cleaner replacement for this particular multiple-call argument, under the same literal selector-size assumption: two disjoint calls cost >=22, and their connecting source constructor costs >=2, so |B|>=24. A dispatcher lambda y.P containing y A W costs >=12 (A and W are j-free, hence each costs >=2). The let application and lambda g add 4. Therefore the let redex alone costs >=40; j lies outside both lambdas, requiring at least one additional application, so |M|>=42. This excludes two disjoint >=7-bit selector calls directly. It does not settle nested selector occurrences or short aliases without further accounting.

No reader counterexample was found. The failures above concern the proposed S2 reduction/coverage, not the nonexistence of all readers below 46. All runs were small, at most two concurrent processes, and all writes were confined to this review directory.
