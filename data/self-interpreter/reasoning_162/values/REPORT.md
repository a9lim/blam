# Lane "values": change what a value is

**No sub-162 interpreter found.** Every value-representation change priced
in this lane is locally tight or dies on a hand-derived obstruction, and the
two cheapest complete alternatives both measure **163**. The lane's main
result is a forced-shape argument (§3.6): with raw variable values and the
root transparency the contract forces, ABS's value is `λe λa. exp (cell a e)`
with a two-argument Boolean cell of at least 24 bits, APP's value is the
19-bit lift, and the variable arm's 3-bit strip cannot move anywhere cheaper.
Non-raw variable values would need a fold over the unary code, which no
non-recursive term performs (checked through 24 bits). So a sub-162 cannot
come from the value protocol alone; it has to shorten NEXT's control
plumbing or the reader, which other lanes own.

Running notes with every idea in order: `NOTES.md` (§1–§22). Files are in
`/Users/a9lim/Work/blam/tmp/round3/values/`. Computation: four batteries
(2 threads, ~2 s each) and one 0.5 s bounded check (`fold_check.py`); a
28-bit extension of that check exceeded the two-minute cap and was killed.
No tracked file was touched, no consult; no polish run was needed (no new
algorithm passed below 163; the two 163s are one-cell substitutions whose
let structure is the 162's).

## 1. Complete interpreters built

| file | bits written | polished | battery | idea |
|---|---:|---:|---|---|
| `ref162.lam` | 162 | 162 (record) | `162 bits  ok=667 skip=1 fail=0` | baseline, re-run |
| `v163_curried_cell.lam` | 163 | — (cell swap only) | `163 bits  ok=667 skip=1 fail=0` | cell `\b. b (\q. arg) (\r. r args)` (25): the curried Boolean cell, i.e. the stream-shaped `cons (K arg) (λr. r args)` |
| `v163_leaky_wrap.lam` | 163 | — (cell swap only) | `163 bits  ok=667 skip=1 fail=0` | leaky cell `\zx. zx (\q. arg) (\zy. zy args)` (25): the 22-bit leaky cell with its K-arm leak `arg r'` absorbed by wrapping `arg` where it enters the cell |

Both are correct by the two lookup laws (`cell K n = arg`, `cell F r = r args`)
and the 162's unchanged induction; the battery confirms. Neither was
polished: each differs from the 162 in a 25-bit subterm with the same free
variables, so letopt's cuts are the 162's (unique minimum, one cut).

## 2. Exact identities (hand proofs; rigid names)

Notation: `K = λx y.x`, `F = λx y.y`, `cons b r = λf. f b r`,
`U_n(N) = 1^n 0 ++ N`, `s = U_n(N)` a variable stream (n ≥ 1) with tail
`r = U_{n-1}(N)`.

1. **Tail projection.** `s F = F F r = r`. So evaluation `v F e` makes
   whole-prefix values work with the unchanged 24-bit cell: `s F e = r e`.
   (Pricing this is the mode-argument protocol, 203; see §3.3.)
2. **Tag as value.** `s cont = cont F r` for every variable stream and
   `cont K r` for a 0-tag: the reader selection `s cont` hands the *bit* as
   the value, so every variable has value F. Not a variable value.
3. **Stream-shaped curried cell.** `cons (λq. arg) (λr. r args)` satisfies
   `cell K n = (λq. arg) n = arg` and `cell F r' = (λr. r args) r' = r' args`.
   Cost 25 in the ABS frame `[arg, args, …]`: λf 2, two applications 4,
   `f` 2, `λq. arg` 6, `λr. r args` 11. (Proof: direct β.)
4. **Self-wrapped leaky cell.** `λzx. zx (zx arg) (λzy. zy args)` is a
   correct cell: the K-arm gives `K (K arg) (…) r' = K arg r' = arg`, the
   F-arm `F (F arg) (λzy. zy args) r' = r' args`. Cost 26 (`zx arg` costs
   7, one more than `λq. arg`). It is the env lane's `b (b a) (e b)` idea in
   the raw-tail frame; it does not pay.
5. **Raw value applied to anything.** `r X = X b' r'` and `r X Y = X b' r' Y`
   for every raw value `r = cons b' r'`. Whatever a raw value is applied to
   receives the bit first and the rest second (used throughout §3).
6. **Curried selectors.** With a Scott-pair environment `p = λf. f a e'`,
   the family `v_1 = K`, `v_{n+1} = λa e. e v_n` satisfies `v_n p` = the
   n-th entry (`v_1 a e' = a`; `v_{n+1} a e' = e' v_n = v_n a'' e''`). These
   are the values a cell-free ABS (`λe λa. exp a e`, 17 bits) would need.

## 3. Obstructions and bounds

All handwritten unless marked; hypotheses stated with each.

### 3.1 Raw values force the two-argument Boolean cell

*Hypotheses:* variable values are raw tails `r = cons b' r'`; values are
applied to the environment as `v e`. *Claim:* the environment is a
two-argument eliminator with `e K n =β arg` and `e F r' =β r' args`, and
every alternative application order fails. *Proof:* by identity 5,
`r e = e b' r'`. Pre-selecting instead (`r I = b' r'`, `r K = b'`,
`r F = r'`) collapses var n ≥ 2 to `I`, keeps only the bit, or drops the
bit. Extra operands `v e Y` reach the K-arm as `arg Y` (§3.2). Reversing to
`e r` requires every value to be applied as `e v`, and for closed values
`e F`, `e K` are Boolean selections (the record's alias obstruction). The
recursion must be `r' args` (a value applied to an environment) because the
stored environment `args` is itself only ever consumed that way. The env
lane's 24-bit bound under exactly these two laws then applies.

### 3.2 Lookup must return the stored entry unapplied

*Hypothesis:* the root is transparent (the contract compares β-normal forms
of `C V N`, so `V =β λz. M`). *Claim:* for every closed `M`, the stored
entries an environment returns are arbitrary λ-terms, so a lookup law of
the form `e K n = arg X` (any X) is wrong at every size. *Proof:* the value
of `λx.x` is `λa b. b = F`, of `λx y. x` a K-shaped term, etc.; these are
exactly the meanings, and a meaning applied to a stream or Boolean is a
different normal form (`λx. x` would return `λz λx. x N` under the leaky
cell, with N the rigid tail). This kills the 22-bit leaky cell, the 15-bit
Scott pair (`λzx. zx arg args`) and the 15-bit stream cell as environments;
absorbing the leak by wrapping `arg` costs +3 at the cell (25, §1) or +4 at
the lift (and misses the root's own binder, whose argument arrives from
outside unwrapped). Wrapping meanings themselves violates transparency.

### 3.3 The 3-bit strip has no cheaper site

*Hypothesis:* the 162's reader and NEXT otherwise unchanged. The leading 1
of a variable's code must be consumed once. In V it costs 3 (`λq. cont`
over `cont list`). In the cell it costs ≥ 3 (env lane: `λu r. r H` ≥ 27).
At the use sites of values (`v F e`) it costs ≥ 5 per site at three sites,
or the mode-argument protocol with its public adapter (203). The only free
F in NEXT is APP's `bit1`; ABS's is K. (Hand count; the use-site count is a
literal price, not a bound on every rewrite.)

### 3.4 Curried pair environments die on orientation

*Hypothesis:* raw values. `exp arg args` and `exp args arg` as ABS bodies
give `r arg args = arg b' r' args` and `args b' r' arg` (identity 5): the
newest argument or the environment lands in function position. With a
Scott-pair cell the F-arm flips orientation every step (`args r' = r' a' e'`
puts the next tail's bit in head position); orientation cannot alternate
with depth because ABS does not know its depth. Dead at every size.

### 3.5 Cell-free ABS needs a fold over the unary code

*Hypothesis:* values applied as `v a e` (curried over the newest argument),
so that ABS's value is `λe λa. exp a e` (17 bits, no cell). *Claim:* the
variable values must be the selectors of identity 6, and turning the raw
code into them requires a transformation T with `T(cons K N) = K` and
`T(cons F r) = λa e. e (T r)`, i.e. a structural recursion on the index.
The parser's recursion (`intL`) strips one 1 and skips the rest in one step;
the skip's diagonal `U_n U_n →* K N` erases the index. No non-recursive
closed term does it. **Computer-checked base** (`fold_check.py`): no closed
T with |T| ≤ 24 (19,048 terms) has `T(U_{n-1}(N)) =β v_n` or
`T(U_n(N)) =β v_n` for n = 1, 2, 3 with N rigid. Re-entering `intL` per
1-bit instead needs a second mode or a second recursive function (the base
`0 N` is otherwise read by the 0-tag arm, `N NEXT`): ≥ 20 against the 17
saved (NOTES §22).

### 3.6 Forced shape of the value modules (lane theorem)

*Hypotheses:* root transparency (forced by the contract), raw variable
values, values applied as `v e`. *Claim:* ABS's value is
`λe λa. B'(a, e)` with `B' = exp (cell a e)`, cell ≥ 24, so ABS's value is
≥ 34 bits; APP's value satisfies `V E = f E (g E)` and costs ≥ 19 (env
lane, actual values); V ≥ 28 (golf162-claude's case analysis). *Proof:*
an application's meaning is M's meaning applied to N's meaning and M may be
a variable bound to any function, so APP must evaluate both operands in the
same environment and apply; an abstraction's meaning is a function of its
argument, so ABS's value has the two binders, and its body must evaluate the
body in an extended environment, which by §3.1 is a 24-bit eliminator and
by §3.4–3.5 cannot be curried. Hence the three value modules total
≥ 28 + 34 + 19 = 81, which the 162 attains. Not in Lean.

### 3.7 A fused variable return `cont s` is impossible

*Hypothesis:* ABS/APP returns stay `cont V rest`. Variables never reach the
root (closed programs start with 00/01), so the variable arm could in
principle use a different calling convention towards the parser's own
continuations, e.g. `cont s` with the rest left for the consumer to compute
as `s s X = N` (V would be 11 bits). But a continuation `λexp. BODY` cannot
tell a one-argument call from a two-argument one: `BODY[exp]` must both
proceed when `rest` follows and compute the rest when it does not. A term
cannot branch on whether another argument will arrive. Making ABS/APP
values self-describing (`V V X = rest`) is the record's 273-bit protocol.

### 3.8 Shared cell/lift skeleton (recount)

`D a b c d = c a (d b)` gives cell = `D arg args` (22 at D's depth) and
lift = `λargs. D args args exp exp2` (30): saves 2, costs 11 plus a 32-bit
let. Dead, as the record says.

### 3.9 Index-bit map

X = 32 splits V 6, header 4, ABS 11 (cont 3, exp 2, arg 2, args 3, zx 1),
APP 11 (intL 4, cont 4, exp 2, exp2 1). The depth taxes come from
`\cont \list` and `\bit1 \exp`; no value change moves them.

## 4. Honest read

Inside the value protocol there is nothing left: the cell, the lift, the
variable arm and the strip are each tight, and the two obvious cheaper cells
measure 163 for the reasons in §3.2. The forced-shape argument (§3.6) says
any sub-162 keeps `λe λa. exp (cell a e)`, the 19-bit lift and a 28-bit
variable arm, and therefore saves its bits in NEXT's control (header 18,
ABS's `cont` 7, APP's `intL (λexp2. cont ·)` 18, the four index bits of
depth) or in the reader/knot — exactly the regions the other lanes are
bounding. Two escapes from §3.6's hypotheses remain genuinely open, both
expensive by every construction so far: (i) a parser that recurses on every
1-bit of a variable (so the unary fold of §3.5 comes free from `intL`),
which would make ABS 17 bits and delete the cell but needs a second mode
(NOTES §22); (ii) non-transparent values with a public adapter, which must
save more than the adapter's ≥ 21 bits inside. The next proof step I would
take is to turn §3.6 into a statement about *any* reader: show that a
variable arm handing anything other than a Scott-cons-shaped value costs at
least the 3 + 17 it could save downstream.
