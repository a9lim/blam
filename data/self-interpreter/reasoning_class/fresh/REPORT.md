# fresh lane report (round 4)

(Saved by the coordinator from the lane's returned text; the lane's own
write of this file was refused by its harness. Full working: NOTES.md.)

No sub-162. Fifteen mechanisms designed on paper before reading the record;
in phase 2 every one turned out already priced in interpreter.md §6 or
class-bound.md §5, or adjacent to something priced.

## 1. Interpreters built

| file | idea | written | polished | battery line |
|---|---|---:|---:|---|
| d7.lam | NEXT = λbit1. intL (bit1 A B), A = λexp. cont (Λ exp), B = λexp. intL (λexp2. cont (S exp exp2)) | 163 | 163 | `163 bits  ok=667 skip=1 fail=0` |
| d7b.lam | D7 with closed arms taking cont: bit1 A B cont | 170 | — | `170 bits  ok=667 skip=1 fail=0` |
| d6.lam | handler reader list (λb q. b (q NEXT) (cont q (q q b))): the bit b is the skip junk | 171 | 169 | `171 bits  ok=667 skip=1 fail=0` |

D7 is the record's select-first 163 (interpreter.md §3; also the arch lane's
before_parse.lam). D6 polished is the class member
R = (λn s. s (λb q. b (q n) (c q (q q b)))) j, cost 53 at depth 0: 169
(the record lists the design at 170). Every paper price matched the battery.

## 2. Designs and status

| # | mechanism | paper price | record status |
|---|---|---|---|
| D1 | split hnf λc s. c (D s) (Sk s) (value decoder + skipper) | > +20 | priced: direct evaluation + skipper 293 |
| D2 | top-down values, parse the λ body twice for its remainder | > +20 | priced: parse under the binder |
| D3 | curried (spread) environment, ABS free | large | priced in spirit: de Bruijn levels 449 |
| D4 | variable value = whole prefix s, junk top cell | +14 | priced: whole-prefix values 170 / 185 |
| D5 | deferred remainder (hand over s, consumer skips) | ~+25 | priced: raw suffix 247, thunked rest 202 |
| D6 | explicit destructuring reader | +9 (169 polished) | priced: 170 |
| D7 | tag dispatch before the first parse | +1 → 163 | priced (select-first 163) |
| D8 | null parser unifying ABS and APP | +10 | priced: 177 |
| D9 | shared trailing operand via bit1 A B cont | +7 | priced: 169–170 |
| D12 | dual operand NEXT on zero / N on variable | +14 | priced: 172 |
| D13 | pair return / return by applying the rest | adapter 13+ | priced: 211 / 226 |
| D14 | trailing pass-through E C s X = C v rest X | no use found | related: 179 / 184 |
| D15 | two-bit read by self-application s s X Y | loses the variable | related: 193 |
| D16 | self-distributing environment, APP = λargs. args exp exp2 | −4 if possible; it is not | related: cell/APP alias 164 fails |
| — | s (λb. b b Q) free zero arm in the 162 frame | +12 at best | priced on the 165 (158 fails, 174 repaired) |

## 3. Identities and obstructions (handwritten; D7/D6 ledgers battery-confirmed)

- D7 ledger exact: +2 for a second λexp (the 162's λexp. bit1 ABS APP shares
  one across both arms), −1 for the shallower bit1 leaf. Four escapes fail:
  η-reducing an arm (needs Λ-wrapped child values, 203–219, or an explicit
  λrest +4..5); closed arms taking cont (+7, 170); reading the tag through
  the cell or two intL heads (+7); dispatching inside the value (+10).
- Trailing pass-through E C s X =β C v rest X for every X; never pays (root
  takes no extra operand; inside an η-reduced arm it forces λrest).
- A bit read as a stream erases itself: for the parser body list I V J,
  intL K' b r2 = J[K'] r2 for both b = K and b = F.
- Self-distributing environment impossible: a two-slot cell λx y. x A (y B)
  distributes like S only if A = B = e and answers lookups only if A = a,
  B = t.
- Reader family λs. s P X1 j: P = I is the cheapest zero-correct selector;
  P = λb. b b Q gives a free zero arm for any X1 but leaves Q r X1 j (one
  operand too many; cheapest absorbing Q gives P + X1 = 44 vs the 162's 32);
  P = s gives a free zero arm but N j on variables.

## 4. Where a sub-162 could hide (lane's read)

The 162 has many +1 moves and no −1 move: a sharp local minimum. Most likely
place: a reader of weight 30–45 (beat the 2-bit λu that erases j as the
skip's junk, or the s (λq. c) re-destructuring). Next technique proposed: a
dynamic programme over behaviour pairs (behaviour on Z(r), on U_n(N)),
abstracted to the finite unary algebra the w >= 30 proof uses, computing the
minimum weight per pair bottom-up.
