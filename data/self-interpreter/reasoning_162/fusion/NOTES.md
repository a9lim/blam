# Fusion lane notes (append-only log)

## Frame (from the brief + coordinator, 2026-10-21)

162 = knot/intL 22 + `\cont \list` 4 + reader apps 8 + I 4 + V 28 + NEXT hdr 18
    + ABS 41 + APP 37.   (L,A,X) = (16,24,32).

Class bound (floor/lean138 lanes): with opaque knot and canonical NEXT,
sub-162 needs a reader R (free c, j) with
  R (cons K r) = r j,   R U_n(N) = c U_(n-1)(N) N,   cost(R) + 4 depth(j) < 46.
Otherwise: break reader/NEXT separation, use actual-parser calls that violate
the rigid NEXT laws, or recursion through the reader/input.

Already closed by other lanes this round (do not redo): whole-prefix values
(cell >= 27), NEXT variable-mode via first-tag guard (177), knotless two-head
recursion (>= 165), dual operands with 10-bit variable operand (172).

## Seams to work (from PROMPT.md)

S1 variable arm / ABS / APP all end in `cont VALUE REST`
S2 `list (\q. cont)` hands cont a tail like a cell hands a value
S3 cell `zx arg (zy args)` and lift `exp args (exp2 args)` share `a b (c d)`
S4 cell reads code bits as selectors like the reader's `list I`
S5 `I` could be any term acting as identity on its two inputs
S6 knot `x x` and skip `list list` are both self-applications
S7 NEXT is erased on variables; could carry anything the zero arm tolerates

## Log

### Round 1 (reasoning only; no new candidates yet)

Dead by exact identities (hand):
- `s I W W` / `s I NEXT X`: `NEXT X = intL (\exp. X ABS APP)` is a parser
  awaiting a stream; var arm result must be `cont r N` (arity exhausted). Any
  var arm that re-enters intL on s regresses (157/161 heads N).
- `s cont` (cont receives tag,tail) needs root adapter `K c` (+9) and junk
  args in ABS/APP (+9): net >= +15 against the 3 saved in V.
- Continuation = `K k` so that `s kk = k r` (saves 6 in V): every cont call
  needs a junk arg (+5 ABS, +4 APP) and recursive conts need `\q` (+4). Net +.
- `(bit1 cont intL) Y` with ONE Y serving as ABS value and as APP's
  continuation: Y=A=\args\arg.exp(cell) gives `A exp2 rest2 = exp (cell rest2 exp2)`,
  not `cont T rest2`.
- Synthetic-stream ABS return `intL X (bit1 Sigma) rest`: `bit1 Sigma` is
  `K Sigma` or `I` (never `rest`), so APP cannot parse; with Sigma=I the ABS
  arm gives NEXT_X rest (P c (K I) = NEXT_c).
- `r intL` (bit as continuation): K/F are the value/rest projections; each
  arm needs both. (recorded 164-fails.)
- NEXT shaped like the cell `\zx zy. zx A (zy B)`: K erases r2, which ABS needs.
- cell-as-lift sharing: lift = \args. cell_{args,args} exp exp2 is an exact
  identity (cell_{a,e} f g = f a (g e); a=e=args), but a 4-ary shared cellf
  costs 28 + let overhead and the lift use gets longer (+9): net -.

### Round 2: the class is tight (hand accounting, lab-checked sizes)

lab: 162 reader `\s. s I V j` = 46 with j a 4-bit leaf (42 with j hole), dual
`\s. s (\b. b F c) (s I (s s) j)` = 48/44. (Gotcha: F = \a\b.b is 6 bits, K 7.)

Why `s I V j` has no slack: the var arm must build `c r` (min 12: `s (\q. c)`)
and N (min 12: `s s u`), glue 2; the erasure of j costs net 1 bit (`\u`+`u`
= 4, but u replaces the 3-bit `s` the skip would otherwise need). Nothing in
scope (u = NEXT, intL, x) yields bare `c` or N cheaper: every NEXT mode is
`intL (\exp. X ABS APP)`, a parser awaiting a stream; `P c I = c`, `P c J =
c NEXT_c`, `P c (K(K t)) = t NEXT_c` all cost >= 13 to invoke.
`s X j` with a handler X: select-first `X = \b. b I Q` needs Q r j = c r N
with j erased or used as the skip's force => Q >= 27, X >= 39 (c169_handlerI).
`\b r. b r (\t. c r (r r t))` is 38 (Grok 168). So T=j handlers >= 38 > 33.
Conclusion: within canonical NEXT + opaque knot I believe 46 is exact; the
lane's job is out-of-class moves.

Identity (new, cute, useless): `P c Y = P c` for `Y = \i v n s. s i v n`
(a stream that re-reads its continuation's next argument); combined with
`P c J = c NEXT_c` it gives a shared ABS-return/APP-parse
`intL K2 (bit1 J Y) rest` but needs `rest` bound: +20.

### Round 3: identity checks (idents.py, rigid N c intL X Z u)

ok: P c J = c NEXT_c; P c I = c; P c K = P c F = NEXT_c; cell_{a,e} f g = f a (g e)
(so lift = \args. cell_{args,args} exp exp2); s s u = N on U_n, = r on Z_R.
WRONG (retracted): `P c Y = P c` for Y = \i v n s. s i v n. It holds only for a
reader whose stream variable occurs once; the 162's V and NEXT mention `list`,
so `P c Y` substitutes Y for those occurrences too. Checked: fails on U_1.
Gotcha: never normalize a term containing the knotted E with the Python
normalizer (NEXT_c = E c K unfolds forever); keep intL rigid.
