(•̀_•́) **Verdict: all four claims are correct under the hypotheses actually stated in the proof. I found no counterexample, omitted mathematical case, or substantive proof gap.** The exact-price assertion has the construction-specific quantifier in §8; it is not an equality for every permitted choice of NEXT and knot. The complete 138- and 39-bit theorems remain handwritten.

Reviewed `floor/floor138.md`, `floor/literal-interface.md`, `floor/REPORT.md` §§1–3, `floor/Facts.lean`, and `floor/checks.py`, against `BRIEF.md`, the imported NEXT proof and its review, `SelfintKnot.lean`, `SelfintNonlinearChain.lean`, and the live reference sources. Paths starting `floor/` here are relative to `tmp/round3/`. Reviewed-file SHA-256 values and fixed-check results are in [audit.json](audit.json).

| Claim | Verdict | Exact scope |
|---|---|---|
| (a) `116 + cost(R) + 4d`, and the minimum-size reduction | **Correct** | Equality for the assembly using the canonical 92-bit NEXT and attaining 20-bit knot; a lower bound for every other permitted assembly. |
| (b) Reader bounds `22 / 18 / 17` | **Correct** | Literal source trees, one free `j` occurrence, free variables only `c,j`, and independent rigid reader laws. The preliminary nonlinear/one-lambda lemmas also hold with multiple `j` occurrences. |
| (c) Class bound 138 and membership of 162/165 | **Correct** | The explicit normal-NEXT separator and opaque fixed-point equation are essential hypotheses. Both literal references satisfy them. |
| (d) Literal `lambda c.B` bound 39 | **Correct** | Closed exact interpreters, including the divergent-source contract. No normality or parser-interface assumption on `B` is needed. |

**(a) Exact assembly and the NEXT occurrence charge — `floor138.md:159–170,294–325`.**

Let `q` be Q's size in `[c,p]`, `m` its number of free `c/p` occurrences, `g=ghostCost(T)`, and `k` the number of free holes of T. The general source identity is

```text
|H| = 4 + cost(R) + q + d*m,
|E| = g + k*(4 + cost(R) + q + d*m).
```

Every free parameter occurrence in Q crosses exactly the same `d` reader-local binders. Its bound occurrences do not change indices. The reader's remaining variables retain their original indices because a subtree replacement introduces no binders around nodes outside that subtree. Finally, H is closed, so placement under T's binders shifts no index inside H. These observations justify the literal additive identities even when R and T contain redexes or later duplicate their arguments.

I inspected the imported pruning argument, not just the nine prices. Under source normality and exactly two arguments at every maximal tag-headed spine, selecting an arm cannot create a boundary redex. The size-decreasing simplifications delete syntax without rebinding the surviving leaves. Consequently the free-occurrence lower bound transfers back to the original Q as well as the 92-bit size bound. Removing the unused, more distant ambient `x` does not change either `c` or `p` indices.

The fixed recount gives `(c,p)=(2,2)` for rows 1,2,7,8, and `(2,3)` for rows 0,3,4,5,6, in the report's zero-based row ordering. Thus `m>=4`, and the attaining 92-bit row has exactly `m=4`. With `g=20,k=1`, the assembly identity is exactly `116+cost(R)+4d`. Conversely `q>=92,m>=4,g>=20,k>=1` gives that expression as a lower bound for every member. Every allowed R can use the attaining Q and T, so the equality between the two minima follows; existence is supplied by either reference reader.

There is no flaw in §8's quantifiers. An abbreviated statement claiming equality for **every** allowed T and Q would be false: replacing an attaining T by `(lambda u.T[h]) I`, with u unused, preserves the fixed-point equation and adds eight literal bits. Keep the construction qualifier when quoting the formula.

**(b) Reader algebra and source charges — `floor138.md:73–231`.**

The nonlinear-binder argument is valid. With fresh N, the input contains one free N and the prescribed beta-normal result contains two. The stream cells and bits are binder-affine. Affine contraction preserves affineness and cannot increase free-occurrence counts. Confluence supplies a reduction to the specified normal result from the assumed beta equality. No assumption about the location or operational role of the duplicating binder is used.

The head-normal-form reflection in §3 is also valid. A normalizing application implies a head-normalizable operator. A zero-lambda head form of R would retain a rigid `c/j` head; two or more initial lambdas would retain an outer lambda after one argument. Neither can join `r j`. Thus R's head form has exactly one initial lambda. With only one lambda in R's entire source, any preceding head contraction consumes it and has no lambda-containing argument to copy. Hence the one-lambda case really is `lambda s.B` with B application-only. The zero-lambda case is already excluded by the same head argument.

The application algebra is complete for that case. Write `P=lambda a.a K N` and `S=lambda a.a F P`. Then

```text
S S ->* P P ->* K N =alpha W,
S W ->* W F P ->* N P,
W X -> N,
S (z A1 ... Am) -> z A1 ... Am F P.
```

For a subtree whose two children have already normalized, its operator is S, W, or a rigid neutral. The table covers all three possible kinds of operand of S; W erases any operand; a neutral appends any operand. This establishes normalization and the stated classification by structural induction. Arguments *inside* neutrals can include P and F, but these do not become new top-level results of original subtrees. The proof does not mistakenly exclude those internal arguments.

For a c-headed result, its first argument is either the result of an explicit right subtree, F introduced by opening S on bare c, or an already established first argument. S/W contractions cannot expose a hidden c-neutral argument of another neutral because its head is rigid. Thus its first argument cannot be P. This rules out `c P N` for every application-only B, without a size or fuel bound.

The base source charge is disjoint: two lambdas, two bound leaves of a nonlinear binder, one free c leaf, and the uncharged j leaf force three applications and cost at least 16. The first-redex refinement for an application-rooted reader covers all binder multiplicities:

- **Nonlinear x:** if x were the sole nonlinear source binder, its head contraction would leave an affine term, contradicting the nonlinear lemma for R'. Hygiene and the absence of an enclosing lambda at this first head contraction prevent any new capture-based nonlinearity. Two nonlinear binders give four owned leaves, plus c and j, hence at least 24.
- **Linear x:** the contraction removes exactly one lambda and duplicates no lambda-containing subtree. R' needs two lambdas, so R needs three. The x leaf is separate from the nonlinear pair, c, and j, giving at least 22.
- **Vacuous x:** again R needs three lambdas. The erased argument cannot contain the unique free j, because R' must still expose j. A leaf in that argument is separate from the surviving nonlinear pair and surviving c. With no enclosing source binder, it is either c or internally bound. This gives the same 22-bit count.

These arguments apply the two preliminary lemmas to R' without assuming that R' still has one j occurrence. That is legitimate: neither lemma used uniqueness of j. Source uniqueness is used later in counting R and ruling out erasure of its only j.

For a lambda-rooted R, c crosses the root binder and contributes at least one index bit, giving 17. If equality holds, there are exactly two lambdas and four leaves, with only two bound leaves. The root binder must be live, since otherwise the zero output could not depend on fresh r. Therefore it owns both bound leaves and the other lambda is vacuous. Any stream or c occurrence below that extra lambda would exceed the single available index bit. Its nonempty body must instead contain the unique j; hence `d=2`. Integrality then excludes cost 17 at `d=1`.

The resulting charges `d=0:22`, `d=1:18`, `d>=2:17` and functional bound 118 follow exactly as displayed. No assumption that beta reduction decreases BLC size, and no independent semantic-task charge, entered this reasoning.

**(c) Knot composition, interpreter contract, and membership — `floor138.md:59–71,233–280`.**

The Lean fixed-point hypotheses match the stated opaque equation. Because T has no other free variable, `freeLeaves 0 T` is exactly k, rather than a count including unrelated parameters. The source identity from (a) and `g>=18+2k`, `k>=1` give

```text
|E| >= 18 + 2k + 118k >= 138.
```

One citation should be made more precise: `fixedpoint_hole_multiplicity` proves the cost inequality; the separate `fixedpoint_has_hole` proves `k>=1` (`SelfintKnot.lean:97–108,120–125`). Both are available and checked. This is a citation correction, not a missing mathematical premise.

I independently checked the literal source decomposition: replacing the closed H subtree in each reference leaves exactly `(lambda x.x x) (lambda x.h (x x))`, with one h occurrence and ghost cost 20. Replacing Q leaves exactly one free reader hole. Both extracted Q terms are alpha-identical to the canonical 92-bit form and satisfy the tag restriction. The resulting accounting is

| Source | Reader cost | Hole depth | Q at insertion | H | Full source |
|---|---:|---:|---:|---:|---:|
| 162 | 42 | 1 | 96 | 142 | 162 |
| 165 | 49 | 0 | 92 | 145 | 165 |

Membership for all unary lengths is not inferred from the four tested lengths. For `s=U_n(N)`, direct induction gives `s s ->* K N`, including the base `U_0(N)`. In R162 the zero selection gives `r j`; the variable selection gives `s (lambda dummy.c) (s s j) ->* c U_(n-1)(N) N`. In R165, with `D=lambda b.b (lambda unused r.r j) c`, the zero selection reduces `s D (s s s)` to `r j`, while the variable selection reduces it to `c U_(n-1)(N) N`. These reductions work for arbitrary suffix terms by substitution.

For any member, the opaque equation gives `E =beta H E`. Substituting into the independent reader and NEXT equations yields the canonical recursive parser equations. The finite syntax/environment induction therefore applies, including divergent source programs: it reconstructs their syntax and does not require evaluating them. The class really does contain interpreters, rather than merely syntactically well-priced objects satisfying unrelated local tests.

The proof uses exactly the declared separator: Q is a source subtree independent of reader-local binders; all other reader syntax contains no p; Q is beta-normal, obeys the rigid canonical laws, and uses its tag only with two arms; T obeys the fixed-point equation with h rigid. It does not derive these restrictions from general self-interpreter correctness. Both the proof and lane report state that boundary accurately.

**(d) Literal-interface floor — `literal-interface.md:12–38`.**

The closed term `B[K/c] Q I` is beta-convertible to S by the exact contract and the literal outer contraction. It is the *unreduced substitution result* to which the width obstruction is applied. Its new application roots have empty free-variable support; Q, I, and inserted copies of K have width one. A width-three witness must therefore descend from an original subterm U of B, with support `FV(U) minus {c}`. Those three variables are bound internally to B. This does not assume that width is monotone under beta reduction.

I downloaded and visually inspected the publisher's first page of [Statman's *Two Variables Are Not Enough*](https://page-one.springer.com/pdf/preview/10.1007/11560586_32), printed p. 406. It explicitly states the closed-term beta-to-S width consequence needed here. I checked that published statement, not a reconstruction of the paper's complete proof.

The incomparable nonlinear pair is wholly internal because the outer continuation binder is an ancestor of every other binder. Combining that pair with the three-element witness chain forces at least four live internal binders and at least six internal bound-variable leaves. The continuation binder itself is live by the fresh rigid C output on the identity input; it adds a distinct binder and leaf. The three witness occurrences contribute index sum at least `2+1+0`. Hence `L>=5,V>=7,X>=3` and `2L+4V-2+X>=39`. No node or index contribution has been charged twice.

The full divergent-source contract is relevant to the imported incomparable-binder theorem, which uses Omega. It is present in `BRIEF.md` and the Lean definition of `IsSelfInterpreter`. There is no additional hidden normality, stream-binder, or parser hypothesis.

**Verification boundary.**

- [audit.py](audit.py) passes in about 0.0032 seconds. It invokes only `checks.collect()`, avoiding the supplied script's writing main routine, then independently checks knot reconstruction, hole counts/depths, reader costs, canonical Q identity, tag arity, and each separate c/p occurrence count. It confirms that regenerating the supplied Lean text in memory produces the existing `Facts.lean` byte-for-byte. No candidate enumeration was run.
- Direct `lean -j1` checks passed for `floor/Facts.lean`, `Blc/SelfintKnot.lean`, and `Blc/SelfintNonlinearChain.lean`, using the existing compiled imports. These were not clean rebuilds of every transitive dependency. The fixed file contains the advertised 18 beta traces and 18 size/free-occurrence facts; its computation is connected to `Betas` through the checked stepper-soundness proofs.
- The universal reader proof, imported nine-form classification, composition argument, and 39-bit accounting were checked as mathematics above. The complete 138/39 conclusions are not Lean theorems. I did not rerun the existing interpreter batteries, perform any search, modify the proof lane, or consult another agent. All review writes are confined to `tmp/round3/review138/`.
