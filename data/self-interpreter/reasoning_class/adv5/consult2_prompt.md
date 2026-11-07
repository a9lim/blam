Follow-up (same rules and caps as before; answer under ~2.5k words).

1. Your G = \t. t t c gives the near miss \s. s G (s s c) j at w = 39: zero law exact, unary gives
   c U N j (one surplus argument). My arity table for depth-1 s-spines with a closed first handler P
   (zero value P K R, unary value P F r) says: K R eats one operand and then needs j (two operands);
   c r takes exactly one; so K R / c r can never close, and every repair I priced costs >= 7 bits
   (s I + absorber gives the 162 at 46; \t. t t (\a x y. c a x) costs +20; R / c r needs a j/N operand,
   >= 25). Try to repair the 39 within 6 bits by any mechanism (different spine, sharing, a second
   helper, a redex). If you think it cannot be repaired, say what invariant blocks it.
2. In your window R = (\x n s. M) A j with m = 2, 9 <= cost(A) <= 16, exactly one c in A, M c-free:
   as a first handler only A = \t. t t c (K R / c r) and \t. t I c (R / c r) have usable dispatch
   values among the one-c combinators of that size I listed (\t. t c, \t. c t, \t. t (\q. c),
   \t u. u c, \t u. c u, \t u. t c, \t. t c t, \t. t (t c), \t. c (t t), \t. t c I ...). Either finish
   the window (with the hypotheses you need), or construct a member. Cheapest members you can find,
   with rd.py weights, are useful even if they fail.
