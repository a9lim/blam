A crisp lambda-calculus puzzle; an answer would beat a long-standing record.

Scott streams: cons b r = λf. f b r; bits K = λx y. x (0), F = λx y. y (1);
Z(r) = cons K r; U_n(N) = the unary code 1^n 0 followed by N, i.e.
U_0(N) = cons K N, U_(n+1)(N) = cons F U_n(N). c, j, r, N are free rigid
variables (constants).

Find a lambda term R whose only free variables are c and j, with j occurring
EXACTLY ONCE in R's source, such that for every rigid r, N and every n >= 1
    R Z(r)    =β  r j
    R U_n(N)  =β  c U_(n-1)(N) N
and whose weight w(R) = cost(R) + 4·depth(j) is AT MOST 45, where
- cost(R) is R's binary-lambda-calculus size with the single j leaf priced 0:
  each λ costs 2, each application 2, each variable occurrence with 0-based
  de Bruijn index i costs i+2; c is a free variable in the frame [c, j]
  (nearest first) so an occurrence of c under k of R's lambdas costs k+2;
- depth(j) is the number of R's lambdas above the j occurrence.

Known: R162 = λs. s (λa. a) (λu. s (λq. c) (s s u)) j has cost 42, depth 1,
w = 46 (on a variable stream s (λq. c) = c r and s s u = N because
U_m U_m reduces to K N; on Z(r), s (λa.a) = K r selects r applied to j).
R165 = (λn. λs. s (λb. b (λu r. r n) c) (s s s)) j has w = 49.
Proved: every such R has w >= 30; R needs a nonlinear binder and at least
two live binders; every two-lambda R has w >= 50; the shape s (λa.a) A j
forces A to be the 46 family; the handler shape λs. s H j costs >= 53;
depth >= 5 forces w >= 46. Redexes, lets and duplication of j through a
redex are allowed.

Give your best candidates (term, your weight computation, and the reductions
on Z(r) and U_1, U_2), or an argument why 46 is optimal. Unconventional
shapes are the point: application-rooted R, three or more lambdas used as
selectors, the hole duplicated by a redex, R that obtains c r and N from
one shared subterm.
