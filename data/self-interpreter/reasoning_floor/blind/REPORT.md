# Blind lane verdict

**No sub-165 interpreter found. No global optimality result.**

Thirteen fresh constructions were built before reading the prior record.
All thirteen pass the default exact-normal-form battery, but their sizes
range from 166 to 214 bits. The starting 165 also passes. The nearest are:

```
166 bits ok=667 skip=1 fail=0 split_next.lam
166 bits ok=667 skip=1 fail=0 borrow_zero.lam
167 bits ok=667 skip=1 fail=0 parser_scope.lam
168 bits ok=667 skip=1 fail=0 beta1.lam
168 bits ok=667 skip=1 fail=0 parser_scope_under_tag.lam
169 bits ok=667 skip=1 fail=0 selected_operator.lam
```

The full table, derivations, and reproduction commands are in
[`blind-findings.md`](blind-findings.md), written before reading the record.
Every candidate is a `.lam` file in this directory. The actual battery output,
including timings and L/A/X counts, is in [`battery.log`](battery.log).

## Independent reasoning and measured costs

The 165's raw unary-code variable value couples the cell and variable branch:
the stream applies the environment to its bit and remaining unary code.
Reversing that application is viable, but the variable adapter plus the
alternative cell costs 181 bits. It does not make the cheaper Scott-style
environment extension free.

Two smaller local ideas both reach 166:

* `split_next.lam` moves the second-tag choice before the first expression's
  binder. It removes one de Bruijn index bit but adds a lambda, costing one
  net bit.
* `borrow_zero.lam` uses the known zero tag's K as the constant function in
  the zero arm: `bit0 (lambda r.r next)`. It removes a lambda but adds an
  application and variable; bringing next closer recovers only one bit.

`selected_operator.lam` shares the first lambda of ABS's value and APP's
second-parse continuation, using `bit1 cont intL` as their common head. It
has one fewer lambda than the 165, but one extra application and two extra
index bits: 169. Moving the continuation outside both constructor branches
instead gives 174, and a common return after an optional second parse gives
176. Neither saves the machinery needed to distinguish ABS from APP.

Moving the knot into the handler or NEXT gives 208 and 209. Specializing the
root to its guaranteed zero tag does not pay for the new recursive calling
convention. Taking the stream before the continuation similarly costs 214.

## Comparison with the record, read afterward

Only `interpreter.md` sections 3, 5, and 6 were read for this comparison.

| Blind construction or result | Prior coverage |
|---|---|
| Split constructor continuation, 166 | Section 3 explicitly lists select-first at 166. Rediscovery. |
| Borrow bit0 as K, 166 | Section 3 gives the same expression and size. Exact conceptual rediscovery. |
| Move/in-line parser and NEXT lets, 167–170 | Section 3's let-structure search already covers this family; NEXT inlined at 170 is explicit. No new improvement. |
| Reversed lookup, 181 | Section 3 explicitly gives the function environment at 181, and section 6 describes this cell and value adapter. Rediscovery. |
| Select `bit1 cont intL`, 169 | Section 6 gives this operation merger at 172 against the 168, with the same change in lambda/application/index counts; the corresponding 165 version is 169. Rediscovery. |
| Common return with optional second parse, 176 | Section 3 gives a better 175-bit variant in the same family; section 6 also lists optional parsing. No improvement. |
| Thread the continuation after branch selection, 174 | Operation-merge territory already explored. This exact source/size is not explicitly identified in the sections read; it is not evidence of a novel successful approach. |
| Handler knot, 208 | Section 6 already lists handler recursion at 196/206 against the 168. This construction is worse. |
| NEXT knot with closed-root specialization, 209 | Section 6 already lists self-passing NEXT and a root shortcut. Same architectural family, with a different concrete adapter. |
| Stream-first parser, 214 | Section 6 lists stream-first variants at 201–208 against the 168. This construction is worse. |
| Zero-arm and skip holes | Sections 3 and 5 already give stronger searches and handwritten bounds. The blind checks only reproduce a restricted part. |
| Thunked remainder observation | Section 6 explicitly records the same four-bit apparent saving and the forcing/adapter cost. Rediscovery. |

## Limited exclusions checked here

`local_identities.py` checks only two reasoning-selected holes:

* 412 terms through 14 bits, with q, the zero cell s, and bit0 in scope.
  For rigid q and tail, and second bit K or F, only the current 14-bit zero
  arm satisfies `Z r r =beta r q`.
* 27 terms through 10 bits, with only s in scope. On the five prefixes
  `1^n 0`, n = 0..4, and rigid tail, only the current 10-bit `s s s`
  returns the tail.

Both runs have zero fuel exhaustions; see
[`local-identities.log`](local-identities.log). These checks exclude no
architecture outside their stated holes. In particular, treating q as
rigid excludes exploiting the actual NEXT/parser behavior. The eight capped
zero-arm cases reported by the wider prior search remain unresolved by this
lane; this narrower test does not adjudicate them.

## Evidence boundary

The default battery verifies the 667 normalizing probes and skips one.
It is not a proof of the universal contract, including non-normalizing
programs. No new Lean proof was attempted because no new general lemma or
smaller construction survived the blind phase.

The useful outcome is an independent replication of the nearest local
tradeoffs, with explicit sources and small symbolic checks. It adds no
known size improvement and supplies no new evidence that 165 is globally
optimal. A subsequent search should not repeat these local transformations.

All writes stayed in this lane. The battery adapter used the repository's
unmodified test collection and normalizer with two workers; each candidate
took under two seconds. No external consults, broad sweeps, or repository
modifications were performed.
