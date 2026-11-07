# escape lane notes (Claude, round 4)

Read: PROMPT, BRIEF, class-bound.md, interpreter.md s2/s6, refute46 REPORT.
Tools: refute46/rd.py (named terms, rigid free vars) for identities;
battery.py / polish.py for complete interpreters.

## 0. Bookkeeping of the 162's interface tax
reader `\s. s I V j`: lam s 2, three apps 6, head s 2, I 4, V 28, j depth-tax 4
(NEXT's four free c/p leaves, +1 each per reader lambda above j) = 46.
V = 22-bit core `s (\q.c) (s s s)` + 6-bit absorber (`\u`, +1 on 3 s and c).
The 28-bit reader `\s. s (\b. b (s s) c) j` (w 32) returns `c r j` on
variables: 14 below 46.

## 1. Lemma A (rest rigidity at the root body continuation) -- handwritten
Canonical values: Abs(f) = \e a. f (cell a e), App(f,g) = \e. f e (g e),
variable value = raw code r, cell = \zx zy. zx a (zy e).
Let v_W = value of `\y. W`, W = (\w. w w)(\w. w w). Then v_W A1 is a lambda
and v_W A1 A2 A3.. =b W A3.. (unsolvable) for all Ai: f_W E = g E (g E) and
g E =b \a. a a (variable 1's raw code selects the cell head).
**Lemma A.** Let kappa be any term whose only free variable is C, with
kappa v_W N =b C X N (rigid C, N). Then kappa x y ->b C A y (x, y fresh).
Proof. kappa x y is solvable (else its instance is). Its hnf has no leading
lambda (the instance has none). Head x: instance is v_W A' (lambda, or
unsolvable with >=2 args) -- impossible. Head y: N-headed -- impossible.
So head C with exactly 2 args, A2[v_W,N] =b N. Same case split on A2[x,y]:
x-head / C-head / leading lambda / y with args all give instances that are
not =b N, so A2[x,y] ->b y. QED.
**Corollary.** If the root lambda's body is parsed with a continuation
kappa fixed before the body is read (H2), and the run on `\x.\y.W` hands
kappa (a term =b v_W, N) (H1: canonical constructor return), then on `\x.x`
the variable arm's result T, written T'[kappa] with kappa abstract (C only
inside kappa, H3), must head-reduce to `kappa X Y` with exactly two
arguments and Y[kappa] =b N. (T' unsolvable, lambda-headed or N-headed is
impossible; kappa-headed gives C A1 X2 X3.. ; so |X| = 2, X2 =b N.)
**Consequences.** (i) `c r j` (28-bit reader, refute46) fails for every
choice of continuation code: kappa r j ->b C A j, and j is N-free.
(ii) Trailing junk after `c X N` (the 158 `C r N next`) fails at the
root body for every continuation, not only rigid C. (iii) c being a
lambda (k1/k2) buys nothing for the rest: whatever kappa is, it forwards
its second argument verbatim to C. (iv) The only thing the variable arm
may change is the value X (must act as r on cell environments).
So the prompt's Q1/Q2/Q4 escapes (continuation, value-side, lambda-c
absorption of a wrong/delayed rest) are closed unless the design breaks
H1 (non-canonical values or constructor returns that do not pass (v, N))
or H2 (NEXT reads the body's code before choosing the continuation).
Remarks on Lemma A (handwritten).
- H1 only needs: the value v handed to kappa for the body `\y.W` has v A..
  lambda-headed or unsolvable for every argument list. True for every
  evaluator-style representation (a lambda value applied to env + arg runs
  the body); fails only for values with an extra non-evaluating mode
  (code-suffix values, record: 273) or boxed/K-guarded values.
- The same argument applies to every continuation that can be last
  (inner ABS bodies, APP's second operand): each has only C free after
  closing over its program-fixed parts, and each receives (v_W, N) on a
  suitable program, so each forwards its 2nd argument verbatim. The
  APP-first continuation must receive the true remaining code outright
  (the operand's code exists only inside r).
- Value component: X must act as r on cell environments and in App lifts;
  for n >= 2 that needs r'' (the deeper code) inside X, so X is r up to
  eta; the cheapest `c X` is `s (\q.c)` (10 bits). No saving there.
- Thunked-rest protocols (a different H1 break) were priced in the record
  (202) and below in s.3.

## 2. Strengthening: the rest is N even with c abstract (handwritten)
With kappa a fresh variable, T'[kappa] ->h kappa X Y, and Y[kappa_C] =b N.
Case split on Y's hnf with kappa free: kappa-headed gives C-headed or
lambda-headed instances (kappa_C x y ->b C A y; kappa_C A1 alone is not N);
N with arguments or a leading lambda are not N. So Y ->b N as an open term:
the class's variable law holds in its rest component for EVERY reader of
every interpreter meeting H1 + H2, with c rigid. Only the value component
(X acting as r on environments) is a genuine relaxation, and it buys
nothing (s.1 remarks).
Corollary (junk). No parse result may be applied to an extra argument on
any path that can be the root body's parse: kappa_C v N Z = C A N Z. So
`s I V' j` with V' = 22-bit `s (\q.c) (s s s)` (returns c r N j) fails for
every NEXT, and `s I j V` (NEXT b2 r2 V) fails unless NEXT itself eats V.

## 3. Zero handoff (prompt Q3)
In `s I A B` the zero arm is `r A B = A b2 r2 B` and the variable arm `A B`;
by the junk corollary exactly one operand follows the variable arm, and
the zero arm makes it NEXT's head on (b2, r2): the 162's handoff is forced
in this shape and the 6-bit absorber with it (V must erase an N-free
NEXT-like operand: lambda 2 + four index bits, or K 7).
Other shapes, priced (j priced 0, tax 4 per reader lambda over j):
- `s (\b. b P c) (s s s)` frame costs 30, zero arm `P r r`:
  P = j (depth 2, tax 8) needs NEXT' = \t _. t NEXT (+2+2+2+3, +8 shifts)
  -> 30+8+17 = 55; P = \u. u j -> NEXT eats a trailing r (+19) ; P = \u. j
  (tax 12) + NEXT' = \t. t NEXT (+10) -> 56; the 165's let 49.
- `s K A B`: A = j alone gives NEXT no stream; A = j s needs
  NEXT' = \t. t F NEXT (+18).
- `s I A B C` with NEXT absorbing a third argument: NEXT' = \b t _ ...
  costs +19 (two binders, eta lost, shifts on bit1 and four free leaves).
Every zero handoff other than `r NEXT` costs more than the 10 bits of
interface tax (absorber 6 + depth 4) it could recover.
Correction to s.3: in `s I V X` the operand X may be stream-dependent (a
dual operand, NEXT on zero and N on variables, so V = `s (\q.c)` uses it);
that is the record's dual-operand family (169/172) and refute46's >= 25-bit
j/N operands. "V erases X" is forced only when X is N-free.

## 4. Families that break H1, priced (handwritten floors)
(a) Token rests: every return passes a token T with rest = T T Z (the
variable arm's own stream s works: s s Z = N; r works: r r Z = N). Saving:
V = `\u. s (\q.c) s` 19 bits (-9 vs 28); the 28-bit reader cannot be used
(its third operand j carries no N). Cost: constructor returns forward
tokens by eta (free), but each consumer must force: APP-first
`\t. intL (..) (t t t)` >= +13 (lambda 2, two apps 4, three leaves 6, plus
index shifts of intL/cont/exp) and the root (C must get N; an adapter
`\C. P (\v t. C v (t t t))` >= +20, or forcing inside every ABS and APP
return, >= +13 each). Floor: >= +26 against -9: >= 179. A parser that
accepts tokens instead needs NEXT to hand it a token for r2, and r is one
only when b2 = 0 (r r Z = r2 r2 Z when b2 = 1); building cons K r2 costs >= 12.
(b) Wrapped constructor values (v' with v' safe to apply, so kappa can
decode exp): needs a wrapper at both constructor returns (>= 4 each), an
unwrap at every value use (cell lookup, APP lift, and C must receive a
genuine lambda), and a decode in both continuation sites; the record's
K-guarded/boxed repairs measure 169-303. The rest must still be decoded
from exp in the variable case (r r t), which no evaluator value survives.
(c) Three-argument returns (value, junk, rest) or (value, rest, junk):
junk forwarded by eta accumulates at APP-first (one per leaf) or reaches
the parser's stream slot; removing it costs a binder plus shifts at each
continuation (>= +8 per site) and a root adapter.
None reaches below 162; (a) and (c) are the only "delayed remainder"
designs, and both are dominated by their forcing sites.
(d) Breaking H2 (look-ahead): with the next code known to be a variable,
a continuation k_var = \exp t. cont (Abs exp) (exp exp t) does repair
`c r j` (r r j = N). But the reader cannot know, so both parse sites in
NEXT (first parse, APP's second) need a pre-dispatch on the coming bit,
>= ~10 bits each, plus k_var at each: >= 20 + fixes against the 14 saved.
The record's measured member of this family is 177.

## 5. Checks
- int148_cjr.lam (28-bit reader `list (\b. b (list list) cont) NEXT`):
  `148 bits  ok=0 skip=1 fail=667` (all fuel-outs: the variable's rest j
  is parsed as a stream), as Lemma A predicts.
- Codex (astra, high) adversarial review of Lemma A: pending, thread
  escape-lemmaA, prompt lemmaA_review_prompt.md.

## 6. Codex review of Lemma A (astra, high; lemmaA_review_codex.txt)
Verdict correct-with-gap. Lemma A itself correct (phrase m <= 1 as "has a
leading abstraction"). Gaps, all accepted:
- FV(kappa_C) within {C} must be an explicit hypothesis (H0): a
  continuation that captured the input suffix (kappa = \v t. C (Abs v) N)
  passes the v_W test and accepts `kappa r j`. Realizing that needs a
  stream-capturing NEXT (the record's "NEXT uses the stream" family).
- H3 is an interface hypothesis, not automatic for a closed parser: C can
  be routed to a body worker through a second channel (semantic
  counterdesign, not small).
- (i)/(ii) hold for returns that are direct calls of the parse's own
  continuation (the 28-bit reader's `c r j` is one). Wrappers built in the
  reader (c' = \v n z. c v n, or \v _. c v N after finding N) escape the
  wording but are class members with ordinary absorbers.
- (iii) was overstated: the argument forces the rest at the root body for
  the actual run (actual NEXT, c abstract), not the rigid law with j rigid
  for every n. Every n needs a uniform-interface hypothesis per depth (H4).
Thread: escape-lemmaA. REPORT amended.

## 7. Pricing check, measured
int_zero_rr.lam: reader `\s. s (\b. b (\t w. t NEXT) c) (s s s)`, the (r, r)
handoff with NEXT eating the duplicate: `171 bits  ok=667 skip=1 fail=0`,
letopt 166 (both `--max-cuts 3` and `--no-inline --max-cuts 2`). Written
size matches the paper price 116 + 55 = 171 exactly.

## 8. Close
REPORT.md written (amended for the Codex gaps). No stray processes of
this lane (the running gaslamp jobs are r4-arch and r4-close46, other lanes).

# Part II -- deriving the class's laws from the contract (coordinator follow-up)

## 9. Setting and hypothesis menu
Sep (syntactic): E = T[H], H = \p c. R[Q/j], T an opaque knot, FV(R) in
{c, j}, FV(Q) in {c, p}. P := the knot's parser, so P c s =b R[Q_c/j] s with
Q_c = Q[P/p]. H is closed, so C reaches any parse only through c: Codex's
H3 counterdesign (C routed by a second channel) is excluded by Sep itself.
Control hypotheses (control flow, assumed; data flow is then derived):
- C1: with p, c, t rigid, Q K t ->h p kA t and Q F t ->h p kF t, kA/kF t-free
  (NEXT hands the stream it received to the parser, once; continuation
  built before the body is read: Lemma A's H0 + H2).
- C2: with x, y rigid, kF x y ->h p k2[x] y, k2 y-free (APP parses its
  second operand from the rest it was handed).
- C3: kA x y and k2 z w head-reduce to c-headed terms (they return).
Return/representation hypotheses:
- RET: the parse of a probe body `\y.W` hands its continuation exactly two
  arguments (value, rest), the rest being the stream after its code.
- VAL: that value, applied to any arguments, is lambda-headed or
  unsolvable (evaluator-style).
Zero-arm hypothesis (actual form): Z: R[Q_c/j] (cons K (cons b r)) ->b Q_c b r.

## 10. Re-separation lemma (exact bookkeeping; handwritten)
If Q = A[Q0/h] with FV(A) in {c, h} and h once, then H = \p c. R'[Q0/j] with
R' = R[A[j/h]/j]; cost(R') = cost(R) + cost(A) and depth_R'(j) = depth_R(j)
+ depth_A(h), so 24 + |R[Q/j]| = 116 + w(R') whenever |Q0| = 92 in frame
[c, p] (Q0 canonical). The boundary between R and Q is a choice.
(b), first half: the class's zero law `R Z(r) = r j` is NOT a property of E.
Counterexample: int_zero_rr.lam split two ways --
  R1 = \s. s (\b. b (\t w. t j) c) (s s s), Q = canonical : R1 Z(r) = r j;
  R2 = \s. s (\b. b j c) (s s s), Q2 = \t w. t Q      : R2 Z(r) = j r r.
Same term, same 171 bits, one split meets the zero law and one does not.
So a "116 + w over all handoffs" statement holds for free for every
factoring split (NEXT = A[Q0], A p-free, one hole): w is computed on R'.
What the contract can constrain is only the composite zero branch; the
boundary-free form is C1 applied to the composite:
  R[Q_c/j] (cons K (cons b2 r2)) ->b P k_{b2}[c] r2.
Not covered: non-factoring splits (no subterm is a canonical-law NEXT as a
function of the handoff, e.g. the b2 dispatch interleaved with the
reader's own dispatch); the record's members of that kind ("read both
tag bits", 193) are far above 162. Open in general.

## 11. Theorem B: data flow of NEXT from the contract (handwritten)
Generalized Lemma A (same proof): if kappa has free variables C and value
slots x1..xm, and kappa v_W..v_W v_W N =b C X N (every slot a probe value),
then kappa x1..xm z w ->b C A w. (Heads x_i, z excluded by VAL; w by
rigidity; C forced with two arguments; the second reduces to w.)
Under Sep, Z, C1, C2, RET (values closed: no N, no continuation), VAL:
(B1) ABS. Program `\x.\y.W`: Z then C1 give P kA[C] (<\y.W> ++ N), RET+VAL
  give kA[C] v_W N =b C (..) N. Lemma A: kA x y ->b c A_K[x,y] y, c rigid,
  p := P. C3 is not needed: Lemma A derives the returning head.
(B2) APP second. Program `(\y.W)(\y.W)`: Z, C1, RET, C2, RET give
  k2[C, v_W] v_W N =b C (..) N; generalized Lemma A with slot x:
  k2[x] z w ->b c A_2[x,z,w] w for x abstract.
(B3) APP first: C2 itself. Not derivable: kF x y may head on y (read the
  second operand's code itself) or return C (P k y) .. (direct style);
  both are legal control flows.
So Q_P K t =b P kA t and Q_P F t =b P kF t with the class's shapes
  kA =~ \f. c Abs'(f),  kF x y ->h P k2[x] y,  k2[f] =~ \g. c App'(f,g)
(=~: equal after eta on the rest argument), i.e. the canonical branch laws
up to (i) eta, (ii) the value constructors Abs' = A_K, App' = A_2 (which
may carry the rest only in erased positions on the probes), (iii) p := P
actual: the rigid-p form is NOT forced (kA may call p and get the same
behaviour with the real parser), the same gap as rigid-j vs actual-NEXT.
Counterexamples showing each remaining hypothesis is needed (semantic):
- C1/C2: a double-parse (direct-style) NEXT, Q K t = c (p (\f r. Abs f) t)
  (p (\f r. r) t): correct, violates the branch law (two parses of t).
- RET: three-argument or rest-first protocols (record 214, 3-arg junk).
- VAL: boxed values whose application is the return (record 265/303).
- values capturing N (code-suffix values, record 273) break Lemma A's H0.

## 12. (a) The variable law, law by law (handwritten)
- Rest, every n: program `\x1..xn. x1` (code U_n). By Z + C1 at each lambda
  the innermost body continuation is kappa_n = kA^n[C], free in C only;
  the probe `\x1..xn.\y.W` gives kappa_n v_W N =b C X N; so Lemma A's
  corollary gives: the variable arm on U_n(N) reduces to kappa X Y, Y ->b N,
  for every n >= 1, with c abstract (rigid) and j := actual NEXT.
  APP-second variables: via (B2) the rest is forwarded verbatim up the
  chain to C, so again Y =b N. APP-first variables: C2 parses Y, so Y is
  forced only up to stream equivalence (e.g. \f. N f also works).
- Value: with Abs' canonical, `\x.x` forces X (cell a e) =b a, and in
  general X must act as U_(n-1) on cell environments. Not forced =b:
  int_eta_value.lam (below) returns c (\e. r e) N and passes. Uniformity
  in n makes every working X contain r in head position (no fixed term can
  rebuild 1^(n-1)0 for all n), so any X not =b r is an eta-variant of r and
  costs >= 6 more than the free `s (\q.c)` route: the relaxation cannot
  make a reader cheaper (handwritten, argued, not exhaustive).

## 13. Counterexample interpreters (battery-checked)
- int_eta_value.lam: the 162 with V = `\u. s (\b r. c (\e. r e)) (s s u)`,
  returning c (\e. r e) N: `176 bits  ok=667 skip=1 fail=0`. Meets the
  contract, violates the class's variable law (=b), so its value part is
  not forced. Priced +14 on paper, measured +14.
- int_double_parse.lam: the 162's reader with a direct-style NEXT
  `\b t. b (c ABS(p K t) (p F t)) ((\r1. c APP(p K t, p K r1) (p F r1)) (p F t))`
  (each operand parsed once for its value, continuation K, and once for
  its rest, continuation F): `265 bits  ok=667 skip=1 fail=0`. Meets the
  contract; violates C1 and both canonical branch laws (Q K t is c-headed,
  not a single p-call). So the control hypotheses C1/C2 are genuine.

## 14. (d) rigid j versus actual NEXT
Premise check (computer, refute46 rd.py, rigid j and c, n = 1..3,
dcheck.py): the record's dual-operand readers all meet the RIGID laws --
`s I (s (\q.c)) (s (\b. b (\u.j) (s s)))` w 58 (d 3), the 172
tail_preserving_dual `s (\b. b I c) (s (\b. b (b j) (s s)))` w 56 (d 2),
the 176 `s I (\u. u (s s u)) (s (\b. b (\u.j) c))` w 62 (d 3), the 169
`s I (s (\q.c)) (s K j (s s s))` w 53 (d 1). They are class members
(116 + w, less hoisting: 172 / 172 / 176 / 169). So they do not exhibit
a rigid/actual gap; class-bound.md s5 files them under "reader laws only
for the actual NEXT", which is inaccurate.
A genuine actual-only identity (computer-checked, skipper.py, the 162's
own NEXT with rigid c, N): NEXT_c (\x y z. z) U_k(N) ->b N for k = 1, 2, 3
(the parser used as a skipper: the variable law returns (U_(k-1), N) to
kappa = \e. (\x y z. z) .. , which keeps the rest); for k = 0 the whnf is
N-headed (U_0 = cons K N is parsed as a constructor and N as its tag).
With j rigid the same term is j-headed. So the gap is real for n >= 2.
Why it cannot pay (handwritten, argued): in the variable arm at n = 1 the
streams at hand are s = U_1(N), r = U_0(N), N and constructed cells. A
contracted j-call parses one of them: s re-enters the same variable arm
on the same stream (each level makes the same call: no hnf), r and N make
the result N-headed (misparse), a constructed code costs a cell (>= 10)
plus a valid code. So at n = 1 every j-call on the head path fails and
the surviving j-occurrences are erased, which is rigid-law behaviour. The
arm must therefore compute N at n = 1 without j, and every such
computation (`s s X`, refute46's >= 10 in frame) is uniform in n
(s s X = N for every unary code). Using the skipper for n >= 2 then needs
a length dispatch and duplicates work: dead weight. Conclusion: the
rigid/actual gap in the variable law costs >= 0 and saves nothing; at
n = 1 the actual law implies the rigid law up to constructed-code
readers. Gap left open: the constructed-code case is priced, not
enumerated; the zero law's rigid/actual gap is not treated.
Tightening of the n = 1 regress (handwritten): suppose the arm needs a
j-call j A s whose result matters (it supplies N or the value). The inner
parse P kappa_A s runs the same reader on the same stream; its outputs are
kappa_A X' Y', i.e. A (c' ABS(X')) (P (..)) Y'. Of these, the only possible
source of N (or of r's tail) is Y', the inner instance of the very
computation being defined, because c' ABS(X') is c'-headed and P (..)
awaits a stream; A cannot take N from its own body without making the
call dead weight. So the needed term is defined only through an infinite
descent: no normal form. This holds whether the j-call is on the head
path or inside an argument of c.
(waiting on Codex review: thread escape-derive, derive_review_prompt.md)
Checks of the regress (battery):
- int_skip_s.lam, arm `\u. s (\q.c) (u (\x y z. z) s)` (N from the skipper
  on s): `167 bits  ok=0 skip=1 fail=667`, all fuel-outs (infinite descent).
- int_skip_r.lam, arm `\u. s (\q.c) (u (\x y z. z) (s F))` (skipper on r):
  `175 bits  ok=0 skip=1 fail=667`, even for `\x.\y.x` (index 2): the inner
  parse of r runs the same arm, whose own skipper bottoms out at U_0(N) and
  misparses N. So the skipper identity of skipper.py holds only because
  the 162's arm computes N without j; a reader cannot lean on it at any n.
Constructed-code loophole, priced: a j-call that returns N without
regress must parse a code whose parse terminates without the arm itself
at n = 1, i.e. a code for a closed term followed by N; the shortest is
`\x.x` = 0010, four hand-built cells (each `\f. f b t` >= 13 bits with the
bit) -- >= 50 bits, far above the 6-bit absorber. A rebuilt `cons F r` is
=b s and regresses. So at n = 1 every useful source of N is j-free.
Refinement: a constructed closed code contains variables, so its parse
runs the same arm again; it terminates only if the arm is j-free at those
lengths, i.e. the arm must already own a j-free N computation for some n,
and every unary N extraction that is cheap (`s s X`, `r r X`) is uniform
in n. So the loophole is a length dispatch plus >= 50 bits of cells: dead.
Polish: int_eta_value 176 -> 176; int_double_parse 265 -> 241 (letopt
--max-cuts 2). Both are counterexamples, not contenders.
- int_rigid_p_gap.lam: ABS returns through the real parser,
  kA = \f t. p (\v r. c Abs(f) r) (cons F (cons K t)) -- the variable law
  turns the fake code `10 ++ t` into (U_0(t), t), a no-op skip:
  `222 bits  ok=667 skip=1 fail=0`. C1 holds (Q K t ->h p kA t), but kA x y is p-headed
  with p rigid, so the rigid-p ABS law fails while Theorem B's actual-P law
  (kA x y ->b c Abs(x) y with p := P) holds.
  Concrete witness for "rigid-p form not forced".

## 15. Boundary-free restatement
Theorem B and the variable rest only use Z + C1 through their composite:
C1*: P c (0 b ++ r) ->b P k_b[c] r (k_b from c, P only); C2*: k_F x y ->h
P k2[x] y. So the derivations hold for any single-parser recursion; the
split matters only for the 116 + w accounting (Lemma R).

## 16. Zero-arm rigid/actual gap (handwritten, argued)
With the actual NEXT (header `\bit1. P (\exp. bit1 . .)`, which parses its
second argument and uses its first only as a two-argument selector), the
zero branch must hand NEXT some (X, Y) with X acting as b2 on two
arguments and Y parsing as r2 (no trailing operand, by the junk corollary
at the root). The rigid law `r j` (r rigid) is the free instance:
r supplies (b2, r2) by its own application. Every other instance --
`j (r K) (r F)`, `r (\b t. j b t)`, or eta/selector variants of b2 and r2 --
is not =b r j with r rigid, yet costs strictly more (r K, r F, extra
binders). So the zero arm's gap is also real but cannot pay (argued, not
exhaustive; NEXT designs whose header uses its arguments differently are
the factoring/non-factoring question of 5.4).

## 17. Codex review of Part II (astra, high, fresh thread escape-derive;
derive_review_codex.txt) -- accepted corrections
- Item 1 (generalized Lemma A): correct (every slot instance must satisfy
  VAL; "leading abstraction" wording).
- Theorem B: B1/B2 correct; the derived form keeps the rest:
  kA x y ->b C A_K[x,y] y, k2[x] z w ->b C A_2[x,z,w] w. No eta to
  rest-free constructors without a separate rest-independence theorem.
  B3 correct, but the double-parse example violates C1 too, so it does not
  show C2 is independent; needed: an interpreter keeping C1 and breaking C2.
- int_eta_value is NOT a counterexample: r = \f. f b t is a lambda, so
  \e. r e ->b r. My error. The value-part claim needs a real witness.
- Re-separation: identity right, but cost(R') = cost(R) + cost(A) is false
  in the frame convention (A's free c leaves shift by the reader binders
  above j: + d * #c(A)); argue from identical expanded trees instead, and
  state "exactly one source occurrence of j".
- 6(a), 6(b) correct (skipper for every k >= 1: Q_c J =b P F).
- 6(c) BROKEN. Codex's R* = \s. s I (\u. s (\b r. c (r (\d t. d (\f. f K
  (u J s)) r))) (s s u)) j: its j-call parses the original s with
  continuation J, the inner arm returns F X' N (X' holding the recursion is
  discarded), so Q_c J s ->b N and the n = 1 value is cons K N = U_0(N):
  actual law holds for every n, rigid law fails at n = 1. Also (s F) F is a
  j-free N at n = 1 that is not uniform. So "the gap cannot pay" is
  unproved; w(R*) = 112, no size threat.

## 18. Replacement witnesses (battery)
- int_value_junk.lam: arm `\u. s (\b0 r. c (r (\b t. b (cons K u) r))) (s s u)`;
  at n = 1 the value is cons K NEXT (junk tail), selector-equal to U_0(N),
  not =b it even with the actual NEXT; n >= 2 returns r.
  `208 bits  ok=667 skip=1 fail=0`; rd.py rigid check: "unary law n=1
  FAILS: c (\f. f (\x y. x) j) N". Value part of the variable law not forced.
- int_c2_direct.lam: Q keeps C1 (Q F t = p kF t) but
  kF = \exp t. c (\args. exp args (p K t args)) (p F t) returns at once and
  parses the second operand twice: `194 bits  ok=667 skip=1 fail=0`.
  C2 is independent of C1 + RET + VAL (rigid and actual forms both fail).
- int_rstar.lam: Codex's R* as a full interpreter: `228 bits  ok=667
  skip=1 fail=0`. Actual variable law for all n, rigid law fails at n = 1:
  the rigid/actual transfer of s.14 is refuted; the price question is open.

## 19. Lean: generalized Lemma A kernel-checked
Slots.lean = tmp/round4/probelean/Probe.lean (Codex lane, 921 lines, Lemma A
kernel-checked) + 70 lines of mine (slots_ext.lean.part):
- reflect_remainder_k: rest at any index k >= 1 reflects through a blind slot;
- lemmaA_context_k: Lemma A with the rest at index k;
- lemmaA_two_slots: t (C=0, x=1, z=2, w=3), both value slots filled by blind
  probes, joins C X N  =>  t ->b C A w. This is B2's generalized lemma
  (k2[x] z w with x abstract); lemmaA_context_k is the inductive step for
  any number of slots.
`LEAN_PATH=... lean -j2 Slots.lean`: exit 0, no error/sorry (Slots.log);
axioms propext, Classical.choice, Quot.sound. B1 is the library's lemmaA;
the variable rest at every n is its probe_two_argument_corollary applied to
kappa_n. The hypothesis plumbing (Z, C1, C2, RET giving those instances)
stays handwritten.

## 20. Close (Part II)
REPORT.md section 5 written and amended for the escape-derive review.
int_eta_value.lam relabelled as not a counterexample. No stray processes.
