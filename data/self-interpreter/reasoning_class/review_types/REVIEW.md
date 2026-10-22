( •̀_•́ ) **Verdict on BN46: correct for the stated three-law, beta-normal claim, subject to the ordinary trust boundary of the Python search and Rust divergence checker.** This is computer-checked evidence with handwritten completeness reasoning, not a Lean theorem. All requested numerical runs reproduce exactly. I found no counterexample of weight at most 45.

**A separate, concrete finding: the search's advertised general completeness for arbitrary checked-law lists is broken.** The tabled engines lose valid zero-law solutions, including solutions containing both source names. This does not refute BN46: the needed-occurrence lemma below isolates the defect from searches containing both the zero and a unary law. That lemma should replace the report's unrestricted “completions correspond one to one” assertion.

1. **Reproduced runs.** Commands use the reviewed files in `tmp/round4/types/`, default fuel 2000 and at most 100,000 search states. Each check ran in one Python thread under a 115-second wall watchdog, 110-second CPU limit and RSS watchdog. Resource observations and complete stdout are saved beside this review.

| Check | States | Solutions | Uncertified cut-offs | Wall seconds | Peak RSS, decimal MB |
|---|---:|---:|---:|---:|---:|
| B1: `narrow2.py 43 --betanormal --jdepth 1` | 96,933 | 0 | 3 | 27.0 | 573.5 |
| B2: `narrow.py 45 --betanormal --laws 1,2,0 --jdepth 2+` | 99,562 | 0 | 0 | 8.6 | 22.3 |
| k=1: `narrow2.py 45 --betanormal --jdepth 1 --prefix '\s. s _'` | 45,497 | 0 | 0 | 9.7 | 306.1 |
| k=2: same, prefix `\s. s _ _` | 78,828 | 0 | 0 | 14.5 | 471.2 |
| k=3: same, prefix `\s. s _ _ _` | 59,550 | 0 | 7 | 29.7 | 363.6 |
| k>=4: `narrow3.py 45 --betanormal --jdepth 1 --prefix '\s. _' --minarity 4` | 32,810 | 0 | 0 | 8.8 | 194.0 |
| 162 control: `narrow2.py 46 --betanormal --prefix '\s. s _ _ j'` | 44,010 | 1 core | 1 | 10.0 | 249.3 |
| 164 control: `narrow2.py 48 --betanormal --prefix '\s. s _ (s _ _ _)'` | 13,230 | 1 core | 0 | 1.6 | 97.1 |

The untabled controls also succeed: 61,217 states for the 162 family, 16,466 for the 164 family, one core each and no cut-offs. The 162 core's final skip argument is an unneeded hole; filling it with the innermost binder `u` gives exactly weight 46. Direct `rd.check(..., nmax=8, verbose=False)` returns true for both literal readers, with `(weight,cost,depth)=(46,42,1)` and `(48,44,1)`.

2. **Concrete single-law completeness failures and independent enumeration.** `independent.py` implements an independent grammar

   `Normal = lambda Normal | Neutral`, `Neutral = variable | Neutral Normal`,

   with exact weight, at most one `j` during generation, exactly one `j` in tested terms, and optional `c`. It enumerates every legal bound-variable index, separately tracks whether `c` occurs, and uses direct capture-avoiding de Bruijn substitution and leftmost-outermost full reduction. It does not call either narrowing evaluator or `rd`'s evaluator. `rd` is used only to parse printed result schemas. Counts from the grammar's independent dynamic program equal the numbers actually enumerated.

   For exact solution-set comparison, each returned `_` schema was matched against every concrete enumerated term, with the same source and weight restrictions. This compares represented terms, not merely numbers of printed cores.

| Law and budget | Concrete terms | Independent solutions | Covered by `narrow` | Covered by `narrow2` / `narrow3` | Fuel unknowns |
|---|---:|---:|---:|---:|---:|
| Z, weight <=24 | 23,461 | 26, including 7 with c | 22; all 7 with c | 0 / 0 | 0 |
| U1, weight <=26 | 65,268 | 1 | 1 | 1 / 1 | 0 |

   There were no false positives in these concrete universes. The sole U1 solution is `\s. s (\q.c) (s s j)`, weight 26.

   Smallest useful tabled counterexample:

   ```text
   R = \s. s s c j             w(R)=19
   R Z(r) ->* r j
   narrow2.py 19 --betanormal --laws 0          62 states, 0 solutions
   narrow2.py 19 --betanormal --laws 0 --notab  65 states, 1 core
   ```

   Giving the tabled engine that complete R as `--prefix` also returns a solution. `narrow3` has the same bug. The exact memo collision is saved in `trace_memo.json`:

   - Stored state `\s. s F H`: refined cost 14, no orphan, remaining budget 5; c/j flags both false. Its residual asks H, under s=Z, to produce j. Refining H to j is rejected because no slot remains for the source c that the implementation requires even for a zero-only search.
   - Pruned state `\s. s s A H`: refined cost 12, one orphan A, remaining budget `19-(12+2)=5`; same flags and identical canonical residual. But A=c, H=j is the valid 19-weight term above.

   Thus source obligations cannot in general be represented by flags plus a two-bit charge for orphan holes. Orphan placement information can matter. The memo's general infeasibility assertion is false.

   There is also an untabled domain restriction: all engines require a source c even with only law Z. For example `\s. s F j` has weight 18 and satisfies Z but is missed. Consequently the docstrings' “complete for the checked laws” wording is too broad even without tabling. The seven c-containing zero-law solutions eliminate this domain restriction as an explanation of the tabled discrepancy.

3. **Why this bug does not invalidate BN46.** The following is a handwritten scope lemma, independently checked against the implementation; it needs both Z and at least one unary law.

   **Needed-occurrence lemma.** In any successful completion, the unique source j must be reached by the zero computation, and some source c must be reached by the unary computation. The inputs contain neither name, reduction cannot create a fresh free name, and the required outputs contain j and c respectively. More precisely, producing these rigid output occurrences requires evaluation of a closure descended from a corresponding source occurrence; an unvisited hole cannot supply one.

   Therefore, if j has not yet been placed, its occurrence is in a hole reachable from the residual problems. If c has not been placed, at least one reachable hole must supply c. The single-law collision above cannot occur in a successful joint-law completion: its putative orphan c is needed by the unary law and would be represented in the joint residual.

   Once a hole is absent from every residual, arbitrary changes inside it preserve every successful checked computation. Replace each such orphan by the innermost bound variable, costing two bits. On a successful beta-normal reader all these holes are under the stream lambda. No j is lost, at least one demanded c remains, beta-normality is preserved, and weight does not increase. The source j's depth is unchanged. This is an existence reduction of completions, not a bijection of all literal syntax trees, and requires no minimality hypothesis on the original reader.

   The canonical residual records all pending comparisons, current target and target binder names, the demanded hole's environment and argument stack, every other reachable hole closure, source j/c flags, and reachable-hole depth/head metadata (plus the spine index in `narrow3`). Equal keys therefore identify the same live filling problem with equal incremental source costs. Replacing orphans by these two-bit fillers makes the offset used by the memo legitimate. With the needed-occurrence lemma, the extra source-name guards cannot prune a successful joint completion. Clean unsuccessful subtrees can consequently be reused at smaller remaining budget. A fuel result disables memo use at that state and prevents its enclosing subtree from being cached as unsuccessful. The reasoning establishes the needed existential completeness for BN46; it does not rescue arbitrary single-law searches.

4. **Machine, grammar and price audit.** The main evaluators implement normal-order weak-head evaluation of closures followed by recursive/stack-based comparison beneath every target lambda and in every neutral argument. These are full beta-normal-form comparisons, with no eta conversion. A lambda/neutral mismatch, rigid head mismatch or neutral arity mismatch is a valid early refutation. Bound variables are internally zero-based, consistently including K=`LLV1`, F=`LLV0`; free c,j,r,N are separate rigid atoms. Generated target binder names `v0`, `v1`, ... cannot collide with those atoms. Stream constructors need no shifts here because their bit and tail arguments have no free de Bruijn indices. Scope beneath lambdas is handled by closure environments and fresh rigid target binders.

   Hole metadata carries source binder depth. Refinement offers lambda, application, every index `0..depth-1`, c, and j if not already used. A lambda increases the new hole's depth; application preserves both children's depth. Thus binders introduced inside an initially open hole are available to its descendants. For generated syntax, `--betanormal` forbids exactly a literal lambda in an application's function position; propagating this flag down successive left application children excludes every beta-redex and permits every beta-normal tree. Prefix parsing does not validate normality or repeated j occurrences, but the prefixes used in these runs already meet those restrictions. `--jspine` was not used.

   The price is correctly the class-bound §2 price: j's leaf costs zero before adding `4*depth(j)`, c costs `2+depth`, bound index i costs `2+i`, lambda and application cost 2. It is not ordinary BLC cost for the j leaf.

   The lower bound is admissible on paths to legal joint completions. Give each open subtree a baseline of two bits. If j is unplaced, its containing subtree can replace that baseline by at least `4*max(dmin,jlo)`, producing the increment in the code. An unplaced c needs at least dmin beyond its baseline. If both names occur in one open subtree, the separating application/lambda structure supplies the additional baseline costs; charging both increments still underestimates that subtree. All future binders can only increase source depth. The no-open-hole guard is justified for joint laws by the needed-occurrence lemma. Each lambda/application refinement increases the bound, so the bounded search is finite. The artificial j-depth ceiling 99 cannot remove a term of weight at most 45.

5. **Fuel and divergence certificates.** Fuel exhaustion is kept distinct from failure unless a cycle certificate is found or another checked law independently fails. The cycle rule's stack low-water mark is updated on every beta pop. Stack prefixes below it remain untouched; equal readback head with the previous active stack as a suffix therefore repeats the same head computation with extra trailing arguments. The empty-suffix Python slicing behavior is conservative, potentially missing a certificate rather than inventing one.

   `narrow.py`'s readback omits environments of unfilled holes, unlike `narrow2`'s `HC` representation. That is inadequate for a residual *filling* problem, but safe for this divergence test: treat unfilled holes as opaque atoms. The repeated head segment never reaches an unfilled hole (that would raise Need), so its repetition remains independent of every filling and captured environment. As an additional operational audit, `audit_cycle.py` rechecked all 35 automatic failure certificates encountered in B2 using `narrow2`'s closure-preserving evaluator: 35 failures, zero needs, successes or unresolved fuel results. B2 still visited exactly 99,562 states.

   The three B1 and seven k=3 explicit cut-offs are the stated forms. Their refutations cover every filling, not just one convenient replacement:

   - W1=`\x. x (\y. x y)`: let M0=W1 and M(k+1)=`\y. Mk y`. Then `W1 Mk -> Mk M(k+1) ->^k W1 M(k+1)`, giving an infinite head reduction with any trailing arguments untouched.
   - W3=`\a b. a a H`: `W3 W3 A ->* W3 W3 H[A/b]`. A trailing argument remains on every iteration; H is never demanded, even when it captures a or b.
   - W5=`\a b. b H' b`: `W5 A W5 Y... ->* W5 H'[A/a,W5/b] W5 Y...`. The fixed second argument W5 drives an infinite head reduction; neither open hole needs evaluation.
   - For the closed W2=`\x. x (x (\y.x))` and W4=`\x. x (x I x)`, the supplied frozen `types/blam` binary independently returns `DIVERGE` and “no whnf: the proof landed on the term's own head chain” for W2 W2 and W4 W4. I used `--no-oracle --budget1 64 --budget2 1000 --bb-cap 5000 --work-mult 2 --probe-fuel 256 --rescue 1000`; both checks finished in about 0.1 seconds. This is engine verification, not a kernel-checked certificate.

6. **Partition and adversarial candidates.** A beta-normal term satisfying Z must be exactly `\s. s A1 ... Ak`, k>=1: a free head remains rigid, no root lambda cannot consume Z in a beta-normal term, another leading lambda remains visible after application, and bare s yields the lambda Z itself. Hence j has source depth at least one. Depth >=2 is B2; depth 1 is partitioned by the exact root arity. The k=1,2,3 prefixes fix that arity without restricting their operand grammar. `narrow3` forces precisely the first four left-spine nodes to be applications and then allows every continuation; its spine index is included in memo metadata. Thus the fourth chunk covers all and only k>=4 that could satisfy the laws. The runs cover <=45, including the 44–45 band, not merely some exact-size slice.

   Seven reasoning-selected cheap variants were checked with the requested `rd.check(..., nmax=8, verbose=False)`; all failed. Examples: replacing the 162's I by s gives weight 44 and unary output `N j`; deleting the absorber gives weight 40 and `c U_(n-1) N j`; shortening `s s u` to `s u` gives weight 41 and a j-headed residual in the second output argument; leaving it as `s s` gives weight 42 and `lambda y.N`; replacing `lambda q.c` by c gives weight 43 and an extra F argument to c. The 38-weight direct second-selector candidate satisfies unary laws but returns r instead of r j on Z. These are attacks on the known construction, not claims of new algorithms. Sources and exact first three outputs are in `candidates.json`.

**Required report correction:** retain BN46, explicitly state the joint-law needed-occurrence/orphan lemma, describe tabling as preserving existence of an affordable completion rather than a one-to-one correspondence of all completions, and remove the unrestricted single-law completeness assertion. Repair law-dependent source obligations and orphan accounting before relying on arbitrary `--laws` runs. The claims about intersection-type derivations are not needed for this audited finite exclusion and were not independently established here. General readers with source redexes remain outside BN46.

Artifacts: `run_limited.py`, `independent.py`, `crosscheck.py`, `crosscheck_0_24.json`, `crosscheck_1_26.json`, `trace_memo.py`/`.json`, `audit_cycle.py`/`.json`, `candidates.py`/`.json`, and named `.log`/`.resource.json` records. Writes were confined to `tmp/round4/review_types/`; no reviewed source or tracked repository artifact was changed.

Reviewed SHA-256 values:

```text
28eb6b250990b046ab6fb4968b3b09b479ca604cf91984347c1d37f47db10622  types/narrow.py
785e4fb648548aecdba1d780bbc48c242b8d760792e7d4a677053605ddde656f  types/narrow2.py
ae4fc56d44369f9398a39402609141d00bf4e4c6e2965bf3cfe55ed7348c8406  types/narrow3.py
2c5c01eb9a32d5726719fd8f5beaea67755f3c1fc305220fbacf844b999e9817  types/REPORT.md
aa846634952925ab72572cdad0e48922620b504034a22f9b041b92bc75da4031  coord/rd.py
```
