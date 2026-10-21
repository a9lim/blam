# lean-floor lane: working notes

## Size identity (any term, open or closed)

wire t = 2L + 4V - 2 + X   (L lambdas, V leaves, X = sum of 0-based indices).
Charging live binders only: wire + 2 >= 4*nonlinear + 6*live + 4*freeLeaves + X
(`count_wire_bound`, OvernightFloorCount.lean).

## Kernel-checked facts available before tonight

- not Chain E: an app node with a nonlinear binder in both children (Omega).
- HasLiveCapture 0 E: a live binder whose body mentions an enclosing binder.
- indexSum E > 0.
- nonlinear E >= 2.

## Tonight

- live E >= 3 (`selfInterpreter_three_live`): the capture pair {c,d} cannot be
  the incomparable pair, so a third live binder exists. Induction carries
  `outerLive d t` = number of enclosing locals mentioned, so the captured
  variable counts even when its binder is above the current subterm.
- => SelfintSizeBound 25 (`selfintSizeBound_25`).
  Witnesses for the counts (not interpreters): λr.(λp.pp)(λq.qqr) and
  λr.(λp.p(pr))(λq.qq), both 25 bits, both normalize.

## New beta-invariant: ArgOne

ArgOne t := every application argument has <= 1 distinct free variable.
Preserved by beta (an argument substituted for a variable is itself narrow),
true of K, F, cells, and E C stream when true of E. Output for
S = λfgx. fx(gx) violates it (argument g x). So every interpreter has a
"wide argument" (`selfInterpreter_hasWideArg`).
Counting force on its own: none beyond 25 (the 25-bit count witnesses above
already have one, e.g. (p r)).

Attempts to weaken ArgOne that FAIL beta-preservation:
- arguments with <= 2 distinct FV (substitution {x,u} <- {g1,g2} gives 3);
- exempting lambda arguments (an app argument with FV {x} becomes wide when
  x := wide lambda);
- Appl trees over variables and closed terms (closed lam applied to var reduces
  to an open lam).

Width2 (Statman) is preserved ONLY together with ArgOne, so it adds nothing
over not-ArgOne. Statman's theorem itself (no width-2 term is beta-equal to S)
is the only known route to L>=4, V>=6, X>=3 (33) and is out of reach here.

## Candidate invariants checked and rejected (not beta-preserved)

- Sep2 (live binder captures at most one local): λfg.(λp.λx.px)(fg) -> λfgx.fgx.
- capture chains of bounded length: same example.
- "no nonlinear binder captures": affine capturing binder becomes nonlinear.
- "no live affine binder captures": nonlinear binder becomes affine by erasure.
- antichain of nonlinear binders <= 2: (λx.xxx)Δ -> ΔΔΔ.
- Chain for live captures (CChain): λw.(λx.gxx)(λy.yw) -> λw.g(λy.yw)(λy.yw).
- Chain with rigid-head or redex exemptions: heads get substituted / redexes
  disappear without constraining their reducts.
- max index <= 1 / X <= 1: beta-equal to width-3 terms (λabc.abc), so only a
  Statman-type argument could use it.

## Normalization-type facts

- nonlinear <= 1 -> WN (existing).
- No bound variable in head position -> all redexes are residuals -> SN
  (finite developments); but Scott cells have k in head position, so the
  invocation never satisfies it. Allowing affine head variables breaks it:
  L = λu.(λk.ku)u has L L -> L L.

## Outcome (final)

SelfintSizeBound 27 in Lean. Chain of results:
- 25: counting (Count).
- lambda-rooted >= 27: non-app body inside the body forces 4 lambdas (Lambda).
- literal interface >= 31 (Literal).
- app-rooted minimal: head redex nonlinear; at L=3,V=5 only
  (λx.xx)(λr.λq.B) survives the structural kills; |r|=1 dies by descent
  (reduct λq.B[r:=A] is lambda-rooted with 3 lambdas), |r|=2 are six terms
  refuted by finite head reduction (App).

## For 28

Wire-27 minimal interpreters have (L,V,X)=(4,5,1): one vacuous binder.
Lambda-rooted: E = λy.(λp.B'')A⃗ with p nonlinear (body head must be a lambda;
affine head redex would shrink since only y is free, one leaf). App-rooted:
(λx.B')A⃗. Cases by the vacuous binder's position; each dies by AppBodies,
counts, minimality, descent, or finite head reduction. Note AppBodies cannot
be relaxed to allow variable bodies in general: (λx.(λv.x)W)(λs.T) emerges
λs.T through the constant function; only bodies that are the root variable
(substituted by the rigid C) are safe.
