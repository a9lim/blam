**Verdict: correct. I found no error, missing case, unsound use of a certificate predicate, or mismatch between the Lean conclusions and the claimed sources.** The reviewed increment establishes **40 bits** as a handwritten global lower bound with kernel-checked components. It does not establish a Lean theorem `SelfintSizeBound 40`; the documents state that boundary accurately.

| Requested part | Verdict | Result |
|---|---|---|
| Completeness and handwritten pruning | **Correct** | The literal and application inventories cover the remaining minimum-size cases. Independent template reconstruction gives exactly 1,008 + 2,248 + 1,416 distinct terms. |
| 4,505 finite predicates | **Correct** | Every actual predicate instance has a sound handwritten implication to failure of the exact contract. No cap or failed normalization is used as a certificate. |
| 167 layout exclusions and the two additional uniform lemmas | **Correct** | All statements have the advertised strength and source bindings. All 25 supplied modules rebuild; all nine late residual traces independently replay. |

I accepted the previously reviewed global floor 39, the width-three obstruction, and the incomparable-nonlinear-binder theorem as inputs, as requested. I re-derived every new size-39 pruning step and checked the new arguments against the supplied definitions. The classification conclusions below are mathematical review judgments. The wire matches, replay results, template counts, theorem bindings, and rebuild results are direct checks recorded in this directory. No new general term search was run.

For the literal branch, `literal40.md` correctly uses the **internal** width witness from the preceding literal-interface proof. Equality at 39 forces `(L,V,X)=(5,7,3)`: four live internal binders, six internal leaves, and one use of the outer continuation. The internal witness already spends all three index units. Consequently the continuation occurrence has index zero and lies outside every internal lambda; the two incomparable nonlinear binders are internal and each has exactly two occurrences. There is no vacuous binder at equality.

Traversing applications while stopping at lambda roots therefore leaves precisely the continuation atom and closed lambda components. The width chain must be wholly inside one component; a second component consumes the only remaining internal live binder. There cannot be a third component, since every nonempty closed lambda term has a live binder. With one component P, the two application orders are exactly `lambda c.c P` and `lambda c.P c`. With two, incomparability forces the separate one-binder component to be Delta, and the other component N has three live lambdas, four leaves, and index sum three.

The normality argument for this N is sound: a live chain contractor's body contains its own occurrences and the other two witness variables. A nonlinear contractor leaves no argument leaf; an affine contractor leaves at most one free argument occurrence and strictly shrinks. Thus minimum size forces N to be normal. The six-family classification then leaves the 12 outer-before, 12 middle-before, and 60 inner-repeat terms. The two binary trees and six orders of the three distinct atoms give exactly `84*12=1,008`. This includes application contexts that put `Delta N` beneath the continuation, rather than assuming the whole body is normal.

Both uniform semantic lemmas in `Shapes39.lean` are correct and are **additional to**, rather than included among, the 167 term-specific exclusions:

| Theorem | Exact justification |
|---|---|
| `literal_constant_not_selfint` | For every closed P, the identity invocation of `lambda c.c P` reaches `C P quoteI(R)`. Rigid-spine projection would require the lambda-rooted stream to reduce to the rigid variable R. Lambda shape is preserved, so this is impossible. No normality assumption on P is used. |
| `selfint_of_literal_eta` | For every closed P, an exact interpreter contract for `lambda c.P c` transfers to P by an actual beta contraction of each invocation and beta-join transitivity. This is not an eta-conversion assumption. Here P has 33 bits, contradicting the prior floor 39. |

For application roots, the six count triples in `inventory39.md` section 1 are exhaustive. Four live binders and two extra occurrences give `L>=4`, `V>=6`, `X>=3`; imposing 39 bits gives exactly the listed four six-leaf triples and two seven-leaf triples. Five live binders require seven leaves and occur only at `(5,7,3)`; six live binders would already cost at least 45 bits.

The first head contractor has closed spine arguments, so an affine or vacuous contractor strictly shrinks. With four live binders, the earlier width-loss argument still applies, including when three binders are nonlinear: a first contractor on the selected width chain must be its outermost binder a; its closed argument can contain only the separate live binder d. Substitution removes a from every possible width-three witness and inserts only closed width-one syntax. The reduct has width at most two. Therefore the contractor is d, its body contains no chain binder, and the only possible closed argument contains all three chain binders: `E=D N`.

The new five-live argument also works. At `(5,7,3)`, the selected width witness uses the unique index-two occurrence and unique index-one occurrence; all other indices are zero. If a were the first contractor, its closed arguments could contain no positive index occurrence. Removing a eliminates the sole index-two leaf, and insertion of those closed arguments cannot increase the remaining indices. The reduct has all indices at most one, hence width at most two. This correctly excludes a without assuming the old four-live two-operand decomposition.

The normality estimates in section 2 remain valid with the extra vacuous binder available at 39. For a five-leaf N and a twice-used chain contractor, the single-leaf argument can be a variable or a variable under the sole vacuous lambda. There are at most two enclosing live chain binders outside the contractor, so that argument has at most six bits. The wire change is at most `6-8=-2`. For an affine contractor, `f<=2` and local occurrence depth at most three give a change at most `3-6=-3`. Four-leaf arguments use the stronger at-most-one-free-occurrence argument. Redexes in D have vacuous contractors. Thus every operand redex pruned by this argument really shrinks.

I checked each four-live counting and wrapper step separately:

| Slice | Count | Check of the pruning/count |
|---|---:|---|
| `(4,7,5)` | 1,036 | The two extra chain indices are `2+0` or `1+1`. The six Delta counts are `60,60,420,36,60,280`, totaling 916; the two three-use duplicators contribute 60 each. |
| `(5,6,7)` | 324 | Deleting the vacuous lambda preserves operand normality. Reinsertion costs two plus the number of free **occurrences**. The five nonempty site counts are `60,24,84,96,60`; no other base or site has the required charge. |
| `(6,6,5)` | 804 | A zero-charge wrapper encloses a whole closed operand. A D wrapper makes the first contractor vacuous. An N wrapper is erased by the normal two-use D, leaving a strictly smaller term, including when further wrappers remain. With no zero-charge wrapper, both charges are one and the base has X=3. The unordered multisets of admissible original sites give `96+96+612`. Nested wrappers at one site are included. |
| `(5,7,3)`, four live | 84 | The sole wrapper has zero charge. A D wrapper is excluded; Delta and the right-associated three-use D erase a closed N wrapper. The left-associated three-use D instead leaves `N0 N`, so these cases cannot be pruned that way. All 84 are correctly retained. |
| `(4,6,9)` | 0 | The normal four-leaf chain arguments have X at most five. |
| `(7,6,3)` | 0 | All three wrappers have zero charge, so the closed-operand argument applies. |

The closed-subterm claim used here is sound. With only the chain's three live binders in N, every proper chain lambda containing the witness still needs an outer chain variable; there is no proper closed chain component. D has only its own live binder. This is why a zero-charge wrapper must surround a whole operand, up to other wrappers. In the two-use case the complete normal form of D is `lambda d u_1...u_q. d (lambda v_1...v_r.d)`, and substitution of `N=lambda w.N1` with w vacuous indeed reduces to `lambda u_1...u_q.N1`, not to an unaccounted larger application.

The five-live split in section 4 is complete, including the new capture possibilities. The selected witness spends all positive index units. An off-chain binder cannot lie between the three witness binders, capture a chain variable, or put its own occurrence inside the complete chain block. If it is not an ancestor of the chain, its isolated component is I or Delta. The first contractor has no lambda ancestor, so the fifth binder cannot contain it. The remaining locations give exactly these cases:

| Case | Count | Why no additional placement remains |
|---|---:|---|
| A: function contains the chain | 36 | The incomparable second nonlinear binder must be in the argument, making it Delta. The function body uses the atoms d,d,S. Of six contexts, the three with S in function position have a shrinking affine contraction. |
| B: function contains the fifth binder, not the chain | 252 | That binder must be affine: otherwise the only nonlinear pair would be comparable. Its component is I. The three normal contexts on d,d,I give `3*84`; the other three shrink at I. |
| C: chain and fifth binder in the first argument | 936 | The four constructions contribute `72+192+84+588`. All six nonlinear-ancestor contexts are retained. Off-chain Delta insertion uses both orientations at all eight S nodes, including lambda nodes and the root. In the affine cases, every possible redex shrinks, so N is normal: an ancestor gives only `lambda e.e N0`; an off-chain I can only be the argument of one of N0's seven non-lambda nodes. |
| D: two closed spine arguments | 192 | The function is Delta. The arguments are N0,I or S,Delta, with both orders: `2*84+2*12`. A third closed argument would require another live binder. |

For case C's affine normality step, a twice-used chain contractor leaves only one argument leaf, which is a variable or I and has at most four bits. An affine chain contractor has at most two free argument occurrences and local depth at most three. Both shrink. Removing the isolated I or Delta and its parent application recovers N0 or S, respectively; no binding/capture adjustment is being omitted. Thus the insertion descriptions have valid inverses. Cases A-D are disjoint by binder location and total 1,416.

`layout_checks.py` independently re-instantiates these written templates, using a multiset-of-original-sites construction for the two-wrapper slice. It matches each entire source set, not just its cardinality, to `size39-literal.json`, `size39-four.json`, and `size39-five.json`: no missing term, extra term, or duplicate. The reconstruction took about 0.095 seconds. This checks the generator-to-classification correspondence; the handwritten reasoning above supplies global completeness.

The finite-predicate implications in `Finite39Base.lean` and `proof40.md` are sound for all **actual** uses:

| Predicate | Count | Why it excludes an interpreter |
|---|---:|---|
| `chain` | 2,058 | The Boolean is the recursive counterpart of `SelfintNonlinearChain.Chain`. It is checked on a source reduct, which would still be an interpreter. |
| `sourceHead` | 828 | `tag` succeeds only for a head-normal form. Closure rules out zero leading lambdas; three or more survive the two public arguments. One leading lambda gives a rigid C spine whose final argument is the whole stream, not R. With two lambdas and a C head, arity must be two. A stream head is correctly left unexcluded. |
| `three` | 841 | At least one leading lambda remains after applying the two public arguments, incompatible with the rigid C-headed identity target. |
| `smaller` | 439 | An actual beta reduct preserves closure and the exact interpreter contract; its length below 39 contradicts the established floor. |
| `identityHead` | 227 | The open identity invocation must reduce to `C churchFalse R`, with tag `(0,1,2)`. A different head-normal tag cannot change by reductions inside arguments. |
| `checkPayload` | 112 | The prefix reaches exactly `C p r`. The selected component has an actual normal reduct different from Church false or R. Confluence and rigid-spine projection contradict the required target. |
| Total | **4,505** | |

The generic `check` function permits multiple flags, so this audit checked the flags rather than assuming every conceivable combination is sound. All `three`, `chain`, `smaller`, and `sourceHead` instances use the source; every `identityHead` instance uses the invocation. Every payload selector is 0 or 1, and every compared reduct satisfies normality. The change from the earlier closed probe to the open probe is reflected consistently in the invocation, target tag, payload matcher, and traces. No timeout or unnormalized payload appears among these exclusions.

`run_checks.py` independently parses every literal Lean source definition and re-encodes it to the ledger wire. All 4,672 are closed, exactly 39 bits, have the stated live-binder counts and necessary structural properties, and are pairwise distinct across the three parts. The ledger partition agrees with the actual theorem declarations. Its separate reducer replays the stored finite predicates, W/B reducts, and exact identity cycles: **13,199 valid beta steps**, with at most 26 stored steps for a payload normalization. This took about 0.23 seconds. All 4,672 predicate/full-theorem references also compile against **fully qualified source names** in `lean/ExplicitBindings.lean`, guarding against accidental resolution to older identically numbered terms.

The imported `IsSelfInterpreter` is the exact beta-joinability contract for every closed source, including divergent sources, with independent rigid continuation and remainder. The tested source is the genuine identity quotation `0010`; its required value `lambda z.I` is literally Church false. There is no beta-eta weakening or finite-source substitute in the full exclusions.

Of the 167 full layout exclusions, **149 are W/B proofs**: 147 memberships on the sources and two memberships after checked reductions of the identity invocation. The grammar is closed under arbitrary right application, so its source memberships exclude the invocation as required. The new `not_selfint_w_identity` applies nonnormalization directly to the checked invocation reduct. It does not infer interpreter failure merely from the source's lack of a full normal form. The **nine exact identity-cycle proofs** have positive periods and use deterministic head steps of the invocation, with `SelfintFloor.cycle_diverges` and the required identity normal form.

All nine late residual exclusions say exactly what `proof40.md` claims. Their fixed traces were independently replayed by `residual_checks.py` in about 0.019 seconds:

| Source | Verdict | Checked statement/trace |
|---|---|---|
| `literal:180` | Correct | Four-step prefix to `A A quoteI(R)`. `Pair39.no_count` proves that a pair of active atoms cannot have a finite weak-head clock. |
| `literal:276` | Correct | Four-step prefix; 24-node core; three-step pump adds two trailing arguments. |
| `four:0` | Correct | Nineteen-step prefix exposes rigid C with seven arguments. `three_or_more_not_identity` forbids reduction to the two-argument identity target. |
| `four:80` | Correct | Nine-step invocation prefix and four payload steps expose two lambdas followed by a rigid application. `two_lam_false_mismatch` excludes Church false without normalizing its arguments. |
| `four:376` | Correct | One-step prefix; 57-node core; four-step pump adds two arguments. |
| `four:399` | Correct | Eight-step prefix; 33-node core; three-step pump adds one argument. |
| `four:1000` | Correct | Four-step prefix; 73-node core; six-step pump adds one argument. |
| `five:312` | Correct | Five-step prefix; 35-node core; ten-step pump with no added arguments. |
| `five:553` | Correct | Three-step prefix; 48-node core; six-step pump with no added arguments. |

The new active-pair proof handles open captures correctly. `Pair39.n` represents `lambda x.x (lambda y.x y C)`, and `Pair39.j x` shifts the arbitrary term x under its new binder. `n_step` and `j_step` quantify over arbitrary terms, not closed ones. Their conclusions are exactly `A X -> X J(X)` and `J(X) Y -> X Y C`. A selected weak-head step strictly decreases the clock; in the second case stripping the trailing C cannot increase it. Strong induction then excludes every pair, and the prefix theorem excludes the actual identity invocation.

Each of the six pumps has a checked first **weak-head** step and a subsequent beta reduction back to the same core with its stated trailing arguments. `pump_no_count` combines strict decrease for the first step, nonincrease under the remaining beta steps, and projection through trailing arguments. The zero-extra-argument cases are valid special cases. The proof therefore supplies a normal-form contradiction, not merely an infinite arbitrary reduction path. The collected `initialResiduals_excluded` list and all nine fully qualified source conclusions match the ledger.

I rebuilt byte-identical copies of all **25 supplied local Lean modules**, in dependency order with `-j2`, using the repository's existing compiled foundational imports. All passed in **64.25 seconds**. The additional explicit-binding module passed in **5.47 seconds**. The axiom audit reports only `propext` and `Quot.sound`; the local sources contain no `sorry`, `sorryAx`, `native_decide`, new axiom declaration, or unsafe declaration. All 35 recorded lane-source hashes remained unchanged during the review.

The evidence is `layout-checks.json`, `independent-audit.json`, `residual-checks.json`, `lean-rebuild.json`, `explicit-build.json`, `verification-summary.json`, `source-hashes.json`, and the build logs, with the reproducible checking scripts and copied Lean sources beside them. All review-generated files are confined to this directory. I made no external consult and ran no general enumeration. The remaining unformalized work is exactly the global completeness proof and the finite predicates' semantic implications; I found no remaining mathematical case or unresolved gap in the claimed raise from 39 to 40.
