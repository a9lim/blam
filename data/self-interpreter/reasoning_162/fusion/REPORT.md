# Fusion lane: cross-module moves on the 162

**No sub-162 interpreter found.** The lane's method was to take each seam
named in the prompt, derive by hand what the pieces on either side of it
compute on genuine streams and off them, and price every way of letting one
term serve both sides. One seam yields a complete new interpreter (the
continuation passed as a constant function, so the variable arm reads `k r`
straight off the stream cell as a lookup reads a value); it is correct and
measures **188** written and polished. Every other fusion dies on an exact
identity before reaching a term, and the identities are recorded below with
proofs. The accounting also sharpens the picture around the class bound the
floor lanes stated this round: inside the `cont value rest` protocol with
raw-tail values the variable arm has no slack at all, and a NEXT with a usable
variable mode cannot come within 15 bits of the canonical one.

Files: `kcont.lam` (188), `lab.py` (harness, copied from `golf162-claude`),
`idents.py` (rigid-variable identity checks), `NOTES.md` (append-only log).
Computation: three batteries, one polish (two threads, letopt capped at
110 s), one identity script; no enumeration. One mistake worth recording for
other lanes: never hand the Python normalizer a term containing the knotted
interpreter (`NEXT_c = E c K` unfolds forever); keep `intL` rigid.

Notation: `K = \x y.x` (bit 0), `F = \x y.y` (bit 1), `I`, `cons b r = \f. f b r`,
`Z_R = cons K R`, `U_n(N) = 1^n 0 ++ N`, `s` the whole stream, `r` its tail,
`c = cont`, `j = NEXT`, `P c s = s I V_c NEXT_c` the 162's parser body,
`V = \u. s (\q. c) (s s u)`, `A_e = \args \arg. e (cell arg args)`,
`T_{e,f} = \args. e args (f args)`.

## 1. Complete interpreters

| file | written | polished | battery | idea |
|---|---:|---:|---|---|
| `kcont.lam` | 188 | 188 | `188 bits  ok=667 skip=1 fail=0  tmp/round3/fusion/kcont.lam` | The continuation is a constant function `cc = \q. k`. The variable arm is `\u. s cc (s s u)` (25 bits: `s cc = cc F r = k r`, the stream cell hands `k` its tail exactly as a cell hands a value). Every return then supplies a junk first operand (`cc bit1 A`, `cc exp2 T`), each recursive continuation gains a `\q`, and the root wraps `C` as `\q. c`. |

```text
\c. (\x. x x) (\x. (\intL. \cc. \list.
  list (\a. a) (\u. list cc (list list u))
    (\bit1. intL (\q. \exp. bit1
      (cc bit1 (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\q2. \exp2. cc exp2 (\args. exp args (exp2 args)))))))
  (x x)) (\q. c)
```

Correctness is the 162's induction with `cont` replaced by `cc junk`:
on a variable `s cc (s s u) = cc F r N = k r N`; on a constructor `r NEXT`
is unchanged; the recursive continuations `\q \exp. ...` are constant in `q`,
so the child's variable arm `s cc' = cc' F r = (\exp. ...) r` is the 162's
`K' r`; at the root `cc = \q. C` and `cc junk A N = C A N`. Exact balance
against the 162: V -3, ABS +5, APP +9, header +6, root adapter +9 = +26.
Letopt (two cuts) keeps 188.

## 2. Exact identities (hand proofs; `idents.py` checks with rigid N, c, intL)

1. **The lift is a cell with equal fields.** `cell_{a,e} f g = f a (g e)`
   for `cell_{a,e} = \zx \zy. zx a (zy e)`, hence
   `T_{e,f} = \args. cell_{args,args} e f`. (Two beta steps.) A shared
   four-ary constructor `MK = \a e zx zy. zx a (zy e)` costs 28 plus a let, and
   the lift's use `\args. MK args args e f` is 12 bits longer than `T`: net
   about +39 against the 5 saved in ABS. This is the exact form of the
   recorded "skeleton `a b (c d)`" remark.
2. **Canonical NEXT has one mode.** For every `X`, `NEXT_c X = intL (\exp. X ABS APP)`,
   a parser awaiting a stream, and `P K' S` on the pseudo-streams in scope
   gives: `P K' I = K'`, `P K' K = P K' F = NEXT_{K'}`, `P K' J = K' NEXT_{K'}`
   (`J = \f. f I`), `P K' (K(K t)) = t NEXT_{K'}`, `P K' (K a) = a (\u. a (a u)) NEXT_{K'}`,
   `P K' (cons F t) = K' t (t t NEXT_{K'})`. In every case `c` appears only
   inside `ABS = c A` or `APP = intL (\exp2. c T)`, never bare and never
   applied to a tail; and `N` never appears except through `s s`. So no use of
   the erased operand `u = NEXT` inside V can replace `s (\q. c)` or `s s u`.
   (Checked: `P c I`, `P c K`, `P c F`, `P c J`.)
3. **The whole stream inside NEXT is dead weight.** Under `\bit1`, `list = cons K (cons bit1 r2)`
   and `r2` is the eta-trailing operand, so the only data `list` can add is the
   known `K` and `bit1` (`list K = K`, `list F K = bit1`, both >= 8 bits against
   a 3-bit `bit1`). ABS and APP both need `r2` or its parse, never `list`.
4. **Selection cannot perform lookup.** `r I = b' r'` keeps the tail as the
   first operand of the bit: `b' r' X Y` is `r' Y` on `K`. A lookup must
   *drop* the tail on `K` and return `arg`, so the environment must bind both
   fields (`\zx \zy`) or project them; the reader's `s I` trick is exactly the
   feature that disqualifies it as a cell.
5. **Retracted.** I first proposed `P c Y = P c` for the "rotate" stream
   `Y = \i v n s. s i v n`. It holds only for a reader whose stream variable
   occurs once; the 162's `V` and `NEXT` mention `list`, so `P c Y` substitutes
   `Y` there too. `idents.py` refutes it on `U_1`.

## 3. Obstructions and bounds (handwritten unless stated)

All are within the stated hypotheses; none is in Lean.

**3.1 The variable arm of `s I V j` has no slack (any NEXT with only the
canonical mode).** `V j = c r N` must contain a bare `c` applied to the tail
(identity 2 excludes obtaining `c r` from `j`), so it contains `s X` with
`X F r = c r`; the only such `X` below 9 bits is `\q. c` (`K c` is 13,
`c` itself gives `c F r`), giving 12. It must contain `N`, which only `s s u`
(12), `s s s` (13) or a bound `r r t` produce. The glue is one application
and the erasure of `j`, and the 162's `\u ... u` erases `j` for a net 1 bit
because `u` doubles as the skip's operand. So `V >= 28` with the base cases of
`golf162-claude` section 3.2; the only way below is a NEXT with a non-canonical mode.

**3.2 A NEXT with a variable mode costs at least +15 net.** For the variable
arm to use `u = NEXT` productively it must be applied to something in scope;
the cheapest productive arms are `\u. s u (s s u)` (23, needs `NEXT F r = c r`)
and `\u. u (s F) (s s u)` (needs `NEXT r = c r`). Both require NEXT to behave
as `c` on a tail or on the tag `F` while staying canonical on the zero arm's
`b2 r2`. A lambda term cannot tell `F` as a second tag from `F` as a first tag, nor
a Boolean from a stream, without a guard on the *first* tag, which NEXT can
only read from `list` (>= 10 bits: `list K` and two applications) plus a mode
term (>= `K c`, 13); the saving in V is at most 5. So such designs are
>= 162 + 20 - 5 = 177, which the `next` lane attains.

**3.3 The selector is forced.** `s X V j` with `X` in `{s, cont, intL, x}`:
`s s V j = N j` on variables (rigid `N` at the head), `s cont V j = cont b r V j`,
`s intL V j = P b r V j` (parses the misaligned `r`), `s x V j = G b r ...`.
Only `I` (4 bits) keeps `r j` on zero and `V j` on one.

**3.4 Operand-count and arity.** `s I V j Y1..Yk` fails for `k >= 1` (the
zero arm's `NEXT b2 r2 Y1..` reaches `C` with surplus arguments unless NEXT
binds them, +6 each); `s I NEXT X` and `s I W W` fail because the variable
arm's result is then a parser awaiting a stream (identity 2) while `c r N`
has exhausted arity; the single-handler forms `s X j` need `X` to bind `r`
or select `\b. b I Q` with `Q r j = c r N`, hence `Q >= 27` and `X >= 38`.

**3.5 Continuation-protocol fusions.** A continuation receiving the tag
(`s cont = cont F r`) or a junk operand (`K k`) needs a root adapter (+9) and
junk operands in ABS and APP; the complete form is the 188 of section 1. A shared
head `(bit1 cont intL) Y` needs one `Y` to be both `A_e` and the APP
continuation; `A_e exp2 rest2 = exp (cell rest2 exp2)`, not `cont T rest2`.
Routing ABS's return through the parser with a synthetic stream
(`P c I = c`, `P c J = c NEXT_c`) needs the APP arm's operand to be `rest`,
which is eta-trailing; binding it costs +4 and the instruction stream >= 10.

**3.6 Environment fusions.** A Scott-pair environment `\f. f arg args` flips
orientation each step (`r env = b' arg args r'`); storing `K arg` to absorb
the junk makes the cell 31; a NEXT shaped like the cell (`\zx \zy. zx A (zy B)`)
erases `r2` on `K`, which ABS needs.

## 4. Where a sub-162 could hide

Inside the `cont value rest` protocol with raw-tail values, cells, a canonical
knot and a NEXT with one mode, I now believe the floor lanes' target
`cost(R) + 4*depth(j) >= 46` is true: 3.1 and 3.3-3.4 cover the `s I` family
and the cheap handler families by hand, and the remaining gaps are the
exhaustiveness of `V <= 27` (248,614 terms, a bounded check someone with
budget should run once) and `s X j` with `X <= 33`. A NEXT with a variable
mode is >= 177 by 3.2. The recursion lane closed knotless two-head schemes
(>= 165), the env lane whole-prefix cells (>= 27).

What remains genuinely open is a protocol outside all of these at once: a
representation in which the variable's value is neither the raw tail nor a
fixed-offset prefix, the continuation is not `value rest`, and the second tag
is not read by a separate NEXT object. Every such design in the record pays
an adapter at the public boundary (190-300). The next proof step is to turn
3.2 into a theorem about readers that apply the hole to a non-Boolean, which
together with the floor lane's depth reduction would make 162 optimal for
every reader over the canonical NEXT and knot.
