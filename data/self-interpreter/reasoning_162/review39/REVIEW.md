(•̀_•́) **Verdict: the 39-bit lower bound is correct, at the stated handwritten-with-kernel-checked-components level. I found no missing size-38 case, unsound finite exclusion, or mismatch between the 63 Lean conclusions and their claimed source terms.** There is one false sentence in the superseded size-38 proposal in `inventory-audit.md`; the current proof explicitly avoids that error. Its concrete counterexample is below.

| Requested component | Verdict | Boundary |
|---|---|---|
| Completeness of the 1,206 layouts | **Correct** | Handwritten classification, using the reviewed floor 38 and established width/nonlinear-binder obstructions. |
| The 1,143 finite certificate predicates | **Correct for all emitted certificates** | Every predicate was rebuilt in Lean and independently replayed; the semantic implications remain handwritten. |
| The 63 complete Lean exclusions | **Correct** | Actual `¬ IsSelfInterpreter` theorems for exactly the 57 W/B, one pump, and five payload cases. |

**The nonblocking documentation error.** [inventory-audit.md](/Users/a9lim/Work/blam/tmp/round3/floor38/inventory-audit.md:209), lines 209–212, says that in the two-vacuous-binder case the first reduction gives a strictly smaller term. This is false even for normal operands satisfying the stated live-binder, width, nonlinear-branching and size constraints. Let

```text
N0 = λa b c. a (b (c c))
N  = λv. N0
E  = (λd. d (λu. d)) N.
```

Here `(L,V,X)=(6,6,4)` and `|E|=38`. The root reductions are

```text
E → N (λu. N) → N0
38      54       23 bits.
```

The source wire is `01000110001100000000001111001110011010`. The original first step grows by 16 bits. The second step supplies the smaller reduct needed for the argument. [inventory38.md](/Users/a9lim/Work/blam/tmp/round3/floor38/inventory38.md:127), lines 127–133, already gives precisely the corrected multi-step argument and explicitly disclaims a first-step decrease. Thus this is a stale sentence to correct in the supporting document, not a gap in the present theorem. `stale-claim-counterexample.json` records the independently checked example.

**Completeness: structural pruning.** I checked the following steps of [inventory38.md](/Users/a9lim/Work/blam/tmp/round3/floor38/inventory38.md:13) against the exact contract and the earlier proofs.

1. The literal-interface bound really applies to every syntactic `λc.B`, including bodies with redexes. With `Q=stream(S,I)`, the contract gives `B[K/c] Q I =β S`. The closed width-one terms `K,Q,I` cannot supply a width-three witness. A witness therefore uses three variables bound inside B. The incomparable nonlinear pair is also internal, since the outer c is comparable with every binder. At least four internal live binders own at least six leaves; c is live and supplies a distinct seventh leaf. The bound `2·5+4·7−2+3=39` follows. It is legitimate to discard every lambda-rooted 38-bit source, without first normalizing it.

2. Four live binders and six leaves are necessary. Five live binders would require seven leaves because two binders have extra occurrences; even with the minimum index sum three this costs 39 bits. The only 38-bit triples are consequently `(4,6,8)`, `(5,6,6)`, `(6,6,4)`, `(4,7,4)`. No five-live-binder or eight-leaf case is missing.

3. The new first-contractor argument handles the extra capture allowance at X=4 correctly. On an application-rooted closed source, the first syntactic head argument is closed. An affine or vacuous contractor therefore shrinks. If the contractor is a witness-chain binder, it must be the outermost a; b,c and the witness lie in its body. The closed argument must then contain the only remaining live binder d. There is no live binder left for a second closed spine argument. Substitution removes a and inserts closed terms whose subterms have width at most one, so the entire reduct has width at most two. That contradicts the necessary width bound.

4. Thus d is the first contractor. Since that lambda has no lambda ancestor, if it contained any of a,b,c it would contain all three, putting all four live binders on one ancestor chain. This violates the nonlinear-branching theorem. Hence all three witness binders lie in the same closed argument N, leaving no live binder for another closed spine argument. The decomposition `E=D N` is justified; it does not silently reuse the old, now insufficient, claim that X alone forbids capture.

5. Both operands are normal. An internal redex of D has a vacuous contractor. A live contractor x inside N is one of a,b,c, and its body contains the witness and at least two occurrences belonging to the other witness variables. For four-leaf N, k≥2 leaves no argument leaf; for k=1 the argument has at most one free leaf, and the exact wire-change formula gives a decrease of at least six bits. For five-leaf N, k≥3 is impossible; k=2 leaves a single variable argument of index at most one, giving `n−6−g<0`; k=1 has `f≤2`, `d₁≤2`, giving a decrease of at least four bits. Vacuous contractors also shrink. This rules out source compression within either operand.

6. With six leaves, d must occur twice and N has four leaves. With seven leaves, d occurs two or three times; four uses would leave every binder in N affine and destroy the incomparable nonlinear pair. Thus the two three-use duplicators and delta exhaust the relevant D shapes when no vacuous lambda is present.

**Completeness: layouts and vacuous binders.** The six normal four-leaf argument families are exhaustive: the extra leaf lies above b, between b and c, or below c, with the binder choices listed in the table. Their counts are `12,12,60,12,60,60` and their index sums are `3,4,5,3,4,3`. Thus `(4,6,8)` contributes nothing.

For `(6,6,4)`, deleting the two vacuous lambdas leaves index sum at least three. Their total occurrence charge is at most one, so one wrapper has zero charge. A closed proper subterm of either unwrapped operand cannot exist: any live binder of N belongs to the witness chain and needs its ancestors, and D has only its own live binder. Therefore a zero-charge wrapper surrounds a whole operand, possibly together with another vacuous wrapper. Wrapping D makes the first contractor vacuous. Wrapping N gives a smaller reduct after diagonal application. If the other wrapper is in D, the two normal possibilities are exactly `λd u.d d` and `λd.d (λu.d)`; the stated multi-step reductions to `λu.N0` and `N0` are correct. This eliminates the entire triple despite the false first-step claim in the older note.

At `(4,7,4)`, the witness contributes indices 2,1,0. In the delta case the two extra leaves therefore have indices one and zero. The six location pairs give `12+72+60+60+60+420=684`. In particular the 72 include all six normal contexts on the two distinct extra leaves and the inner lambda block, including application arguments after that block; no initial-spine restriction has discarded cases. Each three-use duplicator contributes the 72 four-leaf X=4 arguments. Total: `684+2·72=828`.

At `(5,6,6)`, deleting the unique vacuous lambda preserves normality and the width witness. Reinsertion around U costs `2+free-occurrence-count(U)`, not two plus the number of distinct free variables. In D, the body and argument insertions contribute 72 and 60. In N, the six base families contribute `12+24+24+30+36+120=246` in the order used by the inventory. No function-position insertion can preserve normality. Total: `132+246=378`.

I independently instantiated these fixed templates and admissible insertion positions, without running any candidate evaluation or general closed-term enumeration. The result matches every wire and family in `size38.json` exactly: **828+378=1,206 distinct terms**. This is a check of the executable correspondence; the structural reasoning above supplies completeness. The independent code and counts are in `layout_checks.py` and `layout-checks.json`.

The preliminary pruning also matches exactly: 192 exclusions consist of 102 three-lambda facts, 85 chain facts, three wrong normal payloads, and two wrong source heads. The five exceptions 841,880,887,893,900 have explicit certificates. I found no remaining dependence on the superseded blanket description of these cases as only three-lambda/chain obstructions.

**Finite certificates: semantics and exact instances.** [Finite38Base.lean](/Users/a9lim/Work/blam/tmp/round3/floor38/Finite38Base.lean:8) defines the predicates actually used. They justify the exclusions as follows.

| Predicate/fact | Count | Why it excludes the exact interpreter contract |
|---|---:|---|
| `chain` | 613 | Its recursion is the Boolean counterpart of `SelfintNonlinearChain.Chain`; the theorem forbids it for any interpreter reduct. |
| `sourceHead` | 201 | `tag` succeeds only on a head-normal form. Closure excludes zero leading lambdas; ≥3 leave a lambda after two public arguments; one forces a rigid C spine with the whole quoted stream as its final argument. With two, a C head must have exactly two arguments. |
| `three` | 188 | At least one leading lambda remains after applying C and the input stream. This does not require a normal body. |
| `checkPayload` | 72 | The prefix reaches exactly `λC R. C p r`. The selected payload/remainder has an actual checked normal reduct distinct from Church false/R; confluence and rigid-spine projection forbid the required target. |
| `identityHead` | 59 | The exact closed test invocation must normalize to `λC R. C churchFalse R`, whose tag is `(2,1,2)`. A different head-normal tag is preserved by all later argument reductions. |
| `smaller` | 6 | Actual beta reduction preserves closure and the interpreter contract. A closed reduct below 38 contradicts the established floor 38. |
| `checkCycle` | 4 | A positive exact cycle of deterministic head steps on the identity invocation contradicts the head-termination theorem for a term with the required normal form. |

All emitted `three`, `chain`, `smaller`, and `sourceHead` checks use the source, while `identityHead` uses the identity invocation. Thus no unsafe interchange of the generic check's `identity` flag occurs. The cycle certificates use the invocation itself, not merely failure of E to normalize. The four cycles have positive periods. The payload selector is always 0 or 1, and every compared reduct really is normal. No timeout, fuel exhaustion, or growth cap appears among the 1,143 exclusions.

I parsed all 1,206 literal Lean source definitions independently and matched their full wires to both ledgers. Every term is closed, has 38 bits, and has normal operands. I then independently replayed all 1,143 positive certificates, including their payload paths and identity cycles: **3,906 beta steps**, all valid. The longest stored payload normalization has 14 contractions. The complete check took about 0.066 seconds.

I also compiled explicit applications of every `finite<ID>` theorem with its term replaced in the type by the fully qualified `Blc.Round3Floor38.Size38.e<ID>`. All 1,143 passed. This checks against accidental resolution to the older 37-bit `e448`, `e572`, etc. in the parent namespace, as well as ordinary source/ID mismatches. The global theorem connecting all these executable predicates to `¬ IsSelfInterpreter` has not been supplied, but its handwritten implications above are sound.

**The 63 complete Lean exclusions.** The imported [IsSelfInterpreter](/Users/a9lim/Work/blam/lean/Blc/SelfintProof.lean:1030) is the exact beta-joinability contract, for every closed M, with independent rigid continuation and remainder. The identity specialization uses the genuine `0010` quotation; its required value `λz.I` is literally Church false. No beta-eta relaxation or sampled source contract is substituted.

- **W/B grammar, 57: correct.** [WGrammar38.lean](/Users/a9lim/Work/blam/tmp/round3/floor38/WGrammar38.lean:116) proves both marked and unmarked substitution cases. The unmarked case permits an arbitrary argument, which is necessary when a B-headed lambda is applied. `progress` gives an actual deterministic head step, including under leading lambdas, and preserves B in the empty marked environment. Head normalization therefore rules out a normal form. Crucially, B is closed under arbitrary right application, so the proof applies to `E C quoteI(R)`, rather than inferring too much from E's own nonnormalization. All 57 literal memberships and their complete exclusions are checked. They include 120,122,137,176.
- **Pump 723: correct.** [Size38Pumps.lean](/Users/a9lim/Work/blam/tmp/round3/floor38/Size38Pumps.lean:530) checks the seven-step identity-invocation prefix and the three-step law `T V →³ T (C V)`. The core contains only variables below index two; substituting for the fresh index-two variable establishes the law for every V while fixing C. The first contraction is a weak-head step. `family_no_count` uses strict clock decrease for that step and nonincrease for the remaining beta steps. This proves nonnormalization rather than merely exhibiting an infinite arbitrary reduction sequence. The conclusion is exactly `¬ IsSelfInterpreter e723`.
- **Payloads 124,129,214,224,690: correct.** [Payload38.lean](/Users/a9lim/Work/blam/tmp/round3/floor38/Payload38.lean:12) derives directed reduction to the normal identity target from the beta-join contract, uses confluence after the checked prefixes, and projects the first payload through the rigid C applications. One lambda followed by a rigid neutral term cannot reduce to Church false's two lambdas; two lambdas followed by a rigid application cannot reduce to its bare variable body. The five literal traces in `Size38Residuals.lean` prove the advertised respective shapes. They do not assume normalization of their growing arguments.

The exact residual IDs in the ledger, the literal `initialResiduals` list, and the 63 full theorem statements agree. The partition is disjoint and exhaustive:

```text
1,206 = 1,143 finite + 57 W/B + 1 pump + 5 payloads
1,014 =   951 finite + the same 63 complete exclusions.
```

**Rebuild and scope of verification.** I rebuilt byte-identical copies of all 15 supplied local Lean modules with `-j2`, using the repository's existing compiled foundational imports. All passed in approximately **21.31 seconds total**. The additional explicit-binding module passed in 1.43 seconds. The W/B theorem and the collected 63-term exclusion report only `propext` and `Quot.sound`; the older collected 13-term theorem reports the same. There is no `sorryAx`, `native_decide`, or new axiom in the local development.

The reproducible audit is `run_checks.py`; evidence is `independent-audit.json`, `source-hashes.json`, `lean-rebuild.json`, `AxiomAudit-build.log`, the individual build logs, and the copied sources under `lean/`. The original local Lean sources' hashes were unchanged across the build. All review-generated files are confined to this review directory. I did not run a general search, consult another agent, or rerun the earlier 676-case proof campaign. I treated the reviewed floor 38 and the established Statman width obstruction as inputs, and checked the literal-interface argument and every new size-38 pruning step. The conclusion remains a handwritten global size theorem with checked components; it is not a kernel theorem `SelfintSizeBound 39`.
