(・_・) **Verdict: sound as a composition of the stated lane results.** I found no uncovered source shape, inconsistent minimum hypothesis, or circular use of the final body-let/λ-rooted exclusion. The conclusion is about **global minimum full-law one-hole readers under `(weight, source lambda count, hole depth)`**. It does not exclude every λ-rooted reader below 46, or settle the remaining root-let branch.

This is a composition audit with focused reproduced checks. The large inventories, their completeness arguments, and previously certified exceptions remain dependencies; this is not a new kernel-checked exhaustive theorem.

1. **Exhaustiveness of the body-let union**

Fix `R = λs. ((λx.B) A) C⃗`, weight at most 45, with one source j at depth one. B is necessarily j-free: any j inside B would be under both λs and λx. The unique j is therefore in A or in exactly one pending operand, with no further lambda above it.

| Case | Closure |
|---|---|
| x has zero uses | `SelfintLocalCost.minimum_source_non_erasing`. If erasure lost the hole it would violate the laws; otherwise it gives a cheaper one-hole reader. |
| More than six uses | `SelfintSourceFront.body_head_multiplicity`. |
| Five or six uses | bodyredex §3.1. |
| One to four uses, A has no lambda | `minimum_flat_four` leaves `j`, `s s`, `s s s`, `(s s s) j`; the literal-j-parent exclusion and bodyredex §§3.2–3.4 remove them. |
| Two to four uses, A contains a lambda | bodylet's complete nonlinear partition, permitting j in A or C⃗ and arbitrary internal redexes. |
| One use, A contains a lambda but not j | bodyredex §3.5. Thus the surviving linear case has j in A. |
| One use, j in A, B rigid-headed | `Followup.minimum_linear_body_alternatives` excludes these cases outright. |
| One use, j in A, B lambda-headed | A pending operand is necessary; bodyredex §5.3 excludes the case by binder exchange and its bounded check. |
| One use, j in A, B has a nested head redex | bodylin. |

The rigid-head step deserves emphasis: **“the immediate contractum is not normal” alone would not establish the necessary partition**. A rigid-headed B could have a redex inside an operand. The actual `minimum_linear_body_alternatives` theorem is stronger: its s-headed case contradicts the one-operand let-sinking theorem, and its x-headed case contradicts the needed-extra-use theorem. The only remaining source heads are a literal lambda with pending operands or a nested head redex. I inspected and recompiled that theorem.

The nonlinear partition likewise includes B headed by x, s, lambda or redex; a c head fails zero. There is no depth-one j-in-B cell to add. Empty pending lists are allowed wherever the laws permit them. The uniform-helper exclusion is a redundant subcase once bodylet is accepted, not an additional assumption needed to fill a gap.

I also checked the handwritten bottlenecks of bodyredex §3.5. Its split by the number E of B leaves other than x is exhaustive. The E≥2 cost bound exceeds the budget; E=0 requires enough pending operands to remove the lambda tower; E=1 reduces to the stated outward-c, outward-s and internally bound-variable shapes. I found no missing placement of the pending hole in that argument.

2. **Minimum, laws, hole counts and dependencies**

The definitions agree substantively, but their names have different strengths:

- `ReaderLaws` quantifies over every unary length. `MinimumReader` minimizes weight over that class with exactly one source j.
- `LexMinimumReader` adds the lambda-count tie-break. Bodylin's `DepthMinimumReader` explicitly adds the third coordinate. The definition at the top of class-bound §3 supplies all three.
- `SelfintClass.Reader` is a weaker probe predicate. Individual `¬ Reader r` certificates refute a full-law reader because `ReaderLaws.probes` supplies that predicate. No passing probe is promoted to the full laws.

The price conventions agree: the displayed `10+a+b+p` prices the unique j at zero inside components and restores its four-bit depth charge in the whole source. The exact local identities use the corresponding generalized weight, including all residual holes when a contraction copies j.

The transformations preserve eligibility for global minimality:

- J-free contractions preserve the unique hole and all laws. Linear contraction preserves the hole count even when its argument contains j.
- A nonlinear contraction with j in its argument is not compared directly against one-hole minima. Bodylet contracts and hoists all residual j occurrences behind one fresh root binder; `ReaderLaws.hoist` explicitly proves full laws and one source hole. The local hoist tie uses the depth coordinate when lambda count is unchanged.
- The lambda-headed linear case exchanges independent binders and their arguments. It retains the single source A and pending operands, so retains the hole. When the exchanged binder is linear, weight, lambda count and hole depth agree; the replacement really is another global minimum, and the earlier j-free-linear exclusion applies.
- Bodylin replaces **B inside the existing let**. `cheaper_body_not_minimum` lifts the finite reduction through that context and proves preservation of the one-hole count using absence of j in both bodies. B' may duplicate x, while A still appears once in the source. It does not contract the outer let and then incorrectly invoke one-hole minimality on duplicated A.

No source-normal-form assumption is needed for this closure. In particular, the conditional H_nf discussion in bodyredex §§5.4–5.5 is not used to close the remaining branches. The actual dependency chain is the earlier depth/source/flat/local-cost results, bodyredex's reductions, then bodylet and bodylin. The imported literal-j-parent, closed-transport and `s I`-anchor exclusions do not depend on the final body-let conclusion. The tiny-unary-core classification used for `(s s s) j` remains an explicitly external inventory premise, rather than a disguised Lean theorem.

3. **The λ-rooted conclusion follows**

`reader_source_head` applies already to the weaker probe reader and gives three literal source alternatives: s-spine, root redex, first body redex. Its proof excludes a second leading lambda using the zero law; it assumes neither normalization nor minimality.

A λ-rooted source cannot be the root-redex alternative, which is application-rooted. Its unique hole has depth at least one. The imported depth results exclude depth ≥2 for a global minimum below 46, leaving depth exactly one. The audited s-spine composite excludes the first alternative, and the body-let union above excludes the third. Therefore **every λ-rooted global minimum reader below 46 is excluded**.

This inference does not require a minimum replacement to remain λ-rooted. Conversely, choosing a global minimum below an arbitrary hypothetical λ-rooted reader need not preserve that source shape. Root lets remain the unresolved alternative.

4. **Reproduced spot checks**

**Bodylin's eleven bodies.** I recompiled exact copies of `BodyReplacement.lean` and `Bodies.lean` against the existing library. All eleven exclusions passed; their printed dependencies are only `{propext, Quot.sound}`. Independently, both normalizers reproduced all eleven body reductions and the strict wire-cost decreases.

The two copying cases are precisely the last two rows: they change one x to two x occurrences, saving respectively 9 and 2 bits. I extracted all 569 sources from `Cases.lean`, matched their individual hashes and the three cell digests against the manifest, checked their distribution across the eleven bodies, and constructed each replacement while retaining the outer let. All 569 retained exactly one source j with the advertised strict weight saving. The independent named normalizer also rejected all 569 original sources on zero without a cutoff. This replays the archived sources; their completeness for the linear branch still depends on the inspected source grammar and filters.

I additionally recompiled `Followup.lean`, `Prices.lean` and `LinearPrices.lean`. No new axiom or sorry dependency appeared. There was one harmless unused-simp-argument warning in Prices.

**One bodylet cell, with an independent completeness derivation.** Take `(m=2, B-head=λ, j-location=A, first-c-location=B)`, the recorded 420-source cell. Write B=`λy.D`.

The independent-binder exchange forces at least two y uses in D. D also has two x uses and at least one c. Thus B has at least one lambda and five leaves, and

`b ≥ 2 + 4·2 + 2·3 + 2·2 + 5 = 25`.

Here the terms are the lambda, four application nodes, two x leaves, two y leaves and one c leaf. A contains a lambda beside its depth-zero j, so a≥6. A pending operand is necessary and is j-free, so p≥4. Hence `w=10+a+b+p≥45`; the budget forces equality everywhere.

Consequently A is `I j` or `j I`; `I j` has a strictly cheaper one-hole beta contraction, so only `j I` survives. B has exactly its displayed lambda and an application tree on the multiset `{x,x,y,y,c}`. The pending list is exactly `[s]`. There are **14 binary application trees × 30 distinct leaf permutations = 420 sources**. This derives the whole cell without the lane's feature recurrence or helper pruning.

My separate generator produced exactly those 420 sources, all of weight 45. Both normalizers rejected every zero law, with no cutoff, agreeing with the recorded cell. There is also a direct semantic explanation: each available j is protected by its application to I; a surviving copy cannot supply the required bare j in `r j`.

The successful Python checks took about 0.04 s and 0.02 s of internal runtime, with approximately 27 MB and 25 MB peak RSS. The cell generator made 3,510 constructor yields. Each Lean invocation took under half a second including its wrapper; the largest sampled child RSS was 467 MB, with two Lean threads. Evidence is in `linear.json`, `cell.json`, the five Lean logs/resource files, and `spot.py` in this directory. The inspected report/check/proof files also match their `data/self-interpreter/reasoning_class/` copies byte-for-byte (`archive_comparison.json`).

**Documentation correction:** class-bound §3 says most of bodylet's 22,660 exceptions use the growing-helper theorem. The lane's accounting says **16** use Grow; **21,937** use the weak-head prefix-cycle method. Replace “most through” with “including 16 through.” This changes evidence attribution, not the exclusion.

**Operational exception:** an initial generic recurrence attempt accumulated 100,550 feature-counter entries before its post-return guard fired, overshooting the stated 100,000-state cap by 550. It was aborted after 0.75 s at about 71 MB and is not evidence for this verdict. I replaced it with the archived-source replay and the independent 420-source grammar above. My progress note's claim that no reader sources had been checked before that abort was unsupported; no partial source count was preserved. `aborted_attempt.json` records this limitation. All writes were confined to `tmp/round4/review_body/`; no other agent, large completed inventory, repository edit or commit was involved.

<oai-mem-citation>
<citation_entries>
MEMORY.md:63-64|note=[prior guidance to inspect live sources and preserve proof versus finite evidence boundaries]
</citation_entries>
<rollout_ids>
01a15a33-f488-7bb0-8621-9b3b22448e52
</rollout_ids>
</oai-mem-citation>
