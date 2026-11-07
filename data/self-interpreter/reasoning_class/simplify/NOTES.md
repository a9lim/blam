# simplify: running notes

## Orientation
Read BRIEF.md, BRIEF5.md, current class-bound §§2–4 (including the exact minimum order and Open paragraph), and expand/rootnl/rootlow/root/shared/adv6 reports. No consultation-back or delegation. All writes confined to this lane. The historic memory entry is stale at 162 and is not used for the live mathematical boundary.

The residual target is ROOT: no global all-length one-hole minimum of weight <=45 is a nonlinear root let with 2–4 uses, hole depth <=1, and k+d<=4. Lambda-rooted exclusion assumes the full lexicographic minimum. No endpoint may inherit it merely by preserving weight.

## First route: static hand-off specialization
Consider W(M)=lambda z. z M, with M independent of z, and a pure application tree T[x] with k leaves. R=(lambda x.T[x]) W(M) Cvec.

Evaluate T[W] symbolically using the rewrite W X -> X M, never evaluating M. Each rewrite replaces one W leaf by one M leaf, so terminates in <=k steps and preserves the number of leaves. Suppose its endpoint U contains b residual W leaves. Reify U with M replaced by a shared variable p and each W reconstructed as lambda z.z p; keep M once as the argument of the root let. This gives a beta-equivalent source S, with one source hole whenever R has one.

The exact anticipated price is w(S)-w(R)=7b-6-F(M), where F is the ordinary outward-capture count with j counted four times. Lambda-count change b-1; source hole-depth change -occ_j(M). In particular b=0 strictly simplifies every source, at every budget, saving 6+F(M). For b=1 one needs F>=2 for strict weight descent; F=1 ties weight/lambdas/depth when M is j-free. At b=2 the weight threshold is F>=9; F=8 is not enough for the full order (one extra lambda).

For k=2..4 the pure-tree shapes split:
- xx -> mm: b=0.
- x(xx) -> (mm)m: b=0; (xx)x -> (mm)W: b=1.
- (xx)(xx) and x(x(xx)): b=0.
- (x(xx))x and x((xx)x): b=1.
- ((xx)x)x: b=2.

This is a real source simplification, not an expansion bound. It leaves general dependent payloads M[z], non-pure root bodies, and low-capture residual-W trees open. The stronger target has not been proved.

## Checked static theorem
Handoff.lean now kernel-checks the symbolic specialization for ALL pure application trees, all M, and arbitrary pending operands. It proves beta join, exact weights, source lambda counts, hole multiplicity, hole depth, scope transfer and all-unary ReaderLaws transfer. No endpoint minimum/floor is assumed. The precise theorem is source_price; no_minimum_static excludes every zero-residual tree at any budget. At one residual, minimum_single_residual forces F(M)<=1, hence no source j in M under the valid two-variable frame.

The eight pure trees at k=2..4 have residual counts 0,0,1,0,1,0,1,2 in the order recorded by smallTrees. Four shapes simplify strictly regardless of M. The generalized price exposes a real remaining obstruction: a closed M and one residual wrapper make the direct reified source one bit dearer, so this theorem alone cannot close every independent-payload helper.

## Idempotence specialization and actual catalogue effect
The closed 11-bit J=lambda x.x(lambda y.x) satisfies J J ->beta^3 J. Squash is a syntax relation selecting any occurrence x x under the root-let binder, including beneath arbitrary lambdas and inside arbitrary other syntax. With helper A satisfying A A =beta A, replacing that occurrence by x preserves beta equivalence of the complete source, both full laws and the single hole, and saves exactly q+4 bits where q is that x's local de Bruijn index. Handoff.lean checks this with an explicit all-laws minimum contradiction; the body need not be a pure tree.

A read-only syntactic scan of the existing 658 rootnl sources found 67 with helper J, of which 27 contain such a diagonal use. Cases.lean proves every one of those 27 is not a minimum. IDs and exact sources are in checks.json. This is NOT a proof that they are non-readers, and does NOT prove the other 631 are readers or the exact complete remaining set. No source in the 658 inventory was run through a normalizer by this scan.

## Small checks and operational corrections
64 explicit algebra pairs (8 trees x 8 chosen payloads) passed normal-form equivalence and exact price/lambda/depth/hole checks via coord/rd.py. A correct depth-zero wrapped reader of weight 70 specializes to weight 63; both pass zero and lengths 1..8, and both ALL-LENGTH laws are kernel-checked independently by reducing to reader162. No complete interpreter was built or battery-run.

A first Lean invocation from the repository root selected its different default toolchain; subsequent invocations from lean/ use the pinned 4.32.2. For the lane's importable olean, -R ../tmp/round4/simplify is needed. A Python RLIMIT_AS setting was unsupported on this Mac and removed before checks; all actual checks are tiny and measured around 25 MB. These setup failures produced no mathematical evidence. Final successful Lean logs, not the drafts, are authoritative.

## Remaining target
ROOT remains open. The new cuts remove residual-free W(M) application trees, high-capture residual-W specializations, and arbitrary idempotent-helper bodies with a selected diagonal use. Still unclassified: dependent payloads in lambda z.z P[z] Q[z]..., multiple-payload helpers, arbitrary root bodies, and low-capture residual wrappers. No bound on general pre-stream expansion is asserted. The next proof needs an exhaustive semantic/price classification of those source interfaces, or a new nonincreasing source replacement for them.

## Follow-up: dependent and general source interfaces

Added six successfully checked Lean files. `General.lean` certifies arbitrary-position beta paths and proves strict non-minimality from a beta join plus separate scope/hole/price checks. `Factor.lean` gives the unrestricted p-parameter source price, lambda/occurrence/depth components and minimum charge; its dependent reconstruction lambda z.z((lambda z.M) z) -> lambda z.z M allows M to mention z. `Dependent.lean` specializes ALL pure application trees over this dependent wrapper, transports both full laws and the single source j, and proves delta = 4(a+b-k)+11b-4. It also kernel-checks that the resulting price is strictly positive on all eight 2–4-use trees: this factoring route does not give the desired universal descent. The diagonal x x case costs +30.

`Constant.lean` treats lambda z.H with z absent from H, arbitrary H including inner lambdas/lets, using w X -> h. Delta = 4(a+b-k)+3b-2-F(H), with strict descent for all 2/3-use pure trees. `Multiple.lean` proves the independent two-payload identity (lambda x.x x)(lambda z.z M N) =beta (lambda p q.p p q q) M N, exact delta6-F(M)-F(N), equal lambda counts, holes, full laws and the minimum capture charge <=6. `ExtendedCases.lean` checks each actual additional saved-source descent. General mixed payload/external-head formulas and the arbitrary-B initial insertion price have handwritten structural proofs in REPORT.md section5; their universal coordinate components are kernel-checked in Factor.lean. No blanket descent or normalization theorem for arbitrary B is asserted.

`extend.py` inspected the 631 prior unexcluded sources, with <=32 head and <=32 normal contractions per source plus <=49 opaque symbolic contractions and a1200-node cap. It does not apply streams or classify capped cases. It applies the mixed-factor price to274 saved sources:225 one-dependent,30 mixed two,11 two-dependent,8 independent. Only four cut:408–411,45->39 and4->3 lambdas. These are PRIOR independent-static-theorem applications, not new dependent cuts. No direct prefix contraction supplied another cheaper endpoint within the configured cap. The remaining catalogue has627 entries, allk4/d0, body categories370purex/165application-with-c-or-j/92innerlambda-or-let; helpers have1/2/3leadinglambdas in280/340/7 cases. NONMINIMUM.tsv records all31 prior+new IDs; REMAINING.tsv records627 source rows. No non-reader theorem is claimed here.

Coefficient-only count_extensions.py reproduces rootnl boundary counts exactly and applies pureB k2/3 cuts using helper multiplicity/head features. It never materializes complete sources. In the ten requested over-cap cells it excludes184628 of2527654, leaving2343026 after these cuts. Only independent single-payload and constant-helper families fire, always with strict weight descent. Cell numbers and before/after rows are inCOEFFICIENT_CUTS.tsv andextension_summary.json. Remaining B categories:741158pure,329825application-with-c-or-j,1130315innerlambda-or-let,141728leadinglambda. GeneralB arbitraryspecializations and allidempotent placements have not been coefficient-counted. These counts are necessary-source counts and may overlap other lanes' non-reader exclusions.

Final six-file Lean verification:0.23–0.28s/file,max460734464bytesRSS,two threads,-M1800,pinnedtoolchain. Axiom prints onlypropext/Quot.sound. Saved-source pass1.95s/24.2MB. Largest count-only run8.03s/686718976bytes,one counting+onewatchdog thread. Reproduced all10overcap beforecounts and source hashes. New logs andextension_verification.json record evidence. All own writes remain inthislane. No interpreter,battery,trackededit,commit,delegation orconsult-back.

The next missing statement is an exhaustive cheap interface for dependent closures, or another source replacement that avoids the positive reconstruction charge. Merely folding every dependent payload into a fresh parameter does not solve it. Full exact formulas and proof boundaries are inREPORT.md section5.

Strengthened the dependent limitation before final handoff: dependent_counts proves the opaque specialization never reduces leaf count and retains >=1 wrapper; dependent_uniform_overhead proves source+7<=residual for EVERY application tree. This is a statement about this factoring transformation, not all possible source simplifications. The added theorem uses standard Classical.choice alongsidepropext/Quot.sound. Focused finalDependentcompile0.32s/462979072bytesRSS passed; report andverification updated.
