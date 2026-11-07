[gaslamp] → gemini · job gm-20261021-182328-8341 · watch: tail -f /Users/a9lim/.gaslamp/jobs/gm-20261021-182328-8341/events.jsonl
# Adversarial Verification Review: Unconditional 38-Bit Self-Interpreter Floor

**Overall Verdict: CORRECT.**  
Every step of the reduction of the 37-bit self-interpreter inventory to 676 layouts, the 615 finite exclusions, the 48 infinite weak-head invariants, and the 13 Lean formal exclusions holds without error or gap. Together with the reviewed 37-bit global floor (`docs/classical/self-interpreter/global-floor.md`) and the 39-bit literal-interface bound (`tmp/round3/floor/literal-interface.md`), this establishes that every closed BLC self-interpreter satisfying `IsSelfInterpreter` has size at least **38 bits**.

---

## 1. Completeness of the 676-Layout Inventory at 37 Bits

**Verdict: CORRECT.**

### 1.1 Sub-37 range and global minimality
- **Verified:** By the existing 37-bit proof (`docs/classical/self-interpreter/global-floor.md`), no closed self-interpreter has length $\le 36$. Since a valid self-interpreter exists (e.g., the 162/165/168 witnesses), any 37-bit self-interpreter $E$ would be globally minimum (`MinimalInterpreter E` in `lean/Blc/SelfintWireCost.lean`).
- **Verified:** By `SelfintWireCost.minimal_redex_nonshrinking`, every $\beta$-redex in any syntactic context of $E$ is non-shrinking:
  $$\Delta_{\text{bits}} = (k-1)|A| + (f-1)D - 2k - 4 - g \ge 0$$
  where $k = \text{occ}(0, B)$, $f = \text{freeLeaves}(0, A)$, $D = \text{occDepth}(0, B)$, and $g = \text{freeLeaves}(1, B)$. In particular, no redex is erasing ($k = 0 \implies \Delta_{\text{bits}} < 0$), and any linear redex ($k = 1$) must have $f \ge 2$ and $(f-1)D \ge 6 + g$.

### 1.2 Dropping $\lambda$-rooted terms via the 39-bit literal-interface bound
- **Verified:** If $E = \lambda c. B$, substituting the closed continuation $K = \lambda x y. x$ and applying to $Q = \text{stream}(S, I)$ and $I$ yields $B[K/c]\, Q\, I =_\beta S$. Because $\text{width}(K) = \text{width}(Q) = \text{width}(I) = 1$, Statman's width-3 witness for $S$ cannot lie inside an inserted $K$, $Q$, or $I$, and closed substitution removes $c$ from free-variable sets. Thus some subterm of $B$ has three distinct free variables bound *inside* $B$.
- **Verified:** Because the outer binder $c$ is an ancestor of every binder in $E$, the two incomparable nonlinear binders required by `SelfintNonlinearChain.selfInterpreter_not_chain` must both lie inside $B$. One nonlinear binder can lie on the 3-binder width chain, forcing a fourth live binder inside $B$. Those four internal live binders own at least $4 + 2 = 6$ variable leaves. Since $c$ must be live (on source $I$ with rigid $C$, the normal form $C (\lambda z. I) N$ is $C$-headed), $c$ adds a 5th live binder and a 7th leaf. With index sum $X \ge 2 + 1 + 0 = 3$ on the width witness, $|E| = 2L + 4V - 2 + X \ge 2(5) + 4(7) - 2 + 3 = 39$.
- **Consequence:** Every 37-bit (and 38-bit) candidate is application-rooted. No hidden normality or head-reduction assumption is used.

### 1.3 Count triples $(L, V, X)$ at 37 bits
- **Verified:** With $|E| = 2L + 4V - 2 + X = 37$, $L \ge 4$, $V \ge 6$, $X \ge 3$, parity forces $X$ to be odd, leaving exactly four triples:
  $$(L, V, X) \in \{(4, 6, 7),\; (5, 6, 5),\; (6, 6, 3),\; (4, 7, 3)\}.$$

### 1.4 First head contractor and the $E = D\, N$ decomposition
- **Verified:** Because $E$ is closed and application-rooted, its leftmost spine is $((\lambda x. B)\, A)\, U_1 \dots U_m$ ($m \ge 0$).
- **Isolation of $d$:**
  - When $V = 6$ (`(4,6,7)`, `(5,6,5)`, `(6,6,3)`), the four live binders have multiplicities $2, 2, 1, 1$. Three live binders $a, b, c$ form the width chain (one of which has multiplicity 2, and two are affine), and the fourth live binder $d$ (multiplicity 2) is incomparable with the chain's nonlinear binder. Thus $d$ cannot contain any of $a, b, c$ (else $d$ would be an ancestor of all chain binders downstream, or lie on the chain). Nor can $d$ lie inside an affine chain binder and capture it: the affine chain binder's sole occurrence is already needed at the width-3 witness outside $d$.
  - When $(L, V, X) = (4, 7, 3)$, the three width-witness occurrences already spend $2 + 1 + 0 = 3 = X$, so every other leaf in $E$ has index $0$. If $d$ captured an enclosing variable, either one of $d$'s own two leaves or the captured variable's leaf inside $d$ would have index $\ge 1$, exceeding $X = 3$.
  - Therefore, in all four triples, the $\lambda d$ subterm is closed and contains no chain binder.
- **Why $\lambda x$ must be $\lambda d$ and $m = 0$:**
  - Since $\lambda x. B$ is at the head of a closed term, it is closed, so $x$ cannot be $b$ or $c$ (whose subterms contain free occurrences of $a$).
  - $x$ cannot be vacuous or affine: $A$ is closed ($f = 0$), so $k \le 1$ strictly shrinks.
  - If $x = a$ (when $a$ is the nonlinear chain binder), then $b, c$ and the width-3 witness lie in $B$, while $d$ (and its two leaves) must lie in $A$ (or $U_i$, which would leave $A$ without a live binder). Then $m = 0$ (no leaves left for $U_i$), and $A$ is closed with $d$ as its only live binder, so $\text{width}(A) = 1$. Contracting $(\lambda a. B)\, A$ removes binder $a$ and substitutes closed width-1 term $A$, leaving a reduct of width $\le 2$, which cannot be a self-interpreter.
  - Hence the head contractor is $\lambda d$, all of $a, b, c$ and their leaves lie in $A = N$, and $m = 0$ (any pending spine argument $U_1$ would be closed and would require either a live binder—none left—or a vacuous binder, which isn't available at $L=4,5$ without starving $N$, and at $L=6$ is covered below). Thus $E = D\, N$.
- **Normality of $D$ and $N$:**
  - $D$ has 1 live binder $d$ (with 2 or 3 leaves) and at most vacuous binders; any redex in $D$ has $k = 0$ or $f \le 1$ and strictly shrinks.
  - In $N$ (with 3 live binders on a chain and 4 or 5 leaves), any internal redex $(\lambda u. B_0)\, A_0$ has all live binders on one chain: if $u$ is nonlinear ($k \ge 2$), the other two chain variables must occur in $B_0$ for the width witness, leaving $\le 5 - (2 + 2) = 1$ leaf for $A_0$ (a single variable leaf has $|A_0| = i + 2$, and moving it out of $\lambda u$ decrements its index by 1 if free in $B_0$, giving $\Delta_{\text{bits}} \le (2-1)(i+2) + 0 - 4 - 4 = i - 6 < 0$). If $u$ is linear ($k = 1$), $A_0$ has at most $5 - 3 = 2$ free leaves ($f \le 2$) and $B_0$ has at most 2 local lambdas ($D \le 2$), so $(f-1)D \le 2 < 6 + g$, strictly shrinking.
  - **Independently verified by exhaustive enumeration:** I enumerated all closed 27-bit and 23-bit terms $N$ with $\text{width}(N) \ge 3$ and $\text{nonlinear}(N) \ge 1$; all 558 non-normal 27-bit terms and all 24 non-normal 23-bit terms contain a strictly shrinking $\beta$-redex.

### 1.5 Exhaustiveness across the four triples (652 + 24 = 676 layouts)
- **`(4, 6, 7)` (0 layouts):** $D = \Delta$ ($X_D = 0$) and $N$ is a normal $(3, 4)$ term, whose maximum possible index sum is $X_N = 5$ (`\a\b\c. T4(a,a,b,c)`), so $X = 7$ is impossible.
- **`(4, 7, 3)` (652 layouts):**
  - Either $d$ has 2 leaves ($D = \Delta = \lambda d. d\, d$, 8 bits) and $N$ is a normal 27-bit $(3, 5, 3)$ term, or $d$ has 3 leaves ($D \in \{\lambda d. d\, d\, d, \lambda d. d (d\, d)\}$, 12 bits) and $N$ is a normal 23-bit $(3, 4, 3)$ term. ($d$ cannot have 4 leaves, as $a, b, c$ would all be affine).
  - For $D = \Delta$, the two extra index-0 leaves in $N$ distribute as $(p, q, r)$ with $p + q + r = 2$ ($p$ extra $a$'s above $\lambda b$, $q$ extra $b$'s above $\lambda c$, $r$ extra $c$'s below $\lambda c$), yielding $36 + 12 + 60 + 36 + 60 + 280 = 484$ layouts.
  - For $D \in \{\lambda d. d\, d\, d, \lambda d. d (d\, d)\}$, $N$ has $12 + 12 + 60 = 84$ layouts each, adding $2 \times 84 = 168$.
  - **Independently verified by exhaustive enumeration:** Enumerating all closed 27-bit normal terms $N$ with $L=3$, $\text{width}(N) \ge 3$, $\text{nonlinear}(N) \ge 1$ gives **484** terms, matching `four_lambda.json` 100%. Enumerating all closed 23-bit normal terms $N$ with $L=3$, $\text{width}(N) \ge 3$, $\text{nonlinear}(N) \ge 1$ gives **84** terms, matching `four_lambda.json` for both $D_2$ and $D_3$ 100%. Total: $484 + 168 = 652$.
- **`(5, 6, 5)` (24 layouts):**
  - One vacuous binder $u$.
  - If $u$ is in $D$: normal non-erasing options are $D = \lambda d u. d\, d$ (10 bits, $N$ has 25 bits, $X_N = 5$: all 60 normal $N$'s are $\lambda a b c. T_4(a,a,b,c)$ and $D\, N \to^2 \lambda u b c. \dots$ has 3 leading lambdas) and $D = \lambda d. d (\lambda u. d)$ (11 bits, $N$ has 24 bits, $X_N = 4$: 12 outer-between $N$'s reduce in 3 steps to 3 leading lambdas; 60 middle-below $N$'s reduce in 2 steps to $\lambda b c. T_4(\lambda u. N, b, b, c)$, violating `SelfintNonlinearChain` inside the two public binders).
  - If $u$ is in $N$: $D = \Delta$ (8 bits) and $N$ is a 27-bit $(4, 4, 5)$ normal term obtained by inserting $\lambda u$ around a subterm $U$ of a normal $(3, 4)$ base $N_0$ at cost $2 + \text{freeLeaves}(U)$:
    - Base 35 ($X_{N_0}=5$, $\text{freeLeaves}(U)=0$): $U = N_0$, so $N = \lambda u. N_0$ and $\Delta N \to^2 N_0$ (33 bits, shrinks).
    - Base 34 ($X_{N_0}=4$, $\text{freeLeaves}(U)=1$): middle-below with a boxed leaf still reduces in 2 steps to $\lambda b c. \dots$ with only one internal nonlinear binder (`nonlinear_chain`); middle-below with $\lambda b c. \dots$ boxed reduces in 2 steps to $\lambda u b c. \dots$ (3 leading lambdas). Outer-between with $\lambda c. T_3$ boxed (`\a\b.a (\u\c. T3)`) gives 12 terms that all reduce in 4 head steps to 3 leading lambdas (`\b\d\u. ...`). Outer-between with one leaf of $T_3$ boxed gives $6 \times (2 + 1) = \mathbf{18}$ normal layouts (`outer_between_box` in `five_lambda.json`).
    - Base 33 ($X_{N_0}=3$, $\text{freeLeaves}(U)=2$): middle-before and inner-duplicate fail by 1-lambda HNF, 3 leading lambdas, or `nonlinear_chain`. In outer-before (`\a.a (\b\c. T3)`), boxing $\lambda c. T_3$ (`\a.a (\b\u\c. T3)`, 12 terms) makes the first public binder vacuous after $\Delta N \to^2 \lambda u c. T_3(N, \dots)$ (so substituting $I$ loses width/nonlinearity, or directly `c` is unused); boxing the whole $T_3$ (`\a.a (\b\c\u. T3)`, 12 terms) gives 3 leading lambdas after 2 steps. Boxing a 2-leaf subterm of $T_3$ normally requires $T_3 = x (y\, z)$ with $U = y\, z$, giving $\mathbf{6}$ normal layouts (`boxed_pair` in `five_lambda.json`).
  - **Independently verified by exhaustive enumeration:** Enumerating all 402 closed 27-bit normal terms $N$ with $L=4$, $\text{width}(N) \ge 3$, $\text{nonlinear}(N) \ge 1$ confirms that the $402 - 24 = 378$ terms not in `five_lambda.json` are all excluded by 3 leading lambdas, `nonlinear_chain`, or vacuous first public binder.
- **`(6, 6, 3)` (0 layouts):** Since $X = 3$ is completely spent by the width-3 witness, neither of the two vacuous binders can enclose any free leaf ($\text{freeLeaves}(U) = 0$). Since $E$ is application-rooted, any closed subterm wrapped by a vacuous binder is either inside $D$ (erasing/shrinking or exposing vacuous public binders) or wraps all of $N$ ($N = \lambda u. N'$ or $\lambda u v. N'$, which $\Delta N \to^2 N'$ shrinks to $\le 35$ bits).

---

## 2. The 615 Finite Exclusions and 48 Infinite Invariants

**Verdict: CORRECT.**

### 2.1 The 615 finite exclusions (`analyze37.py`, `analyze37_vacuous.py`)
- **Verified by re-running in memory:** Re-running the generators and `assess(e)` on all $652 + 24 = 676$ layouts reproduces `four_lambda.json` and `five_lambda.json` byte-for-byte in $< 6$ seconds.
- **Breakdown of the 615 finite refutations:**
  - In `four_lambda.json` (593 finite refutations + 59 unresolved):
    - `nonlinear_chain`: 339 (a head reduct violates `SelfintNonlinearChain`)
    - `internal_nonlinear_chain`: 54 (after exposing $b \in \{1, 2\}$ leading lambdas, substituting closed affine width-1 $I$ for the public binders leaves a body violating `SelfintNonlinearChain`)
    - `three_lambdas`: 69 (a head reduct has $\ge 3$ leading lambdas, impossible by `head-decomposition.md`)
    - `smaller_than_37`: 49 (a head reduct has BLC size $< 37$, contradicting global minimality)
    - `wrong_hnf`: 38 (head normal form has $b \ne 2$ lambdas, or head is continuation `V(1)` with $\ne 2$ arguments)
    - `internal_width_loss`: 18 (after substituting $I$ for exposed public lambdas, width drops below 3; sound because $K$ and $I$ are closed width-1 terms, so if $E =_\beta \lambda c. B$ or $\lambda c s. B$, $B[I/c]$ and $B[I/c, I/s]$ must still have width $\ge 3$)
    - `exact_cycle`: 2 (exact repeated state in head reduction)
    - `identity_wrong_hnf`: 11 (invocation on $I$ reaches HNF not of shape $\lambda c n. c\, A_1\, A_2$)
    - `identity_wrong_payload`: 11 (invocation on $I$ reaches $\lambda c n. c\, A_1\, A_2$ where $A_1$ or $A_2$ normalizes within 300 steps to a normal form $\ne K\, I$ or $n$)
    - `identity_cycle`: 2 (exact repeated state on invocation on $I$)
  - In `five_lambda.json` (22 finite refutations + 2 unresolved):
    - `nonlinear_chain`: 6, `identity_wrong_payload`: 6, `wrong_hnf`: 5, `three_lambdas`: 3, `smaller_than_37`: 2.
- **No cap used as refutation:** Every timeout/size cap (`unresolved_head`, `unresolved_growth`, `unresolved_identity_head`, `unresolved_identity_growth`, `unresolved_payload`) is left as `unresolved` (59 in `four_lambda.json`, 2 in `five_lambda.json`, total 61).

### 2.2 The 48 infinite invariants (`floor37-progress.md` §4, `progress.py`, `macro_checks.py`)
- **Partition check:** In `progress.py`, the 59 unresolved entries of `four_lambda.json` partition into 46 covered by §4.1–4.4 and the 13 residuals (`remaining`), and the 2 unresolved entries of `five_lambda.json` (indices 9 and 19) are covered by §4.5 ($46 + 2 = 48$, $48 + 13 = 61$).
- **§4.1 Twelve one-argument macro systems (IDs 436–447, `diag_110`):**
  - $N = \lambda a. a\, B(a)$, $B(x) = \lambda b. b\, C(x,b)$, $C(x,y) = \lambda c. T(x,y,c)$ for the 12 three-leaf trees $T$.
  - Every term in the grammar $\mathcal{G} ::= N \mid B(\mathcal{G}) \mid C(\mathcal{G},\mathcal{G}) \mid \mathcal{G}\,\mathcal{G}$ is closed; every atom takes 1 argument and reduces to a non-empty application in $\mathcal{G}$ ($N\,X \to X\,B(X)$, $B(X)\,Y \to Y\,C(X,Y)$, $C(X,Y)\,Z \to T(X,Y,Z)$). Starting from $\Delta N \to N\,N \in \mathcal{G}\,\mathcal{G}$, weak-head reduction never terminates (and never exposes a lambda, so trailing arguments $C, \text{quoteI}(R)$ are never reached). **Correct.**
- **§4.2 Twelve direct $N\,N$ pumps (IDs 450, 453, ..., 483, `diag_200`):**
  - $N = \lambda a. (a\, a)\, J(a)$ with $J(a) = \lambda b c. T(a,b,c)$.
  - $\Delta N \to N\,N \to (N\,N)\,J(N) \to ((N\,N)\,J(N))\,J(N) \to \dots$. Weak-head reduction loops in 1 step while pushing $J(N)$ onto the spine forever. **Correct.**
- **§4.3 Eighteen systems preserving $\ge 2$ pending arguments (IDs 451, 452, 457, 458, 463, 464, 469, 470, 475, 476, 481, 482 in `diag_200`, and IDs 486, 490, 506 in `triple0`, 570, 574, 590 in `triple1`):**
  - $J(x) = \lambda b c. (u_1\, u_2)\, u_3$ where $(u_1, u_2, u_3)$ is a permutation of $(x, b, c)$ (left-associated $T$).
  - Grammar $\mathcal{G} ::= N \mid J(\mathcal{G}) \mid \mathcal{G}\,\mathcal{G}$. Any state has a head atom $N$ or $J(X)$ applied to $m$ arguments in $\mathcal{G}$.
  - If $m \ge 2$:
    - If head is $N$ (in any of the 3 forms $N\,X \to X\,J(X)\,X$, $N\,X \to X\,(X\,J(X))$, or $N\,X \to X\,J(X)$): consuming $X$ pushes 2, 1, or 1 arguments onto $X$, so the new spine has $\ge m+1$ or $\ge m$ arguments (and if $X$ is an application, decomposing it adds even more arguments). Thus $m' \ge m \ge 2$.
    - If head is $J(X)$: consuming 2 arguments $U, V$ produces $(u_1\, u_2)\, u_3$ applied to the remaining $m - 2$ arguments, which has $u_1$ applied to $u_2, u_3$ plus the $m - 2$ arguments, so at least $2 + (m - 2) = m \ge 2$ arguments!
  - Initial entry into $m \ge 2$:
    - Form 1 ($N\,X \to X\,J(X)\,X$): $\Delta N \to N\,N \to N\,J(N)\,N$ ($m = 2$).
    - Form 2 ($N\,X \to X\,(X\,J(X))$): $\Delta N \to N\,N \to N\,(N\,J(N)) \to N\,J(N)\,(N\,J(N)\,(J(N\,J(N))))$ ($m = 2$).
    - Form 3 ($N\,X \to X\,J(X)$): with $D_2 = \lambda d. d\,d\,d$, $D_2\,N \to N\,N\,N$ ($m = 2$); with $D_3 = \lambda d. d\,(d\,d)$, $D_3\,N \to N\,(N\,N) \to N\,N\,J(N\,N)$ ($m = 2$).
  - All 18 layouts therefore have infinite weak-head reductions on the closed prefix alone. **Correct.**
- **§4.4 Four duplicated-final-argument wrappers (IDs 378, 380, 393, 395 in `diag_101`):**
  - Here $N = \lambda a. a\, J(a)$ with $\Delta N \to N\,N \to N\,J(N) = \lambda c. T(N, J(N), c)$. When invoked on continuation $C$ and stream $S$, $(N\,N)\,C\,S \to N\,J(N)\,C\,S$:
    - ID 378 ($T = (a\,b)\,(c\,c)$): $J(X)\,U\,V \to X\,U\,(V\,V)$. By induction on $k \ge 1$, $J^k(N)\,U\,V \to^* N\,U\,d^k(V)$ where $d(V) = V\,V$, and $N\,J^k(N)\,V \to J^k(N)\,J^{k+1}(N)\,V \to^* N\,J^{k+1}(N)\,d^k(V)$. Thus $N\,J(N)\,C\,S$ reduces by weak-head steps without ever reaching $S$.
    - ID 380 ($T = ((a\,b)\,c)\,c$): $J(X)\,U\,V \to X\,U\,V\,V$. By induction on $k \ge 1$, $J^k(N)\,U\,V \to^* N\,U\,V^{k+1}$ and $N\,J^k(N)\,V \to^* N\,J^{k+1}(N)\,V^{k+1}$.
    - ID 393 ($T = (b\,a)\,(c\,c)$): $J(X)\,U\,V \to U\,X\,(V\,V)$. Directly, $N\,J(N)\,V \to J(N)\,J(J(N))\,V \to J(J(N))\,N\,(V\,V) \to N\,J(N)\,((V\,V)\,(V\,V))$ in 5 weak-head steps.
    - ID 395 ($T = ((b\,a)\,c)\,c$): $J(X)\,U\,V \to U\,X\,V\,V$. Directly, $N\,J(N)\,V \to^5 N\,J(N)\,V\,V\,V$.
  - All 4 are checked in `macro_checks.py` and hold for all $k \ge 1$. **Correct.**
- **§4.5 Two boxed outer-between cases (indices 9 and 19 in `five_lambda.json`):**
  - Index 9 (`\a\b.a (\c.(a c) (\u.b))`): $N = \lambda a b. a\, J_{K b}(a)$ where $J_t(X) = \lambda u. X\,u\,t$. Starting from $\Delta N\,C\,S \to^* N\,J_{K C}(N)\,S$, any non-empty wrapper word $W = J_{t_1}(\dots J_{t_k}(N))$ satisfies $W\,U \to^* N\,U\,t_k \dots t_1$, so $N\,W\,P\,\text{rest} \to N\,(K\,P)\,W\,\text{rest}$... wait: $N\,W\,P \to (\lambda b. W\,J_{K b}(W))\,P \to W\,J_{K P}(W) \to^* N\,J_{K P}(W)\,t_k \dots t_1$. Since $k \ge 1$, at least $t_k$ is emitted as the next argument $P'$, so the trailing argument list never empties and $S$ is never reached.
  - Index 19 (`\a\b.a (\c.(c a) (\u.b))`): $N = \lambda a b. a\, Q(a,b)$ where $Q(X,Y) = \lambda u. u\,X\,(K\,Y)$. Then $\Delta N\,C\,S \to^3 N\,Q(N,C)\,S$, and for any $P$, $N\,Q(N,C)\,P \to (\lambda b. Q(N,C)\,Q(Q(N,C),b))\,P \to Q(N,C)\,Q(Q(N,C),P) \to Q(Q(N,C),P)\,N\,(K\,C) \to N\,Q(N,C)\,(K\,P)\,(K\,C)$ in 4 weak-head steps.
  - Both are verified in `macro_checks.py` and hold unconditionally. **Correct.**

---

## 3. The 13 Lean Proofs (`tmp/round3/floor38/`)

**Verdict: CORRECT.**

### 3.1 Independent compilation and axiom check
- **Verified:** I compiled all five Lean modules (`Proofs.lean`, `Checks.lean`, `RankRealization.lean`, `Protected461.lean`, `Residuals.lean`) from scratch into a clean temporary directory with `lean -j2`. All five compiled with exit code 0 in ~2.6 seconds total.
- **Axioms:** `#print axioms residuals_excluded` outputs only standard axioms: `[propext, Classical.choice, Quot.sound]`. No `sorry`, `admit`, `unsafe`, or `native_decide` is used.

### 3.2 Formal statement, exact terms, and sizes
- **Exact contract (`IsSelfInterpreter`):** Imported directly from `Blc.SelfintProof` (via `Blc.Selfint`), which defines:
  ```lean
  def IsSelfInterpreter (E : Term) : Prop :=
    Closed E ∧ ∀ M : Term, Closed M →
      BetaJoin (.app (.app E (.var 0)) (streamOf (blcCode M) (.var 1)))
        (.app (.app (.var 0) (.lam M)) (.var 1))
  ```
- **Exact 13 terms and sizes:** I cross-checked `e448`, `e449`, `e454`, `e455`, `e460`, `e461`, `e466`, `e467`, `e472`, `e473`, `e478`, `e479`, and `e572` in `Checks.lean` against `four_lambda.json` and `progress.json`. Every single definition matches the decoded 37-bit wire of its corresponding layout ID in `four_lambda.json`, and `Checks.lean` proves `Closed e<ID>` and `(blcCode e<ID>).length = 37` for all 13 terms.
- **Soundness of the five divergence mechanisms:**
  1. **Weak-head clock foundation (`WeakHeadClock.lean` & `Proofs.lean`):** If `IsSelfInterpreter e`, then `identity_has_normal_form` shows `e (var 1) (quoteI (var 0))` has a $\beta$-normal form (since its contract join `var 1 churchFalse (var 0)` is normal and $\beta$ is confluent). By `hasNormalForm_count`, any normalizing term has a finite weak-head clock `Count t n`. By `count_reduct` and `head_decreases`, arbitrary `Betas` steps cannot increase the clock, while a `weakStep` strictly decreases it, and `count_apps_left` bounds a prefix's clock by the applied term's clock.
  2. **8 Rank-zero cases (IDs 448, 449, 454, 455, 472, 473, 478, 479 in `Proofs.lean` & `RankRealization.lean`):** Formalizes the macro grammar `M`, proves `rank (.ap .n .n) = 0`, `zero_progress`, and `advance_realize` (every `Red` step realizes at least one `weakStep` followed by `Betas`), so `rank_zero_no_count` refutes `Count (realize mode order (.ap .n .n)) m` by strong induction on $m$.
  3. **Case 460 (`Checks.lean`):** Formalizes $F\,V \to^5 F\,(P\,V)$ for all $V$ via one `weakStep` (`f460_first`) and four replayed steps lifted by substitution (`growth_460_all`), then applies `family_no_count`.
  4. **Case 461 (`Protected461.lean`):** Formalizes the canonical active grammar `P` with `smart` canonicalization ($N\,J(X) \to^5 F(X)$ via `fusion`), proves `progress` on configurations $P\,Q\,\Gamma$ with $\Gamma \ne []$, and proves `no_count` by strong induction on the clock.
  5. **Cases 466, 467, 572 (`Checks.lean`):** Formalizes `prefix_<ID>` (`Betas` from the identity invocation to `tApps core<ID> tail<ID>`), `first_<ID>` (`weakStep core<ID> = some afterFirst<ID>`), and `cycle_<ID>` (`Betas afterFirst<ID> (tApps core<ID> extras<ID>)`), then applies `not_selfint_pump`.

---

## Summary Table

| Component | Verdict | Notes |
|---|---|---|
| **(1) Completeness (37-bit inventory $\to$ 676 layouts)** | **Correct** | 39-bit literal-interface bound cleanly drops $\lambda$-rooted terms; first-redex width-loss and wire-cost lemmas force $E = D\,N$ with normal $D, N$; all four $(L,V,X)$ triples independently verified by enumeration ($652 + 24 = 676$). |
| **(2) 615 finite exclusions & 48 infinite invariants** | **Correct** | JSON ledgers reproduced byte-for-byte; no timeout/cap used as a refutation; all 5 families of infinite invariants (12 + 12 + 18 + 4 + 2 = 48) verified. |
| **(3) 13 Lean residual proofs (`tmp/round3/floor38/`)** | **Correct** | Compiled from scratch in 2.6s (`Residuals.residuals_excluded`); depends only on `[propext, Classical.choice, Quot.sound]`; exact 37-bit terms match `four_lambda.json` and `IsSelfInterpreter`. |
[gaslamp] job: gm-20261021-182328-8341 · session: f2e6c2ab-02fa-425a-b660-f4a86fd46d35 · resume: gaslamp gemini --resume f2e6c2ab-02fa-425a-b660-f4a86fd46d35 · model: gemini-4-argon · tok: 2433k→16k
