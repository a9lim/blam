[gaslamp] → gemini · job gm-20261021-175907-41f8 · watch: tail -f /Users/a9lim/.gaslamp/jobs/gm-20261021-175907-41f8/events.jsonl
# Adversarial Verification Review: Weighted Reader Floor 30 (`reader30.md` / Class Floor 146)

## Overall Verdict: **CORRECT (No Errors, Gaps, or Overstated Hypotheses Found)**

Every claim (a)–(d), the handwritten source-accounting and coverage reductions in [reader30.md](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader30.md) and [REPORT.md](file:///Users/a9lim/Work/blam/tmp/round3/floor/REPORT.md), the Python generators [reader29.py](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader29.py), [reader29_lean.py](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader29_lean.py), and [depth2_cases.py](file:///Users/a9lim/Work/blam/tmp/round3/floor/depth2_cases.py), and the three Lean modules [ReaderChecks.lean](file:///Users/a9lim/Work/blam/tmp/round3/floor/ReaderChecks.lean), [ReaderHoist.lean](file:///Users/a9lim/Work/blam/tmp/round3/floor/ReaderHoist.lean), and [Depth2Cases.lean](file:///Users/a9lim/Work/blam/tmp/round3/floor/Depth2Cases.lean) have been audited step by step against the formal definitions in [Reader138.lean](file:///Users/a9lim/Work/blam/tmp/round3/lean138/Reader138.lean).

All three Lean files were also re-verified directly under the pinned toolchain in `lean/` (`lean -j2` exited `0` on all three; `ReaderChecks.lean` matches SHA-256 `4c43dfc966fb06762a99e2ea39c701fa309f1c19f618ea87c9c7b8e22f07bfa5`).

---

## Detailed Audit by Claim

### Claim (a): Two live binders (one nonlinear) and source accounting — **CORRECT**

1. **Source accounting identity (1):**
   In [Reader138.lean](file:///Users/a9lim/Work/blam/tmp/round3/lean138/Reader138.lean#L268-L289), `cost R = holeCost 1 R` satisfies
   $$\text{cost}(R) + 2 + 2\cdot\text{occ}(1, R) = 2L + 4V + X$$
   where $X = \text{tax}(1, R)$ is the sum of 0-based de Bruijn indices of all non-$j$ leaves. For $\text{occ}(1, R) = 1$ and hole depth $d = \text{depth}(R)$,
   $$w(R) = \text{cost}(R) + 4d = 2L + 4V - 4 + X + 4d,$$
   which agrees identically with `weight 0 R` in [ReaderHoist.lean](file:///Users/a9lim/Work/blam/tmp/round3/floor/ReaderHoist.lean#L10-L13).

2. **Relational head-value invariant for a literal $\lambda s. B$ with only vacuous inner binders ([reader30.md §1](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader30.md#L29-L61)):**
   - Substituting $P = \text{cons } K\ r = \lambda f. f\ K\ r$ and $S = U_1(N) = \text{cons } F\ T$ (where $T = \text{cons } K\ N = U_0(N)$) into any subterm of $B$ built from $s, c, j$, application, and vacuous abstraction $\lambda \_. A$ produces strongly normalizing (binder-affine) terms.
   - The three paired head-value classes — **(i)** cells $(P, S)$, **(ii)** vacuous abstractions $(\lambda \_. A, \lambda \_. B)$ whose bodies have paired head values, and **(iii)** neutrals with paired rigid heads $(c, c)$, $(j, j)$, or $(r, N)$ — are closed under all $3 \times 3 = 9$ application combinations:
     - Neutral on left (3 cases): appends argument, preserving the paired rigid heads.
     - Vacuous abstraction on left (3 cases): $(\lambda \_. A)\ X \to A$ and $(\lambda \_. B)\ Y \to B$, preserving paired head values by structural/step induction.
     - Cell $(P, S)$ on left (3 cases):
       - Applied to $(P, S)$: $P\ P \to P\ K\ r \to (K\ K\ r)\ r \to K\ r = \lambda \_. r$ and $S\ S \to S\ F\ T \to (F\ F\ T)\ T \to T\ T \to^* K\ N = \lambda \_. N$, which are paired vacuous abstractions (class ii) whose bodies $(r, N)$ are paired rigid heads (class iii).
       - Applied to $(\lambda \_. A, \lambda \_. B)$: $P\ (\lambda \_. A) \to (\lambda \_. A)\ K\ r \to A\ r$ and $S\ (\lambda \_. B) \to (\lambda \_. B)\ F\ T \to B\ T$. By induction on the paired head values of $(A, B)$: if $(A, B)$ evaluate to $(P, S)$, then $P\ r \to r\ K\ r$ and $S\ T \to T\ F\ T \to F\ K\ N\ T \to N\ T$, which have paired rigid heads $(r, N)$; if $(A, B)$ evaluate to vacuous abstractions, $r$ and $T$ are erased; if $(A, B)$ evaluate to paired neutrals, $r$ and $T$ are appended.
       - Applied to paired neutrals: $P\ M \to M\ K\ r$ and $S\ M' \to M'\ F\ T$, preserving the paired rigid heads.
   - Consequently, $B[P/s] \to^* r\ j$ (rigid head $r$) forces $B[S/s]$ to have rigid head $N$, which cannot join the normal form $c\ U_0(N)\ N$ (rigid head $c$).

3. **Extension to arbitrary source syntax ([reader30.md §1](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader30.md#L63-L79)):**
   - By `reader_nonlinear` ([Reader138.lean](file:///Users/a9lim/Work/blam/tmp/round3/lean138/Reader138.lean#L57-L67)), every reader $R$ (regardless of $j$-multiplicity) has $\text{nonlinear}(R) \ge 1$.
   - If $\text{live}(R) = 1$, its unique live binder is nonlinear and all other binders in $R$ are vacuous. Capture-avoiding substitution never makes a vacuous binder live, so contracting the unique live binder would leave a reduct with $\text{live} = 0$ (hence $\text{nonlinear} = 0$), contradicting `reader_nonlinear` on `Reader.beta`.
   - Thus weak head reduction of $R$ can only contract vacuous binders before exposing its weak head lambda $\lambda s. B$. Since $\lambda s$ must be live by `reader_root_live`, every binder inside $B$ is vacuous, reducing to the literal case above.
   - Hence $\text{live}(R) \ge 2$ and $\text{nonlinear}(R) \ge 1$ for every reader (without assuming a single $j$), forcing $\ge 3$ bound leaves, $V \ge f + 4$, and for lambda-rooted readers ($X \ge f$, $L \ge \max(2, d)$) equation (2): $w \ge 2\max(2, d) + 5f + 12 + 4d$.

---

### Claim (b): Minimum non-lambda exclusion and completeness of the 3,484 normal layouts below weight 30 — **CORRECT**

1. **Minimum non-lambda reader analysis ([reader30.md §2](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader30.md#L87-L163)):**
   - **Well-ordering:** Choosing $R$ minimizing $(w(R), L(R))$ lexicographically among single-$j$ readers is valid since $R_{162}$ witnesses non-emptiness.
   - **No erasing redex:** In a minimum $R$, any vacuous redex $(\lambda \_. B)\ A$ cannot have $j \in A$ (since $\text{occ}(1, R') \ge 1$ in the reduct $R'$ by `reader_j` and $\text{occ}(1, R) = 1$). Contracting it preserves `Reader R'` and $\text{occ}(1, R') = 1$, removes $\lambda \_$ ($\Delta L \le -1$) and at least one non-$j$ leaf in $A$ ($\Delta V \le -1$), and does not increase $X$ or $d$, strictly reducing $w$.
   - **Three live binders ($\text{live}(R) \ge 3$):**
     Let the weak head redex be $(\lambda x. B)\ A$ at depth $0$. Since $x$ is not vacuous:
     - If $x$ is linear ($\text{occ}(0, B) = 1$), contracting $(\lambda x. B)\ A$ removes $\lambda x$ and copies no lambdas, so $\text{live}(R') = \text{live}(R) - 1 \ge 2 \implies \text{live}(R) \ge 3$.
     - If $x$ is nonlinear ($\text{occ}(0, B) \ge 2$) and $\text{live}(R) = 2$, let $D$ be the single other live binder. If $D \notin A$, contracting $x$ leaves at most one live binder ($D$) in $R'$, impossible. If $D \in A$, every other binder of $R$ (in $B$, in $A$ outside $D$, Inside $D$, and in any trailing spine arguments) is vacuous, and no enclosing binder of $D$ in $A$ is live. Thus the only free variables of $D$ are the global $c, j$ (shifted by enclosing vacuous binders). Under arbitrary $\beta$-reduction from the reduct $R_1$, every lambda in any reduct is either vacuous or an unchanged copy of $D$ (since contracting a vacuous binder erases its argument, and contracting a copy of $D = \lambda y. M_D$ substitutes into $M_D$ whose inner binders are all vacuous). Since $R_1$ must weak-head reduce to a lambda with a live outer binder, its weak head normal form is $D$ itself, so $R =_\beta D$, contradicting $\text{live}(D) = 1$.
   - **Budget equations (3) and affine balance (4):**
     With $L \ge 3$ and $V \ge f + 5$ (4 bound leaves from $\text{live} \ge 3, \text{nonlinear} \ge 1$, plus $f$ occurrences of $c$ and one $j$), $w = 2L + 4V - 4 + X + 4d \le 29$ forces $d = 0, f = 1, V = 6$, and either $(L = 3, X \le 3)$ or $(L = 4, X \le 1)$.
     Since the 4 bound leaves are $2 + 1 + 1$, there is a unique nonlinear binder, so the weak head redex $(\lambda x. B)\ A$ must be linear ($x$ occurs once in $B$ at binder depth $D_x$, contributing $D_x$ to $X$).
     Direct node-and-index accounting gives Equation (4):
     $$w(R') - w(R) = -2 - 4 - D_x - F_B + (c_A + 4[j \in A])D_x = (F_A - 1)D_x - 6 - F_B.$$
     - $j \notin A \implies F_A \le 1 \implies \Delta w \le -6 < 0$.
     - $j \in A, c \notin A \implies F_A = 4$. For $L = 3$, $D_x \le 2 \implies \Delta w \le 0$ and $\Delta L = -1$, contradicting the lexicographic minimum $(w, L)$. For $L = 4$, $D_x \le X \le 1 \implies \Delta w \le -3 < 0$.
     - $j \in A, c \in A \implies F_A = 5, F_B = 0$. If $D_x \le 1$, $\Delta w \le -2 < 0$. If $D_x = 2$, then $L = 3$, all 3 lambdas and all 4 bound leaves lie in $\lambda x. B$, and $A$ has 0 lambdas and only the two leaves $c, j$, so $A \in \{c\ j, j\ c\}$ with no trailing arguments. Since $c, j$ are free rigid variables, neither $c\ j$ (where $j$ is permanently the argument of $c$) nor $j\ c$ (where $j$ is permanently applied to $c$) can ever reduce on $Z(r)$ to $r\ j$.

2. **Completeness of the 5-row lambda-rooted table and 3,484 normal layouts ([reader30.md §3](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader30.md#L165-L234), [reader29.py](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader29.py)):**
   - **Parameter bounds:** For lambda-rooted $R = \lambda s. B_0$, $d \ge 1$ and (2) gives $w \ge 2\max(2, d) + 5f + 12 + 4d$. For $w \le 29$, this forces $d \in \{1, 2\}$ and $f = 1$. With $L \ge 2$, $V \ge 5$, and $X \ge 1$, the solutions to $2L + 4V - 4 + X + 4d \le 29$ are exhausted by the 5 rows:
     - $d = 1$: $(L, V, X_{\max}) \in \{(2, 5, 5), (2, 6, 1), (3, 5, 3), (4, 5, 1)\}$;
     - $d = 2$: $(L, V, X_{\max}) = (2, 5, 1)$.
   - **Normality of every reader in the 5 rows:** Every row satisfies either $L = 2$ or $V = 5$.
     - If $L = 2$, any $\beta$-redex $(\lambda x. M)\ N$ inside $B_0$ has $\text{lamCount}(M) = \text{lamCount}(N) = 0$, so contracting it yields a 1-lambda reader, impossible by `reader_two_lambdas`.
     - If $V = 5$, there are 3 bound leaves distributed $2 + 1$ across two live binders ($\lambda s$ and one inner live binder), and any other binders are vacuous. Contracting the inner live binder copies no live binder and leaves only $\lambda s$ live (impossible by Claim (a)); contracting a vacuous binder erases $N$ ($\text{leafCount}(N) \ge 1$), leaving a reader with $V \le 4 < 5$, impossible by Claim (a).
   - **Stream-headedness:** A $\beta$-normal reader $\lambda s. B_0$ cannot have $B_0 = \lambda y. M$ (else $R\ Z(r)$ normalizes to a lambda, not $r\ j$) and cannot have head $c$ or $j$ (else $R\ Z(r)$ is a $c$- or $j$-headed neutral). Thus $B_0$ has head $s$ (`var 0`).
   - **Generator coverage in `reader29.py`:** `states(l, v, x, h, j, c, D)` and `emit(...)` recursively partition $(l, v, x, j, c)$ over the unique syntax tree decomposition (`var`, `lam`, `app`), pricing $j$ (`V(h+1)`) at $x = 0$ with $h = D$, $c$ (`V(h)`) at $x = h$, and bound variables `V(i)` ($0 \le i < h$) at $x = i$. Beta-normality is enforced purely by `head != -1` on the left child of `app` (where only `lam` sets `head = -1`), and at the root body ($h = 1$) the filter `head == 0 and live+int(u[0]>0)>=2 and nl+int(u[0]>1)>=1` enforces stream-headedness (`head == 0` at $h = 1$), $\ge 2$ live binders, and $\ge 1$ nonlinear binder. No heuristic or fuel pruning is used.
   - **Kernel refutations in `ReaderChecks.lean`:** All 3,484 emitted candidates are refuted in [ReaderChecks.lean](file:///Users/a9lim/Work/blam/tmp/round3/floor/ReaderChecks.lean) (`reader29_reject_0` through `reader29_reject_3483`) via `reject_by_nf` and `normalSteps_sound`.

---

### Claim (c): Exact hoisting identity and depth reductions — **CORRECT**

1. **Hoisting identity ([reader30.md §4](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader30.md#L240-L259), [ReaderHoist.lean](file:///Users/a9lim/Work/blam/tmp/round3/floor/ReaderHoist.lean)):**
   - For $H(R) = (\lambda a. R[a/j])\ j = \text{hoist } R$, `ReaderHoist.lean` kernel-checks:
     - `hoist_beta`: `Beta (hoist t) t` for `FreeUnder 2 t`;
     - `hoist_one_hole`: `holes 0 (hoist t) = 1` (at depth `depths 0 (hoist t) = 0`);
     - `hoist_weight`: `weight 0 (hoist t) + 3 * depths 0 t = weight 0 t + 6 + cs 0 t`, i.e.
       $$w(H(R)) = w(R) + 6 + f - 3d.$$
2. **Consequences for $d \ge 3$ and $d \ge 5$ ([reader30.md §4](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader30.md#L261-L286)):**
   - Since $L \ge d$ and $V \ge f + 4$, (1) gives $w \ge 6d + 4f + 12$ for every reader (and $6d + 5f + 12$ for lambda-rooted readers).
   - For $d \ge 5$, $f \ge 1 \implies w \ge 30 + 4 + 12 = 46$.
   - For $d = 4$, $w \le 45 \implies 36 + 4f \le 45 \implies f \le 2 \implies w(H(R)) = w(R) + f - 6 \le w(R) - 4$.
   - For $d = 3$, $w \le 45 \implies 30 + 4f \le 45 \implies f \le 3 \implies w(H(R)) = w(R) + f - 3 \le w(R)$.
   - For $d = 2$, $w(H(R)) = w(R) + f$, which hoists to a sub-46 depth-0 reader whenever $w(R) + f \le 45$.

3. **Exclusion of the $d = 2, f = 4$ corner and residual depth-2 pairs ([reader30.md §5](file:///Users/a9lim/Work/blam/tmp/round3/floor/reader30.md#L288-L359), [Depth2Cases.lean](file:///Users/a9lim/Work/blam/tmp/round3/floor/Depth2Cases.lean)):**
   - In a minimum counterexample to $w \ge 46$ at $d = 2$:
     - Non-lambda minimum has $L \ge 3, V \ge f + 5 \implies w \ge 30 + 4f \implies f \le 3$.
     - Lambda-rooted has $w \ge 24 + 5f \implies f \le 4$, and $f = 4$ forces (6): $L = 2, V = 8, X \in \{4, 5\}, d = 2, w \in \{44, 45\}$.
   - Since $L = 2$, the source is $\beta$-normal, stream-headed, with one live inner lambda $D = \lambda x. B_D$ containing the unique $j$, and 3 bound leaves split as $(2s, 1x)$ or $(1s, 2x)$. Since each of the four $c$ leaves has index $\ge 1$, $X \in \{4, 5\}$ allows at most one $c$ or $s$ inside $D$, and $(1s, 2x)$ puts the unique $s$ at the outer body head, leaving the 5 leaf multisets (`xj`, `xxj`, `cxj`, `sxj`, `cxxj`) totaling $2 + 6 + 12 + 12 + 60 = 92$ binary trees.
   - Outside $D$, only $P = \text{cons } K\ r$ (1 or 2 occurrences) and $c$ occur in an application-only context; $P\ P \to^* K\ r$ erases its argument and $c$-neutrals stay $c$-neutrals, so $D$ must be activated at a literal subterm $s\ D$.
   - [Depth2Cases.lean](file:///Users/a9lim/Work/blam/tmp/round3/floor/Depth2Cases.lean) proves all 92 normal forms of $(s\ D)[P/s]$, and the surrounding context cannot turn any of them into $r\ j$ (Note: in the `xxj` and `cxxj` rows, the 6 cases where $(s\ D)[P/s]$ reduces to a lambda — `\a.#2`, `\a.#3`, `\a.#1 #2`, `\a.#2 #1` — all already lack either $r$ or $j$, and the remaining context has only $c$ leaves).
   - Thus $f \le 3$ at $d = 2$, leaving only the six $(f, w)$ pairs with $w \le 45 < w + f$: $(1, 45), (2, 44), (2, 45), (3, 43), (3, 44), (3, 45)$.

---

### Claim (d): Resulting class bound 146 — **CORRECT**

By `Round3Next138.assembly_lower` in [Reader138.lean](file:///Users/a9lim/Work/blam/tmp/round3/lean138/Reader138.lean#L1384-L1388), every interpreter `assemble T R Q` in the class satisfies
$$\text{wire}(\text{assemble } T\ R\ Q) \ge 116 + \text{cost}(R) + 4 \cdot \text{depth}(R) = 116 + w(R).$$
Combining this with $w(R) \ge 30$ yields $\text{wire}(\text{assemble } T\ R\ Q) \ge 146$.
[gaslamp] job: gm-20261021-175907-41f8 · session: bc97688c-41eb-48b7-8c83-3caffdfc4e11 · resume: gaslamp gemini --resume bc97688c-41eb-48b7-8c83-3caffdfc4e11 · model: gemini-4-argon · tok: 1329k→31k
