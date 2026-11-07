# Rootlet lane notes

## 1. Scope and evidence boundary

Read BRIEF.md, BRIEF5.md, class-bound sections 2--4 (including all of section 3), and rootnf/root/zcore/handlerlet reports. Current source supersedes older memory: 162 is present and formally checked in the repository. No consult-back, delegation, tracked edits, or commits. All artifacts stay in this lane.

Target is a global minimum among full-law one-hole readers, ordered by weight, source lambda count, then source-j depth. The normalization caveat is retained: neither existence of a reader normal form nor preservation of one j after a nonlinear contraction is assumed.

## 2. Site theory scope

Zcore T1/T2's proved scope is lambda-rooted readers, with Lemma H extending it to `(lambda a s. M) j`. Its report explicitly leaves general application-rooted hand-offs open. Therefore I will not apply the blanket 'one site saving 8--15' to arbitrary root lets without a cost-preserving transport. A syntactic putative bit binder can receive non-bits at another shared invocation (Lemma S caveat). Lemma A/A2 also needs the closed anchor and G0 transport hypotheses; an arbitrary occurrence of `s I` is not enough.

## 3. First reduction target

The tight k+d=5 rows have exactly one c, V=k+5, and either L=3,tax<=3 or L=4,tax<=1. At k=5,d=0 the hole lies outside every lambda, hence no source redex can copy j unless its argument has j at application depth. Apply exact contraction non-improvement before constructing/checking whole readers, preserving the special treatment of a j-bearing argument. Count first; do not construct the raw 570,716-tree envelope.

## 4. Five-use semantic cut (count-only whole roots)

`boundary.py` reconstructs the rootnf exact-use grammar. It first counts the distinct B/A/operand-forest component inventories: 64,092 / 3,964 / 487, each under the cap. It constructs those components, rejecting every source erasing redex, every linear redex with nonpositive exact weight change, and every j-free-argument nonlinear redex with negative change or a lambda-free zero-charge argument. Nonlinear j-bearing arguments are retained; no copied-j shortcut is used. It also rejects a c-headed B.

The admissible component inventories are 29,197 / 1,371 / 302. Grouping them by exact price features counts whole roots without materializing them: 184,613 remain. A second semantic cut: when B is x-headed, A cannot have rigid c or j at its head, since that head persists through arbitrary argument application and fails the zero law. This leaves exactly 89,299 x-headed sources and 8,968 nested-head sources, total 98,267. Neither is an artificial size slice. No root has yet been tested. Counting took 0.48 s / 49 MB / one thread.

Completeness: the exact-use grammar includes every tight k=5 minimum profile, all redex placements and all pending operand forests. The filters preserve every global full-law minimum. The component counts are asserted against the independent coefficient recurrence. The root-price grouping uses M, weighted free-leaf counts, argument weight and lambda count; these exactly determine contraction admissibility. All term associations remain present. A body literally lambda-rooted is impossible because all five x leaves would pay index tax >=5, exceeding 3; the l-headed body bucket therefore consists of nested source head redexes.

## 5. Five-use complete check, certificates pending

The 98,267-source cell finished in 13.14 s, peak RSS 80 MB, one compute thread plus watchdog. 79,544 have a beta-normal zero output different from r j; 18,723 are normalizer exceptions at the deliberately small 80-step/1,500-node limits. No source reached a passing zero law; no unary probe was needed. These exceptions are NOT treated as failures until individually certified in Lean.

The adjacent tight row k=4,d=1 has 846,418 raw roots, with 334,791 distinct B components; it is over cap even before root assembly. Count-only output is k4_count.json. Do not construct that component inventory. Next use a feature-count grammar whose application constructor enforces the exact local minimum price, so inadmissible trees are never materialized.

## 6. Coefficient filter and certificate discovery

`filtered.py` incorporates the exact local redex filter into the counting recurrence itself. Features are each outer binder's occurrence-depth sum, the root lambda's (multiplicity, depth sum), and the source spine head. These suffice for every local charge; no terms are constructed in counting mode. It independently reproduces all six five-use row counts exactly (98,267 total, 0.018 s / 25 MB). For k=4,d=1 it leaves 190,770 sources: j in B 116,537, in A 68,947, in pending operands 5,286. The B-hole cell remains over cap pending the pull lemma; the other two are naturally separated by hole placement.

The simple five-use certificate audit resolved 18,010/18,723 exceptions (14,121 head-prefix loops; 3,846 rigid head/arity; 43 absent required variables), 24.72 s / 116 MB. A generic mixed-cycle BFS reached its 100,000-state guard and aborted without a result; nothing from it is used. Replaced it with deterministic contracting reductions and exact recorded paths; this can also certify slow terminating wrong outputs without assuming normal-order termination.

## 7. Four-use boundary and stronger semantic filter

The root pull lemma removes j-in-B sources unless an x occurs in j's operand or a later operand. Counting drops 190,770 to 180,946. Forced-use N5 then applies when an x-headed B calls a literal A whose first binder is vacuous: the first B operand is ignored, so in a global minimum it is literally x. This drops the four-use total to 142,554, partitioned by source hole location into A 55,395, B 82,891, pending operands 4,268. Each is a structural cell under 100,000.

`generate.py` constructs only terms whose feature counts survive; it never builds the 334,791-term raw B inventory. Every constructor block is checked against the count recurrence. `check_filtered.py` uses actual source frames and actual probes, checks the whole weight, and compares a finite persistent rigid head/arity before normalizing irrelevant arguments. It found no probe survivor in any of the three cells (6.42 s / 42 MB, 6.48 s / 55 MB, 0.54 s / 31 MB). A and B fail zero exclusively; seven pending-hole sources fail unary n=1 by losing a required variable. There are 2,019 / 11,395 / 1,186 exceptions, respectively. The simple finite certificate finder resolves 1,961 / 11,057 / 1,156; two B cases are rigid-output argument exceptions and need their own Lean wrapper.

## 8. Certification is the remaining edge, not a proved exclusion yet

Five-use exceptions were reduced from 18,723 to 257 unresolved after bounded direct, finite arbitrary-beta, and head-walk certificate discovery (all successful checks under 110 s / 176 MB). A general mixed-cycle BFS hit the 100k state guard; one deterministic attempt hit its 110-second alarm; neither aborted run supplies evidence. The retained successful records are boundary_audit/reduced/directed/longhead/prefix JSON. A 501-step prefix-cycle pass resolves a further 29 of those 257.

The remaining patterns include eta-delayed duplication, growing argument stacks, and very large Church iterates; guessing divergence from growth would be unsound. A fresh lane-local lab binary was built (48.39 s, jobs=2, all build artifacts in rootlet/target). Two 257-term cert searches (closed free-variable wrapper and all-I specialization) found no Ratchet/HTR/Selector/PDR certificates. They are not exclusions.

New kernel lemma in Certificates.lean: substituting I for all four rigid probe variables takes any zero-law proof to a beta reduction of the grounded instance to I. Therefore a grounded weak-head cycle refutes the original reader, even when its open run has a growing argument stack. This does not assume source normalization or one-hole preservation during reduction. The lemma and replay/mixed-cycle rules compile with propext/Quot.sound only. Grounded cycle discovery is being used for those remaining exceptions.

## 9. Exact residual catalogue and kernel verification

The retained certificate union covers 32,743 of the 33,323 evaluation exceptions across the four checked cells. `manifest.json` maps each original source to its generated theorem; `remaining.json` is the exact complement. `SURVIVORS.tsv` lists all 580 unresolved sources with k, d, weight, L, V, index tax and lambda syntax. `ARGUMENTS.tsv` groups their root arguments by exact local weight. These are unresolved necessary candidates, not readers or witnesses of a lower size.

Remaining prices:
- k=5,d=0: 32 at w43, 78 at w44, 47 at w45; all L=3. Only seven root-argument templates remain, and all holes are among pending root operands.
- k=4,d=1,j in A: 5 at w43, 48 at w44, 5 at w45; all L=3; six argument templates.
- k=4,d=1,j in B: 23 at w43, 250 at w44, 57 at w45 with L=3; 8 at w45 with L=4; eight argument templates.
- k=4,d=1,j among pending operands: 27 at w45 with L=4; three argument templates.

Thus (once the remaining generated files finish kernel verification) the complete checked cells exclude the w42 edge, all k=5/L=4 sources, and all k=5 sources with j inside A, without any normalization premise. The boundary cells themselves remain open. A finite closed I/K/F probe grid did not eliminate the remaining 181 five-use candidates at that stage; the existing BB35Spine tower theorem then removed 24, leaving 157. Its algebra is used by a fresh general tower-with-pending-operands bridge in Certificates.lean.

Proof files are proof-artifact shards of at most 600 sources from an already sub-100k cell; this does not split an over-cap source inventory. Each compiles with -j2, a 110-second watchdog and a 1.8 GB RSS ceiling. The first proof file took 6.54 s / 759 MB. All resource records and axiom logs are retained. The successful general certificates use only propext and Quot.sound. No normalizer exception without a certificate is counted as excluded.

## 10. Verification complete and a new proof-first next cut

All 56 generated certificate modules passed: 32,743 original-source negations of Reader, all axiom lists exactly propext/Quot.sound. Largest module: 10.69 s, peak 802 MB. `validate.py` checks every manifest/source hash, every theorem's log entry, the disjoint exhaustive exception/certificate partition, and all successful source-check resource limits. `verification.json` is final evidence.

The source checker also passes positive controls reader162 (w46) and reader165 (w49) on zero and unary lengths 1--8 (`controls.json`). No new interpreter was built.

New next cut: eta-freeness of a global minimum may follow because every rigid reader target is eta-normal, using oriented beta/eta postponement on each probe. This avoids assuming the source reader normalizes. `EtaPrice.lean` kernel-checks the exact saving `6 + F_nonj + 4h` in any context. The law-transport/postponement proof is handwritten only and has not been independently reviewed, so it is NOT used to subtract candidates from the certified inventory. It would remove 346 of the 580 unresolved sources. Full argument, hypotheses and boundary are in ETA_REDUCTION.md; exact paths/prices are in eta_inventory.json.

Lower-multiplicity cells remain open. `remainder_count.py` counted their raw scope/one-hole/root-multiplicity/three-lambda/argument-lambda envelopes without constructing terms: 61,773,420 (k4,d0), 59,106,558 (k3,d1), 203,313,616 (k3,d0), 140,278,740 (k2,d1), 619,696,662 (k2,d0), 401,774,345 (k1,d1), 2,545,566,335 (k1,d0). These are explicitly RAW envelope counts, not post-minimality survivor counts; live ownership, all local contraction filters and role cuts still need to be integrated there. Each coefficient count took <0.9 s / 24 MB; no raw envelope was enumerated or artificially sliced. Restricted L3,V=k+5,one-c subprofile counts are also retained in profile*.json, but are not presented as the whole lower-k remainder.
