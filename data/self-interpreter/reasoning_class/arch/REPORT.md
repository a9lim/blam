# Arch lane result

**No sub-162 interpreter found. No new lower bound or optimality theorem.**
The near-record constructions rediscover known dispatch rearrangements.
A concrete return protocol passes the exact battery at 201 bits: it carries
the skip thunk and the already pending NEXT operand as a pair of trailing
arguments, forwarding them through abstraction returns. The variable arm
saves ten bits; APP and the public decoder more than repay the saving.

All files written are in this directory. NOTES.md records the first-principles
phase before the variant tables were read, including subsequently corrected
paper arithmetic. No sweep, external consult, subagent, or Lean build ran.

## Complete constructions

| Source | Written | Polished | Exact battery line | Status / idea |
|---|---:|---:|---|---|
| before_parse.lam | 163 | 163 | `163 bits ok=667 skip=1 fail=0` | Select first child's callback before parsing it: `p (b KA KB)`. Rediscovery of `reasoning_floor/golf162-claude/c163_selectfirst.lam`. |
| joint_dispatch.lam | 167 | 167 | `167 bits ok=667 skip=1 fail=0` | Factor the return/parse head as `b c p`, with a second b selecting its payload. Related known common-head variant is better, at 166 on this reader. |
| thunk_token.lam | 201 | 201 | `201 bits ok=667 skip=1 fail=0` | Return value, suffix thunk, and NEXT token; force at APP or the public boundary. A variant of the recorded thunked-remainder architecture, not a new architecture family. |

The matching `.blc` files are the as-written encodings. Logs are
`before_parse.log`, `joint_dispatch.log`, `thunk_token.log`.
The finite battery does not by itself establish the universal contract.

Polishing invokes the repository's `polish.py`: three cuts plus no-inline
two cuts for 163/167, and its prescribed two cuts for 201. These are the
minimum sizes reported by those runs, not a claim over arbitrary semantic
rewrites. `check.py` imports that tool and substitutes the same repository
battery with `threads=2`; the original battery CLI defaults to ten workers.
A frozen lane binary and time limits of 110s per subprocess / 115s overall
keep the run within the brief. Complete polish runs took 12.311s, 8.645s,
and 2.301s respectively; all completed.

`fixed_checks.json` independently recounts the encodings:

| Term | L | A | X | 2L + 4A + 2 + X |
|---|---:|---:|---:|---:|
| before_parse | 17 | 24 | 31 | 163 |
| joint_dispatch | 16 | 25 | 33 | 167 |
| thunk_token | 21 | 29 | 41 | 201 |
| thunk_token's recursive core | 17 | 25 | 35 | 171 |

For each complete interpreter, fixed_checks.py also checks exact suffix
projection on Omega, lambda z.Omega, and Omega Omega: nine passes. These
probes select the suffix with F, so they establish that projection only,
not full equality of divergent values. Four additional unary probes of the
201's core (indices 1, 2, 5, 17) return exactly K N. These are fixed symbolic
checks using the Rust normalizer, not enumeration or Lean proofs.

## Return-thunk/token protocol and its proof

Write `cell a e = lambda b r.b a(r e)`,
`A(e)=lambda env arg.e(cell arg env)`, and
`B(e,f)=lambda env.e env(f env)`; these are textual abbreviations, not
additional lets. The new core obeys

```
P c s = s I (s (lambda q.c) (s s)) Q_c
Q_c   = lambda b.P (lambda e.b
          (c A(e))
          (lambda t u.P (lambda f.c B(e,f)) (t u)))
E C   = P (lambda e t u.C e (t u)).
```

The invariant is a three-argument return
`c value (K suffix) token`. The token may depend on the parse and is not
observable through this protocol; K suffix erases it. It is already
supplied by the reader's pending NEXT operand, so the variable arm needs
no explicit token binder or force application.

**Variable, handwritten all-length identity.** For
`s=U_n(N)`, n>=1, and its tail r:

```
s I = I
s (lambda q.c) = c r
s s = K N
P c s ->* c r (K N) Q_c.
```

The last skip identity follows by induction on the unary prefix; at its
zero terminator `Z_N Z_N ->* K N`, and each leading one reduces its
diagonal to its tail's diagonal. This includes an arbitrary rigid suffix.

**Abstraction.** A zero prefix selects `r Q_c`; the second tag K invokes
P on the body. If that recursive parse returns `(e,t,u)`, its callback
reduces to `c A(e) t u`. The thunk and token are forwarded without new
wrappers or explicit binders at this return.

**Application.** With second tag F, the first child's callback reduces to
`P (lambda f.c B(e,f)) (t u)`. Its invariant gives `t u =beta N_left`,
so the second child is parsed from the correct tail. That parse forwards
its own `(t',u')` to `c B(e,f) t' u'`.

Structural induction on the finite source syntax proves this parsing
invariant without evaluating the source program. The closure constructors
and raw-tail variable values are unchanged, so the existing environment
lookup/closure correctness argument applies. At the public boundary,
`(lambda e t u.C e(t u)) value (K N) token ->* C value N`; for closed M,
the closure value is beta-equal to `lambda z.M` as in the canonical parser.
This is a **handwritten proof**, supported by the listed finite checks;
no new kernel-checked theorem was produced.

**Price.** Relative to 162:

- V: 28 -> 18, saving 10. Remove its token binder and force application.
- APP: replace `p k` by `lambda t u.p k(t u)`. Two lambdas cost 4;
  two applications cost 4 in direct wire accounting; the new t/u variable
  occurrences cost 3+2; p,c,e each move two binders deeper, costing 6.
  Total +19. In size-identity accounting this is +4 lambda, +8 application,
  +7 index, the same 19.
- Public adapter `lambda C.P(lambda e t u.C e(t u))` adds 30.

Thus `162 - 10 + 19 + 30 = 201`, exactly checked. This experiment tests a
specific cross-boundary sharing claim: forwarding the leaf's original
thunk and token really is free at ABS, but not at APP or the rigid public
continuation.

## Every design considered

These are prices of specific spellings or explicit budgets, never global
lower bounds on a family. Initial proposals and derivations are in NOTES.md.

| Design | Paper price / budget | Status and why it fails |
|---|---|---|
| A. Ordinary Scott environment cell | Cell 15 vs canonical 24: nominal -9. Stream-consuming repair 26 before variable adapter. | Already recorded. Raw unary lookup needs both zero absorption and tail-orientation repair. The partial cell costs 18, correcting an initial 19 in the notes. |
| B. Select the first callback before parsing | 162 +2 for a second e binder -1 from b's shallower occurrence =163. | Correct, polished 163; exact known construction. |
| C. Factor `b c p` | +1 application and X+1: 167. | Correct, polished 167. The initial thought that it removed a c occurrence was wrong; it retains two. The known lambda-sharing form is 166. |
| D. Always parse a synthetic second operand | Literal `cons F(cons K r)` alone costs >30 in this frame. | Existing optional-parse family. Savings of a return reference/dispatch do not repay synthetic code and selection. No new cheap virtual stream derived. |
| E. Merge parser knot with `s s` | At most 22 bits available by deleting knot+let; literal self-passing incurs >=12 just for two binder/application/reference handoffs, before entry and depth. | No new recurrence. Unary self-application propagates tails; zero returns K r and loses the parser algorithm. Existing reader-carried-knot/self-passed constructions cover the literal attempts. |
| F. Return original variable cell as the whole result | V's 28 bits are the maximum local saving; nonvariable constructors and public adapter must fit inside it. | No complete common protocol. Ordinary Scott pair return is already recorded; a variable cell's raw bit is not its decoded value, and suffix extraction remains necessary. |
| G. One parse site via p-carrying continuations | Literal extra argument at VAR/ABS/APP adds >=12 in size-identity application cost; two callback binders add >=4, before extra index taxes and the public adapter. | Existing recursor-through-continuations family. This gross overhead already exceeds the six-bit second p reference it seeks to eliminate in the present frame. No general exclusion claimed. |
| H. Recover parser from value's environment slot | No complete term, so no full price. Would have to recover p while preserving the value without an added tag/decoder. | Applying an arbitrary genuine host function to a special environment does not uniformly expose p. Adding an explicit carrier returns to the recorded boxed-value family. This is an unresolved idea, not an impossibility result. |
| I. Return skip thunk plus pending NEXT token | 201 =162-10+19+30. | Constructed to validate the protocol after rejecting its price; passes and polishes to 201. |
| J. Share cell and APP/frame constructor | Shared closed C costs 28; the literal lift costs at least 26 in frame `[g,f,C]`, versus 19 inline. | Already recorded shared-skeleton direction. Even the cheapest cell use `C arg args` costs 13. Definition + let + two uses costs at least 28+4+13+26=71 versus the original 24+19=43, before extra depth. C e c applied to a value is not the APP callback, so a decoder would also be needed for stack sharing. |
| K. NEXT as a continuation transformer via input I | An occurrence `Q K I` or `Q F I` adds 14 bits of constants/applications plus Q's reference; a shared Q still needs its definition and recursive connection. | Exact identities below, but no knot elimination or cheaper complete recurrence. Overlaps off-domain reset/self-passing NEXT work. |

For K, with the **canonical** parser's law `P k I =beta k`, direct reduction
gives `Q_c K I =beta lambda e.c A(e)` and
`Q_c F I =beta lambda e.P(lambda f.c B(e,f))`.
These are handwritten consequences of the known off-domain law, not new
universal properties of every interpreter. The 201's modified P has a
different off-domain behavior; these identities must not be transferred to it.

## Assessment

The new concrete experiment isolates an actual cross-module economy: every
compound's final remainder originates at a variable leaf, so a thunk/token
return needs no constructor-side allocation. It is still expensive because
APP resumes parsing and the root must expose an unthunked suffix to rigid C.

A promising next target would have to exploit the NEXT token for a useful
control action, not merely force a thunk with it. For example, it might
start the second parse without another p reference. The obstacle is exact:
the returned token is Q for the **leaf's continuation**, which includes
pending parent work; it is not the parent's Q or a bare p. The canonical
`Q K I` / `Q F I` laws expose transformed callbacks but do not strip that
continuation. I have no decoder or recurrence that solves this within a
competitive budget.

This is a concrete remaining research question, not evidence of a hidden
sub-162 or of optimality. No broader search is justified by this lane's
results. A next attempt should derive the token-to-action equation first
and price it before constructing another interpreter.

Reproduce the checks (from repo root):

```
PYTHONDONTWRITEBYTECODE=1 TMPDIR=$PWD/tmp/round4/arch python3 tmp/round4/arch/check.py --polish tmp/round4/arch/before_parse.lam
PYTHONDONTWRITEBYTECODE=1 TMPDIR=$PWD/tmp/round4/arch python3 tmp/round4/arch/check.py --polish tmp/round4/arch/joint_dispatch.lam
PYTHONDONTWRITEBYTECODE=1 TMPDIR=$PWD/tmp/round4/arch python3 tmp/round4/arch/check.py --polish tmp/round4/arch/thunk_token.lam
PYTHONDONTWRITEBYTECODE=1 TMPDIR=$PWD/tmp/round4/arch python3 tmp/round4/arch/fixed_checks.py
```

## Coordinator follow-up: can NEXT start APP's second parse?

**Result: a continuation-independent action token can do this, but the
cheapest explicit protocol derived here costs 211 bits.** Keeping the old
leaf's NEXT unchanged does not work. A separate suffix-transformer protocol
prices at 199. Both exceed the requested build threshold; no complete new
interpreter was built, battery-tested, or polished during this follow-up.

### The required equation and the actual token

Use the 171-bit core's notation, including its three-argument return:

```
Q_k = lambda b.P(lambda e.b
        (k A(e))
        (lambda t u.P(lambda f.k B(e,f))(t u)))
W_c = lambda e t u.P(lambda f.c B(e,f))(t u).
```

When a first child M is parsed with callback W_c, its final variable leaf
returns `Q_{L_M(W_c)}`. Here L_M maps the callback at M's entry to the
callback installed at M's last variable leaf. For a variable L_M(k)=k;
for an abstraction the traversal passes through `lambda e.k A(e)`; for
an application the last leaf lies in its right child, under
`lambda f.k B(value_left,f)`. There can be arbitrarily many such layers.

A successful replacement for APP's second recursive reference must obey

```
D c e t Q_{L_M(W_c)}
  =beta P(lambda f.c B(e,f))(t Q_{L_M(W_c)}),
```

with no free P occurrence in D. This is the token-to-action equation used
for the designs below. It was written in NOTES.md before their pricing.

### A correct reset, and a concrete mismatch proof

The canonical parser's `P k I=k` law is false for this three-result core:
its reader gives `P k I=k Q_k`. There is a small alternative reset:

```
J = lambda h x.h(lambda y.x)             14 bits
J I = K
J (K k) = K k
P k J = (J I) ((J(K k))(J J)) Q_k = k.
```

The reader identities are exact for arbitrary k and Q_k. Consequently,

```
Q_c K J = lambda e.c A(e)
Q_c F J = W_c.
```

These are handwritten beta identities; the reset equations were also
checked as open components with rigid k/Q by the Rust normalizer.

They do not permit substituting the returned token for Q_c. Even the
variable-child case returns Q_{W_c}. Applying the same probe `K J V` to
the two tokens gives

```
Q_{W_c} K J V = W_c A(V)
Q_c     K J V = c A(V).
```

The first has two leading lambdas (for the suffix thunk and token); the
second has rigid c at its head. Thus they are not beta-convertible. This
is a **handwritten exclusion of literal parent-token identification in
the current protocol**, not a bound on all possible continuation schemes.

Making callbacks merely NEXT-shaped does not fix this: a NEXT consumes a
constructor bit and input stream, whereas a callback consumes a decoded
value and returned tail. An additional return mode/decoder is needed.
Likewise, forwarding a token in ABS/right-APP callbacks preserves the
leaf's token unless those callbacks explicitly replace it. Replacing it
with a captured parent token moves the burden to carrying that token into
the callback; even a variable first child needs that provision. No such
field is free in the existing continuation.

There is also a circularity trap: replacing the entire sole APP branch by
`Q_c F J` would delete the B constructor from its own definition. The reset
identity can reuse an already implemented APP branch; it cannot serve as
that branch's implementation.

### Three ways to provide a usable action token

**1. Expose the parser through a third NEXT mode.** Put
`T3=lambda a b d.d` (8 bits), and define

```
Q_k = lambda b.b
        (lambda q.q(lambda e.k A(e)))
        (lambda q.q(lambda e t u.
          (u T3)(lambda f.k B(e,f))(t u)))
        P.
```

For K/F the selected branch receives P and parses normally. For every k,
`Q_k T3=P`. Therefore the leaf token u supplies the exact second parse as
`(u T3)(lambda f.c B(e,f))(t u)` regardless of L_M. The B constructor
remains explicitly implemented. This version has only one free P site.
Its corrected price is **187 core +30 decoder =217**.

**2. Return P by re-reading the input tag.** Replace the reader's NEXT
operand by `(s K) Q_c P`, and use local u rather than free P in APP.
On constructors that operand is Q_c; on variables it is P. All returns
therefore carry P, which can start APP's second parse. Price:
**184 core +30 decoder =214**. This retains two free P sites.

**3. Use a fourth reader operand and return raw suffixes.** This is the
cheapest explicit usable-token discipline derived here:

```
P c s = s I (lambda v.s(lambda q.c)(s s v)) Q_c P
Q_c = lambda b t d.d (lambda e.b
        (c A(e))
        (lambda n u.u(lambda f.c B(e,f)) n)) t
E C = P(lambda e n u.C e n).
```

On a variable, V consumes Q_c, performs the usual exact skip, and returns
`c r N P`: the fourth reader operand supplies the parser token. On a
constructor, Q_c receives b,t and that fourth operand d=P; d performs the
first parse. ABS forwards the returned suffix and token. APP receives
u=P and invokes `u(lambda f.c B(e,f)) n` for its second parse. No free P
occurrence is needed in Q_c itself. Every final token is P independently
of how deeply the leaf callback is nested.

This is a handwritten structural invariant. The variable law was checked
at indices 1,2,5,17, and both constructor branch equations were checked
with their parser and continuation rigid. There is no full battery result,
as the price exceeds the explicit build threshold.

Price relative to 162: V is unchanged. Q grows by 21 bits, including the
two extra depth bits on b that the initial paper count missed. The fourth
operand adds six. With the old let knot the core would be 189. Its only
recursive reference is now at depth 2, so removing that let saves four,
leaving **185 core**. The raw-suffix public adapter costs 26:
**211 total**, +14 against the previous 171-bit core and +49 against 162.
The otherwise identical thunk-return version is **185+30=215**.
This is a concrete variant of the record's broad
recursor-through-continuations family, not a new architecture family.

### Additional idea: return the suffix's continuation transformer

Section 6 does not list this particular return protocol. It is related to
its thunked-remainder family, but changes the producer/consumer interface:

```
T_s = lambda k u.k(s s u)
P c s = s I (s(lambda q.c) T_s) Q_c
Q_c = lambda b.P(lambda e.b
        (c A(e))
        (lambda T.T(P(lambda f.c B(e,f)))))
E C = P(lambda e T.T(C e)).
```

On a unary stream with suffix N, `T_s k u =beta k N` for every u.
The pending NEXT operand supplies u. ABS forwards T,u. APP supplies its
parsing action directly: `T(P k) u = P k N`. The public boundary supplies
`C e`: `T(C e) u = C e N`. This moves the force operation from two
consumers into one producer, instead of passing K N and forcing it locally.

Paper price, checked on its nonrecursive generator: V costs 35 (+7),
APP's adapter adds 9, and the core is **178**. Its public adapter adds
21, giving **199 total**. This is +7 against the 171-bit core, +37 against
162, and two bits below the earlier complete 201-bit experiment. The
gain is real at the level of these explicit spellings; it is far too small
to justify constructing the full interpreter under the follow-up rules.

### Verification and price scope

`followup_checks.py` compiles/counts only five nonrecursive generators and
checks 15 fixed beta equalities. It writes no new interpreter .lam/.blc,
instantiates no new fixed point, and runs no battery, polish, or search.
`followup_checks.json` records all 15 passes, in 0.107 seconds.

| Protocol | Generator bits | Core including knot | Public adapter | Total |
|---|---:|---:|---:|---:|
| Existing thunk/token reference | 151 | 171 | 30 | 201 |
| Parser-exposure NEXT mode | 170 | 187 | 30 | 217 |
| Guarded parser token | 164 | 184 | 30 | 214 |
| Four operands, raw suffix/parser token | 169 | 185 | 26 | 211 |
| Suffix continuation transformer | 158 | 178 | 21 | 199 |

The generators include `lambda p c s`, so the original let knot adds 20
bits beyond them. With exactly one p occurrence at depth d, the unshared
knot instead yields `|generator|+d+14`, saving 6-d bits. These symbolic
knot counts account for the 187 and 185 cores; no complete rejected
candidate was assembled to measure them.

One correction to the earlier report's design K: K itself costs **7**
bits, whereas F costs 6. Thus `Q K I` adds **15**, not 14, beyond Q's
reference; `Q F I` adds 14. This did not affect the earlier complete
interpreters' measured sizes. It also corrects the initial follow-up guard
price from 213 to 214. All table values above include this correction and
the four-operand b-depth correction.

These are prices of explicit protocols, not lower bounds for their full
families or global minima after arbitrary refactoring. The open lead has
now produced a valid useful-token discipline, but not a competitive one.
The literal unchanged-token route is ruled out as above; no claim is made
that every enriched continuation discipline must pay these costs.
