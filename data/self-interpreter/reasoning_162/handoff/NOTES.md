# handoff lane — running notes

Frame (the 162, `s = cons b r`, `r = cons b2 r2`): parser `P k s = s I V_k NEXT_k`.
Zero arm `r NEXT = NEXT b2 r2 = intL (\exp. b2 ABS APP) r2`; variable arm `V NEXT = cont r N`.
Prices (harness-checked): knot+intL let 22, `\cont \list` 4, reader apps 8, I 4, V 28,
NEXT header 18 (= λbit1 2 + `intL (\exp. ·)` 9 + `bit1 · ·` 7), ABS 41 (cell 24), APP 37 (lift 19).
Working rule: one idea per turn, outcome appended here before the next.

## 1. Q as a handler-form parser (`P k s = s (H k)`, zero arm `r2 (H k)`) — dead, priced

If the knot named the handler `H` (`H k b r` parses `cons b r`), the child parse
`intL k2 r'` becomes `r' (intL k2)`: identical cost (two apps, same refs). The zero
arm gets worse: the 162's `r NEXT` already lets the cell apply the partial parser
`intL k_b2` to `r2` for free; in H-form the zero arm must be `r (\b \r2. r2 (H k_b))`,
+6 (λr2, `r2`, one app). And a one-operand parser `s (H k)` has no whole-stream
skip, so its variable arm is the handler family (`s (\b \r. …)`), measured ≥ 168.
Verdict: the stream cell's own application is the cheapest possible handoff of
`r2` to a partial parser; no handler-form parser improves the zero arm.

## 2. Second I-selection in NEXT (`NEXT = \r. r I A B`) — dead

`r I = b2 r2`: ABS (`b2 = K`) gives `K r2`, so `r I A B = r2 B`; APP gives `I A B = A B`.
The APP branch has lost `r2` (consumed by `I`), and APP needs it for the first
child's parse. Re-supplying it (`\r. r I (\h. r ·) ·`) costs the binder and a second
use of `r`, more than the 3 bits the 162 pays for `bit1` inside the continuation.

## 3. Second parse through NEXT instead of `intL` (`next X r'`) — dead, priced

Call the parser without naming it: `NEXT X r' = intL (\exp. X ABS APP) r'` for any X.
APP's second parse needs continuation `\exp2. cont (lift exp exp2)`; from `X ABS[exp2]
APP[exp2]` the value exp2 cannot be recovered (it sits under `cont`, rigid at the
root), so NEXT must be select-first (`intL (b KA KB)`, +1) and X = `\a \p. k2`
(+4 for the two erasing binders, +4 index shift on cont/exp). NEXT must also be
nameable: let-binding it is the 166. Net ≥ +8 against a 1-bit cheaper reference.

## 4. Recursion object as the handoff (`s I V (x x)`, `s I V (intL k)`) — dead

`r intL = intL b2 r2 = P b2 r2`: parsing r2 with a Boolean continuation returns
the value alone (b2 = K) or the rest alone (b2 = F); each arm loses the other.
`r (intL k) = intL k b2 r2 = NEXT_k r2` by the parser-on-Boolean identity
(`P k K = P k F = NEXT_k`, both via `V_k NEXT_k` collapsing on `list = F`), so
the tag is lost. Any Q of the form `intL k` or `x x` erases b2 before NEXT sees it.

## 5. The reader's general shape, and a double I-selection — dead

`s I A B = b r A B`: zero `r B` (B *applied* to the cell), variable `A B` (B *passed*).
So B is the one object both arms touch, and the lane's question is what B receives.
`s I I V NEXT`: zero `r V NEXT = V b2 r2 NEXT`, variable `V NEXT`, so V's argument is
the second tag on zero and NEXT on a variable, `V = \u. u A B` dispatches both
(`NEXT = \a \p. s (\q. cont) (s s a)` plays the variable arm): correct shape, but A
and B each receive `r2 NEXT`, so each must bind and erase NEXT (+4) and each holds
its own `intL k` parse (a second `intL` reference, +8); NEXT's two erasing binders
push its `cont`/`s` indices up (+7 over V). Well above 162. `s I I V` alone leaves
the variable result as the bare function V: a two-mode result the continuation
cannot consume.
Continuation as a trailing reader operand (`list I V NEXT cont`, NEXT above `\cont`)
is golf162's 182; not rebuilt.

## 6. Whole-prefix values with the shift absorbed in the environment's head — dead, priced

If the variable value is the whole unary stream `U_n(N)` (V = `\u. cont s (s s u)`, 25,
−3), lookup is `U_n e = e F U_(n−1)`: the leading bit is always F, so the cheapest
repair is an environment that drops it, `e = \b \r. r (\zx \zy. zx arg (zy args))`:
36 under `args, arg` (+12; the two extra binders shift `arg`/`args` by 2 each).
golf162's D(a,e) at 34 is better and still nets +7. The shift cannot move to the
ABS value or the lift (lookups happen inside `exp`, out of their reach).

## 7. Dispatch the second tag through the parser-on-Boolean route — dead (lemma)

Idea: drop NEXT's `\bit1 … bit1 ABS APP` header and let the zero arm be `r (intL k')`,
so `intL k' b2 r2` runs the *reader itself* on the Boolean b2 and the two Boolean
instances of the reader do the ABS/APP dispatch.
Lemma (collapse). For any reader `s I V Z` with `V = \u. s A (s s u)`:
`P k K = K I V Z = I Z = Z` and `P k F = F I V Z = V Z = F A (F F Z) = Z`.
So `P k K = P k F = Z` whatever A is, and `r (intL k') = Z r2` on both tags: the
second tag is erased before anything can read it. The skip's shape is forced
(`s s u` is the only ≤12-bit skip returning N; `s s u Y` and `s u s` fail on
genuine streams), and `F` erases V's first operand, so no V of this family has
distinct Boolean instances. Readers whose Boolean instances differ (the 165's:
`P k K = H_k`, `P k F = F`) give `H_k r2 = r2 Z cont`, which destructures the body's
first cell into the zero arm — not a parse either.

Harness check of the Boolean collapse (rigid k, NEXT): `P k K = P k F = NEXT`,
`P k I = k`, `P k (K a) = a (\x. a (a x)) NEXT`, `P k (K (K t)) = t NEXT`,
`P k b r2 = NEXT r2` for both Booleans.

## 8. Dual operand with the cheap return arm `s (\q. cont)` — priced, ≥ 167

Reader `s I A D`: zero `r D`, variable `A D`. With `A = s (\q. cont) = cont r` (12,
saves 16 on V) D must be NEXT on zero and N on a variable. `s K = b` is the bare
first tag, so `D = list K NEXT (list list list)` (25 + NEXT) is the cheapest such
dual I can build: reader 51 + the 4-bit depth tax = 55 against the 162's 46, i.e.
171 (the adversary lane's duals sit at 172). The 162 avoids the dual because NEXT
doubles as the skip's junk; any dual pays for a second tag read (`s K`, 9) plus the
skip it no longer shares.

## 9. APP's second parse as a re-entry of NEXT with a fake tag — dead, priced

`NEXT X r' = intL (\exp2. X ABS[exp2] APP[exp2]) r'`; exp2 cannot be recovered from
either canonical arm (it sits under `cont`, rigid at the root; the λ-value applied
to any env/arg yields `exp2 (cell …)`, and `cell a e ≡ args` only when `args` is a
cell, which the root's rigid `z` is not). With the η-expanded select-first
continuation `\exp. b KA KB exp`, X = `\a \p \exp2. cont (lift exp exp2)` costs 36
and NEXT must be let-bound (166 base): KB 45 against 39. Dead by ≥ +10.

## 10. Exhaustive: the variable arm of `s I A j` is unique (computer-checked)

`vcheck.py` / `acheck.py`: with j (NEXT) and cont rigid, every term A over
[list, cont] of any shape through 30 bits (1,313,478 terms mentioning both; all
terms, not only β-normal) satisfying `A j = cont U_(n−1)(N) N` on U_n(N), n = 1..3:

    28  \u. list (\q. cont) (list list u)        (the 162)
    29  \u. list (\q. cont) (list list list)
    30  \u. list (\q. cont) (list list cont)     (golf162's 164)
    30  \u. list (\q. cont) (list list I)

and with three free names (u, list, cont; 850,166 candidates through V ≤ 32):
the same family only, junk X ∈ {u, list, cont, I, \d.cont, \d.list, F, cont cont}.
So in the `s I A j` frame with opaque NEXT the variable arm is not merely ≥ 28:
its shape `s (\q. cont) (s s X)` is forced through 32 bits. Closes
golf162-claude §3.2's exhaustiveness gap (it had checked ≤ 14 bits). 12 s wall,
2 workers. Caveat: n = 1..3 probes; all hits are of the proven family.

Built and batteried: `dual169.lam` — `list I (list (\q. cont)) (list K NEXT (list list list))`:
`169 bits  ok=667 skip=1 fail=0`, letopt (3 cuts / no-inline 2 cuts) 169. The cheapest
dual-operand reader I know (adversary lane's duals: 172). `dsel.lam` (double
I-selection, §5): `211 bits  ok=667 skip=1 fail=0`, not polished (hopeless).
