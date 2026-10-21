( •̀_•́) **Verdict: correct.** I found no substantive gap or error in the handwritten 37-bit lower bound. In particular, the width-loss step is valid under the six-leaf allocation, the vacuous-binder split is complete, and all six growing families have valid, substitution-safe head-divergence proofs. This verdict concerns the handwritten theorem; the supplied Lean file proves finite reduction clauses, not the complete lower bound.

Reviewed `../global/PROOF37.md`, 556 lines, SHA-256 `d9b11e5c90b003c1fb435a3a0022d44bad4ee15ab8f2df4d308201e8a18d3236`. Locations below refer to this version. I did not consult another agent or run a term enumeration.

**Gaps or errors found: none.** The following records the checks and the reasoning at the potentially fragile steps.

1. **Contract and structural dependencies — lines 30–58.** The actual `IsSelfInterpreter` definition in `lean/Blc/SelfintProof.lean:1030` uses closed sources, independent rigid continuation/suffix variables, and beta joinability. It includes divergent sources. The arguments do not silently replace this with directed reconstruction on divergent inputs.

   I independently extracted the first page of the supplied publisher-preview PDF. Printed p. 406 explicitly states the width obstruction used here: a closed term beta-convertible to S must have a subterm with three distinct free variables. This is the stated consequence in Statman's [*Two Variables Are Not Enough*](https://doi.org/10.1007/11560586_32). I checked the statement, not the complete proof of the published theorem.

   The application to `E K stream(S,I) I` is sound: all added operands are closed and have width one, and their applications introduce no new free support. The internal version is also sound. Substituting closed width-one terms for the two public variables removes those variables from the support of every surviving body subterm; inserted subterms cannot supply width three. Thus the required three variables must be bound inside the literal body.

   I checked the exact head-arity argument in `head-decomposition.md`. Reflection of head normalizability through application uses substitution stability of defined head steps. Three surviving leading lambdas are impossible even without normalizing the body. A one-lambda closed head normal form, after invocation, has the whole nonempty stream as its last rigid-head argument, so cannot give the required rigid suffix. The two-lambda continuation-headed case must have exactly two arguments.

   I inspected and successfully rechecked both requested Lean modules, `SelfintNonlinearChain.lean` and `SelfintWireCost.lean`. Their statements match the uses here, including preservation of the full interpreter contract under contextual beta reduction. The chain predicate genuinely excludes all arrangements with nonlinear binders on one ancestor chain. The internal nonlinear requirement follows either from the body's failure of that predicate or from `selfInterpreter_two_inside_interface`. For a literal interface, the internal width witness and incomparable pair require four internal live binders and six internal leaves. The two live public binders add two binders and two leaves, and the continuation occurrence adds an index unit separate from the internal witness. Thus `L>=6,V>=8,X>=4`, giving the stated 46-bit floor.

2. **Counting and isolation of the fourth binder — lines 80–112.** Three support variables give three live binders on one chain and index sum at least `2+1+0=3`. The incomparable nonlinear pair forces a fourth live binder and at least six leaves. Seven leaves already cost at least `2*4+4*7-2+3=37`; six abstractions already cost at least `2*6+4*6-2+3=37`. Hence only `(L,V)=(4,6),(5,6)` remain.

   Five live binders would need seven leaves once the two nonlinear binders are counted, so exactly four are live. The six leaves force multiplicities `2,2,1,1`. This also proves that the fifth binder, when present, is vacuous.

   The off-chain nonlinear binder d cannot contain a chain binder without becoming comparable with the chain's nonlinear binder. Any chain ancestor it could capture is affine, and its only occurrence is already needed in the width witness outside d. Consequently d's abstraction is closed in isolation and has exactly its two own leaves. A possible leading source binder is live, affine, and on the width chain. These facts justify the free-occurrence bound used at the first source head redex.

3. **Minimality, width loss, and the diagonal reduction — lines 109–156.** The wire formula is applied to source redexes in their actual surrounding contexts. For `k=0`, the occurrence-depth sum is zero and the contraction strictly shrinks. For `k=1,f<=1`, the change is at most `-6-g`. There is no assumption that arbitrary affine contractions shrink.

   If the first contractor is on the width chain, its body contains the whole width witness and both occurrences of that nonlinear variable. The argument is closed: a possible leading affine variable has spent its sole occurrence in the witness. It must therefore contain d, the only remaining possible live binder. The six leaves leave no pending argument or other live syntax outside these pieces.

   The width-loss conclusion is valid. Substitution inserts closed width-one terms. A subterm internal to an inserted copy has width at most one; a subterm inherited from the body can mention only the two remaining live chain variables, since inserted closed copies add no free support. This is a specific closed-substitution argument, not an invalid claim that width generally decreases under beta reduction. The reduct has width at most two and still satisfies the interpreter contract, a contradiction.

   Thus the contractor must be d and the source has one of the two displayed diagonal forms. The operand-normality argument is also valid: every live operand binder is on the witness chain, so its redex body contains its k own leaves and the other two required variables. The remaining argument has at most `2-k` leaves. The nonlinear case leaves none; the affine case has at most one free occurrence and shrinks. Vacuous redexes shrink separately.

4. **Six normal shapes and finite inventory completeness — lines 160–202, 268–281, 403–411, 475–485.** The witness uses one occurrence of each chain variable below all three binders. Only one additional leaf remains. If it lies above a later binder block, normality fixes its orientation as the function of that block. This gives exactly the six displayed shapes and index sums `3,4,5,3,4,3`; no four-lambda `X=6` case is missing. In the open form the outer variable is affine, leaving precisely the last three shapes.

   The internal-nonlinearity exclusions for the closed middle and the inner families are valid. The open middle-below-inner exclusion uses internal width correctly: each residual copy of A has only two internal binders; outside those copies there are only public variables. Copies do not acquire common internal binding scope merely by occurring in one application tree.

   The residual counts follow analytically. Three distinct leaves have `6*2=12` ordered binary trees. The four-leaf multiset has `12*5=60`, split into 30 a-headed, 15 b-headed, and 15 c-headed trees. For a boxed three-leaf tree, each left-associated ordering admits two normal boxing sites and each right-associated ordering admits one, giving `6*(2+1)=18`. This applies to both boxed families. The count is not inferred from a search returning the expected number.

5. **Inherited 33-bit exclusion.** I checked `capture-width.md:316–476`, including its source-minimality reduction and twelve final layouts. A fixed replay confirms the ten finite head-form cases, including the quoted 8-, 5-, and 4-step reductions. The two eta-based exclusions are legitimate impossibility arguments for the beta-exact contract. Their eta reducts give Omega or the stated three-state head cycle; the cycle terms and the identity-source invocation have no competing eta reduction that could invalidate the argument. Beta-eta confluence separates them from the required beta-eta-normal identity output.

6. **Finite refutations — lines 220–235, 283–326, 417–436, 482–485.** I checked every finite residual against its claimed obstruction, not only that a finite reduction equality exists. The independent checker `v37_fixed_check.py` parses the supplied Lean terms and the fixed named layouts separately, implements capture-avoiding substitution/head reduction without importing the author's Python reduction code, and checks the resulting shapes and payload mismatches. It matched all 108 fixed layouts and verified all 102 finite refutations; the other six are the growing families addressed below.

   In particular, the 24 non-left-spine a-headed 35-bit cases expose a third lambda; the two remaining repeated-state cases have positive periods three and six; the other rigid-head arity exclusions agree with the tables. The b-headed two-payload cases always have an independently decisive fixed N or nonempty stream payload, so no normalization of `N N` is needed.

   I additionally checked the paper's exact payload descriptions, where its chosen reason differs from the JSON's first detected reason: the three fixed-N payload claims in the 34-bit table; `C K stream(I,Ntail)` and `C N C` in the 35-bit table; and both exceptional fixed payloads in the 36-bit table. They are correct. All normal payload inequalities are beta inequalities by uniqueness of normal forms.

7. **Vacuous-binder cases — lines 332–411.** A vacuous binder in D has exactly the stated possibilities. Above d it creates an erasing head redex; around both d leaves it spends two index units and exceeds the budget; around the function leaf it creates an erasing redex. The sole remaining normal form is `lambda d.d (lambda u.d)`, of size 11. Its five listed argument families reduce as claimed: to a smaller interpreter, a wrong one-lambda head form, or an interface with insufficient internal nonlinearity.

   Deleting a vacuous binder from a normal argument preserves normality and the relevant witness/counts. Reinsertion costs `2+freeLeaves(U)` with multiplicity. The base diagonal's 33-bit floor is a syntax-counting fact, so this does not incorrectly assume that the deleted-binder term is itself an interpreter.

   The zero-free-occurrence site is only the entire closed argument. A one-free-occurrence site in a 33-bit base is precisely a variable or the subterm containing the two inner live binders and the single outer-variable occurrence. The displayed three block insertions and their open counterparts cover these sites. Their exclusions are correct. For leaf insertion, the closed middle family retains a one-lambda head form; each inner family contains only one residual copy contributing internal nonlinearity. The open middle family is correctly retained for its separate eighteen-case analysis rather than discarded by the latter argument.

8. **All six divergence invariants — lines 237–266, 438–471, 488–524.** Each is valid for all iteration counts, as a direct symbolic argument:

   - Advancing wrappers: for a word W of length k, peeling its wrappers gives `W U ->^k N U tk ... t1`. Therefore `N W P rest ->^(k+2) N (J_P(W)) tk ... t1 rest`. The wrapper length increases to `k+1`; because `k>=1`, at least one argument remains available for the next macro. The stated initial invocation reaches this set.
   - Pair pumping: with the displayed W and L, the four contractions are `N W S ->^2 W P(W,S) -> P(W,S) N C -> N W S C`. This is exactly `L ->^4 L C`.
   - Forward wrappers: induction gives `F^k(N) U V ->^(2k) N U (K^k V)`. One initial N contraction yields the stated recursive macro in `2k+1` steps. The pending S remains outside that macro, and k increases.
   - Reverse wrappers: expanding `Y=N G(N)` gives `Y P ->^5 Y (K(K P))`. P may be an arbitrary term, so the macro applies again to the new boxed argument without an extra hypothesis.
   - Open middle chain: peeling k J wrappers gives the first identity in k steps and the second in `k+1` steps. The active argument stays immediately after A; all accumulated T arguments and the public stream remain behind it.
   - Open middle pair: `L=A P(A) -> P(A) P(P(A)) -> P(P(A)) A T -> A P(A) T T`, exactly the asserted three-step pump.

   These are head contractions on application spines, not arbitrary reductions inside erasable arguments. All auxiliary binders can be chosen fresh. The equations hold with arbitrary substituted parameter terms, and every displayed head redex persists under capture-avoiding substitution. For the open families, first supply the outer continuation binder; the invariant then runs in the resulting application to the actual stream. Thus substitution of `stream(I,Ntail)` does not interrupt any trace.

   Every macro has positive finite length and stays in its invariant, producing an infinite deterministic weak-head reduction of the invoked candidate. Head standardization therefore rules out a head normal form, and in particular rules out the required normal result `C (lambda z.I) Ntail`. No cap or mere growth observation is being used as a nontermination proof.

9. **Conclusion and checking boundary — lines 528–539.** With the two source inventories exhausted, well-ordering applies; the repository's existing `isSelfInterpreter_intL165` theorem supplies existence. The conclusion of at least 37 bits follows. I did not find a missing 34-, 35-, or 36-bit syntax family.

   Direct validation completed in this review:

   ```text
   lake env lean -j 1 /Users/a9lim/Work/blam/tmp/overnight/global/FiniteChecks.lean
   lake env lean -j 1 Blc/SelfintNonlinearChain.lean
   lake env lean -j 1 Blc/SelfintWireCost.lean
   python tmp/overnight/verify/v37_fixed_check.py
   ```

   The Lean commands ran from `lean/` and all exited zero. The finite file rechecked in approximately 1.13 seconds; the two structural modules in 0.26 and 0.44 seconds. The independent Python replay took 0.0075 seconds: 152 fixed clauses, comprising 144 global clauses and eight unrelated remainder clauses; all 102 finite layout refutations passed, including 13 recorded normal-payload mismatches. The checker uses no candidate generation and treats no normalization cap as a negative result.

The full syntax classification, semantic exclusions, and six parametric invariants were checked as mathematics above. The complete 37-bit theorem remains handwritten. I did not re-prove Statman's external theorem, audit every transitive Lean-library dependency, or rerun the known interpreter batteries; none of those was used as a substitute for the global exclusion argument. The proof and its supporting global files were left unchanged.
