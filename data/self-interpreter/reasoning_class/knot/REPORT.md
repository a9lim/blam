# Lane "knot": recursion that is not an opaque knot

(・_・) No sub-162. Final state after the follow-up (§5 supersedes §3 where
they differ).
- **Lemma B.** In the one-occurrence, two-port opaque model, every recursion
  apparatus costs at least 26 + a + b bits for all depth taxes a ≥ 2,
  b ≥ 3: 33 in the 162 frame and 31 in the 165's. The 162's knot is the
  unique minimum.
  - Steps (i)–(iii): kernel-checked in `KnotHeads.lean`.
  - m ≤ 2: closed by a finite exhaustion, `m2_enum.py`.
  - Codex reviewed it adversarially and it survived. The review narrowed the
    claim to the model and to the canonical two-port NEXT.
- **Lemma A.** The first head never costs less than 5 bits in any context.
  Handwritten, computer-spot-checked.
- **Lemma C.** The driver template stays at 22 bits with a unique minimum.
  Its original proof was false; it is repaired by a joint finite check.
- **Knotless recursion.** No knotless sub-162 has a first head with three
  nonlinear binders (pinned check plus three hand cases).
- **Still open:**
  - knotless first heads with exactly two nonlinear binders;
  - apparatus outside the model: interleaved lets, several body
    occurrences, crafted calls into B;
  - NEXTs with more than two recursive ports.

Files (all in this directory): NOTES.md (working record), lemmaA_check.py,
reader_ids.py, check2.py, v_nextlet.lam, v_contfirst.lam, v_nolet.lam;
follow-up: m2_enum.py, KnotHeads.lean, lemmaC_joint.py, knotless_K1.py,
review_prompt.md / review_reply.txt (Codex review of Lemma B and C),
review2_prompt.md / review2_reply.txt (Codex review of K1, the first-head-use
lemma and the Lean file).

## 1. Complete interpreters

No new algorithm. Three pricing controls were built to confirm the paper
arithmetic. Each is beta-equal to the 162 (a different let placement), so
its letopt minimum is the 162 and polish was not run (each letopt run can
take up to 240 s, beyond the lane's per-run budget). The battery contract
was run with 2 threads via `check2.py`, which calls `battery.check`.

| file | bits | battery (2 threads) | idea |
|---|---:|---|---|
| v_nextlet.lam | 164 | `ok=667 skip=1 fail=0` | intL let wrapped around NEXT inside \cont \list (paper +2) |
| v_contfirst.lam | 165 | `ok=667 skip=1 fail=0` | binder order \cont \intL \list (paper +3) |
| v_nolet.lam | 167 | `ok=667 skip=1 fail=0` | x x at both call sites: the Lean 167 witness, written out |

## 2. Exact identities

Write the 162's reader as `R(s) = s I (λu. s (λq. c) (s s u)) n`, with `n`
standing for NEXT_c and c, n, t rigid. These were computer-checked by
`reader_ids.py`, which compares normal forms:

```
R I = c        R K = R F = n        R (λa b m. m m) = n n
R (cons K t) = t n                  R (cons F t) = c t (t t n)
```

Proofs, each a few steps:
- `cons F t` applied to itself is `F F t t = t t`. Hence the variable arm
  on a crafted one-cell stream becomes `c t (t t n)`: the skip is a
  diagonal on the cell's tail.
- `cons K t I V n = K t V n = t n`.
- The rest are direct.

These are the 162-frame counterparts of the 165's `R Z_t = t t`. The
reset `P c I = c` and the packet mode `P c J = c NEXT_c` (recursion lane)
are already recorded.

**Parse-ahead identity (handwritten).** Suppose the first head calls
`k1 e f rest` on an APP, i.e. it parses both children. Then
`k1 e f rest = F (C A(e)) (I k2) f rest = k2 f rest = C B(e,f) rest`. So J = I
works, and the redex `I k2` contracts to `k2`, which frees J's 6 bits and
its application node. This is the concrete form of the "IdentityCut is not
forced" escape. It does not pay, because H then needs two parser references
of its own, e.g. `λk. intL (bit1 k (λe. intL (k e)))`, about 37 bits.

## 3. Lower bounds and obstructions

Frame. 162 = 129 + 33. Here 129 is the body B with both recursive heads
deleted and their application nodes kept. The 33 is the knot (20), λintL (2),
and intL at zero-based depths 3 and 4 (5 + 6). Write E = T[B[H,J]], where T
is the context around B. H is the first head, in frame [bit1, list, cont]
plus T's binders. J is the second head, which also has exp in its frame.

**Lemma A (heads).** Handwritten. `lemmaA_check.py` spot-checks it in 0.5 s
by finding a failing source for each fill.
- A variable bound by T sits at index ≥ 3 from H and ≥ 4 from J, so it
  costs ≥ 5 and ≥ 6 bits.
- Every H of at most 4 bits is one of bit1, list, cont or I. Each fails on
  `λa.a` (0010) for every context T, assuming B receives genuine
  (cont, list) arguments. The results are respectively a bare λ, C applied
  to three arguments, `C k1 r2`, and C applied to one argument.
- So **|H| ≥ 5 in every context**.
- Every J of at most 5 bits is one of exp, bit1, list, cont or I. Each fails
  on `00011010` provided the first parse ends in the ordinary state
  (IdentityCut).
- Without IdentityCut, J = I succeeds (parse-ahead, §2). The cost then
  moves into H.

**Lemma B (opaque two-head bound, arbitrary heads).** Handwritten. It uses
the kernel-checked `nonlinear_ghost_bound` and `one_nonlinear_normalizes`,
and the recursion lane's Chain-preservation lemma.
- *Model.* h is a rigid free variable standing for B. The term t is closed
  apart from h, which occurs once, as the spine `h H J`. Correctness is
  `t =β h t t`. Price `ghost'(t)` is `ghostCost(t)` plus a depth tax of 3
  per leaf of H bound outside the spine and 4 per such leaf of J (the 162
  frame). The interpreter then costs `129 + ghost'(t) − 4`.
- *Claim.* If t has m ≥ 3 nonlinear binders, `ghost'(t) ≥ 37`, so recursion
  overhead is ≥ 33. The bound is tight: the 162's knot has m = 3.
- *Proof.*
  1. t has no β-normal form, so m ≥ 2.
  2. Take a common reduct u of t and `h t t`. Its head spine is a residual
     of `h H J`, and the spine's root is never a redex. So H's instance is
     β-equal to t, and likewise J's.
  3. A closed term cannot be β-equal to t, since every reduct of t keeps h
     free. So each head has a leaf bound outside the spine, and the tax is
     ≥ 7.
  4. With one free leaf, A = V ≥ 2m and L ≥ m. Hence
     `ghost' ≥ 2L + 2A + 2V + 7 ≥ 10m + 7 ≥ 37`.
- *Consequences.*
  - The knot lane's `two_call_overhead` assumed one parser binder. This
    lemma drops that assumption: any number of lets, mixed heads such as
    `x x` together with p, and any knot syntax.
  - In the separated class's frame, the same count gives exactly the
    canonical depths. The class bound `116 + w(R)` therefore holds with the
    opaque knot replaced by any opaque recursion apparatus with m ≥ 3.
  - Equality forces L = 3, A = V = 6, every index 0 and one outside leaf per
    head: the 162's knot shape.
- *m = 2.*
  - Proved impossible when a nonlinear binder lies inside a head. The spine
    would never be duplicated, but `h t t` needs at least 3 h's.
  - In the root-LCA shape `(λx1.M1)(λx2.M2)`, the spine must lie in M2.
    Each head then needs ≥ 2 leaves of x2, because a single leaf bound to a
    Chain generator copy stays Chain. So `ghost' ≥ 42` (overhead 38: the
    no-let knot).
  - Other m = 2 shapes (non-root lowest common ancestor, extra linear lets)
    are **not** written out. This is the lemma's one open case.

**Lemma C (driver template).** Handwritten.
- The template is `E = D G` with `G = λx.(λp.B)(D' x)` and heads H = J = p.
  The record's 192-bit reset bootstraps and the canonical knot both fit it,
  and `|T| = 8 + |D| + |D'|`.
- Every D' under 6 bits fails: x, I and λy.x, plus F at 6 bits.
  - p := G binds cont to the stream.
  - p := I gives `k r`.
  - p := λy.G drops the continuation.
  - F gives r.
  So `x x` is the unique 6-bit D'.
- Every closed D under 8 bits fails: I, F and K (6 and 7 bits).
  `I G = G`, `F G = I` and `K G = λy.G` each mis-bind the root. So Δ is the
  unique 8-bit D.
- Hence |T| ≥ 22 in this template, equal to the 162's knot. The cheapest
  driver built from §2's reader identities is `λx. x x x I x`
  (`P G I G = G G`). It is 22 bits, against Δ's 8.

**Knotless reduction.** Handwritten.
- For sources `λa.M`, J is erased, so a knotless fill's H alone must give
  `H k (<M>N) =β k v N` for rigid k, with `v (cell a z) =β M`. Here C is
  rigid, so H can only apply k1, and only once, at the head.
- H is therefore a complete parser. A sub-162 also needs |H| ≤ 30, |J| ≤ 14
  and IdentityCut false.
- Wrapping H into an exact interpreter costs about 41 bits, and into a
  remainder extractor about 73. So neither the global floor (40) nor
  R_min ≥ 27 bounds H directly.

**Stream remark.** Handwritten, standard. A genuine stream is affine data:
its λf and the bits K and F are linear. A handler context whose own binders
are linear therefore stays affine after substitution and strongly
normalizes. The stream can drive iteration only along unary codes
(`cons F t` applied to itself is `t t`). Every nonlinear binder that
recursion needs must be the term's own. This is why "stream-driven"
designs pay for a self-passed context, as in the record's 191.

## 4. The prompt's four directions, and an honest read

- **Reader diagonal.** In the 162 frame NEXT_c depends on cont, so it cannot
  be the knot's closed generator. The reader can produce `n n`, and `t t n`
  on `cons F t` (§2). But using the reader as the self-applicator needs B to
  be reachable before the knot exists, which means a crafted call: Lemma C's
  template, ≥ 22 bits, with the best crafted driver at 22 bits against Δ's 8.
- **Fusing x x with s s.**
  - Routing the skip through the parser loops: `P c s = c r N` on a variable
    stream *is* the variable arm.
  - The skip on genuine data only ever yields `K N`.
  - A shared Δ costs 11 bits (the record's 176).
  - Lemma B shows that no opaque re-plumbing of the self-application gains.
- **Knotless.** Reduced to one obligation: a first head of ≤ 30 bits that
  is a complete parser (§3). The 312-bit parent replay is consistent with
  this; it spends 181 bits on H.
- **Stream-driven.** Streams are affine, so they supply none of the
  nonlinear binders. A self-passed context is the only route, and it pays
  per site.

**Read.** I do not think a sub-162 hides in the recursion.
- With B fixed, every scheme I can state costs at least the 162's 33, except
  in three corners:
  1. m = 2 opaque shapes other than the root-LCA one. All examples cost ≥ 38.
  2. Non-transparent B outside the driver template. All examples cost ≥ 192.
  3. A ≤ 30-bit knotless parser head.
- Changing B to make recursion cheaper only moves depth. NEXT sits under
  \cont \list \bit1, so d1 ≥ 3 here and ≥ 2 in any CPS-NEXT frame. Every
  placement that lowers it is a let move, already in letopt's
  neighbourhood (164 / 165 / 166 measured or recorded).
- So the remaining gap below 162 is the reader weight (`w(R) ≥ 46`) and
  NEXT/value protocol changes, not recursion. Lemma B lets the separated
  class absorb any opaque recursion with m ≥ 3, so a sub-162 in that wider
  class still needs `w(R) ≤ 45`.

**Next proof steps, by value.**
1. Close the m = 2 case of Lemma B. A residual-tracking version of the
   Chain argument should make it a Lean theorem: the recursion lane's
   `RecursionObstruction.lean` already has Chain preservation. The m ≥ 3
   case is two lines from `nonlinear_ghost_bound` once the "each head has
   an outside leaf" lemma is formal; that lemma needs a residual lemma for a
   rigid-headed spine.
2. A floor-style classification of ≤ 30-bit first heads against
   `H k (<M>N) = k v N`. That would close knotless entirely, and 30 bits is
   well below the 37–39 where the global floor's inventories explode.
3. A non-transparency bound: if B is ever applied to a non-genuine
   (cont, list) pair, price the crafted arguments. The cheapest crafted
   identities are §2's; every use found costs more than Δ.

## 5. Follow-up: Lemma B finished, reviewed and partly formalized; knotless K1 closed

This section supersedes the m = 2 status of Lemma B in §3, its "any opaque
recursion apparatus" wording, and Lemma C's proof.

### 5.1 Lemma B, final form

**Model.** h is a rigid free variable standing for B. It occurs exactly once
in t, as the spine `h H J`. The spine may sit anywhere and may be applied to
further arguments. The ports H and J may use the apparatus's binders and
their own, but not B's. Correctness is `t =β h t t`. Price ghost'(t) is
ghostCost(t) plus a per outer leaf of H and b per outer leaf of J (outer
means bound outside the spine). The interpreter costs `|B| + ghost'(t) − 4`.

**Theorem.** For every a ≥ 2 and b ≥ 3, every such t has
`ghost'(t) ≥ 30 + a + b`, so the overhead is ≥ 26 + a + b. The unique
minimum is `(λx. x x)(λx. (λp. h p p)(x x))`. At the 162's (3, 4) the
overhead is ≥ 33. At the 165's (2, 3) it is ≥ 31.

**Proof and status.**
1. *No normal form, so m ≥ 2.* Kernel-checked: `binary_fixedpoint_no_nf`
   and `binary_fixedpoint_count` in `KnotHeads.lean`.
2. *Each port has an outer leaf, so tax ≥ a + b.* Kernel-checked:
   `no_closed_first_head` and `no_closed_second_head`. The proof is an
   invariant SG, "every h heads a spine whose tracked argument is a reduct
   of the closed port", preserved by β (`sg_shift`, `sg_subst`, `sg_beta`,
   `sg_betas`). Confluence then makes a closed reduct of t meet the
   h-headed `h t1 t2`.
3. *Counting.* `ghost' ≥ 10m + a + b`, so m ≥ 3 gives the bound.
   Kernel-checked: `binary_fixedpoint_count`, `three_nonlinear_thirty`.
   The tax glue is handwritten: a non-closed port has a leaf that crosses B's
   a or b binders.
4. *m ≤ 2 by finite exhaustion.* Computer-checked with `m2_enum.py` and
   reproduced by Codex.
   - From step 2, any counterexample has V ≤ 6 and L ≤ 7, so the space is
     finite.
   - The script enumerates every term by exact ghost' cost.
   - Each term is refuted soundly:
     - its principal hnf must be `h X Y`, recursively;
     - "no hnf" is certified by an exact repeat or by `R →⁺ R B⃗`.
   - Results:
     - taxes (3, 4), every m, ghost' ≤ 37: 234,585 terms, all refuted except
       the knot.
     - taxes (2, 3), ghost' ≤ 35: 244,432 terms, all refuted except the knot.
     - The Chain lemma is not used.
5. *Other depths.* `ghost' − (30+a+b) = (g−30) + a(O_H−1) + b(O_J−1)` is
   nondecreasing in a and b, and the set of fixed points does not depend on
   the taxes. So the (2, 3) run covers every a ≥ 2, b ≥ 3, and uniqueness
   extends too.

### 5.2 Review (Codex, fresh context, `gaslamp` label `knot-lemmaB`; reply in `review_reply.txt`)

| item | verdict |
|---|---|
| (i), (iii) | correct |
| (ii) | correct; a cleaner closed-port argument was suggested, and that is the one Lean now proves |
| `m2_enum.py` | reproduced. Coverage, taxes, caps, starting cost, the hnf test, the `loops` certificate and resource handling all pass. Fixed: the `loops` docstring said "iff" (it is only a sound implication), and a misleading label. |
| (v) | correct; uniqueness extends |
| model | coherent but **narrower than "any opaque apparatus"** (see below) |
| class consequence | valid only for the canonical two-port body |
| Lemma C | its proof was false; the bound is repaired by a joint check (§5.3) |

What the model excludes:
- several occurrences of the body;
- apparatus binders interleaved with B's binders, e.g. `v_nextlet`'s let
  around NEXT;
- sharing around a proper subexpression of B;
- recursion that exploits B's actual behaviour.

The claim is therefore "any knot syntax and any head terms **within the
model**".

For the separated class, the accounting is exact for the canonical NEXT at
reader depth d: a = 2+d and b = 3+d give `|E| ≥ 116 + cost(R) + 4d = 116 + w(R)`.
The class's opaque-knot hypothesis therefore widens to **every
one-occurrence, two-port opaque apparatus** for the canonical NEXT. The
live class also admits multi-hole knots and NEXTs with other numbers of
recursive occurrences. Codex's example has three p occurrences:
`λb. b (p (λf. c Abs f)) (p (λf. p (λg. c App f g)))`. Those cases are not
covered.
- A k-port version of steps (i)–(iii) gives overhead ≥ 30 + Σaᵢ − 2k.
- The canonical let-knot costs 22 + 2k + Σaᵢ.
- So the count is tight only at k = 2. Closing k = 3 would need the same
  enumeration with three ports.

### 5.3 Lemma C repaired

Codex's counterexample: `d(x) = x` works with D = Y, because `Y G` reduces
to the knot itself. The proof's separate bound on D' was therefore wrong,
and `λa b c. c` is a second 8-bit closed driver.

Repair, reproduced here in `lemmaC_joint.py` (1.7 s):
- It checks every closed D and every d in frame [x] with |D| + |d| ≤ 14:
  138 pairs (Codex's generator counted 87).
- Each pair is built as `E = D (λx. (λp.B) d)` with the real B and probed
  on sources 0010 and 000010.
- 136 pairs give distinct normal forms on both probes.
- `(λg. g (g g), x)` passes 0010 and fails 000010.
- The unique survivor is (Δ, x x).

So the template's 22 bits, and its unique minimum, stand as a finite check.

### 5.4 Lean (`KnotHeads.lean`, this directory; Codex compiled and audited it in the second review)

- **Status:** kernel-checked; axioms only `propext` and `Quot.sound`;
  compiles in under a second with `-j2`.
- **Proves:** steps (i)–(iii) of Lemma B. Key theorems:
  `no_closed_first_head`, `no_closed_second_head`,
  `binary_fixedpoint_no_nf`, `binary_fixedpoint_count`,
  `three_nonlinear_thirty`.
- **Codex's audit:**
  - The one-occurrence syntax "h H J with H closed" does imply
    `SG H false 0 t` (`spineL` with `Betas.refl`, propagated outward).
  - SG also tolerates extra applications above the tracked spine, so it is
    more permissive, which is harmless.
  - `freeLeaves 0 t = 1` counts all free occurrences, which matches "h once
    and no other free variables".
- **Not formalized:**
  - the tax convention;
  - the m ≤ 2 exhaustion (`m2_enum.py`, Python);
  - the repaired Lemma C check (`lemmaC_joint.py`).

### 5.5 Knotless first head of ≤ 30 bits

**Case split.** Handwritten, from known results.
- A knotless sub-162 needs |H| + |J| ≤ 32.
- H is not Chain (recursion lane, Lean), so nl(H) ≥ 2.
- The wire inequality `10 nl + 4 fl ≤ |H| + 2` (fl = leaves of bit1, list,
  cont) leaves two cases:
  - **K1:** nl = 3. Then H is closed, |H| ∈ {28, 29, 30}, V = 6 exactly and
    L ∈ {3, 4}. So |J| ≤ 4, i.e. J ∈ {exp, bit1, list, I}.
  - **K2:** nl = 2, with `18 + 4 fl ≤ |H| ≤ 30` and |J| ≤ 32 − |H|.

**K1 is closed.** `knotless_K1.py`, single thread, 48 s, plus hand.
- It covers every closed three-nonlinear-binder H of ≤ 30 bits (1,602 of
  them) against all four J: 6,408 exact knotless interpreters, each probed
  on source 0010.
  - 5,884 give distinct computed normal forms.
  - 524 run out of fuel. Of these, 512 are refuted by a sound Böhm
    comparison with the target normal form (hnf shape recursively, or a
    certified missing hnf).
  - 12 remain: three heads × four J, refuted by hand. Each H applied to
    anything head-reduces forever, independently of J.
    - `(λa.a a)(λa. a (λb. b (a b)))`: `G X → X S(X)`,
      `S(X) Y → Y (X Y)`.
    - `(λa.a a)(λa. a (λb. a b b))`: `G X → X T(X)`, `T(X) Y → X Y Y`.
    - `(λa.a a)(λa b. a a (b b))`: `G G X R → G G (X X) R`.
- So **no knotless sub-162 has a first head with three nonlinear binders**.

**First-head-use lemma.** Handwritten. Codex repaired the proof;
`review2_reply.txt` has the review.
- Suppose H's free variables lie within {cont} ("mode-blind").
- Compare the ABS source `λa.X` with suffix `<Y>N` against the APP source
  `X Y`. NEXT gives H the same stream in both. The term then reaches the
  first head occurrence of k or C with arguments `P1(k,C)..Pm(k,C)`, and
  everything up to that point is identical in both modes, with k a
  parameter.
- **Repair (Codex).** If `R[k := k_ABS] =β T` with T β-normal and free of
  C and k, then `R =β T` for k rigid, and hence `R[k := K] =β T` for every K.
  A demanded residual of `k_ABS` would leave the rigid C in the normal form.
  This transports `P2 =β <Y>N` from ABS mode to APP mode.
- With that:
  - If C comes first, P2 would have to be both `<Y>N` and N: impossible.
  - If k comes first, ABS forces m = 2, so in APP mode J gets a term
    β-equal to the genuine rest `<Y>N`, together with `P1(k_APP,C)`.
- It does **not** follow that P1 is mode-independent or the canonical child
  value. ABS constrains only `A(P1)`. So the lemma gives the genuine-rest
  half of the ordinary first-child cut, not the cut itself.
- J has ≤ 1 nonlinear binder, so its recursion must be released from P1. That
  is possible in principle; for X = I, `λe. e (λa w. λx. x) PARSER`
  satisfies the I-contract. A cheap first head therefore has to package the
  parser into its values, or read the mode from bit1 or list.

**K2 corollary.** If H is mode-blind and |H| ≥ 28, the lemma leaves only
J = exp:
- J = bit1 returns the bare rest.
- J = list puts three arguments on C.
- J = I puts one argument on C.

With J = exp, APP mode becomes `P1 k2 <Y>N`: the left value itself must
parse.

**K2 is open.** Closed nl = 2 terms of ≤ 30 bits alone number over 106,688.
This is not a pinned case, so closing it needs a floor-style classification
against the obligation `H k (<M>N) =β k v N` together with the lemma above.

### 5.6 Updated read and next steps

The conditional 162 theorem is now less conditional, in a precise sense.
For the canonical two-port NEXT, the separated class's "opaque knot"
hypothesis can be replaced by any one-occurrence, two-port opaque recursion
apparatus. Any knot syntax, any heads and any lets around the whole body
qualify, and the bound `116 + w(R)` is unchanged; the 162's knot is the
unique cheapest apparatus. Recursion is not where a sub-162 hides, unless it
leaves the model.

Next steps, most valuable first:
1. **A k-port version** for NEXTs with three or more recursive occurrences
   (Codex's example). Steps (i)–(iii) give overhead ≥ 30 + Σaᵢ − 2k, against
   the canonical 22 + 2k + Σaᵢ (handwritten). That is tight only at k = 2,
   so k = 3 needs the same exhaustion with a three-port spine, from base
   taxes (2, 2, 2) up to ghost' ≤ 39. That is larger than the runs here; I
   did not run it.
2. **Interleaved apparatus.** Lets inside B (v_nextlet's placement) and
   several body occurrences need a multi-hole model, i.e. B split at the
   let's position.
3. **Knotless K2.** First heads with exactly two incomparable nonlinear
   binders, `18 + 4 fl ≤ |H| ≤ 30`. Mode-blind heads must hand J the genuine
   rest (first-head-use lemma), and for |H| ≥ 28 only J = exp survives. A
   floor-style classification against `H k (<M>N) =β k v N` is the tool.
