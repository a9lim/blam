### Verdict: **gap** (theorem is true and no counterexample $< 43$ bits exists; two localized proof gaps in the text of Part 2, both repairable with $\ge 3$ bits of margin to spare)

I could not construct any reader body below 43 bits or any second 43-bit reader body. However, pushing hard on the four requested areas uncovered **two localized gaps** in the handwritten argument of [REPORT.md](file:///Users/a9lim/Work/blam/tmp/overnight/reader-proof/REPORT.md):
1. **Gap 1 (Lemma 2.3(c), self-passing walkers):** The 24-bit syntax count for a walker assumes every walker has an explicit tail binder `λr` (2), tail leaf `r` (2), and two selection nodes on the bit `b` (4). An $\eta$/stream-node-compressed walker avoids `λr`/`r` on the bit-test side and uses the stream's own second node `((Y β_i) τ_i)` as the second selection node on `β_i`, reducing the walker core from 24 bits to **22 bits** (verified: `W = λw b. b I (w w)`, size 22, satisfies `P_0 (W W) →* N` and `P_i (W W) →* (W W) P_{i-1}` for $i \ge 1$; a clean working walker is `W2 = λw r. r (λb. b I (w w))` at 30 bits). Because `W W` expects a cell on the next step rather than `(bit, tail)`, turning the 22-bit core into a working multi-step walker requires an adapter, so the theorem's conclusion holds with large margin, but the 24-bit count as written is not tight for the pieces it names.
2. **Gap 2 (§2.4 Shape (γ1) dominance line for "any other operand `O`" when `O = s s`):** Line 664–668 claims that in shape (γ1) (no $N$-valued operand), *"Any other operand `O` (`cont`, `s s`, `s F`, `s K`, a second `next`, …) can serve as an output argument in neither arm except `cont` for `V` … so it adds at least `2 + |O| + 2 ≥ 8` for `|O| ≥ 4` over the rows above."* This overlooks that `O = s s` (`|O| = 6`, reducing to `K R` on the zero stream and `Q = K N` on the variable stream) is **half of the $N$-source**: binding `O = s s` to `q` supplies `Q = K N` to `V` and replaces the 6-bit meeting subterm `s s` (or `r r`) inside `V` by a 2-bit leaf `q` (`q X →* N`), while on the zero stream `q` (`K R`) can even serve as a data consumer `q u next →* R next`. Thus `O = s s` is not purely additive over the rows of the `(γ1)` table—it saves 4 bits inside `V`'s $N$-source. Re-pricing it properly (below) still gives `|B| ≥ 50` (and concrete realization `58` bits), well above 43.

Below is the detailed adversarial audit across all four target areas, followed by a list of what was checked mechanically.

---

### Detailed Audit of the Four Target Areas

#### 1. Residual-tracing decomposition (§2.1), unexpected stream-node roles (Lemma 2.6), and lets/knots (Lemma 2.7)

* **Head-path decomposition (§2.1 & T3):**
  * **Checked:** Every reader body $B$ has open HNF `s A_1 … A_k` ($k \ge 1$, T2) and symbolic HNF $B[S/s] \to^* \beta A_1 \dots A_k$ ($k \ge 2$) or $\tau A_1$ (T3). Because $S = \lambda h. h \beta \tau$ is affine and $\beta, \tau$ are fresh rigid variables, head reduction of $B[S/s]$ terminates and consists strictly of cell steps ($S Y \to Y \beta \tau$) and $\lambda$-steps on residuals of lambdas of $B$.
  * **Minor precision note on `d` (lines 309–314):** The text states *"every lambda on the head path encloses [the selection node] … so `d` equals the number of head-path $\lambda$-steps on original lambdas"*. Strictly speaking, if a head-path $\lambda$-step is `(λy. M) Q` where the selection node comes from inside $Q$ (rather than $M$), then `λy` does *not* syntactically enclose $Q$ in $B$. However, by T10, a head-path let `(λy. M) Q` in a minimum reader body cannot be affine with $Q$ containing the selection unless `fl(Q) ≥ 2` and costs $\ge 4 + 2m$ extra bits for the let scaffolding, which strictly dominates any depth saving. Making it explicit that $Z, V$ lie in the body of the head-path abstractions (or pricing the let via T10) closes this cleanly.

* **Stream-node shortcuts (Lemma 2.6):**
  * **Checked:** Every cell contraction `S Y → (Y β') τ'` creates exactly two application nodes: $n_1 = (Y \beta')$ with argument $\beta'$ (a bit $K$ or $F$), and $n_2 = ((Y \beta') \tau')$ with argument $\tau'$ (a tail $R$, $P_{j-1}$, or $N$ when $j=0$).
  * Could a created node play a role omitted from Lemma 2.6?
    * `n_R = (R next)`: argument is rigid `next`; neither $\beta'$ nor $\tau'$ can be `next`. Impossible.
    * `n_P = (cont P_{n-1})`: argument is $P_{n-1}$, which can only be $\tau'$ of a $P_n$ cell step where $(Y \beta')^i \to^* \text{cont}$. This is **Shape (α)**.
    * `n_N = ((cont P_{n-1}) N)`: argument is rigid $N$, which is $\tau'$ only for the terminal cell $P_0$. For $n_2$ of $P_0$ to become `((cont P_{n-1}) N)`, its function $(Y_0 K)$ must reduce to `cont P_{n-1}`, which requires walking all $n+1$ cells down to $P_0$ while carrying $P_{n-1}$. That is priced under Lemma 2.3(c) (walkers).
    * First or second selection node `(β Z)` or `((β Z) V)`: covered by **Shapes (β), (β′), (δ)**.
    * Meeting node `(P_i P_i)` or consumer node `(Q X)` inside the $N$-source: covered and priced in **Lemma 2.3(a)** (8 bits instead of 6 for a created meeting node; 6 bits instead of 4 for a created consumer node, tested at 47 bits in `menu.py` line 24: `s (λb. b (λu r. r next) cont) (s (λb. s s))`).
  * **Verdict on Lemma 2.6:** Exhaustive.

* **Lets, knots, and copying (Lemma 2.7):**
  * **Checked:** Lemma 2.7(i) uses `wire_beta_delta` (T10) to rule out let-bindings on single leaves (`s`, `next`, `cont`, or bound leaves `r` of size 2: for $|Q|=2$ and $D=0$, $\Delta = 2(m-1) - 2m - 4 - f(M) = -6 - f(M) < 0$, so a let on `s` or a depth-0 bound leaf *always* shrinks).
  * **Checked:** Lemma 2.7(ii) observes that if an application node inside a let-argument $Q$ is copied by `(λy. M) Q`, all residuals of that application node outside a recursive walker have $\beta$-equal function and $\beta$-equal argument (up to capture of distinct inner binders if $Q$ had free variables bound inside $M$, which is impossible since $Q$ is outside $M$). Since the charged application roles in $\rho_v$ (`n_P`, `n_N`, meeting `(P_i P_i)`, consumer `(K N X)`, selection nodes, dispatch cell step) have pairwise distinct `(function, argument)` normal-form signatures for large $n$, one application node in a non-walker $Q$ cannot simultaneously realize two distinct roles in $\rho_v$.

---

#### 2. Lemma 2.3(c) — Self-passing walkers and $N$-sources

* **Location:** [REPORT.md](file:///Users/a9lim/Work/blam/tmp/overnight/reader-proof/REPORT.md#L422-L447), Lemma 2.3(c), lines 422–447 (and §3.2 item 2, lines 776–785).
* **What the proof claims:**
  > *"Its necessary original syntax: a lambda receiving the bit (2), one binding the tail (2), the nonlinear `λf` (2) with two leaves `f` (4), the node applying the tail (2) with its leaf `r` (2) and the node passing `f` (2), and — since `P_0 Λ → Λ K N` must return the bare `N` while higher levels continue — a test of the bit (`b`, 2; two nodes, 4) returning the tail (2): **≥ 24**"*
* **What fails in the 24-bit piece count (Gap 1):**
  1. **Created second selection node:** When a cell $P_i$ is applied to $Y = W W$, the cell step `P_i (W W) → (W W b_i) r_i` creates two application nodes. If `W = λw b. b Z (w w)`, then `W W b_i →* b_i Z (W W)`, and the cell's *own* second created node applies `b_i Z (W W)` to the tail $r_i$! Thus `b_i` only needs *one* syntactic selection node inside `W` (or two if `Z` and `w w` are both arguments of `b`, with $r_i$ becoming the third argument), and **no `λr` or `r` leaf is needed on the bit-test side** to pass $r_i$ to the zero branch:
     * At $i=0$ ($b_0 = K, r_0 = N$): `K I (W W) N →* I N → N`.
     * At $i \ge 1$ ($b_i = F, r_i = P_{i-1}$): `F I (W W) P_{i-1} →* (W W) P_{i-1}`.
     * The term `W = λw b. b I (w w)` has size **22 bits** ($L=3, A=3, X=4$: `2(3) + 4(3) + 2 + 4 = 22`).
  2. **Why a working walker still costs $\ge 28$ bits (repairing Gap 1):**
     In `F I (W W) P_{i-1} →* (W W) P_{i-1}`, the tail $P_{i-1}$ is passed *as the argument* to `W W` rather than `P_{i-1}` being applied to `W W`. Therefore, for the recursion to continue at $i \ge 1$, `W W` must accept a *cell* `r` as its first argument and apply `r` to the bit handler:
     $$W_2 = \lambda w\, r.\; r\, (\lambda b.\; b\, I\, (w\, w))$$
     (verified in Python: `W_2 W_2 P_n →* N` for all $n \ge 1$, and `W_2 W_2 Z_R →* R`).
     Let us price $W_2$: it has `λw` (2), `λr` (2), `r` (2), application `r (...)` (2), `λb` (2), `b` (2), two selection nodes on `b` (4), `I` (4), `w w` (6), plus index offsets ($X=6$, so +2 over base leaves) = **30 bits** (and `W_2 W_2 s` is 66 bits; with `(λf. f f) W_2 s` it is $10 + 2 + 30 + 4 = 46$ bits for the $N$-source alone!).
     More generally, in *any* self-passing walker:
     * Either the walker `W W` takes `(b, r)` directly from `P_i (W W) → W W b_i r_i`, in which case the $F$-branch must actively apply $r_i$ to `W W` (`r (w w)`), forcing `λr` (2), `r` (2), and the application `r (...)` (2), so the piece count in Lemma 2.3(c) holds (`|W| ≥ 24`, minimum concrete `W = λw b r. b r (r (w w))` is **29 bits**);
     * Or the walker uses the cell's second created node to apply the $F$-branch `w w` to $r_i$ (`(w w) r_i`), in which case `W W` takes a cell `r` first, applies `r` to a bit-handler `λb. …` (`λr`, `r`, app, `λb`), and at $i=0$ (`K Z (W W) N → Z N`) needs $Z$ to be an identity `I` (4 bits) so `Z N → N`. That costs $\ge 28$ bits for $W$ alone.
  * **Can a walker avoid testing the bit $b_i$ using data operations (`P_i b`)?**
    I tested whether `P_i` or `b_i` could step without a 2-arm branch:
    * `s (λb r. r b)` gives $N$ at $n=1$ (`P_0 F → N`), $K N$ at $n=2$ (`P_1 F → P_0`), and $P_{n-2}$ for $n \ge 3$—it only steps once because $F$ is consumed by $P_{n-1}$.
    * Stepping repeatedly with $F$ without testing $b_i$ hits $P_0 F \to N$ at the bottom and then applies $N$ to the next step's continuation, trapping $N$ as a rigid head forever.
  * **Conclusion on Lemma 2.3:** The $\ge 10$-bit bound on the $N$-source (and equality only for `s s X` of 3 leaves and 2 apps) is **completely solid**, and any walker reader is well above 50 bits.

---

#### 3. Shape (α) arithmetic `41 + 2d` and the uniqueness claim (§2.4)

* **Location:** [REPORT.md](file:///Users/a9lim/Work/blam/tmp/overnight/reader-proof/REPORT.md#L552-L585), lines 552–585.
* **Step-by-step verification:**
  1. **Definition of Shape (α):** The output application `n_P = (cont P_{n-1})` is the second created node `((Y β) τ)` of a cell step. For its argument $\tau$ to be $P_{n-1}$, the cell must be a copy of $P_n$ (the dispatch cell), $\tau$ must be unbound by the handler (`rest` starts with $\tau$), and the selection result $(Y \beta)^i = (\beta Z V \dots)^i$ on the variable stream must reduce to `cont` before $\tau$ is applied.
  2. **Minimum `V`:** Since $\kappa_v \in V$ (indirections cost $\ge 10$ vs $4+d$) and $V[\text{env}^i] \to^* \text{cont}$, the unique minimal $V$ is the bare leaf `cont` at depth $d$, costing **`4 + d` bits** (any other $V$ has at least one lambda or application, costing $\ge 6 + d$).
  3. **Operand `T` and `n_N`:** Since $V = \text{cont}$, after the created node applies `cont` to $\tau = P_{n-1}$, the next element of `rest` must be the $N$-source operand $T$ (with $T^i \to^* N$), applied via its spine node $n_N$ (`2` bits). By Lemma 2.3, $|T| \ge 10$, with equality iff $T = s\, s\, X$ at depth 0 where $X$ has 0-based index 0, i.e., **`T = s s s`** (`|T| = 10`; I checked `s s next` = 11 and `s s cont` = 12). There can be no further operand in `rest`, or `cont P_{n-1} N` would receive a third argument.
  4. **Zero arm `Z`:** On the zero stream, `K Z cont R T^0 → Z R T^0`. Here $T = s\, s\, s$ gives $T^0 = Z_R Z_R Z_R \to^* K R Z_R \to R$. Thus $Z$ receives two arguments (`R` and `T^0`) and must reduce to `R next`.
     * As shown on lines 564–570, $n_R$ and $\nu_z$ (`next`) must lie inside $Z$ (putting them in $T$ costs $\ge 64$).
     * $Z$ must consume two arguments (`R` and `T^0`) and produce `R next`.
     * **Two-lambda consumer:** $Z = \lambda u\, r.\; \text{body}$ ($2+2=4$ bits for the two lambdas). Inside `body` (at depth $d+2$), `next` costs $3 + d + 2 = 5 + d$ bits, the application node $n_R$ costs $2$ bits, and the function of $n_R$ is a bound leaf (`r` at index 0 costs $2$ bits; `u` at index 1 costs $3$ bits). Total:
       $$|Z| \ge 4 + 2 + (5 + d) + 2 = 13 + d$$
       with equality **uniquely** for `Z = λu r. r next` (since `u` requires $T^0 = R$, which holds for $T = s\, s\, s$, and `λu r. u next` costs $14 + d$, giving 44 bits total—verified in Python).
     * **Data consumers in `Z` (Remark, lines 525–534):** What if $Z$ uses the bound bit $b$ (which equals $K$ on the zero stream!) instead of one of the two lambdas to consume an argument? I tested all candidates mechanically:
       * `Z = b (λu. u next)`: on the zero stream, $b = K$, so $K (\lambda u.\; u\,\text{next}) R R \to (\lambda u.\; u\,\text{next}) R \to R\,\text{next}$! This is a **valid reader**, `s (λb. b (b (λu. u next)) cont) (s s s)`, and its size is **44 bits** (`|Z| = 15` vs `14` for `λu r. r next`, because replacing `λr` (2 bits) with `(b ...)` (2 bits app + 2 bits leaf `b` = 4 bits) while saving 1 depth bit on `next` is a net $+1$ bit: $+4 - 2 - 1 = +1$).
       * `Z = λu. b (u next)`: valid reader, **45 bits** (`|Z| = 16`).
       * `Z = K (λr. r next)`: valid reader, **49 bits** (`|Z| = 20`).
  5. **Total for Shape (α):**
     $$\text{dispatch } (12) + (\text{spine } 2 + |T|\ 10) + |Z|\ (13 + d) + |V|\ (4 + d) = 41 + 2d \ge 43$$
     Equality holds iff $d = 1$, dispatch is `s (λb. b Z V)`, $T = s\, s\, s$, $Z = \lambda u\, r.\; r\,\text{next}$, and $V = \text{cont}$.
* **Verdict on Shape (α) and uniqueness:** **100% sound and tight.**

---

#### 4. Exhaustiveness of realization lists (Lemmas 2.4–2.6) and Shape (γ1) dominance (§2.4)

* **Lemmas 2.4 (z-R) and 2.5 (v-tail):**
  * **Checked:** $R$ enters $\rho_z$ only as the second argument of `Z_R = λh. h K R`, and $P_{n-1}$ enters $\rho_v$ only as the second argument of `P_n = λh. h F P_{n-1}` (or via $P_n F \to P_{n-1}$, which is a cell contraction with $Y = F$). Because the body of $P_{n-1}$ is closed (for fixed rigid $N$), any output $P_{n-1}$ whose root lambda is not a residual of a stream cell's $\lambda h$ must have its root lambda descending from a lambda of $B$ (rebuilt cell, Lemma 2.5(iv), $\ge 16$ bits). Thus every realization of **z-R** and **v-tail** is covered by (i)–(iv) of Lemmas 2.4 and 2.5.

* **Gap 2 — Shape (γ1) dominance for operand `O = s s` (lines 664–670):**
  * **Location:** [REPORT.md](file:///Users/a9lim/Work/blam/tmp/overnight/reader-proof/REPORT.md#L664-L670), §2.4 Shape (γ1).
  * **The oversight:** In Shape (γ1) (where there is no $N$-valued operand $T$, so the $N$-source is completed inside $V$), the proof assumes every non-$N$-valued operand `O` (specifically listing `s s`) leaves the 10-bit internal $N$-source cost inside $V$ unchanged and merely adds its own cost `2 + |O| + 2 ≥ 8`.
  * **Why `O = s s` interacts with the $N$-source:** `O = s s` has size 6 bits (`2 + |O| = 8` bits with its spine application). On the variable stream, `s s →* P_n P_n →* Q = K N`. When bound by a handler lambda `λq` (or arm lambda `λq`), the leaf `q` inside $V$ has value $Q = K N$. Thus $V$ completes the $N$-source with just `q X → N` (4 bits: one application node + one leaf `X` + the leaf `q` of size $\ge 2$), **saving 6 bits** inside $V$ (4 bits instead of 10 bits for the $N$-source)! Furthermore, on the zero stream, `s s →* Z_R Z_R →* K R`, so `q` has value `K R`, which can either be consumed by a lambda `λq` or applied to two arguments (`q u next → K R u next → R next`) to supply `R` and consume `u` without a lambda!
  * **Exact re-pricing (proving it still cannot beat 43):**
    Let `O = s s` (`2 + |O| = 8` bits at spine).
    * Inside $V$, the $N$-source is `q X` (costs $2$ for app + $\ge 2$ for leaf `q` + $\ge 2$ for leaf `X` = $6$ bits, vs $10$ bits for an unassisted $N$-source: a maximum saving of **4 bits** inside $V$).
    * Meanwhile, `O = s s` adds **8 bits** at the spine (`2 + |s s| = 8`), plus its binding `λq` (**2 bits**), plus either:
      * If `λq` is on the head path ($d$ increases by 1): $+1$ bit on `b`, $+1$ bit on `next`, $+1$ bit on `cont` ($\ge +3$ bits), and if $Z$ does not use `q`, `r` or `next` pays depth tax; even if $Z$ uses `q` (`K R`) as `q r next` (saving `λr`? No, if `q = K R`, `q X next → K R X next → R next`, which eliminates the need for `r` in $Z$, costing `2+2+2 = 6` bits for `q X` instead of `2` for `r`, a net loss of 4 bits!).
      * If `λq` is inside $V$ ($e_V$ increases by 1): $Z$ must also consume `O^0 = K R` ($\ge 2$ bits), and `cont` inside $V$ pays $+1$ depth bit.
    * Consequently, adding `O = s s` pays $\ge 8 \text{ (spine)} + 2 \text{ (binder)} + 2 \text{ (depth/consumption)} = 12$ bits while saving at most $4$ bits inside $V$ (a net increase of $\ge +8$ bits over the $46$-bit `(γ1)` baseline, giving $\ge 54$ bits; the smallest concrete reader of this form is `s (λb r q. b (r next) (cont r (q r))) (s s)` at **58 bits**, checked).
  * Similarly, if `O = s` (`2 + |O| = 4` bits at spine), binding `O` to `t` gives $V$ another cell leaf of index $n$ at cost 2, which cannot improve on `r` (already cost 2) or `s` inside $V$, so `O = s` saves 0 bits inside $V$ and adds $\ge 6$ bits (smallest concrete reader `s (λb r t. b (r next) (cont r (t t t))) s` is **57 bits**, checked).

---

### Summary of What Was Checked Fully

1. **Lean proof (`lean/Blc/SelfintWireCost.lean`):** Read and verified `wire_subst`, `wire_beta_delta`, `erasing_beta_shrinks`, `linear_small_free_beta_shrinks`, and `linear_beta_delta`. Confirmed T10 in `REPORT.md` matches the exact Lean formula.
2. **Mechanical test suites (`tmp/overnight/reader-proof/tools/`):**
   * Ran `algebra.py`: verified all cell/cell, cell/bit, cell/Q, cell/I, cell/neutral reduction identities for indices $\le 6$, equal-index vs unequal-index parity fates (T8, T9), and the 5-leaf `P_n`-only application closure (T5).
   * Ran `symbolic.py`: verified the symbolic stream $S = \lambda h. h \beta \tau$ identities and T3 instantiations.
   * Ran `menu.py` plus custom adversarial scripts: verified sizes and reader laws (`n = 1..5` and zero law) for 30+ reader designs across shapes (α), (β), (γ1), (γ2), τ-head, data-consumer variants in $Z$, `O = s s` / `O = s` / `O = s F` operands, let-shared `s s`, and self-passing walkers (`W`, `W2`).
3. **Part 1 (T1–T10):** Verified every theorem step-by-step. All 10 structural claims are sound.
4. **Part 2 (§2.1–2.6):** Verified the decomposition, role inventory, Lemma 2.1, Lemma 2.3(a,b,c), Lemmas 2.4–2.7, and the minimization across Shapes (α), (β), (β′), (δ), (γ1), (γ2), and the τ-case (§2.5). Confirmed Shape (α)'s `41 + 2d` bound and the uniqueness of the 43-bit reader `s (λb. b (λu r. r next) cont) (s s s)`.
[gaslamp] job: gm-20261021-053126-d080 · session: 005f891d-f2c2-4a1f-8fe7-dfdd40a80be7 · resume: gaslamp gemini --resume 005f891d-f2c2-4a1f-8fe7-dfdd40a80be7 · model: gemini-4-argon · tok: 1880k→15k
