# Arch lane — first-principles phase

2026-10-21. Read BRIEF.md first. These designs were recorded BEFORE reading
interpreter.md section 6 or class-bound.md section 5. Handwritten pricing;
not lower bounds over other implementations. Contract is exact beta equality
for every closed source program, arbitrary rigid continuation and suffix.

## A. Smaller Scott environment cell, transpose lookup

Canonical cell is `\\zx zy. zx arg (zy args)` (24 bits in the given frame).
The ordinary Scott cell `\\q. q arg args` costs 15 in frame `[arg,args]`:
L=1, A=2, variable indices 0,1,2. Nominal gain 9 bits per interpreter.
But raw unary remainder `r` applied to that cell computes
`b arg args r'`, whose zero case is `arg r'`, not `arg`, and whose one case
is `args r'`, not `r' args`. Thus the small cell needs both zero absorption
and a transpose/lookup adaptation, not just a cheaper variable encoder.
A partially adapted cell `\\b. b (\\u.arg) args` is 19 bits (indices 0,2,2;
L=2,A=2), but still has the transpose mismatch. Wrapping it as
`\\r. r (\\b. b (\\u.arg) args)` gives a genuine stream-consuming
lookup environment, 26 bits, and requires variables `\\env.env r`.
Paper price: >= canonical +2 for the cell before variable adapter. Reject
this literal orientation; investigate whether parser/env orientation can
supply the transpose at no extra application.

## B. Move second-bit selection before the first parse

Replace `p (\\e. b ABS(e) APP(e))` by
`p (b (\\e.ABS(e)) (\\e.APP(e)))`.
The two e binders replace one: +2 bits. b moves outward one level: -1.
Every other reference retains its relative binder depth, and application
count is unchanged. Paper price: 163 versus 162. This gives an alternate
location for a cross-branch abstraction optimization, not itself a gain.
Write and polish if records have not already exhausted this exact form.

## C. Joint continuation dispatch for second parse

Factor branch operators as `b c p` and share a branch payload:
`p (\\e. (b c p) (b (Abs e) (\\f.c(App e f))))`.
For zero this is c(Abs e), for one p(\\f.c(App e f)). Compared to canonical:
remove one c occurrence (its depth+2 bits), add one b occurrence, one
application, and change c/p depths. But b becomes duplicated and the
payload has both constructors, so potential saving is at most a few bits.
Exact initial tree count to follow; this design deliberately breaks the
canonical NEXT's one second-bit occurrence. It may admit a let that
simultaneously shares c and p rather than separately optimizing the arms.

## D. Always parse a second operand, fake a variable for abstraction

One common second-parse continuation would share c and application lifting.
But ABS requires injecting virtual code `10` before its unchanged suffix.
`cons F (cons K r)` as a literal Scott stream introduces at least 2 lambdas,
4 applications, and the F/K constants (6 bits each), already >30 bits
before branch selection. Even eliminating a complete duplicated c reference
and bit dispatch does not repay this. A stream-consumer object with the
same protocol might be cheaper than literal bits; no complete cheap object
is yet derived. Reject literal synthetic-code form.

## E. Merge parser knot with unary `s s`

The reader's stream self-application does real recursion without a parser
knot: `U_n(N) U_n(N) =beta K N`. This works because a stream cell supplies
its own tail as the algorithm argument. To generalize to nested program
syntax, the tail must retain a dispatcher after each 00/01 constructor,
whereas zero consumes the algorithm argument and returns `K r`.
Simply replacing `(x x)` by `(s s)` destroys the parser after a zero.
Paper budget: eliminating knot+let could release 22 bits, but any explicit
self-passed dispatcher needs at least its binder, argument application and
variable at each recursive call (two calls, >=12 bits), plus entry setup
and extra depths. No complete candidate yet. Need an exact recurrence that
uses supplied tails as dispatcher state, not a renamed fixpoint.

## F. Return the variable's stream cell directly as a paired result

Variable already contains both its value r and suffix (via `s s`), so make
parse return one object interpreted by a continuation instead of `c r N`.
Ordinary CPS/Scott pairing has no gain: `\\c.c value rest` costs a lambda,
two applications, and a c occurrence beyond the two result arguments.
Potential only if continuations can consume the original variable cell s
while constructed nonvariables obey the same protocol. Root continuation
is rigid, so an external adapter must recover both value and suffix there.
Paper budget: possible removal of V's 28 bits; paired constructor + adapter
must cost <28 including extra references in both ABS and APP. No complete
candidate. Distinct from merely swapping p's argument order.

No claim of impossibility, exhaustive coverage, or sub-162 construction.

## Reconciliation after reading the variant record

Read interpreter.md section 6, class-bound.md section 5, and current STATUS.
A is covered by the Scott/functional-environment rows; do not reimplement.
Correction to A's intermediate price: `\\b.b (\\u.arg) args` is 18 bits,
not 19 (X=4). Its 26-bit stream-consuming wrapper price was correct.
D overlaps the optional-second-parse/no-input and constant-stream families.
E overlaps self-passed context and reader-carried knot; no new recurrence
has been found, so these are discarded as proposals, retained as reasoning.
F overlaps pair-return and values-carry-suffix variants. A surviving variant
would need a non-pair common protocol, for which no candidate is yet known.
C overlaps the `bit1 cont intL` common branch operator row. Correction:
this literal factorization does NOT remove a c occurrence; it moves one
c and one p one binder level toward the root. It adds one application and
one occurrence of b. Measure once to establish its exact 162-based cost.
B may differ from the older "before first parse" row: it factors p outside
the Boolean, `p (b (lambda e.A) (lambda e.B))`, rather than duplicating p.
Written candidate before_parse.lam is exactly 163 bits and battery passes
`163 bits ok=667 skip=1 fail=0`. Polishing is running at two threads, with
115s hard lane limit and 110s per subprocess. The provided battery's CLI
uses ten workers, so check.py invokes its same check() with threads=2;
polish.py is imported with that battery wrapper and the frozen lane binary.

B is a rediscovery, not new: reasoning_floor/golf162-claude/REPORT.md records
exactly c163_selectfirst.lam and its 163/163 optimization results. My two
runs also give 163, and both optimized encodings battery-pass. C's literal
version is 167/167 with `ok=667 skip=1 fail=0`; the older common-head form
further shares a lambda and is 166 on the 162. No gain from either.

## G. One recursive parse site via a continuation carrier

A tail-recursive pushdown parser could replace the two source occurrences
of p by one loop and a stack of pending application operands. However,
returning to the loop requires either an explicit tagged stack/frame or
passing p to the continuation. A literal continuation-carrier protocol
changes return `c e r` to `c p e r`. Even before its public adapter this
adds one application at VAR, ABS and APP (>=12 bits in the size identity),
one binder at each internal callback (>=4), and a p occurrence at each
return, to save only the old second recursive call head (6 bits at its
current depth). This is the existing recursor-through-continuations family;
no complete candidate merits construction.

## H. Use the closure's environment slot as the recursion carrier

Unlike G, try to obtain the recursive parser from the first child's value
without an explicit third continuation argument: every value already has
an environment slot, unused at the root for closed programs. This needs a
single environment H and observer D with D (eval(M,H)) = p for all first
children M, while retaining M's ordinary value for later APP use. Without
new tagging this is not a uniform observation: lambda bodies expose genuine
arbitrary host functions, and applying a value to H destroys rather than
preserves its representation. A domain in which every value is a fixed
point under application (a Scott D-infinity top) carries no finite exposed
parser. Adding a value tag recreates the generator-carrying-value variants.
Status: no complete recurrence or finite price. Do not call it an exclusion.

## I. Carry the skip thunk and its forcing token through returns

This is a concrete protocol different from merely replacing N by K N:
parse returns THREE arguments `(value, K suffix, token)`, and the token is
the already pending NEXT operand. All complete source terms end in a
variable, so constructor returns can forward the leaf's existing thunk and
token; they need not allocate a new K wrapper.

Let A(e)=lambda env arg.e(cell arg env), B(e,f)=lambda env.e env(f env).
The recursive parser is

    P c s = s I (s (lambda q.c) (s s))
      (lambda b.P (lambda e.b
        (c A(e))
        (lambda t u.P (lambda f.c B(e,f)) (t u)))).

For unary s, the reader is `c r (K N) NEXT`, exactly the desired triple.
For ABS, the callback `c A(e)` forwards t,u by eta without any code. For
APP, `(lambda t u.P (lambda f.c B(e,f)) (t u)) t u` forces the left
child's tail and parses its right child; that child's triple is forwarded.
The public boundary is `lambda C.P (lambda e t u.C e (t u))`.

Paper price against 162: V is 18 rather than 28 (-10); the APP adapter
`lambda t u.p k (t u)` rather than `p k` adds two lambdas (4), two
applications (4), two new variable occurrences of costs 3+2 (5), and two
levels on each of p,c,e (6), total +19. The public adapter adds 30.
Total 201 bits. This is a sound recurrence by structural induction, but
it loses by 39 bits before optimization. It is related to the old thunked
remainder family, with explicit NEXT-token forwarding instead of repeated
forcing constants. It does not merit an interpreter battery solely as a
record attempt. A single symbolic price/branch check can verify the
accounting without searching.

## J. Share cell/continuation representation

Use C = lambda a e b r.b a(r e) for both environment cells and parse-stack
frames. C costs 28 closed bits. An application lift can indeed be obtained
as `lambda env.C env env f g`, because C env env f g = f env(g env).
But this lift costs 28 in the proposed shared frame versus 19 inline;
the cell use saves only about 8 bits, and C's 28-bit definition and its
let overhead are additional. A shared parse frame C e c cannot itself be
an APP callback: applied to f it gives `lambda r.f e(r c)`, treating f as
a selector, while the needed callback is `c (lambda env.e env(f env))`.
Repair requires a value/continuation decoder. This is the established
shared-skeleton/cell-APP-alias obstruction, not a new construction.

## K. Off-domain parser re-entry as a continuation transformer

For the canonical parser P, P k I = k. Consequently, with
Q_c = lambda b.P(lambda e.b(c A(e))(P(lambda f.c B(e,f)))),

    Q_c K I = lambda e.c A(e)
    Q_c F I = lambda e.P(lambda f.c B(e,f)).

Thus NEXT can expose the two callback shapes through off-domain I. This
would allow callbacks to be encoded by Q_c plus a mode, but the literal
replacements add Q's reference and three applications rather than removing
the parser occurrence. Q itself must still be defined recursively; the
identity does not create a knot for free. It overlaps the reset and
self-passing-NEXT families. No claim of a fresh architecture.

Final validation: I was built as a protocol/accounting check despite its
rejected price. thunk_token.lam is 201 bits, `ok=667 skip=1 fail=0`, and
polish.py's two-cut run stays 201 (2.301s). fixed_checks.py checked all three
size identities, nine divergent-source suffix projections, and four unary
thunk projections in 0.114s. REPORT.md contains the structural proof and
all design prices. No sub-162, new lower bound, or optimality result.

Final price correction for J: the earlier 28-bit literal lift used an
unspecified shared frame. In the cheapest frame [g,f,C],
`lambda env.C env env f g` is 26 bits (L=1,A=4,X=6). A literal cell use
`C arg args` costs 13 in [arg,args,C]. Even these generous placements
charge 28+4+13+26=71 for definition, let, and uses, versus 24+19=43 inline.
Actual outer let placement adds further index depth. This is a template
price only, not a general exclusion of shared cell/application semantics.

# Coordinator follow-up: token-to-action equations (before pricing/building)

Let P be the 171-bit core (three-result protocol), and define

  Q_k = lambda b.P(lambda e.b
          (k A(e))
          (lambda t u.P(lambda f.k B(e,f))(t u))).

For a first child M parsed with callback k, its returned token is
Q_{L_M(k)}, where L_M(k) is the callback installed at the final variable
leaf, not k itself. At an APP parent with continuation c, its callback is

  W_c = lambda e t u.P(lambda f.c B(e,f))(t u).

The desired token-to-action equation is therefore

  D c e t Q_{L_M(W_c)}
    =beta P(lambda f.c B(e,f))(t Q_{L_M(W_c)}).

Here D must not contain another free P occurrence if it is to remove that
recursive reference. For arbitrary child M, the leaf callback may contain
unbounded ABS/right-APP composition. Simple NEXT reuse has to remove those
compositions or ignore the callback entirely.

## F1. Correct reset for the THREE-result parser

The old canonical law P k I=k does NOT hold here: it is P k I=k Q_k.
A reset does exist:

  J = lambda h x.h(lambda y.x)        (14 bits)
  J I = K
  J (K k) = K k.

Consequently the three-result reader gives
P k J = (J I) ((J(K k))(J J)) Q_k = K k Q_k = k.
Thus Q_c F J = W_c, and Q_c K J = lambda e.c A(e).
These are handwritten exact identities, pending a small symbolic check.
They fix the reset but not the callback mismatch. Replacing W_c by
`u F J` when u=Q_{L_M(W_c)} selects W_{L_M(W_c)}, not W_c.
Moreover, replacing the entire sole APP branch by its own Q re-entry would
remove the only B constructor from the definition and create a circular
specification, not an implementation. The application builder must remain
somewhere in a concrete design.

## F2. Callback-independent parser-exposure mode

A concrete way around the mismatch: enrich Q so a third selector extracts
P, while K/F still perform constructor parsing. Let T3=lambda a b d.d,
8 bits. Set

  Q_k = lambda b.b
          (lambda q.q(lambda e.k A(e)))
          (lambda q.q(lambda e t u.(u T3)(lambda f.k B(e,f))(t u)))
          P.

Then Q_k T3 = P for EVERY k, even an arbitrarily deep leaf callback.
The new APP equation is

  D c e t u = (u T3)(lambda f.c B(e,f))(t u).

For u=Q_{L_M(W_c)}, this is exactly the required second parse. Q now has
only one free P occurrence. It can use an unshared single-site fixed-point
knot; price that saving as part of the complete protocol, not separately.
No complete interpreter will be built unless its paper price is <170.

## F3. Prices and a cheaper parser-token discipline (paper)

F2 adds 6 lambdas, 3 applications, and changes X by -5 against the
171-bit core: +12+12-5=19. The resulting core is 190 with the old let knot.
Its sole recursive reference is at depth 3, so removing that now-unhelpful
let saves 3: core 187, plus the old public adapter 30 =217.

An alternative uses a stream-dependent last operand
`(s K) Q_c P`, returning P on variables and Q_c on constructors. Relative
to 171, the extra selector costs 18 and replacing deep p by local u in APP
saves 6. Core 183; public adapter 30; total 213. It keeps two free P sites.

A FOUR-operand reader avoids the new selector entirely and improves the
public decoder by returning a raw suffix rather than its thunk:

  P c s = s I (lambda v.s(lambda q.c)(s s v)) Q_c P
  Q_c = lambda b t d.d (lambda e.b
          (c A(e))
          (lambda n u.u(lambda f.c B(e,f)) n)) t
  E C = P(lambda e n u.C e n).

On a variable, V consumes Q_c and the fourth operand supplies P, yielding
`c r N P`. On a constructor, Q_c consumes b,t and the fourth operand d=P;
it parses the first child using d. ABS forwards n,u. APP receives u=P from
the first child's final leaf and uses u for the second parse. All returned
tokens are exactly P, regardless of callback nesting. This is the desired
callback-independent token discipline, with no recursive reference in Q.

Price against the 162: V unchanged; Q is +19; extra final `P` operand +6;
old let knot total 187. P now occurs once, at depth 2; deleting its let
saves 4, giving CORE 183. The public adapter adds 26, TOTAL 209.
Against the previous 171-bit core, the core is +12; against 162, the
complete interpreter is +47. This is a concrete specialization of the
record's broad recursor-through-continuations idea, not a new family.
The otherwise identical thunk-return four-operand protocol has core 183
and a 30-bit public adapter, hence 213. Raw return wins four bits at entry.

These are counts for explicit spellings, NOT family-wide minima. No full
candidate is to be built or battery-run: all paper prices exceed 169.

## F4. Additional idea not listed as a protocol in section 6

Return a CONTINUATION TRANSFORMER for the suffix, so both APP and the public
boundary supply their action directly and the pending NEXT token becomes
that transformer's final argument. This is distinct from merely passing
K N and forcing it at each consumer, though related to the thunk family:

  T_s = lambda k u.k(s s u)
  P c s = s I (s(lambda q.c) T_s) Q_c
  Q_c = lambda b.P(lambda e.b
          (c A(e))
          (lambda T.T(P(lambda f.c B(e,f)))))
  E C = P(lambda e T.T(C e)).

Variable: `c r T_s Q_c`, with `T_s k u =beta k N` on unary s for every u.
ABS forwards T,u. APP `T(P k) u` becomes P k N. Boundary `T(C e) u`
becomes C e N. This fuses the forcing operation into the returned object.

Paper price: V=35, +7 against 162; APP adapter +9; core=178. Public
adapter +21, total=199. Relative to 171, the core is +7; relative to the
previous 201 total, it saves 2 by moving work from two consumers into one
producer. Again >169, so do NOT construct a complete candidate.

## Follow-up component checks and corrected prices

Checked five NONRECURSIVE generator fragments and 15 fixed beta identities
with the frozen Rust binary; no complete interpreter was assembled, written
as .lam/.blc, battery-run, or polished. followup_checks.py/json record the
checks (0.107s). All 15 passed.

Two paper-count corrections matter:
- K costs 7, not 6. The guard `(s K) Q P` adds 19, not 18. Its core is
  184 and total 214. Earlier report K's `Q K I` cost must likewise be 15
  plus Q's reference, whereas `Q F I` remains 14 plus the reference.
- The four-operand Q adds two binders above b's occurrence as well. Those
  two index bits were omitted in the first calculation. Q is +21 rather
  than +19; core with old let knot 189, single-site core 185, and raw-suffix
  total 211. The corresponding thunk-return version totals 215.
  This is +14 against the 171-bit core and +49 against complete 162.

Generator sizes, checked as closed nonrecursive lambda p c s bodies:
old_thunk 151; parser-exposure 170; guarded-parser 164; four-operand raw
169; suffix-transformer 158. The old let knot adds 20 beyond this generator
(the generator already includes lambda p). A single occurrence at depth d
instead uses |generator|+d+14, saving 6-d. Thus final prices are
217 / 214 / 211 / 199 for F2 / guard / four-operand raw / F4.

The unchanged token cannot equal the parent's Q even for a variable child:
its callback is W_c, so the token is Q_{W_c}. Applying the reset probe
`K J V` gives W_c A(V), a two-argument lambda, while Q_c under the same
probe gives c A(V), headed by rigid c. Their head normal forms differ.
This is a handwritten nonconvertibility argument for the CURRENT protocol,
not an impossibility theorem for enriched continuations or arbitrary tokens.
