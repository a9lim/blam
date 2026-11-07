# values lane — running notes

Working rule: one idea per turn, outcome appended here before moving on.
Tools: `bat.py` (battery, 2 threads), `lab.py` (named-lambda normalizer with
rigid free names), `ref162.lam` baseline (`162 bits ok=667 skip=1 fail=0`).

## 0. Accounting of the 162's value protocol (frame costs as written)

- V = `\u. list (\q. cont) (list list u)` = 28: λu 2, two apps 4, `list` 3,
  `\q. cont` 7 (λ 2 + cont at index 3 = 5), `list list u` 12.
- ABS value `\args \arg. exp (cell arg args)` = 41 with cell
  `\zx \zy. zx arg (zy args)` = 24.
- APP value `\args. exp args (exp2 args)` = 19.
- Variable value = raw tail `r = 1^(n-1) 0 ++ N`; lookup `r e = e b' r'`,
  cell `e K n = arg`, `e F r' = r' args`.
- Root: C receives the ABS/APP closure directly; `closure z =β M` for
  rigid z is what the contract needs (closed M ignores z).

Closed by other lanes (skip): whole-prefix values with `λu r. r H` cells
(≥27), mode-argument protocol (203), APP-supplied argument thunks, local F
phase at ABS, boxed values (265), two-field generators (276), Church syntax
(297), constant-continuation `K k` (188), NEXT variable modes (177+).
Also closed: function environments (177), Scott-pair env (~45+ helper),
leaky cell (fails/169-170), cell/APP alias (fails, every prefix offset),
thunked rests (202+), values returning code suffix (273).

## 1. Curried-pair environments (dead, by hand)

Idea: ABS passes `exp arg args` (or `exp args arg`) instead of a built cell,
values take the pair curried. Raw variable value r = cons b' r' then gives
`r arg args = arg b' r' args` (resp. `args b' r' arg`): the newest argument
(resp. the cell) is applied to the bit. For `exp args arg` with
args = cell(a,e): `args K N arg = a arg` for var 1 — picks the outer binding
and leaks arg. Obstruction: a raw Scott cell applied to anything puts its
*bit* in function position after the first operand; curried lookup needs the
*operand* in function position. Dead for raw variable values.

## 2. `s F = r`: whole-prefix values with the unchanged cell (= mode protocol)

Identity: for s = U_n(N), n>=1, `s F = F F r = r`. So evaluation `v F e`
makes whole-prefix values (V = 25) work with the *unchanged* 24-bit cell:
`s F e = r e`. But every value must then accept the F first: ABS value
`\m \args \arg. exp m (cell arg args)`, root adapter supplies F. This is
exactly the mode-argument protocol (203, closed). Variant: let the
*environment* supply the F — `s e = e F r`, cell `λb r. r H` family: ≥27,
closed. Verdict: no route.

## 3. Scott-pair cell `\zx. zx arg args` (15 bits, saves 9) — dead

`r e = e b' r' = b' arg args r'`: K-bit gives `arg r'` (leaks the rest r';
for `λx.x` at the root the leaked r' is the rigid N), F-bit gives
`args r'` = `r' a' e'` — orientation flips (known). Orientation cannot
alternate with depth: ABS has no depth. Reverse lookup `e r = arg b' r' args`
puts arg in function position. Dead (matches record's "Scott-pair ~45+").

## 4. Why the closed-value representation is forced (standard, restated)

Root transparency: C receives the value unapplied, so for closed M the value
is β-equal to `λz. M`. Hence closed values ARE their meanings: the value of
`λx.x` is `λa b. b` = F, the value of `λx y. x` is `λa b c. b` = K-shaped.
Consequences used below: (a) lookup must return a stored `arg` *unapplied*
(any `arg X` is garbage because arg may be an arbitrary λ-term) — this kills
every leaky/pair cell unless args are pre-wrapped (+6 ≥ saving); (b) nothing
may apply the environment to a closed value (`e v`), since `e F`, `e K` are
Boolean selections — the alias obstruction, independent of the cell;
(c) `e v = v Q` for all v forces e = η(Q), i.e. the 162's own `v e`.

## 5. Shared skeleton D a b c d = c a (d b) for cell and lift — dead (recount)

cell = `D arg args` (22 at D-depth ≈ 8), lift = `\args. D args args exp exp2`
(30). Saves 2, costs 11, plus the let 32. Matches the record.

## 6. Leaky cell with "useful" r' — dead

K-arm gives `arg r'` with r' the rest after the variable token (= rigid N
for var 1 at depth 1). Making values stream-driven would make meanings
depend on following syntax. Pre-wrapping args `K arg` costs 6 > 2 saved.

## 7. Raw variable values force the cell interface (hand argument)

A raw value r = cons b' r' applied to anything X gives `X b' r'`; applied to
two things `X b' r' Y`. So with values applied as `v e`, the environment e
is a 2-argument Boolean eliminator with laws `e K n = arg`, `e F r' = r' args`
(env lane: ≥24 under these laws; 24 attained). Pre-selecting (`r I`, `r K`,
`r F`) loses the index or the rest. Extra operands (`v e Y`) reach the
K-arm as `arg Y` — garbage by §4(a). So: raw values ⇒ ABS ≥ 7 + 4 + 2 + 4 + 24.
The ABS value must be a two-binder abstraction (its meaning is a function and
the root receives it unapplied), so no "ABS value = exp" protocol exists.

## 8. V = 28 is tight for `cont VALUE REST` with VALUE ∈ reachable cheap
selections of s (recorded by golf162-claude §3.2; `s F` costs 15 > 12 as the
value operand, `s`, `s K`, `s I`, `s s` lose information or are closed).

## 9. Stream-shaped cell `cons (K arg) (λr. r args)` = 25 (known curried cell).

Conclusion so far: every *single*-module value change is tight. A sub-162
must change values so that NEXT (96 bits) or the reader shrinks jointly.
Next: look for protocols where APP's second parse or ABS's return shrinks.

## 10. Curried values `v arg args` would make ABS 17 (no cell) — why it dies

If values took (arg, env) curried, ABS = `cont (λargs λarg. exp arg args)`
(value 17 vs 34) and no cell exists; env = Scott pair `λf. f a e'` (15).
Variable values would be v_1 = K, v_{n+1} = λa e. e v_n — tiny, but they
must be *built* from the raw unary stream by a recursive transformation
(T r = λa e. r (λb r'. b a (e (T r')))): raw `r a e = a b' r' e` puts the
argument in head position. The parser's recursion (intL) strips one 1 and
skips the rest; it does not recurse structurally on the index. Dead unless
a cheap stream-driven T exists (it would have to recurse on every 1-bit).

## 11. `v e extra` with the 24-cell: F-arm recurses correctly (`r' e' extra`),
K-arm applies the found entry to extra (`a' extra`) — garbage by §4(a).

## 12. Function-shaped env `λzx. zx arg args` with lookup `r e`: F-arm needs
`r' args` but gets `args r'`; the base needs `arg` but gets `arg r'`.
Every two-field cell applied by a raw stream needs the Boolean in head
position and `r'` in function position in its F-arm: cell = λb r. b arg (r args)
modulo the curried Boolean variants (25). Tight; agrees with env lane.

Status after §1–12: values-only changes are locally tight; the lane's
remaining targets are joint moves (value representation × NEXT plumbing).

## 13. Leaky cell + K-wrapping at the cheapest site: 163, dead

Leaky cell `λzx. zx arg (λzy. zy args)` = 22 (saves 2). Its K-arm returns
`arg r'`. Wrapping where arg enters the cell (`λq. arg`, +3 at index 2) gives
25: net +1 (163). Wrapping at the lift (`λq. exp2 args`, +4) misses the
root's own binder (its argument arrives unwrapped from the outside). Wrapping
meanings themselves violates root transparency. Record's repairs: 169/170.

## 14. Root tolerance, pinned

C receives V unapplied and compares β-normal forms, so V =β λz.M. The env z
is inert: V's body may only *pass* z into cells/lifts, never apply it
(`z X Y` would be stuck). Therefore no value may be curried over anything
the root does not supply, and the root supplies nothing but z. A public
adapter (`λv. C (v X)`) costs ≥ 21 and is the only escape (203, 202, 177...).

## 15. The 3-bit strip, all placements

The leading 1 of a variable's code must be consumed once. Sites: V
(`λq. cont`, 3 bits over `cont list`); the cell (`λu r. r H`, ≥ +3 by the
env lane's 27 bound); the use sites of values (`v F e`: +5 per site × 3
sites, or the mode protocol with its adapter); a stream-level F that is
free only in APP (`bit1 = F` there, K in ABS). No placement is below 3.

## 16. Fused variable return `cont s` (V = 11, saves 17) — dead

The variable arm could hand `cont s` without computing N, since internal
continuations are the parser's own (variables never reach the root). But a
continuation `λexp. BODY` cannot tell a one-argument call from a two-argument
one: `BODY[exp]` must both proceed when `rest` follows (ABS/APP returns) and
compute `exp exp X = N` when it does not. A term cannot branch on whether it
will receive another argument. Making ABS/APP values self-describing
(`V V X = rest`) is the 273-bit suffix-carrying protocol.

## 17. Index-bit map of the 162 (X = 32): V 6, header 4, ABS 11 (cont 3,
exp 2, arg 2, args 3, zx 1), APP 11 (intL 4, cont 4, exp 2, exp2 1). The
depth taxes come from `\cont \list` and `\bit1 \exp`; value changes do not
move them. A sub-162 needs fewer binders on the cont/intL paths.

## 18. Two 163-bit cells built (both `ok=667 skip=1 fail=0`, as predicted)

- `v163_curried_cell.lam`: cell `\b. b (\q. arg) (\r. r args)` (25).
- `v163_leaky_wrap.lam`: cell `\zx. zx (\q. arg) (\zy. zy args)` (25): the
  leaky cell with the K-arm's leak absorbed by wrapping arg at the cell.
- Using the Boolean itself as the wrapper, `\zx. zx (zx arg) (\zy. zy args)`,
  is 26 (`zx arg` 7 > `\q. arg` 6).

## 19. Forced shape of ABS and APP under raw values + transparency (lane theorem)

Meanings of closed terms are arbitrary λ-terms (§4). An application's
meaning is M's meaning applied to N's meaning, and M may be a variable
bound to any function, so APP's value is `λe. exp e (exp2 e)` up to the law
`V E = f E (g E)` (lift ≥ 19, env lane). An abstraction's meaning is a
function of its argument, so ABS's value is `λe λa. B'(a, e)` with
B'(a,e) =β body-meaning under the extended environment. B' can only be
`exp (cell a e)` (raw values need a 2-arg Boolean eliminator, ≥ 24) or a
curried `exp a e` (needs built variable values = a fold over the unary code,
which no non-recursive term performs, §10). Hence ABS value ≥ 34 and the
value modules total ≥ 28 + 34 + 19 with raw values. Handwritten.

## 20. Reader selections as values: `s cont` = `cont b r` hands the tag bit as
the value (F for every variable — index lost); `s NEXT` on a variable parses
the tail as an APP's first operand (garbage); `s I`, `s K`, `s s` lose the
index (BRIEF table). None is a variable value.

## 21. Computer check of §10's base (fold_check.py)

No closed T with |T| <= 24 (19,048 terms) satisfies T(U_{n-1}(N)) =β v_n or
T(U_n(N)) =β v_n for n = 1..3 (v_1 = K, v_{n+1} = λa e. e v_n; N rigid).
(The 28-bit extension exceeded the two-minute cap and was killed; the 24-bit
result stands as the checked base. The all-size claim is the hand argument.)

## 22. Per-bit recursive variable parsing (the one escape from §19) — priced

To build the curried selectors v_n at parse time the reader would re-enter
intL on each 1-bit: `1 r` → `intL k' r`. But the base `0 N` is then read by
the ordinary 0-tag arm (`r NEXT` → `N NEXT`, rigid N in head). A second
mode or a second recursive function is needed: ≥ 20 (opaque knot) or a
mode argument through every parse (≥ the 203 pattern), against the 17 bits
the cell-free ABS saves. Dead unless the mode comes free from the stream.
