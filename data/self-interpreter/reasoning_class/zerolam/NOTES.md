# zerolam — wave 5

## 1. Orientation and scope

Read BRIEF/BRIEF5, class-bound §2–4, hole NOTES §§8–12, review_hole REVIEW, jn REPORT, current STATUS and protocol inventory. The live record supersedes old memory about the 162. No consults, repository edits, or broad search. All writes remain in this lane.

Target: R = λs.C[X], one j at depth 1, its immediate parent X = Y j, X[Z(r)] has a λ head normal form, subsequently consumed by C. Need w >= 46, or a valid global-minimum reduction, or <=45 witness.

Confirmed logical boundary: rigid output of the complete reader does not imply rigidity of X. R59 transports j; R84 dispatches inside X and again in C. First-dispatch costs cannot be added without source-disjointness.

Initial route: use the absence of lambdas above X to price administrative transport exactly, then isolate genuinely stream-dependent cases. For a linear source parent (λa.B) j, with its single a at internal depth m and T other outward leaves, contraction changes w by 3m - 6 - T. Thus m <= 2 cannot occur in a globally minimum reader (strict weight drop, or same weight and fewer lambdas). This statement does not require either reader law, beyond preservation by beta equality. For m >= 3 the sign is not automatic; treating all linear transports as free contractions would repeat the known index-tax error.

## 2. Literal j-let elimination (candidate handwritten theorem)

Let R=λs.C[(λa.B) j], where C has one hole with no λ above it and is j-free, B has no j, and R satisfies every rigid reader law. Let k be the number of a occurrences; m the internal λ-depth of the sole source a occurrence responsible for the surviving j in the zero normal form; T the number of original outward s/c leaves in B; s_B the number of those s leaves; c_C the number of c leaves in C.

Every other a occurrence is dispensable on zero; every a occurrence is dispensable on every unary run, because its residuals become rigid j and the unary normal form has none. The source occurrence producing the zero j is unique even if it was copied. Replace every other a by s. This preserves all laws by joint dispensability. It costs k-1 before subsequent rewriting, but that surcharge cancels in both formulas below.

A. Contract the resulting single-use j-let. Relative to the ORIGINAL R,
  Δw = 3m - 6 - T; ΔL = -1.
Explanation: discarded a leaves and replacement s leaves have identical indices after removing λa; the retained a costs m+2 and becomes a free j at added depth m; λa/application removal saves 4; all original outward leaves lose one index bit. Therefore m<=2 always strictly improves (weight,L,depth).

B. Move the resulting λa to the outside of λs and C, retaining its j argument:
  R'=(λa s.C[B_pruned]) j, hygienically reindexed.
  Δw = c_C - s_B - 3; ΔL=0; depth(j):1→0.
Explanation: the k-1 replacements (+k-1), moving a outside s (+1 for its one occurrence), moving every s in B one binder inward (-(s_B+k-1)), lifting C's c leaves (+c_C), and depth tax (-4) give the formula. C's s leaves keep their indices; B's c leaves do too. Thus c_C<=s_B+3 always improves the minimum order.

If neither applies, m>=3 and c_C>=s_B+4>=4. Then L>=5 (s,a and the three λs above the retained a). There are at least four free c leaves, j, a, and one s. The reader's necessary nonlinear source binder forces at least one further leaf: none of four c or j can be a bound-variable repetition; a is either repeated (already the extra leaf), or s is repeated, or another bound variable occurs twice. Thus V>=8, A=V-1>=7. Index sum excluding j is at least m+c_C>=7. Consequently
  w=2L+4A+X+4 >=10+28+7+4=49.

Proposed conclusion: a global minimum reader with w<=48 has NO literal source j-parent (λa.B) j. In particular this closes that subfamily below 46, without the old multi-million-term depth checks. It does not cover Y j when Y is not syntactically a λ (R84), even if Y reduces to a λ after the stream is substituted.

## 3. Targeted checks of the transport formulas

`check.py` verifies source prices and zero/n=1..8 probes on six named fixtures; no enumeration. Results (`check.log`): R59 59→56 by contraction, 59→57 by hoisting; duplicated transport 58→47 / 51; a depth-3 transport 75→78 / 75. The last is important: contraction really can grow, while equal-weight hoisting wins on depth. All three retained-occurrence choices preserve the sampled laws. The all-n preservation claim comes from origin/dispensability, not probes.

The familiar dual reader `λs.s I (s (λq.c)) (s K j (s s s))` has w=53 and already has a zero-lambda immediate parent `s K j`: zero → K j, unary → I. It is a cheaper illustration than R84, not a new interpreter. Literal disjoint factorization P D with P zero→r, unary→c U and D zero→j, unary→N costs at least 6+2+20+25=53 using the inherited P/jN operand bounds. This inequality must NOT be applied after a sharing let has been expanded.

R84's fixed outside context has cost 44, independently checked. Thus its literal template costs 50+|X| (X has the single j), already above 46 without pricing X. This does not price arbitrary redispatch wrappers.

## 4. Closed combinator Y in X=Y j

For a globally minimum reader, a source replacement of closed Y by a strictly smaller beta-equal weak-head normal form immediately contradicts minimality. Literal λ Y is already excluded by §2. For application-rooted closed Y, every source s and c occurs in C, so |C|>=9 (two variable leaves plus the zero-price hole require two applications); w=8+|C|+|Y|. At w<=45, |Y|<=28, and its closed application children each cost <=22. Exactly 26,976 Y are obtained from the complete 6,069-term closed child basis. This is a pinned closed-combinator check, not reader enumeration.

`closed_transport.py`, completed 45-bit run: 26,494 strict decreases, 178 certified head cycles, 80 equal-size and 213 growing WHNFs, 11 capped evaluations. All 304 nondecreasing/capped cases have |Y|>=22, so |C|<=15. Enumerating complete one-hole contexts of those budgets (no λ above the hole; both s/c present) gives 5,208 pairs. There are no passing pairs; 146 pairs are uncertified by the small normalizer. `audit_caps.py` closes the zero probes with λc j r and emits 146 closed terms. `blam adjudicate --file ... --threads 2 --budget1 64 --budget2 4096 --bb-cap 100000 --rescue 10000 --work-mult 2 --no-oracle` reports 0 HALT / 146 DIVERGE bb-engine / 0 UNKNOWN. Therefore the 45-bit closed-Y minimum case is closed (computer-checked using the repository engine, not Lean).

Resource note: an initial non-guarded head-normalizer attempt was stopped manually at about 0.7 GB observed RSS and under 30 seconds, without a result. The replacement guards every head step; the completed full check takes 7.0 seconds and 22.6 MB RSS, plus a sub-second engine audit. No completed or aborted run exceeded the specified cap. The one-bit extension to w<=46 is now in progress, to exclude this case for an actual global minimum (known w<=46).

## 5. Final closed-transport result (w<=46)

The one-bit extension completed: 10,474 closed children through 23 bits generate exactly 47,392 application-rooted closed Y through 29. Of them, 46,495 have a strictly cheaper beta-equal weak-head lambda, 301 have certified head cycles, and 596 remain (93 equal, 476 larger, 27 capped). The remaining |Y|>=22 gives |C|<=16; 552 candidate contexts with both s/c, matched by exact total budget, give 11,620 pairs. No pair passes all probes. There are 376 unresolved zero/unary probe pairs.

The exact 376 closed zero probes were independently encoded with assertions on |Y|, |C| and w, then run on a frozen `blam-audit` binary. Result: 0 HALT / 376 DIVERGE bb-engine / 0 UNKNOWN; the raw oracle prefilter disabled. The bb engine retains its internal divergence checks, including its oracle; `--no-oracle` is only the ladder prefilter switch. The input/output wire MULTISETS match exactly (parallel output order differs). `cap_timing.log`: 0.25s wall, 4.13MB max RSS, two threads. Python: 15.82s, 24.22MB max RSS, one thread. Even counting the child basis, context basis, all Y, matched pairs and engine audit gives 70,414 objects, below 100k. Binary hash is in `blam-audit.sha256`.

Therefore, combining §2 (literal lambda Y) with this finite application case: **a globally minimum reader cannot have a depth-1 immediate j-parent Y j with Y closed**. The canonical 46-bit reader supplies the needed w<=46 upper bound. This is handwritten + computer-checked, not kernel-checked.

Together the current reductions leave only X=Y j with Y application-rooted and containing a free s or c occurrence. These are the genuinely unpriced parents; `s K j` is the simplest illustration. The proof does not show every zero-lambda reader has w>=46, nor that every global minimum avoids every zero-lambda parent. No <=45 reader or complete interpreter was built.

## 6. Coordinator follow-up: lowest rigid ancestor

Request: transfer the hole anchor from j's parent to its lowest ancestor X* rigid on zero, auditing exactly which steps require immediacy.

The move is valid as a semantic decomposition. Every ancestor has no extra source binder above it, hence is context-free. The body is rigid on zero, so X* exists. Neutral persistence plus the single-source-j condition strengthens its zero normal form to {j,r j}, not arbitrary rigid forms: an outside context cannot extract j from inside a rigid head; some residual must supply the final j, and the only j-containing pieces/prefixes of r j are j and r j. The exact split w=6+|C|+|X*| and the rigid/unneeded unary projection remain valid. Catalogued operand bounds quantify over all source trees and therefore also price ancestor anchors.

Key lost implication: in case (zero r j, unary whole c U N), global minimality still removes a nontrivial outside C. But this only yields R=λs.X*, not R=λs.Y j. The latter used that X* was j's IMMEDIATE parent. Consequently the absorbing-arm law for a j-free Y, the 31..37 budget, and the special Y0[ν] j wrapper enumeration do not transfer. Lowest rigid ancestor can simply be the whole original body, making the new whole-output case tautological without an additional source theorem.

Witnesses checked with `ancestor_check.py` (four fixed readers, zero and n=1..8; no enumeration): R53's X*=s K j (s s s), a proper j/N operand. R59 and R84 have X*=body and no literal final-j application. Stronger new witness:

  R75 = λs. s (λb t.b (λx.x t) (c t))
                (s (λb t.b (λa k.k a) (t t)) j).

This is source β-normal, j depth 1, w=75. Write P=s(λb t.b(λx.x t)(c t)) and Q=s(λb t.b(λa k.k a)(t t))j. P[Z]=λx.x r, P[U]=c U; Q[Z]=λk.k j, Q[U]=N. Thus P Q gives r j / c U N for every n. Q is the immediate j-parent and the next ancestor is the body P Q. Hence X*=body. Prices |P|=33, |Q|=34, w=6+2+33+34=75. This satisfies the previously remaining source shape (j-parent operator application-rooted and stream-dependent), and contains no administrative source redex to contract. It is not a <=45 or minimum-reader counterexample; it refutes the structural implication needed for the unqualified transfer.

Further precise distinction: X*=P Q is contracted on zero; the surviving zero-output application comes from k a inside Q, at source depth 5. On unary the original root P Q survives as the output's outer application. Thus X* is not the source zero-output node of hole §9. A rigid value of an ancestor does not locate the surviving output node at that ancestor.

Follow-up finished: REPORT.md §5 contains the ancestor lemma, exact minimum-reader consequence, step-by-step transfer table, and R75's all-n proof. `ancestor_r75.lam` is a free-c/j reader fixture, not a complete self-interpreter. The follow-up did no enumeration or interpreter battery. The proposed anchor is semantically sound; its whole-output branch only concludes λs.X*, not the old literal λs.Y j. No ≥46 conclusion or full four-family exhaustion follows without a new source-cost theorem for this generalized branch.
