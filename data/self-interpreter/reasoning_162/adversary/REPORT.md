(・_・) **No sub-162 interpreter found. The audit does produce a complete counterexample to deriving `IdentityCut` from the public contract, working readers with a variable operand below 28 bits after changing NEXT, and an exact correction to Grok's skip identity.** None contradicts the correctly scoped Lean bounds.

The most consequential distinction is this: failure of the ordinary first-child cut need not mean that the first head returns an unusual value for the second head to activate. The first head can bypass that continuation and interpret the whole parent. The explicit witness below has an unused, two-bit second head. A size-sensitive argument is needed to exclude that possibility below 162.

All files written are in this lane. No other agent or model was consulted. Existing measurements cited below were read, not rerun, except for the explicitly listed new checks and the recursion Lean file.

**1. Complete construction ledger**

Each name links to the source as written. Passing minimum renderings are in `optimized/NAME.{lam,blc}`. The exact battery line in the table is for that materialized minimum; the original-source battery is retained in `logs/NAME.log`. The three failed candidates were not polished.

| Source | Written bits | Polished bits | Exact battery line | Construction |
|---|---:|---:|---|---|
| [suffix_or_next](suffix_or_next.lam) | 174 | 172 | `172 bits  ok=667 skip=1 fail=0` | The final operand is NEXT at zero and the bare suffix on variables; the preceding operand costs 10 rather than 28. |
| [tail_preserving_dual](tail_preserving_dual.lam) | 172 | 172 | `172 bits  ok=667 skip=1 fail=0` | Repair the old 144-bit trailing-operand failure using the preceding dual operand and the known first bit as a constant function. |
| [stream_dependent_next](stream_dependent_next.lam) | 178 | 176 | `176 bits  ok=667 skip=1 fail=0` | NEXT is a destructor on constructor inputs and `c r` on variable inputs. |
| [parser_operand](parser_operand.lam) | 179 | 179 | `179 bits  ok=667 skip=1 fail=0` | Three operands follow `s I`; the final operand supplies the recursive parser and the variable skip's erased force. |
| [stream_operand](stream_operand.lam) | 186 | 184 | `184 bits  ok=667 skip=1 fail=0` | Three operands follow `s I`; the final stream operand reduces V's capture indices and is consumed by NEXT. |
| [third_tag_projection](third_tag_projection.lam) | 195 | 193 | `193 bits  ok=667 skip=1 fail=0` | NEXT has a third tag mode that returns `K c` directly, without a recursive reset. |
| [identity_cut_counterexample](identity_cut_counterexample.lam) | 312 | 223 | `223 bits  ok=667 skip=1 fail=0` | Exact two-head skeleton: H replays the parent using the known 162; J is the two-bit leaf `f`. This embeds an existing interpreter, rather than providing a new small algorithm. |
| [right_associated_skip](right_associated_skip.lam) | 163 | — | `163 bits  ok=0 skip=1 fail=667` | Grok's proposed `s (s s)` replacement. The closed identity gives a wrong suffix. |
| [borrowed_body_cell](borrowed_body_cell.lam) | 155 | — | `155 bits  ok=1 skip=1 fail=666` | Splice the recorded favorable-body cell `f a a e` uniformly. The closed identity refutes it. |
| [next_continuation_mode](next_continuation_mode.lam) | 179 | — | `179 bits  ok=0 skip=1 fail=667` | Borrow `K c` from shared-head NEXT using the parser's reset law. The changed reader destroys that law and has an infinite head expansion. |

`polish.py` was run on every complete candidate, with two workers and a frozen executable. Its configured searches used up to three cuts for inputs at most 175 bits and two cuts above that, plus its small-input no-inline pass. These are bounded let minima, not minima of arbitrary semantic equivalence classes. Since the stock script reports wires only through 164, `materialize.py` rerendered the larger reported improvements at their own thresholds and battery-checked the actual wires. There are no unmaterialized minimum-size claims.

All seven passing constructions also return the exact rigid suffix on `Omega` and `lambda a.Omega`. `check_identities.py` records 68 successful fixed checks in `identities.json`. The all-program arguments below use structural parser laws and do not assume that the decoded program normalizes.

The ten polish invocations took 73.450 seconds in total; the longest took 24.166 seconds. The only hole enumeration was the 696-term helper case described below. `verification.json`, `results.json`, and `artifacts.json` record the commands, outcomes, renderings, and executable hash.

**2. Exact identities, proofs, and construction arguments**

Write `K = lambda x y.x`, `F = lambda x y.y`, `I = lambda x.x`, `cons b r = lambda h.h b r`, and `U_n(N) = 1^n 0 ++ N`, allowing `n=0`. Let

```text
A(f)   = lambda e a.f (lambda b r.b a (r e))
B(f,g) = lambda e.f e (g e)
Q_c b  = P (lambda f.b (c A(f)) (P (lambda g.c B(f,g)))).
```

The ordinary parser clauses are the zero reader law `P c (cons K R) = R Q_c` and the variable law `P c U_n(N) = c U_(n-1)(N) N`, for `n>=1`. Every successful construction except parent replay satisfies these same clauses. The usual syntax induction and closure/environment induction therefore transfer, including divergent sources. This is a handwritten proof transfer, supplemented by fixed symbolic checks and batteries; no new Lean correctness theorem is claimed.

*The correction to Grok I5.* For every `n>=0`,

```text
U_n(N) U_n(N) ->* K N.
```

At zero, `Z Z -> Z K N -> K K N N -> K N`. At a successor, `s=cons F r` gives `s s -> s F r -> F F r r -> r r`, so induction applies. Consequently, for `n>=1` and `r=U_(n-1)(N)`,

```text
s (s s) ->* s (K N) -> (K N) F r -> N r,
```

**not `N`**. At a constructor `s=cons K R`, the same expression is `R R`. These are the equations already used correctly by `protocol-obstructions.md`; the round-3 Grok table and its suggested passing 163 are inconsistent with them.

For the complete 163 and the closed identity `0010`, the result is

```text
C (lambda e a.a) (N (cons K N)),
```

instead of `C (lambda e a.a) N`. These are distinct beta-normal forms. This is a finite counterexample, not a timeout argument. The narrow statement that application-only expressions over the sole atom `s` cannot produce bare N with one application remains true: the only such one-application expression is `s s`, whose result is `K N`. It does not by itself prove the additive application lower bound for arbitrary, jointly implemented V and NEXT.

*NEXT or suffix, with a 10-bit preceding operand.* Let Q be independent of the stream and define

```text
D_s = s (lambda b.b (lambda unused.Q) (s s)).
```

For `s=cons K R`, `D_s -> Q`. For `s=cons F r` on a unary code, `D_s -> (s s) r -> N`. Therefore

```text
s I (s (lambda q.c)) D_s
```

returns `R Q` at zero and `c r N` on variables. Its first post-I operand is `s (lambda q.c)`, **10 bits in this frame**, and has no outer lambda to consume NEXT. The second operand performs the missing variable work. This directly falsifies a V>=28 assertion with the fixed-NEXT hypothesis omitted. The complete result is 172 after polishing.

The related identity

```text
D'_s = s (lambda b.b (b Q) (s s))
```

has the same two results: on zero, `(K Q) R -> Q`; on a variable, `(s s) r -> N`. Hence

```text
s (lambda b.b I c) D'_s
```

is also correct. This is the 172-bit `tail_preserving_dual`. It repairs the recorded `c144_trailing` construction by changing precisely its trailing operand. It differs from the known 164 dual: that dual's zero result is the completed `R Q`, whereas this operand's zero result is Q itself.

Its actual handler `H_c = lambda b.b I c` has

```text
H_c I   ->* c,
H_c H_c ->* c c.
```

Thus even the old handler-tree claim's **at least two arguments** is specific to the 165 handler. A handler from this correct complete interpreter has a one-argument diagonal. This observation does not turn that diagonal into a cheap parser knot.

*NEXT or a return prefix.* Define

```text
D_s = s (lambda b.b (lambda unused.Q_c) c).
```

It is `Q_c` on constructors and `c r` on variables. The reader

```text
s I (lambda u.u (s s u)) D_s
```

therefore has the same two correct reader laws. The original V's 28-bit computation becomes an 18-bit computation, but forming this correlated operand costs more. The complete construction polishes to 176. This escapes the stream-independent-NEXT hypothesis in golf162's variable-handler collision, rather than refuting that collision under its original hypotheses.

*Three post-I operands can be correct.* The parser-supply construction has

```text
V       = lambda u p.s (lambda q.c) (s s p)
Qpass   = lambda b t p.p (lambda f.b (c A(f)) (p (lambda g.c B(f,g)))) t
P c s   = s I V Qpass P.
```

At zero, `R Qpass P` becomes the ordinary recursive parse. On a variable, `V Qpass P -> c r N`. The final operand is consumed before the rigid continuation is entered. Moving `x x` to that final operand removes the old parser-sharing let, but costs 179 bits overall. The stream-supply variant similarly uses `V=lambda u t.t (lambda q.c) (t t u)` and a NEXT that consumes its final stream argument; it polishes to 184.

Therefore `k=2` is not an unrestricted theorem about `s I O1 ... Ok`. The actual theorem is that an already-completed `c r N` cannot accept surplus operands. Pricing the repair is an additional problem.

*A direct continuation-extraction mode.* Define `T = lambda a b d.d` and

```text
Qplus b = b
  (lambda d.P (lambda f.d f A(f)))
  (lambda d.P (lambda f.P (lambda g.d g B(f,g))))
  (lambda q.c).
```

Then

```text
Qplus K = P (lambda f.c A(f)),
Qplus F = P (lambda f.P (lambda g.c B(f,g))),
Qplus T = K c.
```

The first two equations use `(K c) f = c` and `(K c) g = c`. The third is direct third projection, independent of P. Replacing V by

```text
lambda u.s (u T) (s s u)
```

therefore works. It contains no occurrence of c: NEXT supplies it. The complete result is 193 bits. The unchanged-NEXT impossibility is not violated: Qplus explicitly adds an unapplied occurrence of c in its third branch.

*The tempting reset-based extraction really cycles.* For the recorded shared-head form

```text
Qmode_c b = P (lambda f.(b c P)
  (lambda y.b (lambda a.f (cell a y)) (c B(f,y)))),
M = lambda a b d.a,
```

one has `Qmode_c M = P (K c)`. With the ordinary reader's reset `P k I=k`, this would give `Qmode_c M I=K c`. But after changing V to borrow that expression, the reset is no longer ordinary. One unfolding gives exactly

```text
P c I = (P (K c) I) Qmode_c.
```

Writing `T(c)=P c I`, the head macro is `T(c) ->+ T(K c) Qmode_c`. Repeating it adds a K to c and an argument to the right but never exposes c at the head. The failed variable path enters this macro; the closed identity therefore has no head normal form, while its required output is C-headed. `failed_reset_unfold` checks the finite macro with P rigid. The infinite-head conclusion is the handwritten invariant, not a fuel-based inference.

*The nonuniform 17-bit cell fails concretely.* With the recorded favorable-body expression substituted as `cell=f a a e`, the closed identity produces

```text
C (lambda e a.a K N a e K N) N
```

instead of `C (lambda e a.a) N`. The inner rigid argument a has six arguments rather than zero. This fixed reduction is checked. It rejects this particular cell proposal, not all body-dependent ABS operations.

*IdentityCut is not forced by the contract.* Use the recursion lane's exact skeleton `E[H,J]`, with H in `[b,s,c]`, J in `[f,b,s,c]`, and source cost `129+|H|+|J|`. Let E0 be the existing closed 162 and choose

```text
H = lambda k t.E0 c s,
J = f.
```

The fixed symbolic identity is

```text
E[H,J] c (cons K (cons b t))
  ->* E0 c (cons K (cons b t)).
```

H discards both the first-child continuation and its stream. Every closed BLC source starts with 00 or 01: its root cannot be a free variable. The identity therefore transfers E0's entire closed-source contract, including divergent sources. This is an all-program handwritten proof, not an extrapolation from the battery. H costs 181 and J costs 2, so the exact skeleton costs 312. Letopt removes dead callback code and obtains 223; the literal skeleton witness is the 312 source, not that optimized rendering.

On the recursion lane's `I Omega` probe, `IdentityCut` would require joinability with

```text
J[F/f,F/b,S/s,C/c] k_app (quote(Omega) ++ N)
  = F k_app (quote(Omega) ++ N)
  -> quote(Omega) ++ N.
```

That is a Scott stream with a leading lambda. The correct result is `C (lambda z.Omega) N`, with rigid head C. Beta reduction cannot remove the stream's outer lambda or change that rigid head. They have no common reduct. Hence `IdentityCut` is false for this complete interpreter.

This is related to the existing `N_Q` replay construction, but the distinction matters: H has the original whole stream in scope and needs no reconstruction of the two consumed cells; J is demonstrably unused. The example satisfies the Lean first-head restriction because H contains E0's incomparable nonlinear binders. It does not challenge the 165 bound **with** IdentityCut or the 167 affine-head theorem.

**3. Standing claims: exact working hypotheses and adversarial boundary**

In the tables, “recorded” means the supplied source was inspected; it is not a claim to have rerun its historical exhaustive search or independently checked every handwritten proof. The fixed proofs and counterexamples above are the new work.

| Standing claim | Hypotheses doing the work | Boundary / outcome |
|---|---|---|
| More than two post-I operands reach C | `s I O1...Ok` reduces at a variable to `O1...Ok`; the return has already become `c r N`, or NEXT retains its old arity. | True for that completed return; not a theorem that k=2. The 179 and 184 consume an additional operand. |
| The second post-I operand must be NEXT | The zero branch is `R O2`; fixed, stream-independent operands and the canonical constructor protocol determine its behavior on genuine second-tag streams. | This forces the needed behavior on that domain, not beta-eta equality to the literal NEXT. The known select-first 163 has different beta-eta normal form with rigid p,c, yet agrees at K/F. Our dual operands change behavior on variable outer streams. |
| V>=28 | Fixed ordinary NEXT, raw-tail variable values, the existing frame, and the handwritten head-case decomposition. The checked base enumerated 412 terms through 14 over `[u,s,c]`, not all complete V through 27. | The checked base does not itself prove that every larger shared/redex/actual-helper construction decomposes into independent `c r` and N pieces. No counterexample under the full fixed-Q hypothesis was found. Removing it gives the correct 10-bit operand above. |
| VAR/ABS/APP unique minima in the 168 | Parametric equivalence under every instantiation of the fixed frames: VAR `[list1,bit0,list,next,c,p,x]`; ABS/APP `[f,bit1,c,p,x]`. Reference bodies are `c r (r r r)`, `c A(f)`, `p(lambda g.c B(f,g))`. | Recorded complete parametric searches give 22/40/35. Actual correlated helpers, new frames, and a changed protocol are outside. The contextual searches are finite probes, with explicit capped counts; they are not additional universal theorems. |
| Cell/lift/handler module minima reassemble to 168 | Four grammar clauses: opaque modules; rigid neighbours; the 168 capture layout; a body-opaque knot. The rigid cell is `lambda b r.b a (r e)`, lift `lambda e.f e(g e)`, and handler's arms are the prescribed rigid zero action and VAR. | These are real conditional minima, including cell 24 and lift 19. The 165 already breaks opacity, and the 162 moves the handler/reader boundary. Do not sum them as a global bound. |
| Opaque fixed point and recursion overhead | `t(h)=beta h(t(h))`, body h opaque and priced at zero, k hole occurrences. The Lean source bound is `18+2k`, hence at least 20; adding the specified parser binder and two reference leaves gives `26+d1+d2`. | The 165 attains 31 at depths 2/3; the 162 attains 33 at depths 3/4. This does not require every interpreter to possess such an opaque knot, and does not price a reader/body-sharing recursor. |
| Reader>=43, H>=27 | Frame `[s,next,c,p,x]`; reader `s H S`; stop-at-first-zero skip law; independent rigid equations `H K R R=R next`, `H F R T=c R T`. | Normality is not assumed. A stronger correlated-H result fixes S to `s s s` and keeps other neighbours rigid. Actual NEXT, other heads, and joint skip changes remain outside. Our new readers use those outside cases, but cost more than 162. |
| Cheap T=s and T=s s readers>=43 | Same surrounding protocol/frame; H may use s and source redexes, but the specified rigid reader obligations remain. Handler minima are respectively 35 and 31. | These do not cover bare NEXT/c, lambda-bearing operands, or arbitrary concrete parser behavior. The historical proofs are handwritten, not new Lean results. |
| Zero arm>=14 | `Z R R=R next`; R is not an independently available source leaf; next/recursion are rigid; the known K tag and whole zero cell may be borrowed at their fixed prices. | The candidate must dispose of the duplicated input in this interface. The 162 already escapes by obtaining a single tail from Scott application; adding a new zero-arm cost to it is invalid. |
| Rigid APP lift>=19 | `V E=f E(g E)` for independent rigid f,g,E, fixed capture frame; arbitrary source redexes are allowed. | The target normal form and the redex cost argument provide the bound. Changing actual value representation or sharing a helper across modules is outside. |
| Cell>=24 under Boolean-only laws | Uniform `C K n=a`, `C F r=r e` across parsed bodies, with rigid a,e,n,r. The written concrete-helper proof specializes exp=F and uses the actual **165** helpers; its raw-loan argument also permits independent quote data. | A favorable exp alone is not enough: the recorded 17-bit example proves why uniformity matters. The 155 splice fails I. A body-dependent ABS exempted from the lookup interface on environment-ignoring bodies is not covered. The concrete 162 helper case was separately checked below. |
| Lift>=19 on actual values | The unchanged 165 representation and the exact frame `[g,f,b,c,p,x]`, including arbitrary root environment and actual correlated variable values in `lambda a.a a`; no new operand-dependent quote binding. | This is weaker than independent f,g but still protocol-specific. No joint representation improvement was found. |
| Neutral skip operands dominated | Exact correlated reader laws, rigid next/c (and rigid p/x when used), a beta-normal inert marked operand absent from the target. | This proves replacement for `s next`, `s c`, `s(s s)`, etc.; it does not equate their values with s. Bare next/c are exceptions; actual recursive helpers need their own analysis. |
| One handler can read both tags | A **single closed** T satisfies `P k (0:s)=P(T k)s` uniformly, and P has the transparent exact closed-source contract. | The stronger recorded tower argument excludes this, without assuming an arbitrary-variable parser law. A mode, changed internal interface, or stream-dependent T is outside. No new attempt retained these exact hypotheses. |
| Mode-free value builder impossible | Same W and marker q0 satisfy `W f q0 e=lambda a.f(cell a e)` and `W f g e=f e(g e)` for every ordinary g, including `K Omega`. | At `f=K(K I),g=K Omega,e=I`, APP requires I and ABS requires `K(K I)`; genericity makes the marker unable to distinguish. Solvable wrappers avoid the hypotheses but have an existing 203-bit construction. |
| Cell/APP alias impossible | Raw variable closures Xn; APP=`lambda e.e f g`; transparent context-independent closed values; ABS depends only on the child value/suffix. | `lambda a b.I b` collides with `lambda a b.a`. Root transparency forces the closed I value to be F. Changing only the cell cannot repair it; representation/context/source-information changes are necessary. |
| Reader/handler knot trees C-headed, arity>=2 | Leaves are exactly the **165** H_Ci/R_Ci with rigid Ci; no bare NEXT, new lambda, or transformed stream. | The new correct 172 handler has `H_c H_c=c c`, so the arity claim does not transfer to a changed handler. It remains C-headed, and no cheap knot follows. |
| Uniform decoder cannot repair eta collapse | Two source representations are beta-equal; the decoder receives only that representation (no retained code or shape annotation). | I and `lambda f x.f x` require distinct beta-normal outputs. Congruence proves the collision at any decoder size. This is not an argument against beta-faithful representations. |

The remaining `protocol-obstructions.md` claims have the following additional scopes:

| Claim | Exact restriction / separating evidence |
|---|---|
| Free last skip operand | `U_n U_n a=N` for every a; on genuine streams it is erased. Off-domain reset/generator behavior changes. These equations do not supply a fixed point from nothing. |
| Application-only whole-stream skip duplicates the zero tail | Operand is an application tree over **s alone** and returns bare N on every unary stream. It must have the relevant left subtree `s s`, so at zero it returns R. Lambda-bearing operands and additional semantic atoms are outside. |
| Raw NEXT diagonal fails for every skip | Keep `H_i=lambda b.b(lambda u r.r q_i)c_i` and the canonical Q protocol; only S_i varies. On I, `q q` leaves five arguments at C. A changed handler or Q is outside. |
| `P P P` head loop | The specifically stated `P c s=s H_c (s s s)`. The source explicitly warns not to transfer this loop to arbitrary erased-operand skips. |
| Bare-cont readers have one trailing operand | Handler `lambda b.b Z c` keeps c bare. Variable reduction is `c r A1...Ak`, forcing k=1. It says nothing about a variable arm that consumes the surplus first. |
| No lambda-free reader over s,next,c | No lambda source and next is opaque. Actual parser behavior or a new lambda/helper invalidates this alphabet. |
| No continuation-only repair of thunked input | Keep the 165 input path: `R_C(K a)=a(a(K a))`, independent of C. Changing only the supplied continuation cannot restore the missing C. |
| Shared head cannot carry the only tag dependence | Exact form `next b s=P(lambda f r.(b C P)H[C,P,f,s,r] r)s`, H independent of b. ABS with tail `quote(I)++N` and APP I I force incompatible uses of the same payload. A tag-dependent payload or additional representation escapes. |
| NEXT's recomputed fields lose information | Use only the stated projections: qP/qq/qK, or qP with qF, or selected parse result plus iterated skips. The record gives index collisions and a periodic-suffix tag collision. These are not bounds on all uses of the original whole q or s. |
| Parsing with q as continuation can diverge at the head | q is the given source cell, used unadapted as the first parse's continuation; Omega supplies the counterexample. The public contract still needs the rigid C head for divergent decoded programs. |
| NEXT>=92 | Rigid canonical branch equations; beta-normal source; tag uses restricted to `b U V`; fixed 165 frame. Nine normal forms are classified. An arbitrary correct NEXT embeds any interpreter at +44, so this is not an unrestricted local theorem. |
| Bare-head shared argument is erased | Normal adapters, tag-free shared argument, and one bare c/P branch head. A shared pair projected by both adapters is outside and already has a larger complete construction. |
| `E E != E` | Only the exact full public contract. The identity-quotation proof is unconditional and in Lean. No admissible hypothesis can simply be relaxed while retaining that same contract. |
| Constant APP control cannot yield E | Context-independent control values, pointwise APP at a seed q, and equality of the three responses for I at R, I at `quote(I)++R`, and I I at R. These imply G G=G; additionally G G=E would contradict non-idempotence. Nonhomomorphic projections or source-dependent responses are outside. |
| Closed internal values must be canonical | Transparent root callback and context-independent internal V(M,N). The rigid C head lets confluence compare corresponding argument positions. Continuation-dependent or differently decoded internal states are outside. |
| Two-sided beta inverses are trivial | Closed F,G and both `F(G z)=z`, `G(F z)=z` for arbitrary fresh z. Head forms force one leading lambda and zero extra head arguments. One-sided or domain-restricted retractions are explicitly allowed. |
| Wrapped ordinary environment still loses data under the alias | Raw Xn selectors, cell `lambda b r.b(A a)(r e)`, APP alias `lambda e.e f g`, and the compositional represented semantics. On `var 1 var 2` in the shown three-cell environment, the result has no free middle argument b, while the required decoded value is c b. Any closed decoder then fails. |
| Swapping a closure's arguments is not an exact involution | `J f=lambda a e.f e a` on arbitrary values. `J(J f)=lambda e a.f e a`; rigid f, or `f=lambda e.Omega`, separates this from f. Restricting all values to a suitable two-lambda domain changes the representation. |
| Diagonal return projection loses exact values | `V_C v k=C v(v v k)` with transparent context-independent ordinary v. For the closed K program, `v=lambda e x y.x`, so `v v k=lambda y.k`, never rigid N. |
| “Thunked rests cannot be forced for free” | The public C is rigid and must get N; the existing internal continuation convention transports raw remainders. Returning `K N` unchanged fails. The extra-cost assertions are about the recorded adapters/sites, not an unrestricted theorem about all mixed representations. |
| “NEXT cannot supply a bare continuation” | **Unchanged** NEXT; every occurrence of c is already in `c A(f)` or `c B(f,g)`; all other supplied terms are c-free. A surviving marked application at rigid c cannot lose its first argument. The 193 intentionally adds a bare-c mode. |
| Reuse NEXT directly as VAR | Q is stream-independent and obeys both ordinary open constructor laws and the variable-handler law. The tail `1010++N` is also an APP-of-two-variables stream, giving two versus three arguments at c. The 176 instead depends on the original outer stream. |
| “Nothing inside NEXT can use list cheaply” | No quantified size inequality, grammar, or full proof is supplied in golf162-claude §3.7. | 

The last sentence is a search judgment, not a theorem to use in a 162 proof. The quoted “contract-preserving continuation that is also its own knot driver” sentence in interpreter.md similarly lacks an explicit driving equation in the supplied theorem statement; Omega is named as a witness, but this wording alone is insufficient to reconstruct its exact quantifiers. I did not use that sentence as a universal obstruction.

The module sum is `22+12+20+22+17+40+35=168` (knot, administration, dispatch, VAR, NEXT, ABS, APP), with the four grammar clauses retained. The 168 module and slot minima, the independent rigid reader bounds, and the precise collision arguments remain legitimate evidence inside their stated classes. The correction needed is in transferring their hypotheses, not in treating every lower bound as suspect.

*The freshly checked 162 helper subcase.* The written Boolean-only cell proof's concrete-helper section explicitly uses the 165's off-domain equations. The 162 changes those equations, notably `P c I=c`; transferring that section merely because the cell text is unchanged is not justified.

I checked exactly the missing small helper case in the actual 162 ABS frame

```text
[a,e,f,b,s,c,p,x],  with f=F, b=K, s=quote(lambda a.I)++N,
p=the actual 162 parser, x=its actual generator.
```

For a uniform cell, both a and e must occur: all loans/helpers are independent of them. Require at least one p/x occurrence and source size at most 23. The mandatory index excess is at least 7 for p or 8 for x. Hence there are only two or three applications. At two applications all three leaves are a,e,helper, with at most three lambdas; at three applications there is one additional leaf and at most one lambda. Two helper occurrences already exceed the budget. This proves completeness of the small syntax inventory used by `helper_audit.py`.

The script generated **696 distinct terms**, and every one failed `C K n=a` by a finite head reduction of at most **24 beta steps**, with a leading lambda, wrong rigid head, or wrong rigid-head arity. There were **zero caps and zero survivors** in the final head check. `helper_audit.json` contains every wire and its separating head. This is a finite computer-checked exclusion with a handwritten inventory argument, not a Lean theorem and not a bound on body-dependent ABS. The no-helper case is the separately recorded raw-data proof; it was not re-enumerated here.

*The recursion Lean bounds.* I reran `RecursionObstruction.lean` successfully with two Lean threads; the five printed main theorem/attainment dependencies are only `propext` and `Quot.sound`.

| Result | Exact hypotheses and escape |
|---|---|
| H is not Chain, and `\|H\|>=18` | Exact frozen two-head skeleton; H in `[b,s,c]`, J in `[f,b,s,c]`; the full closed contract. No IdentityCut assumption. `lambda a.Omega` erases J and proves the restriction. The parent-replay H satisfies it. |
| Total>=165 | Same skeleton, **plus IdentityCut** for I Omega, putting ordinary left value F and the right source stream into J. Then J also has incomparable nonlinear binders and costs >=18, giving 129+18+18. Parent replay proves the additional hypothesis is not implied by the contract alone. |
| Sub-162 implies no IdentityCut and `\|J\|<=14` | Direct corollary of those costs. It does **not** say J is necessarily called, nor that a nonstandard payload must be returned to it. Since a term costs at least 2, a sub-162 fill also has `\|H\|<=30`. |
| Unshared direct generator>=167 | Retain `(lambda x.x x)(lambda x.E[H,J])`; H/J have only affine internal binders; ambient variables may repeat; IdentityCut holds after substituting G for x. Both sites need two x occurrences, priced 12 and 14, with base 141. A nonlinear internal helper, changed skeleton, or failed cut is outside. |
| Carrier minima 8 and 10 | Fixed 162 reader, only g free at frame `[g]` for `R q c S=g q` (8), or a closed carrier for `R q c S=c q` (10); rigid q,c,g. These are handwritten complete small-budget classifications with checked leaves, not global recursion bounds. Changing the reader or sharing another semantic operation is outside. |

No new unconditional floor near 162 follows. The live record's global bounds and its distinctions between source size, head-normal-form size, and normality remain untouched.

**4. Ranking, failed routes, and where the next bit could hide**

The ranking below is a construction priority, not a theorem about attainable savings.

1. **Joint reader/NEXT behavior, especially a useful operand whose variable mode is different.** The available 28-bit V really can shrink to 10, or to 18, when the final operand performs another role. That is a concrete 18- or 10-bit local saving. The complete constructions repay it and finish at 172/176. A smaller dual operand must share actual constructor work; wrapping the old Q in a fresh dispatch does not pay. This remains the closest analogue of the 165 and 162 discoveries.
2. **First-head control that does not take the conventional child cut.** Deleting the wrapper and two recursive leaves frees 33 bits before replacement heads are priced, but H must still be non-Chain and a sub-162 H must fit within 30 bits. The new replay witness proves that “J must activate code left by H” is not the full logical alternative: H can ignore J. A lower-bound proof now needs either a costed theorem forcing the cut in that small budget, or a costed classification of bypasses. The 312/223 witness deliberately spends far too much to be a record candidate.
3. **Body-dependent ABS or a joint value/environment representation.** The tempting seven-bit cell saving fails on I, and all 696 cheap concrete-helper cells fail the uniform law. Those findings still leave operations that exploit f while declining the uniform lookup interface when f ignores its environment. The raw-selector/cell-APP collision and beta-versus-eta distinction must be preserved in any such construction.
4. **An extra mode in NEXT that also supplies a needed semantic operation.** The bare-continuation obstacle is real for unchanged Q, but a direct extra mode works. The 193 shows the present price. The cheaper reset-based route is exactly circular; it should be rejected by the displayed head macro, not pursued with more fuel.
5. **Unchanged frame refactorings and isolated cheap skips.** The recorded let/component work and the exact small identities make this a low-priority route. Grok's right-associated skip is a concrete false lead. Normality, opaque neighbours, and fixed capture layout must still be stated before invoking the old minima.

The new evidence does not support 162-optimality. It does sharpen the failure modes: changed operand roles can evade the local variable-arm claim; continuation projection must have an independent base case; and a cut theorem requires a genuine budget argument rather than an assumption that the first head behaves like an ordinary parser.

Reproduction uses `build.py`, `run.py`, `materialize.py`, `helper_audit.py`, and `check_identities.py` in this directory. `run.py` and `materialize.py` resume their saved result ledgers. The runtime shim confines temporary files, caps battery pools at two, substitutes the frozen executable, and limits each letopt subprocess to 100 seconds. No tracked repository file was changed.
