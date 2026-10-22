Context: binary lambda calculus self-interpreter golf. Size |M| = 2L + 4A + 2 + X
(L lambdas, A applications, X = sum of 0-based de Bruijn indices). Contract:
E C (<M> ++ N) =beta C (\z. M) N for closed M, with C, N rigid; <\M>=00<M>,
<M N>=01<M><N>, <var n>=1^n 0; streams cons b r = \f. f b r; bit 0 = K, bit 1 = F.

The 162-bit record (lets are explicit redexes, written exactly):

(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))

Anatomy: knot + intL let 22; \cont \list 4; reader `list I V NEXT` 8 + I 4 +
V 28; NEXT header `\bit1. intL (\exp. bit1 . .)` 18; ABS 41; APP 37.
A Lean theorem (Codex's) says an opaque knot with two recursive calls at
0-based depths d1,d2 costs >= 26 + d1 + d2; the 162 has (3,4) = 33.

My claim to attack (I want a counterexample or a hole, not agreement):

CLAIM A. Any interpreter in this CPS/closure architecture needs two
syntactically distinct recursive-call sites: the body/first-child parse (in
NEXT, under cont, list, bit1 => depth >= 3) and APP's second-child parse,
whose continuation \exp2. cont (lift exp exp2) depends on exp => under \exp
=> depth >= 4. Hence opaque-knot recursion overhead >= 33, no saving there.

Attempts to get ONE call site that I showed fail:
 (i) third NEXT mode m: `NEXT m rest = intL (\e. m ABS[e] APP[e]) rest`; m
     sees only ABS[e] = cont (absval e) (rigid head at the root) and APP[e]
     = intL (\e2. cont (lift e e2)); e is not extractable (P c I = c gives
     \e2. cont (lift e e2), lift e e2 has e in function position).
 (ii) select-first form `NEXT' = \m. intL (m kA kP)`: a third mode
     m = \a \p. k2 with k2 = \exp2. cont (lift exp exp2) WORKS algebraically
     (m kA kP = k2), but then kP (inside NEXT') must call NEXT' again, so
     NEXT' must be nameable from inside itself. A let `(\next. reader) NEXT'`
     puts NEXT' outside the scope of `next`; a second knot costs >= 20; a
     self-passing NEXT' (`next next` as the reader operand, `self self` in
     kP) measures 186 on paper. Making NEXT the knotted object and the root
     `\c \s. s F (knot c)` (closed programs start with 0) duplicates the
     ~40-bit reader inside NEXT.
 (iii) fetching NEXT via the off-domain identity P c K = NEXT_c costs
     `x x c K` >= 25 per use.

Questions: (1) Is there any way for APP's second parse to reuse the first
call site below +9 bits total (the saving a single site would buy: no intL
let, one reference)? (2) Any mutual-recursion layout (P and NEXT both
recursive) that costs < 22 + 11 = 33 for knot + references? (3) Any flaw in
"d1 >= 3": could the second-bit dispatch avoid binding bit1 while keeping r2
available to both arms? (I showed `r I X Y` loses r2 in the F arm.)
Be concrete: give terms and prices with the formula above.
