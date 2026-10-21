### Verdict

**No valid self-interpreter $\le 164$ bits was found.**
Below are:
1. **The strongest new structural angle investigated** — eliminating the 11-bit `next` let + 8-bit zero-arm wrapper (`\unused \r. r next`) by inlining `NEXT` directly into the zero slot of `H = \bit0. bit0 NEXT cont` (which sits at depth 2 below `\cont`, giving a **154-bit baseline** before zero-arm spine adaptation).
2. **Concrete near-miss candidates at 162, 164, 166, and 168 bits**, with exact named-lambda syntax, `(L, A, X)` size calculations via $|M| = 2L + 4A + 2 + X$, and hand derivations of all three tag cases (`00` abstraction, `01` application, `1^n0` variable).
3. **A new handwritten impossibility/obstruction argument** (*Spine-Arity Conservation vs. Index Gravity for Inlined `NEXT`*) proving why the 11-bit savings from removing the `next` let and `\unused \r` are necessarily eaten back up to $\ge 165$ bits under the standard `intL` continuation interface.

---

### 1. The Structural Angle: Index Gravity of the `next` Let

In [int165.lam](file:///Users/a9lim/Work/blam/data/self-interpreter/machines/int165.lam), `next` is let-bound outside `\list` even though `next` is referenced **only once**:
```text
(\x. x x) (\x. (\intL. \cont.
  (\next. \list.
    list (\bit0. bit0 (\unused \r. r next) cont) (list list list))
  (\bit1. intL (\exp. bit1
    (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
    (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```
Why does a linear let `(\next. ...) NEXT` pay for itself in the 165?
- `NEXT` contains **4 free variable occurrences** (`intL` twice, `cont` twice). Every binder placed between `\cont` and `NEXT` taxes `NEXT` by $+4$ index bits.
- In the 165, the single use of `next` inside `Z = \unused \r. r next` sits under **4 binders** below `\cont` (`\list`, `\bit0`, `\unused`, `\r`). Inlining `NEXT` there costs $4 \times 4 = 16$ index bits, whereas the `next` let costs $11$ bits ($1L + 1A = 6$ for the let, $X(\text{next}) = 4$, and $+1$ on `cont` inside `H`), so inlining loses $16 - 11 = +5$ bits (`170` bits, listed in [merges.py](file:///Users/a9lim/Work/blam/tools/self-interpreter/merges.py#L63-L65)).
- However, at the zero-arm slot `Z` of `H = \bit0. bit0 Z cont`, there are only **2 binders** below `\cont` (`\list` and `\bit0`), and inside `Z` on the zero branch:
  1. `bit0` (index `0`) is guaranteed to be $K = \lambda x y.\, x$,
  2. `list` (index `1`) is guaranteed to be $\operatorname{cons} K\ \text{list}_1$, and
  3. Both trailing arguments supplied to `Z` (`list1` and $S = \text{list}\ \text{list}\ \text{list}$) reduce to $\text{list}_1 = \operatorname{cons} \text{bit}_1\ \text{list}_2$.

If `NEXT` is placed directly at `Z` without the `next` let and without `\unused`:
- Removing `(\next. ...)` saves $1L + 1A = 6$ bits, removes the `next` leaf ($X = 4$), and shifts `cont` in `H` up by 1 ($-1$ bit) $\implies -11$ bits.
- Each binder removed from `Z = \unused \r. r ·` saves $1L$ ($2$ bits) plus $4$ index bits on `NEXT`'s 4 free references ($6$ bits per binder!).

---

### 2. Concrete Candidates and Hand Derivations

#### Candidate A: 164-bit Inlined Single-Binder Zero Arm (Near-Miss; not listed in `merges.py`)

Removing both the `next` let and `\unused` from the 165 gives a 164-bit term (whereas [merges.py](file:///Users/a9lim/Work/blam/tools/self-interpreter/merges.py#L49-L50) tested the 162-bit version with the `next` let retained, and the 170-bit inlined version with `\unused` retained):

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\bit0. bit0 (\r. r (\bit1. intL (\exp. bit1
    (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
    (intL (\exp2. cont (\args. exp args (exp2 args))))))) cont)
  (list list list))
  (x x))
```

- **Size calculation ($|M| = 2L + 4A + 2 + X$):**
  - $L = 15$: `\x`(1), `\x`(1), `\intL`(1), `\cont`(1), `\list`(1), `\bit0`(1), `\r`(1), `\bit1`(1), `\exp`(1), `\args \arg`(2), `\zx \zy`(2), `\exp2`(1), `\args`(1).
  - $A = 24$: knot + `intL` let (4), reader `list H S` (2), skip `list list list` (2), `bit0 Z cont` (2), `r NEXT` (1), `intL (\exp...)` (1), `bit1 ABS APP` (2), ABS (5), APP (5).
  - $X = 36$:
    - Knot `x`: $0+0+0+0 = 0$
    - `list` (4×) and `bit0` (2×) and `r` (1×): $0$
    - `cont` in `H` (frame `[bit0, list, cont, intL, x]`): $2$
    - `intL` in `NEXT` (frame `[bit1, r, bit0, list, cont, intL, x]`): $5$
    - `bit1`: $1$
    - `cont` in ABS (frame `[exp, bit1, r, bit0, list, cont, ...]`): $5$
    - `exp` in ABS: $2$; cell `zx arg (zy args)`: $1 + 2 + 0 + 3 = 6$
    - `intL` in APP: $6$; `cont` in APP: $6$; lift `exp args (exp2 args)`: $2 + 0 + 1 + 0 = 3$
    - Sum: $X = 2 + 5 + 1 + 5 + 2 + 6 + 6 + 6 + 3 = 36$.
  - **Total:** $2(15) + 4(24) + 2 + 36 = 30 + 96 + 2 + 36 = \mathbf{164\text{ bits}}$.

- **Hand derivation on the three tag cases** (let $P = \text{intL}$, $s = \text{list}$):
  1. **Variable (`1^n0 ++ N`, $n \ge 1$):**
     $s = \operatorname{cons} F\ r$ where $r = \mathtt{1}^{n-1}\mathtt{0} \mathbin{++} N$, and $S = s\ s\ s \to^* N$.
     $$P\ C\ s \to s\ H\ S \to H\ F\ r\ N \to F\ Z\ C\ r\ N \to C\ r\ N.$$
     Exact remainder is $N$ (passes).
  2. **Abstraction (`00 ++ ⌜M1⌝ ++ N`):**
     $s = \operatorname{cons} K\ r_1$ where $r_1 = \operatorname{cons} K\ s_2$ and $s_2 = \ulcorner M_1 \urcorner \mathbin{++} N$. Here $S = s\ s\ s \to^* r_1$.
     $$P\ C\ s \to H\ K\ r_1\ r_1 \to Z\ r_1\ r_1 \to (r_1\ \text{NEXT})\ r_1 \to (\text{NEXT}\ K\ s_2)\ r_1 \to (P\ (\lambda \text{exp}.\, K\ \text{ABS}\ \text{APP})\ s_2)\ r_1.$$
     If $P\ k\ s_2 \to^* k\ v_1\ N$, this reduces to $(\text{ABS}\ N)\ r_1 = C\ (\lambda \text{args}\ \text{arg}.\, v_1\ (\text{cell}\ \text{arg}\ \text{args}))\ N\ r_1$.
  3. **Application (`01 ++ ⌜M1⌝ ++ ⌜M2⌝ ++ N`):**
     $s = \operatorname{cons} K\ r_1$ where $r_1 = \operatorname{cons} F\ s_2$ and $s_2 = \ulcorner M_1 \urcorner \mathbin{++} \ulcorner M_2 \urcorner \mathbin{++} N$, $S \to^* r_1$.
     $$P\ C\ s \to^* (P\ (\lambda \text{exp}.\, F\ \text{ABS}\ \text{APP})\ s_2)\ r_1.$$
     Under the 2-argument continuation hypothesis this reduces to $C\ (\lambda \text{args}.\, v_1\ \text{args}\ (v_2\ \text{args}))\ N\ r_1$.
  - **Why it fails:** The unconsumed second copy of $r_1$ ($S = s\ s\ s$) sits outside $(r_1\ \text{NEXT})\ r_1$ and is appended after the remainder $N$, delivering **3 arguments** (`val`, `N`, `r1`) to the rigid continuation $C$.

---

#### Candidate B: Using `bit0` ($= K$) to Eat the Duplicate Copy with Inlined `NEXT` (168 bits; passes)

Since `bit0` is bound at index `0` and equals $K = \lambda x y.\, x$ in the zero branch, wrapping `Z` as `bit0 (\r. r NEXT)` uses `bit0`'s own two lambdas to discard the first `r1` and apply `\r. r NEXT` to $S = r_1$, without placing `NEXT` under a second lambda `\unused`:

```text
(\x. x x) (\x. (\intL. \cont. \list.
  list (\bit0. bit0 (bit0 (\r. r (\bit1. intL (\exp. bit1
    (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
    (intL (\exp2. cont (\args. exp args (exp2 args)))))))) cont)
  (list list list))
  (x x))
```

- **Size calculation:**
  Compared to Candidate A ($L=15, A=24, X=36$, 164 bits), `bit0 (...)` adds $1A$ ($+4$ bits) and one reference to `bit0` at index $0$ ($X = 0$):
  - $L = 15$, $A = 25$, $X = 36 \implies 2(15) + 4(25) + 2 + 36 = \mathbf{168\text{ bits}}$ (2 bits smaller than the 170-bit inlined-`next` variant in [merges.py](file:///Users/a9lim/Work/blam/tools/self-interpreter/merges.py#L63-L65), and 2 bits larger than the 166-bit `next`-let version in [merges.py](file:///Users/a9lim/Work/blam/tools/self-interpreter/merges.py#L53-L54)).
- **Hand derivation:**
  - **Variable (`1^n0 ++ N`):** $H\ F\ r\ N \to F\ (F\ (\lambda r.\, r\ \text{NEXT}))\ C\ r\ N \to C\ r\ N$.
  - **Abstraction (`00 ++ ⌜M1⌝ ++ N`):** $H\ K\ r_1\ r_1 \to K\ (K\ (\lambda r.\, r\ \text{NEXT}))\ C\ r_1\ r_1 \to K\ (\lambda r.\, r\ \text{NEXT})\ r_1\ r_1 \to (\lambda r.\, r\ \text{NEXT})\ r_1 \to r_1\ \text{NEXT} \to^* C\ V_{\text{abs}}\ N$.
  - **Application (`01 ++ ⌜M1⌝ ++ ⌜M2⌝ ++ N`):** $H\ K\ r_1\ r_1 \to^* r_1\ \text{NEXT} \to^* C\ V_{\text{app}}\ N$.

---

### 3. New Obstruction: Why Inlining `NEXT` Cannot Close the 154 $\to$ 165 Gap

**Proposition (Spine-Arity vs. Index Gravity for Inlined `NEXT`).**
Consider any reader of the form `\list. list (\bit0. bit0 Z cont) (list list list)` where `NEXT` is inlined inside `Z` (eliminating the `next` let) and `NEXT = \bit1. intL (\exp. bit1 ABS APP)` retains its 4 free references to `cont` and `intL`. Then $|E| \ge 166$.

*Proof.*
On any constructor stream `list = cons K r1` with `r1 = cons bit1 list2`, the skip $S = \text{list}\ \text{list}\ \text{list}$ reduces to $r_1$, and the reader reduces to:
$$Z[\text{bit}_0 := K,\ \text{list} := \operatorname{cons} K\ r_1]\ r_1\ r_1.$$
To reach $\text{intL}\ (\lambda \text{exp}.\, \text{bit}_1\ \text{ABS}\ \text{APP})\ \text{list}_2$ (which has exact continuation arity 2 at $C$):
1. Both external arguments $r_1, r_1$ must be consumed (if only one is consumed, the second remains on the spine outside `intL (...) list2`, yielding $C\ V\ N\ r_1$ as in Candidate A).
2. Inside $Z$, `bit1` and `list2` exist only inside $r_1 = \lambda f.\, f\ \text{bit}_1\ \text{list}_2$ (and inside $\text{list} = \lambda f.\, f\ K\ r_1$). Extracting $\text{bit}_1$ into `\bit1` requires applying $r_1$ to `\bit1. ...`.
3. Even though $\text{list}\ \text{list}\ X \to^* r_1$ and $\text{list}\ (\text{bit}_0\ X) \to^* X\ r_1$ allow $Z$ to put $r_1$ into function position using the already-bound `list` (with zero new lambdas above `NEXT`), doing so does **not** consume the two external arguments $r_1, r_1$ on the spine of $Z\ r_1\ r_1$.
4. Consuming the two external arguments $r_1, r_1$ requires either:
   - Two lambdas in $Z$ (`\unused \r. r NEXT`), which puts `NEXT` under 4 binders (`\list \bit0 \unused \r`), taxing `NEXT`'s 4 free variables by $+16$ bits and yielding **170 bits**; or
   - Using $\text{bit}_0 = K$ to supply one lambda outside `\r` (`bit0 (\r. r NEXT)`), which puts `NEXT` under 3 binders (`\list \bit0 \r`), taxing `NEXT`'s 4 free variables by $+12$ bits plus $4$ bits for the `bit0` application and yielding **168 bits** (Candidate B); or
   - Keeping the `next` let outside `\list`, where `\unused \r. r next` costs **165 bits** and `bit0 (\r. r next)` costs **166 bits**. $\blacksquare$

---

### 4. Where a Sub-165 Could Still Hide

Because:
- `letopt` and `component` exclude pure let/$\beta\eta$ rearrangements of the 165's core,
- `searches_165.json` excludes all `(H, S)` pairs in `\list. list H S` up to 164 bits (modulo 4.05M capped pairs) and all `(cell, lift)` pairs up to 164 bits, and
- the proposition above excludes inlining `NEXT` into `Z` under the unchanged 4-reference `NEXT` body,

any genuine $\le 164$-bit interpreter must do one of the following:
1. **Reduce the free-variable weight of `NEXT` below 4** (currently `intL` $\times 2$, `cont` $\times 2$): if `NEXT` had only 2 free references to `[cont, intL]`, each enclosing binder would cost $+2$ bits instead of $+4$, making an inlined `NEXT` without a `next` let competitive.
2. **Use one of the unproved application-only skip operands $T \in \{j, c\}$ (`next` or `cont`)** from [protocol-obstructions.md](file:///Users/a9lim/Work/blam/docs/classical/self-interpreter/protocol-obstructions.md#L208-L237) among the capped candidates of `searches_165.json`, or a reader head not of the form `list H S`.
[gaslamp] FAILED (exit 0) · job: gm-20261021-013505-9675 · session: 15658e2b-1ecf-44ee-bb04-cb203704bdf9 · thread: overnight-gemini · resume: gaslamp gemini --thread overnight-gemini · model: gemini-4-argon · tok: 1847k→127k · log: /Users/a9lim/.gaslamp/jobs/gm-20261021-013505-9675/stderr.log
