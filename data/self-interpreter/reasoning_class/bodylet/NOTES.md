# Bodylet lane progress

Read BRIEF, BRIEF5, current class-bound section 3, handlerlet REPORT, bodyredex REPORT 3-5 and the types shared-let split identity. The older memory only supplied orientation; live sources supersede its old unverified-162 status. No consult/delegation will be used.

## Exact source shape and first cuts
R = lambda s. ((lambda x.B) A) C1...Cq, one j at depth 1.
Thus B has no j, and j is in A at local depth zero or in one C at local depth zero. Source w = 10+a+b+p, p=sum(2+cost(Ci)), j priced zero. B >=4m-2+M+2L_B, giving a+M+2L_B+p <=37-4m. m=2,3,4 and A contains a lambda are imported from bodyredex, with its stated handwritten/computer/kernel boundaries.

When j is pending, first contraction delta=(m-1)a+(F_A-1)M-4-2m-G_B >=0. A already has a lambda, so its lambda-count tie does not strengthen this particular first-let inequality for m>=2. Every internal j-free redex is also filtered: delta>=0, with equality allowed only if (uses-1)*L(arg)-1>=0. In particular zero-use impossible and linear charge strictly positive.

When A carries j, use bodyredex 5.5's exact contraction+root-hoist delta=(m-1)a+q_A*M+m-4-s_B+m*c_A+c_pending >=0; q_A counts free s/c. No normal form argument and no multi-hole invocation of BN46.

Types L4 only bounds gain relative to a role-split source when x uses have disjoint role support. It supplies no unconditional numeric cut here; do not impose one. NeededHead rules out a lone x head, already covered by m>=2, but does not alone discard x-headed nonlinear B.

## Additional exact cuts (handwritten)

1. Let sinking: in any j-free redex (lambda y.D)E, follow application children as long as every y occurs in one child. Sum the outward leaves in the other children. If positive, sinking saves exactly that capture sum (generalization of SelfintLetSink's AppContext identity to the local lexical frame); a minimum forbids it. This also filters the displayed first let, and implies the existing two-operand requirement for s-headed B.
2. Nested j-carrying redex, necessarily at stream depth one: (lambda y.D) E, j in E at local depth zero. Set e=cost(E), q=#s/c in E, u=#y in D, M=sum use depths, s_D=#s in D, c_E=#c in E, and c_out=#c outside the entire redex in the whole source. Contract then hoist all j copies to a fresh root binder. Exact whole-source change is (u-1)e+q M+u-4-s_D+u*c_E+c_out. The source lambda change is (u-1)L(E). Thus require change >=0, and >=1 if (u-1)L(E)=0 because then the hole depth strictly falls 1 to 0. This works without source normalization and leaves one hole.

The component DP carries the least required external c count for every nested j-carrying redex, subtracting c siblings on its j path. It includes arbitrary source redexes, not beta-normal source restrictions.

After these cuts all 17 nonempty m=4 cells fit under 100,000 (largest 84,800); all redex-headed B cells are empty. The total 210,595 is across disjoint semantic cells, not a single check. No semantic checks have run yet. Cardinalities only: 1.56 s, 98.6 MB. m=3 counting next.

## Further proof cuts

- Independent adjacent binders/arguments: R=lambda s.((lambda x y.D)A)C Cs swaps x/y and A/C at exact delta uses_y(D)-uses_x(D), preserving laws, source lambdas and j depth. Bodyredex Followup.exchange_price/exchange_join already kernel-check the identities. Thus lambda-headed B must use its leading binder >=m times. This empties the m=3,4 lambda-headed cells; no enumeration is needed there after the cardinality recurrence is zero.
- x-headed B with A rigid c/j-headed fails zero, as does lambda-chain-headed A whose eventual source head is the rigid c. Too few arguments leave a lambda; enough expose c. Other operands cannot change a persistent rigid head.
- Import the already established zcore exclusion of a source s I anchor anywhere, and zerolam's literal j-let parent / closed Y j exclusions; no new all-reader theorem is asserted for these imports. The latter currently changes no counts after the local filters.

After these cuts m=3 has exactly one over-cap cell (x-headed B, j in A, first c in A): 113,064. It is left unenumerated while the under-cap cells are checked. m=4 all cells fit. No arbitrary subdivision of over-cap cells.

## Compositional cuts instead of splitting over-cap source cells

For x-headed B with m>=2, at least one argument is passed to A after the first source contraction. On the zero input, if A has any persistent rigid head other than r, or r already has an argument, the final head/arity cannot be r j. A weak-head check of just the helper catalog therefore rejects these entire products; resource exceptions remain eligible. For (m=3,head=x,j=A,c=A), 23,481 helpers reduce 113,064 source products to 4,605. The full latter check rejects 4,601 by zero/U1 mismatch and leaves 4 exceptions for Lean.

For the largest m=2 cell, a prior handwritten zero-head grammar cut makes the helper catalog fit: a c/j-headed term, any lambda tower over one, an application whose function has that property, and s applied to a handler with that property cannot head a zero reader. A constructor-count recurrence carries this property without generating trees. It reduces the 266,251-helper catalog to 85,258; the complete helper check takes 104.32 s / 116.6 MB, retains all 37 resource exceptions, and leaves 32,061 source products. Their complete check takes 2.81 s, rejects 31,975, and retains 86 exceptions. No >100k helper/source check was run.

For j in A but B s-headed, rigid shielding gives the analogous cut: A[Z] headed c, j with >=1 argument, or r with >=2 arguments cannot release the sole j into r j from a j-free context. Every residual j stays behind that persistent forbidden rigid spine, until its entire copy is erased. This extends the named-atom Safe invariant in loop/Shield.lean (here handwritten, including j-headed spines and arbitrary trailing operands). A lambda, bare j, bare r, or r with one operand is retained. 36,000 helpers reduce the 116,083-source cell to 2,246, all rejected without exceptions.

The two j-pending m=2 cells admit a further interface: for A[Z] with HNF lambda^h.r args(q), the number k of source arguments must satisfy k>=h and q+k-h=1; a bound head requires k>=h. Cutoffs retain the unconstrained interface. For the c-only-pending cell this leaves 136,718 sources, still over cap, so it was NOT enumerated. Its pair catalog (A,B), however, has only 7,898 entries: p>=7 reserves both c and j in pending operands. Checking the pre-pending head on both probes and retaining every cutoff will further constrain pending arity. This is a complete compositional helper check, not division of a large reader run into chunks.

## Final nonlinear closure

All 52 final nonempty semantic cells have complete checks. Their final inventory is `final.json`; the early `check-4-lam-A-A.json` and the provisional `runs.json` are not the final manifest. Static over-cap cardinalities were never used as a source search: complete helper/interface cuts reduce all five offending cells under the cap. Final source total across the separate cells: 746,914; wrong zero 718,306; wrong unary-one 5,948; exceptions 22,660; survivors zero.

Every exception now has a compiled individual `¬ Reader` theorem. `manifest.json` gives the exact `(check file, exception index, Lean module, theorem)` bijection, checked by `final_audit.py`, including exact source syntax. Counts: 21,937 head-prefix loops, 423 absent rigid leaves, 27 wrong rigid heads, 4 template recurrences, 237 mixed-beta cycles, 16 delayed recurrences, 16 growing-helper recurrences. All 33 certificate modules (Exceptions0..29, Extra0..1, Residual) compiled successfully; generic modules Certificates, Special, Grow and Prices compiled too. Largest final compile 22.69 s, 1.044 GB (Lean cap is 2 GB). Exception theorem axioms are propext and Quot.sound; Prices.local_hoist_price/minimum_local_hoist also use Classical.choice.

The final 16 difficult sources share the exact arbitrary-list recurrence: G_W(X)=lambda y.X y W; A_T=lambda x.x G_W(x) T. Then A_T A_S -> A_S G_W(A_S) T ->beta* A_S A_(S++W) T. A finite weak-head clock strictly decreases at the first step and cannot increase through the intervening beta steps or stripping pending operands; strong induction refutes every A_T A_S. `Grow.lean` kernel-checks this for arbitrary term lists W,T,S. The last exceptional source has a finite mixed cycle, found in the same residual audit. `Residual.lean` connects all 17 exact source terms to the generic refutations.

Validation already passed: four positive reader controls (including nonnormal source and copied-j reader), 1,265 independently generated tiny components/767 admitted, 156 source samples and 312 named-normalizer agreements, 81 exact contraction+hoist price controls. No full interpreter was constructed or spliced, so there is no new interpreter battery claim. Optional linear nested-head branch remains untouched. Final report will state mixed handwritten/computer/kernel evidence, not a fully kernel-checked 46-bit theorem or unconditional 162 optimality.

REPORT.md is finished. Final audit re-run passed: all 52 cells covered, all 22,660 exception sources matched exactly to compiled theorems, 37 successful Lean modules including 33 instance files, no missing/duplicate certificate and no sorry/new axiom. Report totals match final.json. Primary lane scope (nonlinear body lets) is complete; optional linear nested-head case is explicitly left open. Final handoff should link REPORT.md, final.json, manifest.json, Prices.lean and Grow.lean, and retain the mixed-evidence boundary.
