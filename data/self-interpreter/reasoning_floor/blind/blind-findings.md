# Blind findings before reading the prior search record

The permitted BRIEF sections and the compiler, normalizer, and battery source
were the only research inputs. The 165 source was also read; its comments
repeat the permitted brief. No interpreter record sections had been read
when these constructions and measurements were completed.

No sub-165 candidate was found. Thirteen constructed variants and a lane-local
copy of the 165 all pass the default battery: `ok=667 skip=1 fail=0`.
All thirteen variants are larger. Each complete battery took 1.77–1.89 seconds
with exactly two worker threads. `battery.log` is the complete measurement log.

| File | Bits | L | A | X | Construction |
|---|---:|---:|---:|---:|---|
| baseline165.lam | 165 | 17 | 25 | 29 | Starting machine |
| split_next.lam | 166 | 18 | 25 | 28 | Choose the constructor continuation before binding the first parsed expression |
| borrow_zero.lam | 166 | 16 | 26 | 28 | Use the known zero tag itself as K in the zero arm |
| parser_scope.lam | 167 | 17 | 25 | 31 | Bind the recursive parser only inside NEXT |
| beta1.lam | 168 | 16 | 25 | 34 | Inline the recursive parser let |
| parser_scope_under_tag.lam | 168 | 17 | 25 | 32 | Bind the recursive parser below the second tag |
| selected_operator.lam | 169 | 16 | 26 | 31 | Select c versus parser, merging the first binder of their arguments |
| beta2.lam | 170 | 16 | 24 | 40 | Inline NEXT into the zero arm |
| thread_cont.lam | 174 | 19 | 26 | 30 | Pass the output continuation once after selecting a constructor branch |
| common_return.lam | 176 | 18 | 27 | 30 | Identity parser in ABS versus recursive parser in APP; one common return |
| reversed_lookup.lam | 181 | 20 | 27 | 31 | Environment receives unary code; a cell dispatches to K v or old environment |
| handler_knot.lam | 208 | 19 | 30 | 48 | Carry recursion in the first-bit handler rather than the complete parser |
| next_knot.lam | 209 | 23 | 30 | 41 | Carry recursion in NEXT; specialize entry to a closed program's initial zero |
| stream_first.lam | 214 | 22 | 30 | 48 | Reverse parser argument order, with an external contract adapter |

The nearest transformations pay a definite syntactic cost:

* Splitting `lambda a. b X Y` into `b (lambda a.X) (lambda a.Y)`
  saves one bit on b's index and adds a two-bit lambda: 166.
* In the zero arm, `b (lambda r.r q)` is valid because b is K there.
  It replaces one lambda by an application plus a variable, and brings q
  one binder closer: again 166.
* The selected-operator version rewrites `b (c A) (p D)` as
  `b c p (lambda f. b A_body D_body)` when A and D both begin with a
  lambda. It saves one lambda but adds an application and two index bits:
  169. This is a useful near-branch merger, not a size improvement.
* Reversing lookup changes a raw variable result from r to `lambda e.e r`.
  The alternative cell is `lambda r.r (lambda b.b (lambda unused.v) e)`.
  This is semantically viable, but adds 16 bits overall.

Two small holes were then exhausted, after identifying their exact jobs.
`local_identities.py` records the checks and `local-identities.log` the results.

1. The zero-arm replacement Z has only q, s, and the first bit in scope.
   For each bit b in {K,F}, use rigid q and tail, set r = cons b tail,
   s = cons K r, and require `Z r r =beta r q`.
   All 412 terms of at most 14 bits in this context were checked. There
   were no fuel exhaustions. The sole passing term is the existing
   14-bit `lambda unused r.r q`; no term through 13 bits passes.
2. The skip replacement has only s in scope. All 27 terms through 10 bits
   were checked on `1^n 0 ++ tail`, n = 0..4, with rigid tail. There
   were no fuel exhaustions. The sole passing term is `s s s` at 10 bits.

These are limited, reproducible local exclusions. They do not establish a
global lower bound, exclude holes with additional variables, or replace a
general interpreter correctness proof. The battery also does not establish
the contract for all non-normalizing programs.

Reasoned but not built: dropping the skip's last application would expose
`s s = K remainder`. A parser returning wrapped remainders then needs to
force them in the zero arm and before APP's recursive call, and unwrap the
final continuation argument. The first force alone consumes the saved four
bits. No concrete smaller architecture emerged from this observation.

Reproduce from the repository root:

```
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/blind/build.py
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/blind/second_build.py
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/blind/check.py <candidate>.lam
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/blind/local_identities.py
```

The adapter compiles without optimization and calls the repository battery's
`check(..., threads=2)`. All writes are confined to this lane.
