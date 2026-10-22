# Lane "handoff": what the zero arm hands the tail to

**No sub-162 interpreter found.** The lane's object is the operand Q of the
162's zero arm `r Q` (the stream cell applies Q to the second tag and the rest
for free) and the reorganisations of NEXT, ABS/APP and the variable arm around a
different Q. Every Q I could derive is either the 162's NEXT, loses the second tag
or the rest before a parse can use it, or pays more in binders than it saves in
references. The one exhaustive result is that, with NEXT and `cont` opaque, the
`s I A j` frame's middle operand is forced to the 162's variable arm through 30
bits of slack: the shape, not only the size. Running notes with every priced
dead end are in `NOTES.md`; the harness is `lab.py` (`vcheck.py`, `acheck.py`
are the exhaustive checks).

Compute: two batteries (2 threads, ~10 s each), one `polish.py` run (40 s), two
exhaustive checks of 12 s wall each at 2 workers, a dozen harness
normalizations. One check at 30 bits without a `cont` filter overran the two
minute cap and was killed; rerun with the filter it took 12 s.

## 1. Complete interpreters built

| file | written | polished | battery | idea |
|---|---:|---:|---|---|
| `dual169.lam` | 169 | 169 (3 cuts; `--no-inline` 2 cuts) | `169 bits  ok=667 skip=1 fail=0` | Reader `list I (list (\q. cont)) D`, `D = list K NEXT (list list list)`: `s K` is the bare first tag, so D is NEXT on a zero stream and N on a variable; the return arm is `cont r` (12 bits) applied to D. The cheapest dual operand I know (the adversary lane's are 172). |
| `dsel.lam` | 211 | not polished | `211 bits  ok=667 skip=1 fail=0` | Double I-selection `list I I V NEXT`: V's argument is the second tag on a zero stream and NEXT on a variable, `V = \u. u A B`; NEXT (`\a \p. list (\q. cont) (list list a)`) plays the variable arm. Correct, hopeless: A and B each bind and erase the trailing NEXT and each holds its own `intL` parse. |

Both correct by the same transfer as the 162 (zero law `R (cons K r) = r NEXT`,
variable law `R U_n(N) = cont U_(n-1)(N) N`, checked symbolically on the harness
before splicing).

## 2. Identities (harness-checked with rigid `k`, `NEXT`, `a`, `t`, `r2`)

Reader `P k s = s I V_k NEXT_k`, `V_k = \u. s (\q. k) (s s u)`:

- **Boolean collapse.** `P k K = P k F = NEXT_k`, hence `P k b r2 = NEXT_k r2` for
  both Booleans. Proof: `K I V Z = I Z = Z`; `F I V Z = V Z = F (\q.k) (F F Z) = Z`.
  The second step is forced for every V of the shape `\u. s A (s s u)`: `F` erases
  V's first operand and `F F Z = Z`. So nothing applied to `intL k` (or `x x`) in
  the zero arm can see the second tag: `r (intL k) = NEXT_k r2`, `r intL = P b2 r2`
  (value alone for ABS, rest alone for APP).
- `P k I = k`, `P k (K a) = a (\x. a (a x)) NEXT_k`, `P k (K (K t)) = t NEXT_k`
  (golf162's table, reconfirmed). `NEXT_k X I = \exp. X ABS[exp] APP[exp]` follows,
  so `NEXT_k (\a \p. c) I = \exp. c`: a continuation can be pulled out of NEXT
  through the identity stream, but the `\exp` then eats the next operand; the
  route to `cont r N` through NEXT costs >= 60 bits in the variable arm against 12
  for `s (\q. cont)`.
- `s K = b` (bare first tag); `s (\b. b T) = T` on zero and `r` on a variable: a
  selected projection that is a handoff object on one side and the tail on the
  other (Grok's 168 shape when used as the reader's last operand).
- General shape of the `s I` family: `s I A B = b r A B`, zero `r B` (B applied to
  the cell), variable `A B` (B passed). B is the one object both arms touch.

## 3. Obstructions and bounds (hypotheses stated; handwritten unless noted)

1. **The variable arm of `s I A j` is forced (computer-checked, `acheck.py`,
   `vcheck.py`).** Hypotheses: j and `cont` rigid (opaque NEXT), A any term over
   `[list, cont]` (and, in `vcheck`, `\u. B` with `u` also free), law
   `A j = cont U_(n-1)(N) N` on `U_n(N)` for n = 1..3. Through |A| <= 30 (1,313,478
   terms mentioning both names, all shapes, beta-normal or not) the solutions are
   exactly `\u. list (\q. cont) (list list X)` with X in {u 28, list 29, cont 30,
   I 30}; through |V| <= 32 with `u` free, the same family (X also `\d.cont`,
   `\d.list`, F, `cont cont`). This makes golf162-claude 3.2 exhaustive (it had a
   14-bit base) and strengthens it from a size bound to a shape theorem.
   Together with the trailing-operand principle (two operands forced) and the
   selector principle (`s X` with `X != I` loses r or puts N at the head), the
   `s I` family is pinned at 162 with opaque NEXT. Caveat: n = 1..3 probes; every
   hit is of the family whose all-n law is proved.
2. **Handler-form parsers do not improve the zero arm (priced).** If the knot named
   a handler `H` (`H k b r` parses `cons b r`), the child parse `intL k r'`
   rewrites to `r' (intL k)` at equal cost, but the zero arm must become
   `r (\b \r2. r2 (H k_b))`, +6 over `r NEXT`, where the cell applies the partial
   parser `intL k_b2` to r2 for free. A one-operand parser also has no whole-stream
   skip, so its variable arm is the handler family (>= 168).
3. **A second I-selection inside NEXT loses the rest on APP.** `r I A B` is `r2 B`
   for ABS and `A B` for APP; re-supplying r2 costs more than the 3 bits the 162
   spends reading `bit1` inside the continuation.
4. **APP's second parse cannot re-enter NEXT with a fake tag (priced).**
   `NEXT X r' = intL (\exp2. X ABS[exp2] APP[exp2]) r'`, and exp2 is unrecoverable
   from either canonical arm: it sits under `cont` (rigid at the root), and the
   lambda-value applied to any env/arg yields `exp2 (cell ...)`, with
   `cell a e == args` only when `args` is a cell, which the root's rigid
   environment is not. With the eta-expanded select-first continuation
   `\exp. b KA KB exp` the trick works but X costs 36 and NEXT must be let-bound
   (166 base): >= +10.
5. **Two reader references are forced, so the 22-bit knot is.** The second parse
   needs the reader body; the only names that can reach it are `intL` (a second
   reference, hence the let) or a let-bound `next` (166); `b2`, `exp`, `cont` and
   the stream carry no parser. NEXT cannot be the knot's fixed point because it
   mentions `cont`. (Agrees with the Lean `26 + d1 + d2` bound.)
6. **Whole-prefix values with the shift absorbed in the environment's head cost
   36** (`\b \r. r (\zx \zy. zx arg (zy args))`), worse than golf162's D at 34;
   the shift cannot move to the lambda-value or the lift since lookups happen
   inside `exp`.
7. **Dual operands pay for a second tag read.** Any reader whose return arm is the
   12-bit `s (\q. cont)` needs an operand equal to NEXT on zero and N on a
   variable; the cheapest I found reads the tag again (`s K`, 9 bits) and
   recomputes the skip it no longer shares: 169. The 162 avoids both because NEXT
   is the skip's junk.

## 4. Honest read

Within handoff-centred designs the 162 is rigid: the free destructuring `r Q` is
the cheapest possible delivery of (second tag, rest) to a partial parser, reading
the tag costs the 5 bits of `\bit1 ... bit1`, the dispatch inside the continuation
is the one-`intL` form, and the variable arm's shape is forced once NEXT is
opaque. A sub-162 therefore needs NEXT to be *useful* to the variable arm at a
cost below the 16 bits that `s (\q. cont) (s s .)` spends on `cont r` and N, and
every way of pulling `cont` out of NEXT I can derive goes through the `\exp`
binder of a parse (the identity-stream route `NEXT X I`), which eats an operand
and costs >= 60. The next lane's 177 and the marker constructions (182+) are the
measured versions of that. If a 161 exists, I now believe it is not in the
operand slot but in a value protocol whose variable value is the whole prefix
*and* whose environment is below 34 bits (a 3-bit reader saving against a
<= 9-bit cell cost), or in a NEXT that reads the second tag by a selected
projection shared with the variable return. The next proof step for this frame
is mechanical: lift check 1 to all n by the family's induction, and run the same
two-hole check on `s X A j` with |X| <= 10 to make the selector principle
exhaustive as well.
