# root lane report (wave 5): app-rooted and depth-0 shared-let readers

Lane directory `tmp/round4/root/`; running notes `NOTES.md`; scripts `eng/`.
No reader with w <= 45 was found, so nothing was spliced, battery-run or
polished. Neither open family is closed in full. Five sub-families are closed
completely: one by hand, and four by complete pinned checks of 600 to
66,577 terms, each slice under 70 s. The structural reduction that made the checks
small is the main new tool. The live remainder of family (B) is measured and
mapped.

Tags: **[H]** handwritten, **[C]** computer-checked (complete inventory, all
term shapes including redexes; zero law plus unary n = 1..3; every fuel or
size cut-off certified), **[L]** an existing Lean result, cited. Every
replacement argument assumes R is a **minimum** reader under the order
(weight, λ count, depth) with w <= 45, and says so where it uses it.

## 1. Interpreters built

None, and there is no sub-162 claim. The pipeline was validated by building
three correct readers of 63 bits from the 162 body. Each is a template with
an unused self parameter, so the inventories exclude it by N7 (§2.3).

## 2. New exact identities and lemmas

**2.1 Weight of a root let template [H, checked against `rd.weight`].**
Take R = (λx. x B1..Bk) A C1..Ct, where A has k+t+1 leading λs and Σ is its
body under them. Then

    w(R) = 8 + 4k + 4t + Σ|B_l| + Σ_{C≠j}|C_q| + |Σ|.

Here j costs 4 when it is one of the B_l and 0 when it is one of the C_q.
With a let-body chain λy1..yp that consumes C1..Cp, add p. Sampled checks:
35, 13 and the whole Δ3 row, with no mismatch. So **|Σ| <= 27**, and
equality holds only for (λx. x x) (λz a s. Σ) j. The root-let overhead is at
least 18 bits, against 2 for λs.

**2.2 Template view of the short chain [H].** In family (B) with an x-headed
body and a long enough chain in the head copy of A, the head copy binds
every root argument and the stream. R then runs a self-referential template
Σ. Its parameters are bound to z_l ↦ B_l[A/x] (each such call re-runs Σ),
a ↦ j, and y ↦ C. A cheap re-invocation exists: `s z` hands the self copy
to the stream cell and re-runs Σ with (z, a, s) := (bit, tail, next
operand). This is the mechanism behind depth02's d = 2 near miss. Every exact
re-association of a self-application, such as moving j's binder to the root
or letting A under λa, copies Σ once more. For example, T' = (λa z s. Σ') j A
costs |Σ| − 2 + u_a − u_z more. So this family cannot be reduced to known
shapes by moves alone.

**2.3 Forced uses [H].** These hold for any reader. N1: the stream binder's
variable occurs in its body, or else zero and unary give the same output.
N2: j's binder's variable occurs, or else the zero output loses j. N3: c
occurs somewhere in R.

The following hold for a minimum reader:
- N4: x has a non-head use in some operand. This is the definition of a
  shared let, and close46's `minimum_extra_use` forces it for any minimum
  x-headed let.
- N5 and N6: an argument that the head invocation drops is untouched and
  erased in every run. By the transfer lemma (hole lane; reviewed),
  replacing it by the 2-bit leaf keeps both laws. So it already is that
  leaf: x inside the let body (N5), c at the root (N6).
- N7: some non-head use of x sits in an operand whose parameter is used.
  Otherwise every non-head use is a dropped dummy. Contracting the
  then-linear head let saves 6 + f_B.

Requiring every essential parameter to be used makes nested templates very
cheap to enumerate. Each forced use costs index bits under the template's
binders, so the inventories collapse. Of the ~10^6 terms of at most 27 bits
over [s, a, z, c], only 12,936 use all four variables.

**2.4 Two divergence certificates [H].** Let Σ's spine be z_l z_l M⃗, and
let V be the value the head invocation binds to z_l. Then the head becomes
V V M⃗'. Suppose that applying V to (V, M⃗') binds z_l to V again. This
holds when l = 1 and V →β A, as for B_l = x or B_l = (λu. x) c. It also
holds in the four cases of §3.3, where l = 2, V = A c, and A receives
(c, A c, ..); I checked these by hand. Let q = k+t+1 be A's chain length.
- If A then gets fewer than q arguments, the whnf of R s is a λ, which by
  Church–Rosser is never r j.
- Otherwise the head re-invokes the same pattern forever, so there is no
  hnf.

`eng/fc_cert.py` checks the syntactic pattern. I verified the re-binding
condition for every case it certified: all have l = 1, except the §3.3 four.
These certify all 46 fuel cut-offs in §3.2–3.4 and the 2,690 skipped
M1 = z terms of §3.5 (l = 1 there).

## 3. Impossibility and lower-bound results

**3.1 Family (B), j bound by the head chain, every multiplicity [H].**
Let R* = C'[(λy1..ym a. P') Q1..Qm j] be a minimum. depth02 closed
m·k_a <= n_y by the chain swap. For the rest: copies of a are copies of j.
All of them except the one zero survivor are erased in every run. depth02's
copy lemma (ii) puts them at λ-depth 0 in P'. Replace each of them by y_m,
which is index 1 there: +1 bit each, and replay preserves both laws. Then
k_a = 1, and the swap changes the weight by m − n_y'. The total change is
(k_a−1) + m − n_y − (k_a−1) = m − n_y <= 0, because an unused y_i would be an
erasing chain argument and strictly removable. L and d are unchanged. The
result is a reader no heavier than R* in which j is the direct argument of a
linear λ, so it is again a minimum, and depth02 Results B/C exclude it.
Hypotheses: minimality, depth02 B/C/E [C], copy lemma (ii) [H], transfer
lemma [H, reviewed]. This closes the chain-type remainder of depth02's
case (d) (840 terms at w <= 37 there).

**3.2 Family (B), x-headed full chain [C].**
R = (λx. x B1..Bk) A C1..Ct with j = C_i on the root spine and A having at
least k+t+1 leading λs, with every B_l, C_q and Σ of any shape.

The inventory under N1–N7 and w <= 45 has 32,228 instances
(`eng/fullchain.py`; the counts match an independent DP, `eng/cnt_k1t1.py`):

| (k, t) | instances |
|---|---:|
| (1, 1) | 29,840 (of which 12,936 have B1 = x, the Δ3 row) |
| (1, 2) | 1,812 |
| (1, 3) | 12 |
| (2, 1) | 528 |
| (2, 2) | 36 |

Every other (k, t) is empty. The run `eng/fc_run.py` (lazy hnf comparison,
fuel 1,500) found 0 passes, 32,190 definite failures and 38 cut-offs, all
certified by 2.4 (`eng/fc_cert.py`). **No minimum reader with w <= 45 lies
in this family.** Restricted to Δ3, z-using templates fail with no
minimality hypothesis at all (`eng/delta3.py`: 12,829 failures and 107
cut-offs at fuel 3,000, then `recap.py` and `certzz.py`).

**3.3 Family (A1), j literally a let-body operand, full chain [C].**
R = (λx. x B1..j..Bk) (λz⃗ y⃗ s. Σ) C⃗ (`eng/fullchainA.py`): 2,664
instances, of which (k, t) = (2, 0) has 2,640 and (2, 1) has 24. k = 1 is
empty by N4. There are 0 passes and 4 cut-offs. Those 4 are Σ = z2 z2 X..
with B2 = x c, certified by 2.4.

**3.4 λ-headed let body, full chain [C].**
R = (λx y⃗. x B⃗) (λz⃗ y'⃗ s. Σ) C⃗, where the body's chain consumes C1..Cp
before j (`eng/fullchainP.py`): 600 instances and 0 passes. The 4 cut-offs
are certified by 2.4.

**3.5 Δ-root hand-off, h = 2, z-headed body [C].**
R = (λx. x x) (λz a. Σ2) j with Σ2 = z M1..Mp. A's chain stops before the
stream, and the head invocation re-invokes A at once. w = 16 + |Σ2| <= 45,
with a and c forced and all M shapes allowed.

`eng/handoff2.py` has 66,577 instances: p = 1 has 26,712, p = 2 has 23,670,
p >= 3 has 16,195. There are 0 passes.
- 2,690 have M1 = z and are certified by 2.4.
- 62,375 fail definitively.
- 1,512 hit the fuel cut-off. `blam adjudicate --no-oracle` returns DIVERGE
  on the zero instance λc j r. R (cons K r) for 1,511 of them. The last one,
  Σ2 = z (I z) a c a, diverges on all three unary instances.

The blam encoding was validated first: the 165's zero instance halts with
the 13-bit nf λc j r. r j, and Ω diverges.

With 3.2 this closes every Δ-root shape whose A has a chain of length 2 or
3 and a z-headed or λ-headed body. Still open in the Δ-root: a
redex-headed Σ2 (221,531 raw terms, a nested let in A's body) and h = 1.
For h = 1, A = λz. z M⃗ and the head becomes M1[A] after two invocations;
there are 507,042 raw terms, of which 173,941 have a λ-headed M1. Both need
the control-flow pruning of §4 before a check fits the cap.

**3.6 Lemma P, the pull for family (A1) [H, from close46 `push_context_price`].**
Take R = (λx. h B1..Bk) A C⃗ with j inside B_l at application depth, under
λx only. If x does not occur in B_l..B_k, then

    R =β (λx. h B1..B_{l−1}) A B_l↓..B_k↓ C⃗,

which is lighter by exactly 4 + (number of c leaves in B_l..B_k) >= 4
(j leaves depth 1, and each c drops one index). Hence in a minimum (A1) reader x occurs in j's operand or in
a later one. Pulling maps (A1) into (B), and the push identity maps (B)
into (A1) at a cost of +4 + f_C. The two families are one problem.

## 4. What remains, and my read

**Measured remainder of (B)** (intuition only: `eng/classify_d3.py` on
depth02's gen3b-filtered short-chain terms at w <= 35; this is not a check).
There are 66,575 short-chain terms. 41,189 have dead heads (a c-headed body
or A, or j at the head). Of the rest:

| sub-family | terms | status |
|---|---:|---|
| x-headed full chain | 2,445 | closed (§3.2) |
| λ-headed let body | 816 | full-chain part closed (§3.4) |
| hand-off, head z_l with B_l = x (A re-invokes itself) | 6,197 | Δ-root h=2 part (161) closed (§3.5); Δ-root h=1 959 open; other (k,t) open |
| hand-off, head z_l with B_l an application | 5,287 | open |
| hand-off, head z_l with B_l a λ (template in the let body) | 2,364 | open |
| hand-off, head y (control passes to a pending root argument) | 1,466 | open |
| head redex / nested-redex head / j nested | 179 / 78 / 190 | open |

So about 15–17% of the live short-chain family is closed. Its core is the
"template" case, where the head copy binds everything. The bulk is
**hand-off**: A's chain ends early, and its body passes control to a
parameter. A then runs as a queue machine. Each invocation binds h
arguments from the spine and pushes its operand list M⃗[σ], until the
head is no longer A: it becomes s (the G_c-style mode switch), a let-body
operand, or a root argument.

**Family (A).** It is open beyond §3.3 and Lemma P. Three parts remain:
- (A1): j inside a let-body operand with x in the same or a later operand,
  where the chain hands off.
- (A2): j under a λ inside the let's argument A.
- (A3): j under a λ inside a pending root argument.

(A3)'s natural carrier λk. k j costs 10. R84's parent gives exactly this
shape on zero.

**Is there a sub-162 here?** I think not. Every cheap mechanism found has
the wrong arity or loops: z z patterns, the self-feed s z, recursive
re-reads. A re-read of the template can produce c r N only from a fake
zero cell cons K (c r), which costs about 22 bits. But that is a
judgement, not a proof.

**Next step and technique.** The closures above all rest on one
observation. Once control flow fixes which source λ binds the stream and
which binds j, their variables must be used. Those uses sit under every
binder of the pieces that carry them, so nested templates have tiny
inventories: one hand-off sub-case,
(λx. x x) (λz. z (λu1 u2 u3. E)) j, has 120 candidate bodies in all
(forced: s, j, c, and u1 or z). `eng/h1full.py` checks them; none is a
reader.

The natural generalisation is a **control-flow-guided enumerator**:
- narrow the source from its head, branching on a piece's head symbol and
  arity only when the head reduction reaches it;
- follow the pre-stream reduction, which is closed and deterministic,
  until the stream binder and j's binder are fixed;
- then generate their bodies with the forced uses and the exact
  remaining budget.

This is the first-dispatch method made sound for shared code. It should
cover all of (B) and (A1) within the caps if the inventories stay as small
as in §3.2–3.4. I have not built it. It needs a soundness argument for
lazily materialised holes: a hole the run never reaches is dispensable by
the transfer lemma and is priced at its 2-bit leaf. I believe that
argument goes through.

## 5. Compute disclosure

Every check was under the caps. The largest were 66,577 instances (§3.5,
run in four slices of 69, 10, 18 and 24 s; blam took 0.2 s at 2 threads)
and 32,228 (§3.2). Δ3 alone (12,936 terms) took 94 s at fuel 3,000; the
other runs took under 7 s.
All runs were single-threaded and used well under 1 GB. The intuition
classifications regenerated depth02's filtered terms at w <= 33 and 35
(about 18k and 67k short-chain terms, 2–3 s). They were not checks, and
depth02's enumerations were not extended. No tracked file was modified;
nothing was committed.
