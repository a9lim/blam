(•̀_•́) **Verdict: sound as a composition of the stated lane results.** I found no uncovered s-spine shape or incompatible minimality hypothesis. The conclusion is precisely **no global lexicographic minimum full-law one-hole reader of weight below 46 is a literal s-spine**. It is not an exclusion of every s-spine reader below 46.

This is a composition audit with two small reproduced checks, not a fresh verification of every archived inventory or a new kernel-checked exhaustion theorem. The large inventories and their previously recorded certificates remain dependencies.

1. **Exhaustiveness**

Assume R is a global minimum under (weight, source lambda count, source-j depth), w(R) <= 45, and literally R = lambda s. s A1 ... Ak.

- k=0 is impossible: this source has no j and fails the laws. Thus there is a first operand H=A1, and write the remaining operands as T1...Tq, with q=k-1.
- Source-j depth cannot be zero, because the outer stream lambda encloses the entire source. Depth02 Results A/D, together with the hoisting/count bounds for larger depths, exclude depth >= 2 under this global minimum hypothesis. Hence the depth is exactly one. The open depth-zero families in depth02 are irrelevant to a literal s-spine.
- At depth one, j cannot occur under any further source lambda. In particular, a literal-lambda first operand is automatically j-free.

The remaining partition is exhaustive:

| First operand H | Applicable closure |
|---|---|
| Literal lambda, hence j-free | If its body has a source redex, loop section 6 restricts every such redex to 2-5 uses, and handlerlet excludes all those sources. Otherwise use d1open, with its partial-selector exception supplied by loop section 6. |
| J-free and not a literal lambda | Firstop sections 3 and 5 exclude every possible source redex anywhere in H. The remaining H belongs to the redex-free first-operand skeleton coverage of d1open. |
| Contains j | Firstopj, including its inherited bare-j-argument result from firstop section 5.4 and the beta-normal-reader exclusion. |

The bare variable heads do not create another case. H=c or H=j gives the wrong persistent zero head. H=s makes the unary result N-headed, or leaves a lambda when insufficiently applied, since U_n U_n =beta K N. The j-free cases necessarily have q>=1 because the unique source j must be in a trailing operand. Firstopj permits q=0 and explicitly partitions inner versus outer pending operands, so k=1 is not omitted.

For a j-bearing nonliteral H, flattening its left spine gives exactly the three alternatives in firstopj section 2.4: a lambda-headed application with j in its first argument; the same with j in a later pending argument; or an s-headed application with j in an operand. J cannot be in the lambda body at depth one. Arbitrary arities are bounded by the original source prices, not by a presumed semantic handler arity.

The dependencies are acyclic: depth reduction; d1open plus loop's missing partial-selector case; literal-handler closure; j-free nonliteral closure; j-bearing closure. The beta-normal-reader result is an additional explicit dependency of firstopj, not something proved by the final s-spine conclusion.

2. **Hypotheses and reductions**

The substantive hypotheses agree. I inspected the live definitions in `lean/Blc/SelfintSourceCost.lean`: `ReaderLaws` at line 197 quantifies over every unary length; `MinimumReader` at line 248 minimizes over that full-law class with exactly one source j. The cheaper probe predicate `SelfintClass.Reader` is used for refutations: a theorem `not Reader R` refutes a full-law reader as well. It is not used to promote a passing finite test into full reader laws.

There is an important naming distinction, but it is handled correctly: repository `LexMinimumReader` contains only weight and lambda-count minimality. Firstop's `JBarePrices.lean:20` defines the extra `DepthMinimum` premise explicitly, and firstopj's `strict_hoist` requires it. The three-coordinate global minimum in this audit supplies that premise. Without the depth tie-break, the strict hoist filters would not follow as stated.

The weight convention also agrees: j is priced at zero plus four per enclosing source lambda; c and ordinary variables pay their actual indices. `SelfintSourceCost.weight_eq_class` identifies the generalized weighted syntax measure with `cost + 4 depth`. At depth one the weighted price equals ordinary raw wire price, explaining firstopj's use of a four-bit raw j leaf. Local depths in the operand formulas exclude the outer stream lambda; the whole-source constants restore its charge.

The replacements need not remain s-spines. This is legitimate because minimality is global over all full-law one-hole readers:

- A j-free contraction preserves one source j and all reader laws. Its exact price and lambda-count change determine whether it contradicts minimality.
- Contracting a j-bearing argument can duplicate j. The lanes do not apply one-hole minimality directly to that contractum: they either hoist all copies behind one source j, or use selective restoration. `ReaderLaws.hoist` explicitly supplies the full laws and one-hole count.
- In firstop's strict sink argument, equality preserves all three ordering coordinates and produces a literal-handler reader. That replacement really is another global minimum, so handlerlet applies. The j-bearing sink case deliberately does not reuse this strict equality exclusion.
- Depth02's corrected `gen3b.py` exempts nonlinear contractions whose argument contains j. This avoids treating a many-hole contractum as an eligible smaller reader.

The finite semantic quotients used in helper checks are also legitimate exclusion devices. Replacing an operand by a cheaper source with the same finite probe meanings preserves those necessary equations. An empty finite-probe search excludes full-law solutions; it does not assert all-n equivalence of the representatives.

3. **What the minimum chain actually proves**

The displayed conclusion in `docs/classical/self-interpreter/class-bound.md:306` is exactly “no minimum reader below 46 is an s-spine.” The open-docket text at lines 451 onward retains that qualification.

The stronger statement does not follow from this chain. Given an arbitrary hypothetical s-spine reader below 46, a globally smaller full-law reader could have a root let or a let directly under the stream lambda. Choosing a global minimum does not preserve the original s-spine shape. Conversely, when the starting reader itself is a global minimum, any strictly improving full-law one-hole replacement contradicts minimality immediately; there is no obligation to exclude that replacement's source family separately.

A useful editorial clarification would be to define “minimum” once near the beginning of section 3 as the global three-coordinate minimum. The current statement is correct under the supplied definition; this is a clarity improvement, not a missing mathematical case.

4. **Spot checks and evidence limits**

**Selective restoration, firstopj section 2.1.** I checked the semantic replay argument and rederived its price. After the marked contraction, label its m j leaves separately. Confluence supplies a finite reduction from this contractum to the required zero normal form. Exactly one label supplies its sole j. On every unary input no label survives. Replacing the other source leaves by locally scoped variables preserves the same reductions: rigid leaves never supply a contracted lambda, and their replacements are erased wherever their residuals were erased. The retained label is fixed from the generic zero run, independently of unary length. This preserves every unary law, not merely the tested lengths.

Raw contraction contributes `(m-1)a + F M -4-2m-G`; retaining the hole at additional depth d adds `3d`; removing the other copies saves `M-d+2(m-1)`. Their sum is exactly `(m-1)a + (F-1)M +4d-2-4m-G`. Replacing d by `min(L_D,M)` weakens the necessary filter, so it cannot discard a valid minimum.

I reproduced the independent small-syntax validator with all writes redirected here: **21,855 ordinary sources, 1,681 j-bearing sources, and 95 actual selective-contraction price checks passed**. Runtime was 0.036 s, peak RSS 27.7 MB. Results are in `validate.json`; the wrapper is `spot_validate.py`. The semantic replay existence argument remains handwritten; `Selective.lean` correctly exposes it as a premise rather than claiming to prove it.

**Missing partial selector, loop sections 6.1-6.2.** The exact price `w=20+x+a+b` and unary reduction `R U_n ->* U_(n-1) A B` give the stated sufficient helper bounds. If j is in A/B, x>=2 and a+b>=24 imply 46. If j is in X, x>=4 and a+b>=22 imply 46. No zero-law or minimum assumption is needed for this particular family.

I inspected the helper's constructor/quotient logic and its cutoff treatment. The discarded operands contain identified unsolvable subterms, not merely terms that exhausted fuel. Genericity permits cheaper replacements within the finite necessary-equation problem, preserving the one-hole count. I rechecked all **11 recorded cutoff patterns covering 19 operands**, using 17 bounded head-cycle checks; every one passed. Runtime was 0.001 s, peak RSS 21.1 MB. Results are in `partial_cutoffs.json`; the wrapper is `spot_partial.py`. I did not rerun the 89,511-operand inventory.

All new checks stayed below 100,000 terms/states, two minutes, 1 GB, and two threads. Only `tmp/round4/review_spine/` was written. No large inventory, Lean rebuild, engine change, or external consult was performed.

<oai-mem-citation>
<citation_entries>
MEMORY.md:98-101|note=[prior evidence-boundary guidance only; audit conclusions use live sources]
</citation_entries>
<rollout_ids>
01a15a33-f488-7bb0-8621-9b3b22448e52
</rollout_ids>
</oai-mem-citation>
