Constructive question (lambda calculus golf, exact). Untyped lambda terms, BLC size:
lambda = 2 bits, application = 2 bits, a variable with 0-based de Bruijn index i
costs i+2 bits. A term Q has free variables c, p only, in the frame [c, p]: at
Q's top, c has index 0 and p index 1 (so under k binders, c costs k+2 bits and p
k+3). Write q = |Q| and F = number of free c/p leaf occurrences in Q's source.

Q must satisfy, with c, p, t free (rigid) and K = \x y. x, F_ = \x y. y:
  Q K  t  =beta  p (\f. c (\e a. f (\x y. x a (y e)))) t
  Q F_ t  =beta  p (\f. p (\g. c (\e. f e (g e)))) t
(compare normal forms). Arbitrary source syntax is allowed: redexes, lets,
self-application, the tag used in any position or arity.

The canonical Q0 = \b. p (\f. b (c (\e a. f (\x y. x a (y e)))) (p (\g. c (\e. f e (g e)))))
has q = 92, F = 4. GOAL: a Q with q + F <= 95, i.e. one of
  (F = 4, q <= 91), (F = 3, q <= 92), (F = 2, q <= 93).
Also valuable: any Q in (F=3, q<=94) or (F=2, q<=97), or a short convincing
reason a whole family cannot get there.

Already priced (all pass the laws; do not resubmit, but say if yours differs):
  p let   (\P. \b. P (\f. b (c Abs) (P (\g. c App)))) p               q=99  F=3
  c let   (\C. \b. p (\f. b (C Abs) (p (\g. C App)))) c               q=100 F=3
  c as shared 3rd tag arg  \b. p (\f. b (\k. k Abs) (\k. p (\g. k App)) c)   q=101 F=3
  no-op 2nd parse  \b. p (\f. b (\k.k k) p (\g. c (\e. b (\a. f cell) (f e (g e)))))  q=102 F=3
  shared continuation let (\k. b (k k) (p k)) (\g. c V)              q=108 F=3
  both lets (\P C. Q0[P,C]) p c                                       q=105 F=2
  dispatch first, p,c as spine args (\b. b (\P k. ...) (\P k. ...) p c) q=113 F=2
  continuation dispatch \b. p (b (\f. c Abs) (\f. p (\g. c App)))      q=93  F=4
  selected head + merged binder  \b. p (\f. b c p (\z. b (\a. f (\x y. x a (y z))) (c (\e. f e (z e)))))  q=96 F=4
Known obstruction: a b-free shared continuation K with K g = c (App f g) for
rigid g gives K X = c (\e. f e (X e)) != c Abs f, so sharing c through one
continuation always costs a second tag dispatch.

A checker exists: python3 /Users/a9lim/Work/blam/tmp/round4/nextctor/chk.py 'SRC' ...
(syntax \x y. body, juxtaposition, parens; free names c, p) prints q, F and both
laws. Use it to verify anything you propose. Do not write files. Keep runs tiny.
Report: each candidate's source, q, F, law result; and your best reasoning about
where (if anywhere) a sub-frontier Q could exist.
