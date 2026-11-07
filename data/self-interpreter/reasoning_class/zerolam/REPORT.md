# zerolam — wave 5 report

**Partial result, not a proof of the full zero-λ bound. No reader of weight ≤45 was found.**

Two cases are now excluded from a **globally minimum** reader, ordered by `(weight, source λ count, hole depth)`:

- Its depth-1 immediate j-parent cannot be a literal `(λa.B) j`, even when B depends on s/c and duplicates a. This is a handwritten proof using the reviewed dispensability machinery, with targeted arithmetic checks.
- Its depth-1 immediate j-parent cannot be `Y j` with **closed Y**, including non-normal transport combinators. This combines that proof with a complete bounded check at weight ≤46. The check uses Python and the trusted BLAM divergence engine, not Lean.

Consequently the unpriced zero-λ case can be narrowed to `X=Y j` where **Y is application-rooted and has a free s or c occurrence**. Neither all readers nor all minimum readers with those remaining parents have been priced.

**1. Complete interpreters and constructions.**

No complete interpreter was built; there is no new battery or polish claim. `check.py` checks six reader fixtures on zero and unary lengths 1–8. Its passing readers have weights 46, 59, 58, 75, 53 and 84. The 58/75 fixtures exercise duplicated/deep transport, not a new interpreter algorithm.

The existing dual reader is already a cheap witness to the missing semantic case:

```text
R53 = λs. s I (s (λq.c)) (s K j (s s s)).
```

Its immediate j-parent is **`s K j`**, not the entire j/N operand. It gives `K j` on zero and `I` on unary; thus R53 is a zero-λ-parent reader. This is the known 169-bit interpreter's reader, not a new construction. R59 and R84 were also reproduced at their stated weights.

**2. Exact transport identities and their proofs.**

Let

```text
R = λs. C[(λa.B) j]
```

satisfy every rigid reader law. There is exactly one source j; C has no λ on its hole path, is j-free, and a is fresh for C. B has free variables among a,s,c. No normality, linearity, or no-erasing-redex assumption is imposed.

Choose the source occurrence of a whose residual supplies the single j in the zero normal form `r j`. Call its internal λ-depth in B `m`. Let `T` count all original free s/c leaves of B, `s_B` count its free s leaves, and `c_C` count C's free c leaves. Let k count all free a leaves of B.

**Pruning lemma [handwritten, using reviewed dispensability].** Keep the chosen a occurrence and replace every other a occurrence by s, producing B*. This preserves every reader law.

Every entered copy of B receives rigid j for a: its enclosing source abstraction is applied to literal j. A residual a that is examined after this substitution is a rigid j; if it lies on a normal-order normalization path it survives into the normal form. The unary outputs have no j, so every a occurrence is unary-dispensable at every n. The zero output contains exactly one j, so exactly one source occurrence can have a surviving zero residual. All other a occurrences are dispensable on both inputs. Joint dispensability permits their simultaneous replacement. This is a law-preserving transformation, not a claim that the original and pruned open terms are β-equal.

There are now two useful rewrites, both β-equal to the pruned reader:

```text
A:  λs.C[(λa.B*) j]  →β  λs.C[B*[j/a]]
B:  λs.C[(λa.B*) j]  =β  (λa s.C[B*]) j
```

Relative to the **original unpruned R**, their exact prices are

```text
A:  Δw = 3m − 6 − T;       ΔL = −1.
B:  Δw = c_C − s_B − 3;    ΔL = 0;   depth(j): 1 → 0.
```

For A, each discarded a and its replacement s have the same index after λa disappears. The retained a costs m+2, λa and its application cost 4, the new j adds 4m of depth tax, and every old outward s/c leaf loses one index bit. This gives `4m−(m+2)−4−T`.

For B, pruning first costs k−1. Moving a outside s raises the retained a's index by one, lowers each of the `s_B+k−1` s leaves in B* by one, raises C's c leaves by one, and saves four units of hole-depth tax. B's c leaves and C's s leaves keep their indices. The sum is `c_C−s_B−3`, independent of k.

Targeted checks (`check.log`) include:

| fixture | original w | A | B |
|---|---:|---:|---:|
| R59 | 59 | 56 | 57 |
| duplicated transport | 58 | 47 | 51 |
| retained a at depth 3 | 75 | 78 | 75 |

The last row demonstrates why unrestricted contraction is unsafe. Equal-weight B still improves the hole-depth tie-break. The displayed all-n preservation proof, not these eight unary probes, justifies the laws.

**3. Lower bounds and exclusions.**

**Literal j-let theorem [handwritten].** A globally minimum reader of weight at most 48 cannot have parent `(λa.B) j` at depth 1.

If `m≤2`, rewrite A lowers weight, or preserves weight and lowers λ count. If `c_C≤s_B+3`, rewrite B lowers weight, or preserves weight/λ count and lowers depth. Both contradict global minimality.

Otherwise `m≥3` and `c_C≥s_B+4≥4`. The source has at least five λs: s, a, and the three above the retained a. It has four c leaves, the sole j, the retained a, and an s leaf (the zero law requires access to the stream). A reader also needs a nonlinear source binder: the unary suffix N is duplicated in the required output, while the input contributes it once. None of those seven forced leaves already gives a repeated bound variable, so at least one further leaf is necessary. Thus `L≥5`, `V≥8`, `A=V−1≥7`, and the index sum excluding j is at least `m+c_C≥7`. Hence

```text
w = 2L + 4A + index_sum + 4 ≥ 10 + 28 + 7 + 4 = 49.
```

This contradicts the hypothesized budget. The known 46-bit reader bounds the global minimum by 46, so **no global minimum has a literal j-let parent**, without an additional size hypothesis in that corollary. This is a minimum-reader result; it does not assert that every reader in the syntactic family has weight ≥49.

**Closed transport theorem [handwritten + complete computer check].** A globally minimum reader cannot have depth-1 parent `Y j` with Y closed.

The λ-rooted Y case is the preceding theorem. For an application-rooted closed Y, every source s/c leaf lies in C. Both must occur, so C costs at least 9: s costs 2, c costs 3, and connecting them with the zero-price hole takes two applications. Therefore

```text
w = 8 + |C| + |Y| ≤46  ⇒  |Y|≤29.
```

The two children of closed application-rooted Y are themselves closed, each costing at least 4 and at most 23. `closed_transport.py` generates the complete 10,474-term closed basis through 23, then all **47,392** root application pairs through 29. No normality filter is imposed.

- 46,495 Y reduce to a strictly cheaper weak-head lambda. Substitution in R preserves all laws and lowers w, contradicting minimality.
- 301 have certified head cycles. Such Y cannot supply j through `Y j` to the zero normal form; in particular they cannot meet the zero-λ premise.
- 93 equal-price, 476 growing, and 27 capped cases remain: 596 total, all with `|Y|≥22`.

Those 596 cases have `|C|≤16`. The complete generator supplies 552 one-hole contexts through 16 with both s/c present and no λ above the hole. Matching exact total budgets gives **11,620 pairs**. Zero and n=1,2,3 refute every pair except 376 unresolved evaluations. A single failed probe is enough for exclusion; no all-n validity is inferred from finite successes.

`audit_caps.py` encodes exactly those 376 zero probes, closes their rigid c,j,r parameters, and asserts their source sizes and reader weights. A normalizing zero probe would close to the normal form `λc j r.r j`. The frozen `blam-audit` executable reports:

```text
adjudicated 376 terms: 0 halt, 376 diverge, 0 unknown
```

Every verdict is `DIVERGE bb-engine`; input/output wire multisets match exactly. The raw oracle prefilter is disabled by `--no-oracle`; the bb engine still has its own divergence checks, including its internal oracle. These are trusted-engine checks, **not kernel-checked Lean certificates**.

This closes the exceptional pairs and hence the closed-Y minimum case. `closed_transport.log`, `closed_exceptions.txt`, `cap_terms.blc`, `cap_verdicts.log`, and `blam-audit.sha256` preserve the evidence.

**A disjoint double-dispatch bound [handwritten reduction, inherited operand checks].** Suppose the literal source is

```text
R = λs. P D,
P[Z(r)] =β r,             P[U_n(N)] =β c U_(n−1)(N),
D[Z(r)] =β j,             D[U_n(N)] =β N,
```

with P j-free, exactly one j in D at total depth 1, and no source sharing between P and D. The recorded operand minima are `|P|≥20` and `|D|≥25`. Thus `w≥6+2+20+25=53`; R53 attains it. D may contain a zero-λ parent that it forces internally. This closes that source-disjoint redispatch family. It cannot be applied merely because normalization reveals two dispatches, or after expanding a shared let.

For R84's **fixed literal context** `(λx.s(λb t.b(x t)(c t x))) □`, the exact context cost is 44, so every filling has `w=50+|X|≥50`. Its own X costs 34, giving 84. Again this prices the fixed template, not arbitrary contexts with the same semantic behavior.

**4. Honest remainder and next proof step.**

The general zero-λ goal remains open. The new exclusions leave

```text
R = λs.C[Y j],
Y application-rooted, with at least one free s or c occurrence,
(Y j)[Z(r)] having a λ head normal form consumed by C.
```

A left-child occurrence `j Y` cannot supply the zero output's bare j: every surviving residual keeps an argument attached to rigid j. Literal-lambda Y and closed Y are excluded from a minimum as above; bare Y=s/c cannot give a zero lambda. Hence the stated remaining shape is a genuine narrowing.

The simplest surviving semantic pattern is already `Y=s K`: `Y j` is `K j` on zero and `I` on unary. Its context can force the transport and can share the stream, a tail, or a helper across roles. The core minima alone do not justify adding separate first- and second-dispatch prices. A full argument still needs a source-cost inequality for this sharing, or a law-preserving source rewrite that accounts for its capture taxes. The pruning method is promising when the binder receiving j is a literal source binder; a dynamically created binder may receive j only after stream-dependent computation, and the two exact rewrites above then lack a source context to act on.

Resource/accounting details: the final Python check took 15.82 s, one thread, 24.22 MB max RSS. The frozen-engine audit took 0.25 s, two threads, 4.13 MB max RSS. Counting the child basis, context basis, Y terms, pairs and final audit gives 70,414 checked/generated top-level objects, below 100,000. An initial unguarded-normalizer attempt was stopped below 30 s at about 0.7 GB observed RSS without a result; it was replaced by the per-step guarded checker. No run exceeded the stated caps. Only this lane was written; no consults, tracked-file edits or commits were made.

Reproduce from the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/zerolam/check.py
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/zerolam/closed_transport.py > tmp/round4/zerolam/closed_transport.log
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/zerolam/audit_caps.py
RAYON_NUM_THREADS=2 tmp/round4/zerolam/blam-audit adjudicate --file tmp/round4/zerolam/cap_terms.blc --threads 2 --budget1 64 --budget2 4096 --bb-cap 100000 --rescue 10000 --work-mult 2 --no-oracle
```

**5. Coordinator follow-up: anchoring at the lowest zero-rigid ancestor.**

**Verdict:** the ancestor construction is valid and transfers the semantic/cost decomposition. It does **not** transfer the original four-family reduction unchanged. Its whole-output branch becomes a strictly weaker, generalized R1: `R=λs.X*`, with no reason for the literal source to be `λs.Y j`. The absorbing-arm bound and §11's specialized wrapper argument then have no applicable source term Y. The proposed move handles examples such as R53, but does not close the general zero-λ case.

**The ancestor lemma [handwritten].** Let R=λs.M be a full rigid reader with exactly one source j at depth 1. Enumerate j's application ancestors from its immediate parent to M. Some ancestor is zero-rigid, since M[Z(r)] reduces to r j. Let X* be the lowest such ancestor and write M=C[X*]. Every ancestor, and hence X*, has free variables among s,c,j; no λ lies on the hole path of C. Then

```text
X*[Z(r)] =β j  or  X*[Z(r)] =β r j,
w(R) = 6 + |C| + |X*|.
```

The component costs use the original [s,c] frame and price their single hole/j at zero. These conclusions require no minimality.

To prove the zero classification, a rigid subterm cannot be consumed as an operator lambda by its outside context. Its internal reductions can be replaced by a rigid marker. Some residual must supply the final j, since C and the zero input contain none. Thus the retained rigid value has j in it and must fit into the final neutral term r j. The only possible j-containing values are j and r j; j-free prefixes such as r cannot supply the required j. In the r j case the zero wrapper sends a fresh rigid marker h to h; in the j case it sends h to r h. This is precisely the reviewed rigid-hole projection, now with its rigidity premise established by construction.

On each unary input, the same projection works when X* has a rigid head; the all-n untouched-erasure case also works by dispensability. If X* is lambda-valued on unary and the context consumes it, the existing lambda-valued exception remains. Choosing rigidity on zero does not establish rigidity or dispensability on unary.

**Transfer audit.**

| Step of hole §§9–11 | Ancestor anchor |
|---|---|
| Context-freeness and exact `6+|C|+|X|` price | Transfers unchanged. |
| Zero shape A (`r j`) / B (`j`) and projected wrapper | Transfers, by the ancestor lemma. |
| Unary rigid projection; untouched-erasure case | Transfers under exactly those semantic hypotheses. Lambda consumption still needs separate treatment. |
| Operand minima, including j/N ≥25, and bounds on projected wrappers | Transfer: the enumerators cover all source trees with the declared free variables, depth and semantic signatures. They did not require j's parent to be the operand root. |
| Matching costs in a **nontrivial** projected wrapper/operand pair | Transfers whenever the same signature and coverage hypotheses hold. No new audit of the inherited 25-bit cap records is claimed. |
| Replace X by j in shape B/E | Transfers under global minimality: zero is unchanged, every unary run ignores the slot, and the source strictly shrinks. |
| Remove C in shape A/whole | Transfers under global minimality, but yields only `R=λs.X*`. |
| Infer `R=λs.Y j` once C is trivial | **Fails.** This used X being j's immediate parent. |
| Infer j-free Y's absorbing-arm law, `31≤|Y|≤37`, and Y's unary root contraction | **Does not transfer.** An ancestor's root may be P Q with j inside either child; on unary that root may survive. |
| §11.1 index-shift formula | Remains valid for an actual source subtree satisfying the same all-n dispensable-binder hypothesis. Ancestor anchoring does not supply that hypothesis. |
| §11.2 repaired unary-only enumeration of `Y0[ν] j`, and §11.3's transparent-wrapper reduction | **Do not automatically transfer.** Their source syntax, cost split and the binder receiving literal j must be established afresh. |

In particular, retaining the inherited operand catalogues gives the same semantic reductions for the corresponding proper-anchor cases (including the ≥53 j/N route). It does not retain the useful syntactic content of R1. The claim is not that every numerical entry of the old classification has been independently rechecked here.

**Exact minimum-reader statement that does survive [handwritten].** If R is globally minimum under `(w,L,depth)` and its chosen X* satisfies

```text
X*[Z(r)] =β r j,
X*[U_n(N)] =β c U_(n−1)(N) N  for every n≥1,
```

then C is trivial. Proof: λs.X* itself is a reader at the same hole depth, and removing any nontrivial C strictly lowers weight. This conclusion says `R=λs.X*` only. For a zero-λ immediate parent, X* is strictly above that parent, so this branch cannot literally be the original `λs.Y j` family.

At the putative w≤45 budget it leaves `|X*|≤39`. The existing small whole-body check only excludes bodies through 25. There is no nontrivial C to provide the lower bound needed to place X* inside the 25-bit operand catalogue. Consequently this generalized whole-output case is not closed by the ancestor move.

**A β-normal witness to the failed source inference.** The new reader fixture is

```text
R75 = λs.
  s (λb t. b (λx. x t) (c t))
    (s (λb t. b (λa k. k a) (t t)) j).
```

It has `(w,cost,depth,L,V,index_sum,c_count,j_count)`
`(75,71,1,8,13,7,1,1)`, and its literal source is β-normal. Its immediate j-parent is

```text
Q = s (λb t. b (λa k. k a) (t t)) j.
```

The only next ancestor is the body P Q, with
`P=s(λb t.b(λx.x t)(c t))`. For u=U_(n−1)(N):

```text
P[Z(r)]  →* λx.x r,       P[U_n(N)] →* c u,
Q[Z(r)]  →* λk.k j,       Q[U_n(N)] →* (u u) j →* N.
```

The last identity holds for every n: `U_0 U_0 →* K N` and `U_(m+1) U_(m+1) →* U_m U_m`. Hence

```text
R75 Z(r) →* (λx.x r)(λk.k j) →* r j,
R75 U_n(N) →* c u N.
```

Thus X*=P Q is the **whole body**, with zero value r j and unary value c u N. It is not j's parent and is not a literal Y j. The parent operator is application-rooted and stream-dependent, so this is also in the residue left by the first part of this lane; no administrative source redex is available to explain it away. The prices are `|P|=33`, `|Q|=34`, and `w=6+2+33+34=75`.

This witness also distinguishes the ancestor from the source zero-output node: P Q is contracted on zero, and the final r j application comes from `k a` inside Q at source depth 5. On unary, the original root P Q survives as the output's outer application. Therefore neither the depth-1 zero-output-node premise of §9 nor §11's unary root-contraction premise follows from X* being rigid on zero.

R75 refutes an unrestricted structural transfer; it is **not** a ≤45 counterexample or a known minimum. A new theorem specifically using minimality might eliminate this generalized branch, but the existing immediate-parent argument is not that theorem.

For comparison, the proposed repair does work directly on R53: its lowest rigid ancestor is `s K j (s s s)`, giving j/N, so the inherited 25-bit operand price applies. R59 and R84 instead have the whole body as X*. `ancestor_check.py` verifies these four fixed witnesses, their source weights/normality and their ancestor values on zero and n=1..8; `ancestor_check.log` records the results. The all-n proofs above justify the new witness. There was no enumeration or new interpreter battery in this follow-up.
