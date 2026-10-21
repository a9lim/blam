# Lane nextfuse: fusion across the NEXT region

(Saved by the coordinating seat from the lane's final message; the harness
refused the lane's own write of this file.)

No sub-165 interpreter found. The result of this lane is a complete, measured catalogue of where the second-tag dispatch can sit relative to the two parses and the two returns, a set of exact identities (computer-checked with the parser's `next` rigid) that pin down why each placement costs what it does, and a structured argument that, under the 165's interfaces, the NEXT region is exactly 92 bits and admits no cross-module fusion of the kind the reader uses. The argument is handwritten; its leaves are the on-record module-grammar minima plus the checked identities below.

Files in this directory: `build.py` (writes and measures the variants), `checks.py` (identities), `h.py` (helper), `v_*.lam` (every complete interpreter built). Computation: seven batteries (2 threads, ~2.5 s each), three letopt runs through `tmp/overnight/self/polish.py` (~10 s each), ten identity normalizations. No enumeration. Correction to the lane's draft: the recorded 172 for `(bit1 cont intL)` is that variant measured on the 168; on the 165 it is 169, the same +4.

## 1. Complete interpreters built

All are the 165 with NEXT replaced; reader, VAR and knot unchanged. None is new in algorithm: they are the dispatch placements of §3, written out so the costs are measured rather than estimated. Each passes the battery.

| file | bits | battery | idea |
|---|---:|---|---|
| `v_select_first.lam` | 166 | `ok=667 skip=1 fail=0` | dispatch on the first parse's continuation: `intL (bit1 KA KB)` |
| `v_share_head.lam` | 169 | `ok=667 skip=1 fail=0` | `bit1 cont intL X`, shared argument `X = λy. bit1 A B` with the dispatch inside |
| `v_sharedZ_kapp.lam` | 169 | `ok=667 skip=1 fail=0` | `bit1 (λk. cont V_abs) intL k_app`: APP's continuation is the shared argument, ABS discards it |
| `v_sharedZ_vabs.lam` | 170 | `ok=667 skip=1 fail=0` | `bit1 cont (λv. intL k_app) V_abs`: ABS's value is the shared argument, APP discards it |
| `v_dispatch_first.lam` | 172 | `ok=667 skip=1 fail=0` | dispatch before the first parse, `intL (λexp. …)` duplicated |
| `v_optional_parse.lam` | 175 | `ok=667 skip=1 fail=0` | one `cont` call; null parser `λk. k k` in ABS, dispatch inside the value |

`polish.py` (battery + `blam golf letopt`, ≤3 cuts, and `--no-inline` ≤2) on the three shared-argument variants: smallest renderings 169, 169, 170; no sub-165 rendering.

## 2. Exact identities (checked by `checks.py`; `next`, `cont` rigid)

Write `P` for the 165's parser `λcont λs. s (λb. b (λu r. r next) cont) (s s s)`, `H_k = λb. b Z_k k`, `Z_k = λu r. r next`, `K` = bit 0, `F` = bit 1, `V_abs = λargs arg. exp (λzx zy. zx arg (zy args))`, `k_app = λexp2. cont (λargs. exp args (exp2 args))`.

1. **The parser on a Boolean as its stream.** `P k K = H_k`, `P k F = F`; hence `P k K F = k`, and with two more arguments `P k K X Y = X Z_k k Y`, `P k F X Y = Y`. Proof: `P k b = b H_k (b b b)`; `K H_k (K K K) = H_k`; `F H_k (F F F) = F`; then `H_k F Y = F Z_k k Y = k Y` and `H_k X Y = X Z_k k Y`. The second tag bit fed to the parser as a stream yields a handler-shaped dispatcher: ABS gets `X Z_k k Y`, APP gets `Y`. The first two equations were recorded by the earlier nextfuse consult; the four-argument forms are new. As a NEXT dispatch this costs ≥ +21 (§3).
2. **A one-cell fake variable stream returns its tail.** `P c (cons F X) = c X (X X (cons F X))` for any X. Proof: the reader gives `c X S` with `S = s s s`, and `s s = s F X = F F X X = X X`. Consequence: ABS cannot return through the parser's VAR path — the tail must be `X =β V_abs`, and then the skip is `V_abs V_abs s = exp (cell s V_abs)` (checked), a rigid-`exp` normal form, never `rest`. Two-cell fake streams return the cell `cons b X` as the value.
3. **`V_abs` and `k_app` are distinct β-normal forms** (checked). `V_abs e r` normalizes to `exp (cell r e)`, with no `cont`. Leaf of the shared-argument lemma.
4. **The one-binder zero arm puts the duplicate after the rest.** `(λr. r next) r r = next b r2 r` for `r = cons b r2` (checked), so with `next = λbit1. P (λexp. …)` the parse runs as `P k r2 r` and the extra `r` reaches `bit1 ABS APP rest r` in every arm. The recorded 162 that fails all 667 fails for exactly this reason; absorbing `r` costs a binder per arm (+6 against the 3 saved) or, used as the redundant tag, becomes the recorded 188.

## 3. Dispatch placement: the complete catalogue

After the zero arm, NEXT has `bit1`, `intL`, `cont`, and after the first parse `exp`, `rest`. It must reach `ABS = cont V_abs rest` and `APP = intL k_app rest`. Every position of the Boolean application, measured in §1 or on record:

| placement | form | bits | why the cost |
|---|---|---:|---|
| after the first parse (the 165) | `intL (λexp. bit1 ABS APP)` | 165 | dispatch 7 (two apps, `bit1` at depth 1), one `intL (λexp.·)` |
| on the first parse's continuation | `intL (bit1 KA KB)` | 166 | `bit1` at depth 0 saves 1, second `λexp` costs 2 |
| shared argument, dispatch inside | `bit1 cont intL (λy. bit1 A B)` | 169 | second `bit1` at depth 2, extra λ and app, `cont`/`exp` one deeper (recorded 172 is this on the 168) |
| shared argument = `k_app` | `bit1 (λk. cont V_abs) intL k_app` | 169 | ABS needs a dummy binder; `k_app` is useless to ABS |
| shared argument = `V_abs` | `bit1 cont (λv. intL k_app) V_abs` | 170 | APP needs a dummy binder; `V_abs` is useless to APP |
| before the first parse | `bit1 (intL KA) (intL KB)` | 172 | `intL (λexp.·)` twice (+8), `bit1` at depth 0 (−1) |
| inside the value, one `cont` | `bit1 (λk. k k) intL (λexp2. cont (λargs. bit1 A B))` | 175 | null parser 8+2, inner dispatch 9, saves one `cont ·` (6) |
| tag re-read after the parse | `λr. r (bit0 parse)` with `D_C` | 188 | recorded: tag replay and three extra arguments |
| tag as the parser's stream | `intL k bit1 X (intL k_app)` | ≥ 186 | identity 1: ABS receives `Z_k k Y rest`, X needs three binders (≥ 48) |

**Shared-argument lemma** (handwritten; leaf checked). In `bit1 X Y Z rest` with both arms correct under rigid `cont`, `intL`, `exp`, `rest`: if `X = cont` then `Z =β V_abs`, so `Y Z rest = intL k_app rest` forces `Y` to erase `Z` (identity 3: `V_abs` is a `cont`-free normal form, `k_app` a normal form containing `cont`), hence `Y` is a λ dropping its first argument, not `intL`. Symmetrically for `Y = intL`. If neither head is bare, the dispatch is duplicated inside. So a shared argument always adds a dummy binder or a second dispatch; the three measured rows are the three cases. With more shared arguments each adds a dummy per arm not using it; the only arguments usable by both arms are `exp` (η: the select-first row) and `cont` (a let, +5).

## 4. Why NEXT is exactly 92 under the 165's interfaces

Hypotheses, all the 165's actual interfaces: (I1) VAR returns the stream tail `r`, so values are applied to environments and `env b r' = b arg (r' args)`; (I2) λ-values are genuine functions after the environment (the contract returns `λz. M`, every inner λ of M appears in the output); (I3) the parser's continuation receives value then rest, `cont` rigid at the root; (I4) tag bits are Scott Booleans dispatched by application.

1. *Values.* Under (I1) the cell is the unique 24-bit term of its law (on record), the λ-value `λargs arg. exp (cell)` is 34, the lift 19 is the unique minimum of its law. The two values are not unifiable through any marker (mode-free builder exclusion, on record) nor through each other: `V_abs(e) args` is a λ while `lift args` is `exp`-headed, and `lift exp D =β V_abs(exp)` would need `exp args (D args) = λarg. exp (cell arg args)`, impossible for rigid `exp`.
2. *Returns.* Under (I3) ABS must apply `cont` to `V_abs` (identity 2: the VAR path cannot), ≥ 6 at its depth; APP must parse `rest` through `intL k` with `k =β λe. cont (lift exp e)`, whose minimum is 28 at its depth.
3. *Dispatch.* Under (I4) the arms are reached by an application of `bit1`; §3 lists every position and the after-parse position is cheapest at 7. Nothing above the dispatch is right for both arms: ABS needs `cont` applied now, APP needs `intL` applied now, and the Boolean is the only thing that can choose a head.
4. *Handoff.* `r next = next bit1 r2` is η-minimal: `r X` is the only way the stream hands both bit and tail, `next = intL ∘ k`, and binding `next` outside `cont` or passing `cont` along costs ≥ +10.

Sum: 34 + 19 + 6 + 7 + 8 (`intL (λexp.·)`) + 2 (`λbit1`) + 16 (APP's `intL ·`, `λexp2`, `cont ·`) = 92. A decomposition argument, not a theorem over arbitrary terms: it prices the forced pieces and shows the cross-module options are exhausted by §3. Handwritten; every leaf is an on-record exhaustive module minimum or a checked identity. Not covered: a reader whose handoff gives NEXT something other than `(bit1, r2)` at no extra cost, a value interface other than (I1)–(I2), or a continuation protocol other than (I3) — all changes outside NEXT, each priced ≥ 166 in the record so far.

## 5. Ideas examined and rejected on paper (not built)

- *Environment-extension APP* (`λargs. exp (cell (exp2 args) args)`, λ-value = body closure): right for λ-operators, wrong for variable operators (lookup must return a function applied to the operand); root value not `λz. M`.
- *Variable value with its leading 1* to absorb that off-by-one: the operand still needs an application after lookup.
- *Two-argument closures* (`exp args arg`): inner λ-values must pack `(args, arg)`, which is the cell again.
- *Cheaper null parser than `λk. k k`*: no frame variable works (`bit1 = K` has the wrong arity; `exp`, `cont`, `intL`, `x` applied to the continuation give garbage); `λk. k bit1` is 9.
- *Lazy second parse* (`cont (λargs. exp args (intL K rest args)) (intL F rest)`): correct, ≈ +26, exponential in right-nesting.
- *Second parse through `next`* with a fake tag: `next K` λ-wraps the operand, `next F` parses two more terms.
- *Let-hoisting `cont`* over both arms: saves 4 of index, costs 8. *`intL` bound inside `cont`*: 166. *`next` outside `cont`*: ≥ 175.
- *A skip that starts the parse in the zero arm* (`Z = F`): `s s s next` gives `N next` on variables; every application-only skip fails the same way, and a λ-skip right for both arms costs 33.

## 6. Honest read

Inside NEXT there is no fusion to find: every bit of the 92 is a forced value shape or a forced control step, and every alternative placement of the one free choice (where `bit1` is applied) measures +1 to +23. The analogue of the reader's move has no candidate because the two arms need different heads (`cont` versus `intL`) applied now.

A sub-165 has to change an interface NEXT shares with the rest: the handoff (`r next`, 18 bits to deliver `(bit1, r2)` to a 17-bit header), the one-binder zero arm `λr. r next` (saves 3, but identity 4 shows the duplicate lands after `rest` in both arms and nothing consumes it for ≤ 2 bits), or the value/continuation protocols, which the record prices at ≥ 166 each. The next proof step with real content is a joint bound on the handoff plus header (`Z`, the `next` let, `λbit1. intL (λexp. ·)`) allowing `Z` to apply its arguments arbitrarily — the 14-bit zero-arm bound and this lane's 92 together say any saving there must come from the duplicate stream copy, and the only two uses of it found so far (188, and the +6 absorption) lose.
