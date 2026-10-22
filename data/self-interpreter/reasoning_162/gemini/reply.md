[gaslamp] → gemini · job gm-20261021-160753-ad4e · watch: tail -f /Users/a9lim/.gaslamp/jobs/gm-20261021-160753-ad4e/events.jsonl
Here are **nine concrete, distinct sub-162 designs (`144` to `161` bits)** spanning the cross-module boundaries (`reader × NEXT`, `variable arm × cell`, `variable arm × continuation`, `reader × skip`, `dual-operand × selector`, `knot × APP`, `ABS × leaky cell`, `cell × APP alias`, and `binders × continuation-eta`).

Every term below is a complete closed lambda term in the 162's named-variable syntax, with its exact `(L, A, X)` and bit count `|M| = 2L + 4A + 2 + X` verified via `tools/blcc.py` (`battery.compile_lam`).

---

### Reference Baseline: The 162-bit Self-Interpreter (`L = 16, A = 24, X = 32`, `162` bits)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

- **Region breakdown (`|M| = 2L + 4A + 2 + X`)**:
  - Knot + `intL = x x` let: `L = 3, A = 4, X = 0` (`22` bits)
  - `\cont. \list.`: `L = 2, A = 0, X = 0` (`4` bits)
  - Reader spine `list · · ·`: `L = 0, A = 3, X = 0` (`8` bits)
  - Selector `I = \a. a`: `L = 1, A = 0, X = 0` (`4` bits)
  - Variable arm `V = \u. list (\q. cont) (list list u)`: `L = 2, A = 4, X = 6` (`28` bits; `X`: `list` at 1 ×3, `cont` at 3 ×1, `u` at 0 ×1)
  - `NEXT` header `\bit1. intL (\exp. bit1 · ·)`: `L = 2, A = 3, X = 4` (`18` bits; `X`: `intL` at 3, `bit1` at 1)
  - `ABS` arm `cont (\args \arg. exp (\zx \zy. zx arg (zy args)))`: `L = 4, A = 5, X = 11` (`41` bits; `X`: `cont` at 3, `exp` at 2, `zx` at 1, `arg` at 2, `zy` at 0, `args` at 3)
  - `APP` arm `intL (\exp2. cont (\args. exp args (exp2 args)))`: `L = 2, A = 5, X = 11` (`37` bits; `X`: `intL` at 4, `cont` at 4, `exp` at 2, `args` at 0, `exp2` at 1, `args` at 0)

---

### Idea 1: Reader × `NEXT` — Unified `u`-Dispatched Variable Continuation (`157` bits and `161` bits)

#### 1A. Direct `list u` Dispatch (`157` bits: `L = 15, A = 24, X = 29`, `-5` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list u (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

#### 1B. Off-Boolean Self-Applied `(u u)` Dispatch (`161` bits: `L = 15, A = 25, X = 29`, `-1` bit vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list (u u) (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

- **(a) Mechanism & Reductions**:
  - In `int162`, `V = \u. list (\q. cont) (list list u)` binds `u = NEXT` in the variable branch (`F r V NEXT = V NEXT`), then erases `u` inside `list list u = N` while paying 7 bits (`\q. cont`) to obtain a constant function returning `cont`.
  - **Key identity**: On a 0-tag stream `s = cons K r` (`r = cons bit1 r2`), `NEXT` is only ever applied to a **Boolean** `bit1 ∈ {K, F}` followed by **one** stream argument `r2` (`NEXT bit1 r2`). On a variable stream `s = cons F r` (`r = 1^(n-1) 0 ++ N`):
    - In **1A**, `s I V NEXT -> F r V NEXT -> V NEXT -> s NEXT (s s NEXT) -> NEXT F r N` (passing `F`, `r`, and `N` — **three** arguments — to `NEXT`).
    - In **1B**, `V NEXT -> s (NEXT NEXT) (s s NEXT) -> (NEXT NEXT) F r N`. Here `NEXT` is applied to **itself** (`NEXT`), a non-Boolean `\bit1. ...`, whereas in the 0-tag branch `r NEXT = NEXT bit1 r2` applies `NEXT` only to `bit1 ∈ {K, F}`!
    - If `NEXT` satisfies the off-Boolean law `NEXT NEXT ->* \q. cont` (while preserving `NEXT K = intL k_abs` and `NEXT F = intL k_app`), then:
      - **0-tag (`s = cons K r`)**: `s I V NEXT -> K r V NEXT -> r NEXT -> NEXT bit1 r2`.
      - **Variable (`s = 1^n 0 ++ N`)**: `s I V NEXT -> F r V NEXT -> s (NEXT NEXT) (s s NEXT) -> (\q. cont) F r N -> cont r N`.
- **(b) Bit Accounting vs 162**:
  - In **1A**: Replaces `\q. cont` (`L = 1, A = 0, X = 3`, 7 bits) inside `V` with `u` (`L = 0, A = 0, X = 0`, 2 bits). Delta: `ΔL = -1 (-2)`, `ΔA = 0 (0)`, `ΔX = -3 (-3)` → **`162 - 5 = 157` bits** (`L = 15, A = 24, X = 29`).
  - In **1B**: Replaces `\q. cont` (7 bits) with `u u` (`L = 0, A = 1, X = 0`, 6 bits). Delta: `ΔL = -1 (-2)`, `ΔA = +1 (+4)`, `ΔX = -3 (-3)` → **`162 - 1 = 161` bits** (`L = 15, A = 25, X = 29`).
- **(c) Closest Known Variant & Why It Differs**:
  - Closest to `golf162`'s refuted `handler157.lam` (1A) and `diag161.lam` (1B).
  - **Why this analysis differs**: `golf162` proved that *unchanged* `NEXT` cannot return bare `cont` or `\q. cont` because every occurrence of `cont` in unchanged `NEXT` is applied (`cont A_e` or `cont T_{e,f}`). However, `golf162`'s second obstruction (`Q F r` colliding on `1010 ++ N`) applies *only* to 1A (where `u` receives `F`), **not** to 1B (where `u` receives `u = NEXT`, which is disjoint from `{K, F}`!). The remaining challenge for 1B is designing a `NEXT` where `NEXT NEXT = \q. cont` without adding more than the 1–4 bits saved in `V`.

---

### Idea 2: Variable Arm × Environment Cell — Whole-Prefix Variable + Single-Step Shifted Lookup (`159` bits and `162` bits)

#### 2A. Whole-Prefix Variable Arm (`159` bits: `L = 15, A = 24, X = 31`, `-3` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. cont list (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

#### 2B. Whole-Prefix Variable Arm + Tail-First Scott Cell (`162` bits: `L = 16, A = 24, X = 32`, `0` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. cont list (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zy (\b. b arg args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

- **(a) Mechanism & Reductions**:
  - In `int162`, `V = \u. list (\q. cont) (list list u)` reopens `list = cons F r` only to strip the leading `1` (`F`) so that `var n` has value `r = U_{n-1}(N) = 1^(n-1) 0 ++ N`.
  - If `V` instead returns `list = U_n(N) = cons F r` directly (`V = \u. cont list (list list u)`), we save 3 bits in `V`:
    - **0-tag (`s = cons K r`)**: `s I V NEXT -> K r V NEXT -> r NEXT`.
    - **Variable (`s = U_n(N) = cons F r`)**: `s I V NEXT -> F r V NEXT -> V NEXT -> cont s (s s NEXT) -> cont U_n(N) N`.
  - **Key new observation on `U_n(N)` vs `golf162`'s 34-bit cell**:
    In `golf162` (`whole_prefix.lam`, 169 bits), Codex built a 34-bit cell `D(a,e) = \unused r. r (\b. b (\discard. a) (e b))` (+10 bits) because it maintained the shifted invariant `U_{n+1}(N) D(a,e) ->* U_n(N) e` at *every* recursive lookup step.
    **That per-step re-shifting is unnecessary**: in `s = cons F r`, *only the outermost cell* has the extra `F`; its tail `r = U_{n-1}(N)` **already has the exact 162 variable representation**!
    Look at what happens when `s = cons F r` is applied to the **unchanged 24-bit cell** `cell(a, e) = \zx \zy. zx a (zy e)`:
    $$U_n(N)\ (\lambda zx\ zy.\ zx\ a\ (zy\ e)) \;\to^*\; F\ a\ (U_{n-1}(N)\ e) \;\to^*\; U_{n-1}(N)\ e = r\ e$$
    The first standard cell *automatically* strips the leading `F` and reduces to `r e` (the exact 162 lookup of `r` in `e`)!
    Similarly, in **2B**, `\zx \zy. zy (\b. b arg args)` discards `zx = F` on the first step and applies `zy = r` to `\b. b arg args` (which on `var 1`, where `r = cons K N`, gives `K arg args N = arg N`, the leaky-cell behavior).
- **(b) Bit Accounting vs 162**:
  - In **2A**: `V` changes from `\u. list (\q. cont) (list list u)` (`L = 2, A = 4, X = 6`, 28 bits) to `\u. cont list (list list u)` (`L = 1, A = 4, X = 5`, 25 bits). Delta: `ΔL = -1 (-2)`, `ΔA = 0 (0)`, `ΔX = -1 (-1)` → **`162 - 3 = 159` bits** (`L = 15, A = 24, X = 31`).
  - In **2B**: `V` is `-3` bits (25 bits), and the cell `\zx \zy. zy (\b. b arg args)` is `L = 3, A = 3, X = 7` (27 bits, `+3` bits over 24) → **`162 - 3 + 3 = 162` bits** (`L = 16, A = 24, X = 32`).
- **(c) Closest Known Variant & Why It Differs**:
  - Closest to `golf162/whole_prefix.lam` (169 bits) and `whole_prefix_naive159.lam` (159 bits).
  - **Why it differs**: Shows that `U_n(N)` does not require preserving `U_k(N)` at each recursive environment step (which cost +10 bits in `golf162`): `r = zy` is already `U_{n-1}(N)`, so any way of absorbing or duplicating the initial cell entry within `< 3` bits beats 162.

---

### Idea 3: Variable Arm × Continuation — The Tag-Prefix Continuation Protocol (`159` bits: `L = 15, A = 24, X = 31`, `-3` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list cont (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

- **(a) Mechanism & Reductions**:
  - In `int162`, `V = \u. list (\q. cont) (list list u)` uses `\q. cont` so that `list (\q. cont) = (\q. cont) F r = cont r`.
  - If we simply drop `\q.` and write `V = \u. list cont (list list u)`:
    - **0-tag (`s = cons K r`)**:
      `s I V NEXT -> K r V NEXT -> r NEXT`.
    - **Variable (`s = cons F r`, `r = 1^(n-1) 0 ++ N`)**:
      `s I V NEXT -> F r V NEXT -> V NEXT -> s cont (s s NEXT) -> cont F r N`.
  - Notice what `s cont (s s u)` does on every variable stream: because `s = \f. f F r` is a Scott cell whose first element is always `F`, `s cont (s s u)` passes **three** arguments to `cont`: the constant bit `F = \x \y. y`, the exact stripped variable value `r = U_{n-1}(N)`, and the exact remainder `N`!
  - Unlike Idea 2A (which passes unstripped `s` and `N`), Idea 3 **already strips `s` to `r`** using `s` itself (`s cont = cont F r`), at the cost of passing `F` as a leading dummy argument to `cont`.
- **(b) Bit Accounting vs 162**:
  - Removes `\q.` from `V` (`ΔL = -1`, `-2` bits) and shifts `cont` inside `V` from index 3 to index 2 (`ΔX = -1`, `-1` bit).
  - Total: `L = 15, A = 24, X = 31` → **`2(15) + 4(24) + 2 + 31 = 159` bits** (`-3` bits vs 162).
- **(c) Closest Known Variant & Why It Differs**:
  - Not in `interpreter.md`, `golf162`, or `zoo` (which only tested `cont list (list list u)` giving `(s, N)` and `s (\b. b I cont) NEXT` giving `(r, NEXT)`).
  - **Why it differs**: It is the only 25-bit variable arm that extracts the stripped tail `r` and the skipped remainder `N` without binding `r` or `\q.`. Its obstacle on unchanged `NEXT`/`C` is the leading `F` passed before `(r, N)`.

---

### Idea 4: Reader × Skip — The Boolean-Diagonal Reader `list (\b. b b cont) S NEXT` (`154` bits and `150` bits)

#### 4A. With Forced Skip `list list list` (`154` bits: `L = 14, A = 24, X = 28`, `-8` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\b. b b cont) (list list list)
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

#### 4B. With Unforced Skip Thunk `list list` (`150` bits: `L = 14, A = 23, X = 28`, `-12` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\b. b b cont) (list list)
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

- **(a) Mechanism & Reductions**:
  - Uses the **Boolean self-application identity**:
    $$K\ K = \lambda y.\ K = \lambda y\ u\ v.\ u, \qquad F\ F = I = \lambda y.\ y$$
    Therefore, for any `Y, r, S, NEXT`:
    - When `b = K`: `b b Y r S NEXT -> K K Y r S NEXT -> K r S NEXT -> r NEXT` (erasing **both** `Y` and `S`!).
    - When `b = F`: `b b Y r S NEXT -> F F Y r S NEXT -> Y r S NEXT` (keeping `Y`, `r`, `S`, and `NEXT`!).
  - **Reductions of 4A (`S = list list list`, 154 bits)**:
    - **0-tag (`s = cons K r`)**: `s (\b. b b cont) (s s s) NEXT -> K K cont r (s s s) NEXT -> K r (s s s) NEXT -> r NEXT`.
    - **Variable (`s = 1^n 0 ++ N`)**: `s (\b. b b cont) (s s s) NEXT -> F F cont r (s s s) NEXT -> cont r N NEXT`.
  - **Reductions of 4B (`S = list list`, 150 bits)**:
    - **0-tag (`s = cons K r`)**: `s (\b. b b cont) (s s) NEXT -> K K cont r (s s) NEXT -> K r (s s) NEXT -> r NEXT` (still `r NEXT` because `K r` erases `s s`!).
    - **Variable (`s = 1^n 0 ++ N`)**: `s (\b. b b cont) (s s) NEXT -> F F cont r (s s) NEXT -> cont r (K N) NEXT`.
      Look at the two arguments after `cont r` in **4B**: they are `K N` and `NEXT`, whose application `(K N) NEXT` **is `N`**!
- **(b) Bit Accounting vs 162**:
  - **4A**: Replaces `(\a. a) (\u. list (\q. cont) (list list u))` (`L = 3, A = 5, X = 6`, 34 bits with its spine app) by `(\b. b b cont) (list list list)` (`L = 1, A = 5, X = 2`, 26 bits). Delta: `ΔL = -2 (-4)`, `ΔA = 0 (0)`, `ΔX = -4 (-4)` → **`162 - 8 = 154` bits** (`L = 14, A = 24, X = 28`).
  - **4B**: Further replaces `list list list` (10 bits) by `list list` (6 bits: `ΔA = -1 (-4)`, `ΔX = 0`) → **`154 - 4 = 150` bits** (`L = 14, A = 23, X = 28`).
- **(c) Closest Known Variant & Why It Differs**:
  - Closest to `interpreter.md` §6 line 737 ("Zero arm replaced by its bit, `next` as a third outer argument | 158, *fails*").
  - **Why it differs**:
    1. Inlining `NEXT` as the 3rd operand (instead of let-binding `next`) drops the 158-bit term to **154 bits** (4A).
    2. Dropping the 3rd `list` from `list list list` (4B) drops it further to **150 bits** (12 bits below 162!) while **preserving the exact 0-tag reduction `r NEXT`**, and turns the variable return into `cont r (K N) NEXT`, where the 2nd argument (`K N`) is a thunk waiting to erase the 3rd argument (`NEXT`) to yield `N`.

---

### Idea 5: Dual-Operand Reader × Bit Selector (`160` bits: `L = 15, A = 25, X = 28`, `-2` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\b. b b cont) (list (\a. a) (list list)
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args))))))))
  (x x))
```

- **(a) Mechanism & Reductions**:
  - Uses the 164-bit interpreter's dual operand `D = list (\a. a) (list list) NEXT`, which satisfies:
    - On 0-tag (`s = cons K r`): `D -> K r (s s) NEXT -> r NEXT`.
    - On variable (`s = 1^n 0 ++ N`): `D -> F r (s s) NEXT -> (s s) NEXT -> K N NEXT -> N`.
  - In `03_reference164` (`164` bits), the outer handler is `\b. b (\x \y. y) cont`, using a literal `F = \x \y. y` (6 bits) to discard `r` and keep `D` on the 0-tag.
  - Replacing `(\x \y. y)` (6 bits) by `b` (2 bits) or `(\a. a)` (4 bits, which measures **162 bits**: `L = 16, A = 25, X = 28`):
    - **Variable (`s = 1^n 0 ++ N`)**: `s (\b. b b cont) D -> F F cont r D -> cont r D -> cont r N` (100% exact!).
    - **0-tag (`s = cons K r`)**:
      - With `b` (160 bits): `s (\b. b b cont) D -> K K cont r D -> K r D -> r` (which erases `D` and returns `r`, needing `NEXT` outside or inside `r`).
      - With `(\a. a)` (162 bits): `s (\b. b (\a. a) cont) D -> K I cont r D -> I r D -> r (r NEXT)` (which applies `r = cons bit1 r2` to `r NEXT`, passing `bit1`, `r2`, and `r NEXT`!).
- **(b) Bit Accounting vs 162**:
  - Compared to `03_reference164` (`L = 17, A = 25, X = 28`, 164 bits), replacing `\x \y. y` (`L = 2, A = 0, X = 0`, 6 bits) with `b` (`L = 0, A = 0, X = 0`, 2 bits) gives `ΔL = -2 (-4 bits)` → **`164 - 4 = 160` bits** (`L = 15, A = 25, X = 28`).
  - Compared to `int162` (`L = 16, A = 24, X = 32`, 162 bits): `ΔL = -1 (-2)`, `ΔA = +1 (+4)`, `ΔX = -4 (-4)` → **`162 - 2 = 160` bits**.
- **(c) Closest Known Variant & Why It Differs**:
  - Closest to `03_reference164` (`zoo/REPORT.md` row 03, 164 bits).
  - **Why it differs**: Identifies that the 4-bit gap between `03_reference164` (164) and 160 is entirely the literal `F = \x \y. y` in `\b. b F cont`. In fact, we verified by exhaustive search over all terms `O` up to 22 bits in `[s, cont]` that `s (\b. b (\x \y. y) cont)` (22 bits) is the unique minimum operator satisfying `O[s := cons K r] D = D` and `O[s := cons F r] D = cont r D` for rigid `D`, so any sub-162 in the dual-operand family *must* change `D`'s 0-tag value from `r NEXT` (so `O` does not have to reduce to `I` on `s = cons K r`).

---

### Idea 6: Knot × `NEXT` × `APP` — Single Syntactic Recursive Call `x x` (`157` bits and `159` bits)

#### 6A. Single `x x` with `x`-Driven Second Parse (`159` bits: `L = 15, A = 23, X = 35`, `-3` bits vs 162)

```text
(\x. x x) (\x. \cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. x x (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (x (\exp2. cont (\args. exp args (exp2 args)))))))
```

#### 6B. Single `x x` with `list`-Driven Second Parse (`157` bits: `L = 15, A = 23, X = 33`, `-5` bits vs 162)

```text
(\x. x x) (\x. \cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. x x (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (list (\exp2. cont (\args. exp args (exp2 args)))))))
```

- **(a) Mechanism & Reductions**:
  - `Blc/SelfintKnot.lean` proves that if the parser body has **two** opaque recursive call holes (`k = 2`) at depths `d1, d2`, the knot + `intL = x x` let costs at least `26 + d1 + d2` bits (`33` bits in `int162`, which `int162` attains).
  - **How to escape `SelfintKnot.lean`**: Reduce the number of syntactic `x x` occurrences in the body from `k = 2` to **`k = 1`**, deleting the `(\intL. ...) (x x)` let entirely!
  - Without `\intL.`, the first parse in `NEXT` writes `x x` directly (`\bit1. x x (\exp. ...)`).
  - How does `APP` perform the second parse without writing `x x` a second time?
    - **0-tag (`s = cons K r`, `r = cons bit1 r2`)**: `s I V NEXT -> r NEXT -> x x (\exp. bit1 ABS APP) r2`.
    - **Variable (`s = 1^n 0 ++ N`)**: `s I V NEXT -> cont r N`.
    - In **6A**, the `APP` branch calls `x k_app2 rest1`. Because `x` is the generator `\x \cont \list. ...`, `x k_app2 rest1` binds `\x` to `k_app2` and `\cont` to `rest1` (returning a partial application unless `k_app2` or `rest1` supplies `x`).
    - In **6B**, remember our **0-tag invariant**: whenever `NEXT` is entered, `list` is **always** `cons K r = \f. f K r`! So in 6B, `list k_app2 rest1` reduces to `k_app2 K r rest1`. If instead `list` or `u` (from a modified reader) carries the active parser, `APP` invokes it with a single variable reference instead of `x x`.
- **(b) Bit Accounting vs 162**:
  - Deleting `(\intL. ...) (x x)` removes 1 lambda (`\intL`, `-2` bits), 2 applications (`(\intL...) (x x)` and `x x`, `-4` bits), and 2 leaves `x` (`-4` bits) = **`-10` bits**.
  - Inside `NEXT`, replacing the first `intL` (index 3, 5 bits) with `x x` (where `x` is now at index 3 because `\intL` is gone: 1 app + two `x` at index 3 = `2 + 5 + 5 = 12` bits) adds **`+7` bits**.
  - At the second parse in `APP` (depth 4):
    - In **6A**, `x` is at index 4 (same as `intL` was: `+0` bits). Net: `-10 + 7 + 0 = -3` bits → **`159` bits** (`L = 15, A = 23, X = 35`).
    - In **6B**, `list` is at index 2 (`-2` index bits vs `intL` at 4). Net: `-10 + 7 - 2 = -5` bits → **`157` bits** (`L = 15, A = 23, X = 33`).
- **(c) Closest Known Variant & Why It Differs**:
  - Closest to Tromp's 170 (which inlines `x x` at *both* sites, giving the 167-bit core on the 162 reader).
  - **Why it differs**: Inlining `x x` at *one* site while routing the second parse through a single variable (`x` or `list` or a continuation-carried parser) saves 8 bits over the 167-bit core (`159` / `157` bits), bypassing the `k = 2` assumption of `SelfintKnot.lean`.

---

### Idea 7: `ABS` Cell × Variable Arm — The 160-bit Curried Leaky Cell on the 162 Reader (`160` bits: `L = 16, A = 24, X = 30`, `-2` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx. zx arg (\zy. zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

- **(a) Mechanism & Reductions**:
  - Replaces the 24-bit canonical cell `\zx \zy. zx arg (zy args)` with the **22-bit curried cell** `L(arg, args) = \zx. zx arg (\zy. zy args)`, moving `\zy.` inside the second argument of `zx`:
    - **0-tag (`s = cons K r`)**: `s I V NEXT -> r NEXT`.
    - **Variable (`s = 1^n 0 ++ N`)**: `s I V NEXT -> cont r N`, where `r = U_{n-1}(N)`.
    - **Environment step (`n > 1`, `r = cons F r'`)**:
      $$(\text{cons}\ F\ r')\ (\lambda zx.\ zx\ \text{arg}\ (\lambda zy.\ zy\ \text{args})) \;\to^*\; F\ \text{arg}\ (\lambda zy.\ zy\ \text{args})\ r' \;\to^*\; (\lambda zy.\ zy\ \text{args})\ r' \;\to\; r'\ \text{args}$$
      The recursive step `n > 1` is **100% β-exact**!
    - **Base lookup (`n = 1`, `r = cons K N`)**:
      $$(\text{cons}\ K\ N)\ (\lambda zx.\ zx\ \text{arg}\ (\lambda zy.\ zy\ \text{args})) \;\to^*\; K\ \text{arg}\ (\lambda zy.\ zy\ \text{args})\ N \;\to^*\; \text{arg}\ N$$
      Wait: why does `n = 1` produce `arg N` instead of `arg`? Because `r = cons K N = \f. f K N` passes TWO arguments (`K` and `N`) to the cell! When `zx = K`, `K arg (\zy. zy args)` reduces to `arg`, which then receives the second component `N` of `cons K N`!
    - **Cross-module consequence**: If a variable's terminating zero is a **1-argument selector** `\f. f K` (instead of a 2-argument cell `\f. f K N`), or if `arg` is K-wrapped (`protocol-obstructions.md`), `L(arg, args)` is exact on all `n >= 1`!
- **(b) Bit Accounting vs 162**:
  - In `int162`'s cell `\zx \zy. zx arg (zy args)` (`L = 2, A = 3, X = 6`, 24 bits): `zx` is at index 1, `arg` is at index 2, `zy` is at index 0, `args` is at index 3 (`X = 1 + 2 + 0 + 3 = 6`).
  - In `\zx. zx arg (\zy. zy args)` (`L = 2, A = 3, X = 4`, 22 bits): moving `\zy.` out of the prefix brings `zx` from index 1 to **index 0** (`-1` bit) and `arg` from index 2 to **index 1** (`-1` bit), while `zy` (0) and `args` (3) stay at the same depths (`X = 0 + 1 + 0 + 3 = 4`).
  - Delta: `ΔL = 0`, `ΔA = 0`, `ΔX = -2 (-2 bits)` → **`162 - 2 = 160` bits** (`L = 16, A = 24, X = 30`).
- **(c) Closest Known Variant & Why It Differs**:
  - Closest to `interpreter.md` §6 line 695 ("Bare leaky cell | 166, *fails*" on the 168 reader).
  - **Why it differs**: Placed in the 162 reader, it measures **160 bits** (2 bits below 162), and pins down that the *only* failure of the 22-bit cell is the arity-2 terminating cell `cons K N` at `n = 1` (`n > 1` is already exact).

---

### Idea 8: Cell × `APP` Lift — The 158-bit Environment-Driven `APP` (`158` bits: `L = 16, A = 23, X = 32`, `-4` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. args exp exp2))))))
  (x x))
```

- **(a) Mechanism & Reductions**:
  - **Key identity on the 24-bit environment cell**:
    Let `e = \zx \zy. zx a (zy d)` be any environment cell. Apply `e` to two closures `exp` and `exp2`:
    $$e\ \text{exp}\ \text{exp2} \;=\; (\lambda zx\ zy.\ zx\ a\ (zy\ d))\ \text{exp}\ \text{exp2} \;\to^*\; \text{exp}\ a\ (\text{exp2}\ d)$$
    When `a = e` and `d = e` (i.e. a diagonal cell `e = cell(E, E)`), `e exp exp2 ->* exp E (exp2 E)` — **the environment cell itself performs the `S`-combinator lift `\args. exp args (exp2 args)`!**
  - Even for a standard cell `e = cell(arg, args)`, if closures take `(arg, args)` unbundled or if `args` is a self-passing environment dispatcher:
    - **0-tag (`s = cons K r`)**: `s I V NEXT -> r NEXT`.
    - **Variable (`s = 1^n 0 ++ N`)**: `s I V NEXT -> cont r N`.
    - **`APP` (`bit1 = F`)**: builds `\args. args exp exp2` (15 bits) instead of `\args. exp args (exp2 args)` (19 bits).
- **(b) Bit Accounting vs 162**:
  - Replaces `\args. exp args (exp2 args)` (`L = 1, A = 3, X = 3`, 19 bits: `exp` at 2, `args` at 0, `exp2` at 1, `args` at 0) with `\args. args exp exp2` (`L = 1, A = 2, X = 3`, 15 bits: `args` at 0, `exp` at 2, `exp2` at 1).
  - Delta: `ΔL = 0`, `ΔA = -1 (-4 bits)`, `ΔX = 0` → **`162 - 4 = 158` bits** (`L = 16, A = 23, X = 32`).
- **(c) Closest Known Variant & Why It Differs**:
  - Closest to `interpreter.md` §6 line 703 ("Cell/APP alias: APP's value `\args. args exp exp2` | 164, *fails*" on the 168 reader) and `protocol-obstructions.md` lines 528–576.
  - **Why it differs**: Spliced into the 162 reader, it is **158 bits** (giving 3 bits of headroom below 162). As `protocol-obstructions.md` proved, with *unchanged* `ABS` and transparent root `\z. M`, `args` at the root is the rigid variable `z` (so `z exp exp2` stays stuck at head `z`), and `APP(I, var n)` collides with `var (n+1)`. Escaping this within the 3-bit budget requires either a universal-machine contract (`U (<M> ++ N) = M N` where no free `z` exists) or changing what `ABS` passes as `args`.

---

### Idea 9: Variable Arm × Continuation-Eta — The 144-bit Remainder-In-Value Reader (`144` bits: `L = 15, A = 21, X = 28`, `-18` bits vs 162)

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (list (\q. cont))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

- **(a) Mechanism & Reductions**:
  - Drops `\u.` and `(list list u)` from `V`, setting `V = list (\q. cont)` (10 bits in `[list:0, cont:1]` vs 28 bits in `int162`!).
  - **Reductions**:
    - **0-tag (`s = cons K r`)**:
      `s I (s (\q. cont)) NEXT -> K r (s (\q. cont)) NEXT -> r NEXT` (100% exact!).
    - **Variable (`s = cons F r`, where `r = 1^(n-1) 0 ++ N`)**:
      `s I (s (\q. cont)) NEXT -> F r (s (\q. cont)) NEXT -> s (\q. cont) NEXT -> (\q. cont) F r NEXT -> cont r NEXT`.
  - **Crucial structural identity**:
    Why is `N` **not** lost in `cont r NEXT` at a variable leaf?
    Because `r = 1^(n-1) 0 ++ N` **still contains `N` as its suffix**, and satisfies:
    $$r\ r\ \text{NEXT} \;\to^*\; K\ N\ \text{NEXT} \;\to^*\; N$$
    Look at the two arguments passed to `cont` in `cont r NEXT`:
    - The 1st argument is `r` (the variable value, which *also* satisfies `r r = K N`).
    - The 2nd argument is `NEXT` (the exact dummy operand needed to force `r r NEXT ->* N`!).
    Furthermore, in the BLC grammar (`<M> ::= 00<M> | 01<M><L> | 1^n 0`), **every finite BLC subterm `<M>` ends at a rightmost token which is a variable `1^n 0`**, and both `k_abs = \exp. cont (ABS exp)` and `k_app2 = \exp2. cont (APP exp exp2)` are η-reduced with respect to the second (`rest`) argument!
    The only reason `144` fails with unchanged `ABS`/`APP` is that `k_abs` and `k_app2` wrap `r` into `ABS(r)` / `APP(..., r)` in the first argument of `cont` while leaving `NEXT` (instead of `r r NEXT = N`) in the second argument of `cont`. That gives an **18-bit budget** (`144` vs `162`) to extract or thread `r r` before `r` is wrapped!
- **(b) Bit Accounting vs 162**:
  - Replaces `V = \u. list (\q. cont) (list list u)` (`L = 2, A = 4, X = 6`, 28 bits) with `V = list (\q. cont)` (`L = 1, A = 1, X = 2`, 10 bits: `list` at index 0, `cont` at index 2 under `\q.`).
  - Delta: `ΔL = -1 (-2 bits)`, `ΔA = -3 (-12 bits)`, `ΔX = -4 (-4 bits)` → **`162 - 18 = 144` bits** (`L = 15, A = 21, X = 28`).
- **(c) Closest Known Variant & Why It Differs**:
  - Closest to `golf162-claude/c144_trailing.lam` (`list (\b. b (\a. a) cont) NEXT`, also 144 bits, `L = 15, A = 21, X = 28`).
  - **Why it differs**: Uses `list (\a. a) (list (\q. cont)) NEXT` (the `s I` family with an un-abstracted `V`) and identifies the exact rightmost-leaf invariant: in `cont r NEXT`, the two arguments `(r, NEXT)` already determine both the value `r` and the remainder `N = r r NEXT`, with 18 bits of margin to spare.

---

### Summary Ledger of Verified Bit Counts (`|M| = 2L + 4A + 2 + X`)

| ID | Cross-Module Boundary | `L` | `A` | `X` | Bits | vs 162 | Key Mechanism / Residual Obligation |
|---|---|---:|---:|---:|---:|---:|---|
| **Baseline** | `int162.lam` | 16 | 24 | 32 | **162** | `0` | `s I (\u. s (\q. cont) (s s u)) NEXT` |
| **Idea 1A** | Reader × `NEXT` (`list u`) | 15 | 24 | 29 | **157** | `-5` | `V = \u. list u (list list u)` → calls `NEXT F r N` on variables |
| **Idea 1B** | Reader × `NEXT` (`list (u u)`) | 15 | 25 | 29 | **161** | `-1` | `V = \u. list (u u) (list list u)` → off-Boolean `NEXT NEXT` call |
| **Idea 2A** | Variable Arm × Cell | 15 | 24 | 31 | **159** | `-3` | `V = \u. cont list (list list u)`; `U_n(N) cell(a,e) ->* r e` in 1 step |
| **Idea 2B** | Variable Arm × Tail-First Cell | 16 | 24 | 32 | **162** | `0` | Pairs 25-bit `V` with 27-bit `\zx \zy. zy (\b. b arg args)` |
| **Idea 3** | Variable Arm × Continuation | 15 | 24 | 31 | **159** | `-3` | `V = \u. list cont (list list u)` → `cont F r N` (strips `r` without `\q.`) |
| **Idea 4A** | Reader (`b b`) × Skip (`s s s`) | 14 | 24 | 28 | **154** | `-8` | `K K cont r S NEXT -> r NEXT`; `F F cont r S NEXT -> cont r N NEXT` |
| **Idea 4B** | Reader (`b b`) × Thunk (`s s`) | 14 | 23 | 28 | **150** | `-12` | 0-tag still `r NEXT`; 1-tag `cont r (K N) NEXT` where `(K N) NEXT = N` |
| **Idea 5** | Dual Operand × `b` Selector | 15 | 25 | 28 | **160** | `-2` | Replaces `F` (6b) in `03_reference164` by `b` (2b) |
| **Idea 6A** | Knot (`k=1` `x x`) × `APP` (`x`) | 15 | 23 | 35 | **159** | `-3` | Deletes `\intL` let; single `x x` in `NEXT`, `x` in `APP` |
| **Idea 6B** | Knot (`k=1` `x x`) × `APP` (`list`) | 15 | 23 | 33 | **157** | `-5` | Deletes `\intL` let; single `x x` in `NEXT`, `list` in `APP` |
| **Idea 7** | `ABS` Curried Leaky Cell × `V` | 16 | 24 | 30 | **160** | `-2` | `\zx. zx arg (\zy. zy args)` is 22b; exact for `n > 1`, `arg N` at `n = 1` |
| **Idea 8** | Cell × `APP` Lift Alias | 16 | 23 | 32 | **158** | `-4` | `\args. args exp exp2` (15b lift vs 19b) on the 162 reader |
| **Idea 9** | Eta-`V` (`list (\q. cont)`) | 15 | 21 | 28 | **144** | `-18` | 0-tag `r NEXT`; 1-tag `cont r NEXT` where `r r NEXT = N` (18b margin) |

### Honest Read on Where a Passing Sub-162 Could Hide (or How to Prove 162 Optimal)

1. **The two tightest constructive bridges**:
   - **Closing Idea 4B (`150` bits) or Idea 9 (`144` bits)**: Both give exact `r NEXT` on the 0-tag while leaving 12 to 18 bits of margin on the variable return (`cont r (K N) NEXT` in 4B; `cont r NEXT` in 9). Because `ABS` and `APP` continuations are η-reduced in `rest`, the surplus argument (`NEXT`) travels untouched from the rightmost variable leaf of every subterm to `k_app1` (in `APP`) and `C` (at the root). Any way to make `APP`'s first-child continuation `k_app1` consume that surplus `NEXT` (for instance, using the surplus `NEXT` itself as the parser for the second child of `APP`, so `APP` does not need a second `intL` call — fusing **Idea 4B** with **Idea 6**!) would simultaneously eliminate the surplus argument *and* delete the `\intL` let.
   - **Closing Idea 1B (`161` bits)**: Unlike `handler157.lam` (where `NEXT` receives `F` on both `APP` and `VAR`, causing the `1010 ++ N` collision proved in `golf162`), `list (u u) (list list u)` applies `NEXT` to *itself* (`NEXT NEXT`), an input outside `{K, F}`.
2. **The next proof step if 162 is optimal**:
   - We verified by exhaustive enumeration in `lc.py` that:
     - In the dual-operand family `O (s I (s s) NEXT)`, `O = s (\b. b (\x \y. y) cont)` (`22` bits, giving `164` bits overall) is the unique minimum operator up to 22 bits, even on concrete Scott cells.
     - In the `s (\b. b b Y) D NEXT` family with `cont` and `NEXT` rigid, no pair `(Y, D)` with `|Y| + |D| ≤ 24` satisfies `Y r D NEXT = cont r N` on variable streams `var 1, var 2`.
   - Extending `golf162-claude` §3.2 from rigid `u` to `u = NEXT` (showing that no term in `[u, list, cont, intL]` of `≤ 27` bits can extract `cont r N` even when `u` is unpacked as the concrete `NEXT`) would close the reader-only gap around the 162.
[gaslamp] job: gm-20261021-160753-ad4e · session: 9d28ee8d-b328-4289-abed-ced7bd85d212 · thread: r3-gemini · resume: gaslamp gemini --thread r3-gemini · model: gemini-4-argon · tok: 2973k→104k
