( •̀_•́ ) **No reader of weight <=45 was found. Neither Theorem 10.1 nor Theorem 11.4 is established as stated.** The main failure is a false persistence claim, not a failure of the dispensability argument or the index arithmetic. A small additional check repairs one part of 11.4, but its conclusion must still be stated for a globally minimum reader.

This is an independent handwritten/code review, not Lean verification. All new checks used one thread, fewer than 100,000 generated terms per check, and less than two seconds per check. The 25-bit enumerations were inspected, not rerun.

| Requested issue | Verdict |
| --- | --- |
| 1. Transfer, joint dispensability, ancestor closure | **Correct**, with the stated origin tracking and hygienic fillings; not merely a consequence of determinism alone. |
| 2. Persistence on zero/unary | **Wrong as stated.** A touched application may return a lambda that its enclosing context subsequently applies. |
| 3. Rigid-hole projection and cost identity | **Correct under genuine rigidity/context-freeness; gap in their application.** The cost identity itself is exact. |
| 4. Finite checks | **Generators/costs correct for their specified domains; gap in semantic coverage and parts of the recorded cap audit.** Small claimed counts reproduced. |
| 5. Index-shift accounting | **Correct under its dispensability/source-anchor hypotheses.** Replaced occurrences do not incur a hidden loss. |
| 6. R1-R4 exhaustion / theorem conclusions | **Gap.** The zero-lambda case has not been excluded at the target budget, and minimality is used without appearing in the theorem statements. |

**1. The transfer argument survives review.**

NOTES.md lines 36-85 give a sufficient tracking convention: a substituted bound-variable occurrence retains a tracked root over the inserted copy. Contracting inside that root, or using it as the operator lambda of a redex, counts as touching it. Mere copying, movement and erasure do not.

Under leftmost-outermost normalization, an untouched residual cannot be replaced by something that creates an earlier redex unless the residual is in an already visited left context. Such an untouched residual would survive to normal form, contrary to the hypothesis. This establishes the simultaneous transfer induction, modulo alpha-renaming. Starting from the successful Omega-filled run gives the converse characterization. For a finite disjoint set, the individual characterizations refer to the same original run, so their union satisfies the transfer hypotheses. Ancestor closure follows by filling a dispensable ancestor with its original subtree containing an Omega replacement at the descendant. Source redexes do not invalidate these arguments.

Thus I found no counterexample to 1.1-1.4. The justification is the transfer/genericity argument; deterministic evaluation by itself would not prove joint dispensability in an arbitrary language.

**2. The persistence premise is false, with reader witnesses.**

NOTES.md lines 328-334 infer from touching j's parent X that `nf X[Z]` must be `r j` or `j`. Consider:

```text
R59 = \s. ((\a t. t a) j) (s I (\u. s (\q.c) (s s u)))
```

`rd.check(R59, nmax=8, verbose=False)` returned
`(True, (59, 55, 1, 6, 10, 7, 1, 1))`.

Here j has depth 1 and its immediate parent is
`X = (\a t. t a) j`. On both inputs, `X ->beta \t. t j`.
X is touched; its lambda is then applied by the surrounding context.
The whole reader beta-reduces to the canonical 162 reader for every input.
Its zero value is neither of the asserted possibilities for X.

The following stronger witness has a zero-lambda parent but a **rigid unary** parent value:

```text
R84 = \s. (\x. s (\b t. b (x t) (c t x)))
          (s (\b t. b (\a k. k a) (t t)) j)
```

`rd.check(R84, nmax=8, verbose=False)` returned
`(True, (84, 80, 1, 8, 14, 12, 1, 1))`.

For its actual immediate j-parent

```text
X = s (\b t. b (\a k. k a) (t t)) j,
X[Z(r)] ->beta \k. k j,
X[U_n(N)] ->beta N       (all n >= 1).
```

The enclosing context applies X to r on zero and returns `c U_(n-1) X` on unary. The all-n calculation uses `U_m(N) U_m(N) A ->* N` for every m>=0 and A. This reader has none of the listed R1-R4 forms: its j-parent is not the body root, is not unary-erased, does not return j on zero, and is not lambda-valued on unary.

These are counterexamples to the claimed structural implication, **not** counterexamples to the <=45 conclusion: their weights are 59 and 84. A new quantitative exclusion of zero-lambda parents could still rescue that conclusion. The present proof supplies none. In particular, treating only unary-lambda operands as exceptional does not address R84.

**3. The rigid-hole argument is conditional; the price identity is sound.**

For an actual context-free X with rigid-headed values on both inputs, an enclosing context cannot consume X as the operator of a beta-redex. Ordinary neutral applications are possible (for example, X=c can acquire arguments U and N). Its internal head reductions can be projected away, and copies/erasures are represented by copies/erasures of a fresh rigid hole. This supports the stated projection in that restricted situation.

For a depth-1 hole and `R = \s. C'[X]`, node prices partition exactly:

```text
w(R) = 2 + cost(C') + cost(X) + 4.
```

The hole costs zero; both components must retain the `[s,c]` frame. If X contains internal lambdas above j, its additional j tax must be included once, as the `any` enumerator does. No semantic argument is needed for this identity.

What fails is establishing the rigidity hypotheses. A rigid *final reader output* does not imply that an arbitrary touched subterm was rigid. R59/R84 disprove precisely that inference.

There is also an explicit counterexample to §11.2's assertion that the unary-output anchor is rigid on zero even under §11.1's hypothesis:

```text
R104 = \s. (\u. (\x. s (\b t. b (x s) x))
                  (s (\b t. b (\a q. t u) (c t)) (s s s))) j
```

`rd.check(R104, nmax=8, verbose=False)` returned
`(True, (104, 100, 1, 9, 15, 26, 1, 1))`.

Take the source outer-output node to be the root application of

```text
X2 = s (\b t. b (\a q. t u) (c t)) (s s s).
```

Only u binds above X2 within Y. Its sole occurrence inside X2 is erased by the first unary F, hence is unary-dispensable for every n. Nevertheless, with u delivered j,

```text
X2[Z] ->beta \q. r j,
X2[U_n] ->beta c U_(n-1) N.
```

Replacing X2 by a rigid h makes the zero wrapper return `h Z(r)`, outside `{r j, h j, h, r h}`. This refutes §11.2's general zero-shape lemma with its actual index-shift hypothesis satisfied. Again, weight 104 does not refute the proposed numerical bound.

**4. The finite generators cover their declared syntactic domains, not the missing semantic cases.**

I inspected `jn/dbn.py`, `depth1.py`, `xlemma.py`, `wlemma.py`, `depth1b.py`, `depth1a_E.py`, `plemma.py`, `arms.py`, and `r1wrap.py`. The recursive generators include variables, lambdas and every application cost split, including zero-cost holes. They do not impose beta-normality. The `top` mode enforces a depth-1 hole; `any` includes internal hole-depth taxes and is a safe overapproximation where the actual hypothesis requires depth 1. Their leaf/lambda/application prices match the class. I additionally checked the cost correspondence with `rd.weight` on all 53,537 j-free terms through 23 bits.

Reproduced:

- P-lemma through 20: 9,265 terms, two 20-bit hits, two capped terms (`Omega`, `lambda.Omega`), both independently non-targets.
- Arms through 23: 53,537 terms, exactly the claimed 22- and 23-bit arms. My instrumented check found 17 capped original evaluations, all rejected by an additional head/constant non-equality checker; no unresolved cap remained. This is Python/handwritten evidence, not kernel certification. The original `arms.py` silently discards caps.
- `r1wrap.py 15`: 1,010 terms, zero caps, the claimed 15 survivors.
- `r1wrap.py 18`: 6,089 terms, zero caps; its unique accepted `r j` wrapper remains `s I (\u.x)` at charged cost 16.

The stored 22-bit cap lists are the six explicit Omega/j-headed terms, which are soundly rejectable. The 25-bit `wl25.log` lists 52 zero caps; its terms have the described divergent or permanently wrong-headed forms. However, `depth1.py` does not print its zero caps, and `d1_25.log` only reports the aggregate 108 across both sides. I did not independently reconstruct the missing 56 operand cases, or rerun the inherited L2-through-30 check. Thus I do not certify the entire claimed 25/30-bit cap audit from the supplied record.

Testing n=1..3 is sound for **excluding** candidates when every failure is certified. It does not establish an all-n law for an arbitrary survivor. Explicit surviving templates need an all-n reduction; signatures matching at three lengths are not universal classifications.

**Useful repair for §11:** I added `wrapper_unfiltered.py`, which tests the unary wrapper law first, with **no zero-output filter**. Across all 6,089 charged-cost <=18 terms it found 53 unary-law survivors, zero caps, and just one survivor omitted by the original zero filter:

```text
charged cost 17:  \u. s I x       zero result: r
```

In particular, there are **no omitted survivors through charged cost 16**, covering both the proposed <46 exclusion and equality budget. This independently repairs the unjustified zero-shape filter at the relevant finite budget. It does not make the false general persistence lemma true.

**5. The index-shift arithmetic is correct.**

Let `x1,...,xk` be ordered outermost to innermost above X2, and let ell count binders internal to X2 at a leaf. An existing s/c leaf loses exactly k index bits on movement to depth 1. A replaced xi leaf has old index `ell+k-i`; its replacement s has new index ell. Its saving is `k-i >=0`. Internal bound leaves do not change. Thus the exact difference is

```text
|X2| - |T| = k * (# original s/c leaves)
             + sum_i (k-i) * (# replaced xi leaves).
```

By joint dispensability, replaced leaves remain dispensable in T. Therefore needed s/c leaves of T come from original s/c leaves, proving the claimed inequality. Each successful arm needs at least one source c leaf and one source s leaf; otherwise the rigid c or input-dependent N cannot be produced. The two <=23 arms have four needed leaves: the last leaf in `s s s` / `s s c` is erased. The stated XB(k) bounds follow.

This needs the stated source-output anchor and genuine all-n dispensability. It does not cover the separate terminal-cell-output possibility in §11.5, nor justify §11.2's zero classification.

**6. The theorem statements need weaker conclusions or further proof.**

For **10.1**, the verdict is **gap**: zero-lambda parents are not excluded, and several steps explicitly use minimality (`C'` trivial in R1, removal of shape B/E) although the theorem quantifies over every reader. R84 demonstrates an actual omitted structural mechanism. No <=45 counterexample was produced, so I am not declaring the numerical implication false.

For **11.4**, the verdict is also **gap as stated**, with a substantial repair available. The unary-only wrapper check above avoids the false zero-rigidity premise and recovers the same small list through the equality budget. The transparent-wrapper argument then constructs a *different, lighter reader*, potentially at depth 0. That contradicts **global minimality**; it does not prove an unconditional lower bound for every reader in the original R1 subclass. A smaller reader outside that subclass is not a contradiction to a subclass lower-bound argument.

A defensible target is: a globally minimum reader with the specified source anchor and dispensable-binder hypothesis cannot have weight <=45; at weight 46 the nontransparent wrapper is the 162 wrapper. This is a reduction of the minimum-reader problem, not the literal universal Theorem 11.4. Its proof should use the unary-only wrapper check and state minimality explicitly. Universal equality uniqueness is likewise not supplied by an argument that merely replaces a transparent reader by a smaller reader elsewhere.

The core/dispensability and index-shift machinery are useful. The asserted four-family exhaustion should not be treated as established until the missing zero-lambda case is priced or retained as an open family. The current public class-bound paragraph inherits that unreviewed exhaustion claim and should be downgraded accordingly.

Evidence files: `check.py`, `check.log`, `wrapper_unfiltered.py`, and `wrapper_unfiltered.log` in this directory. Reader probes cover zero and unary lengths 1..8; the all-n witness claims above are justified by the displayed beta reductions, not by those eight samples.
