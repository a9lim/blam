# Independent review: dispatch and NEXT fusion

Reviewer: Codex, fresh gaslamp consult, 2026-10-21. No consults back, candidate
enumeration, engine changes, or long runs. All equivalences below are beta,
not beta-eta.

| Result | Verdict |
|---|---|
| dispatch §3.1 | **Correct.** The table argument needs an induction; a short complete one is supplied below. |
| dispatch §3.2 | **Correct under the fixed NEXT call protocol.** The rigid-head argument works even with an arbitrary skip. The phrase “whatever H” must retain that protocol restriction. |
| dispatch §3.3 | **Gap; its final independent-handler-law corollary is false.** Actual-stream calling conventions and laws on independently rigid operands are different claims. |
| dispatch §3.4 | **Gap in the written proof, but the impossibility conclusion is correct.** A replacement proof below uses only re-entry and the parametric closed-source contract. |
| nextfuse §3 shared-argument lemma | **Error as a complete classification.** An explicit shared-pair construction has neither a dummy argument nor a repeated tag dispatch. |
| nextfuse §4, NEXT = 92 | **Decomposition heuristic, not an established lower-bound theorem.** The literal region costs 92. I1–I4 do not specify the class needed to prove that minimum. |

## 1. dispatch §3.1: the forcing conclusion is sound

Location: `dispatch/REPORT.md:73–84`.

The displayed table alone does not classify arbitrarily large application
trees. However, the needed classification has a short structural proof.
It suffices to test the hypothesis at unary length one. Put

```text
u = cons F (cons K N),       w = cons K N,
```

with `N` fresh and rigid. Every application-only tree over `u` reduces to
one of three forms: `u`, `K N`, or `N Q1 ... Qj`. The application cases are:

```text
u u             ->* K N
u (K N)         ->* N w
u (N Q1 ... Qj) ->* N Q1 ... Qj F w
(K N) Q         ->* N
(N Q1 ... Qj) Q ->* N Q1 ... Qj Q.
```

Consequently only the original leaf has the first form, only the syntactic
tree `u u` has the second, and the only way to obtain bare `N` is a root
application whose left subtree is exactly `u u`. Thus the original operand
must be syntactically `(s s) X`, for an arbitrary application-only `X`.
On `s = cons K q`, it reduces to `(K q) X -> q`.

This proves the claim, including arbitrary tree size, without enumeration.
The hypothesis that the operand has no leaves other than `s` and no lambdas
is essential. The proof establishes the zero-arm input, not a general
lower bound on the implementation of that arm.

## 2. dispatch §3.2: the rigid arity obstruction is valid in its protocol

Location: `dispatch/REPORT.md:93–110`.

On `I = lambda x.x`, the stipulated root ABS continuation is

```text
k = lambda v. C (A v),
A v = lambda e a. v (lambda b r. b a (r e)).
```

The variable reader therefore returns

```text
k r S T1 ... Tk ->* C (A r) S T1 ... Tk.
```

There are `2+k` arguments at rigid head `C`. This cannot be beta-equal to
the two-argument required result when `k >= 1`. In particular, there is
no need to assume `S = N` to obtain the contradiction. I checked the
specific `I` reduction, including `A (cons K N) = F`.

The scope must say that the root ABS actually delegates its body to this
same reader with the displayed continuation, and that no adapter replaces
the continuation protocol. An arbitrary `H` allowed to implement a separate
parser instead would not be constrained by the displayed execution. Under
the intended fixed NEXT/ABS/APP protocol, the proof is correct. Its corollary
is a requirement to consume the surplus argument on the variable path;
it is not an independent size proof that 178 is optimal.

## 3. dispatch §3.3: correlated correctness does not force rigid handler laws

Locations: `dispatch/REPORT.md:119–129`, especially `131–134`.

The argument correctly shows that a variable return on the `lambda.1`
path cannot forward a thunked or otherwise unequal remainder to the rigid
root. Likewise, the fixed downstream protocol does not absorb surplus
arguments. It does not establish the stated laws for independently rigid
`R,T`, and a single continuation instance does not prove a universal law
over all internal continuations and arbitrary operands.

Here is an explicit counterexample to the last paragraph. Keep the standard
skip `s s s`, the entire NEXT region, and the usual values. Replace the
handler by

```text
H = lambda b r t. b (t next) (c r (r r t)).
```

On a constructor, `r=t=q`, so `H K q q -> q next`. On a variable, let
`r = 1^(n-1)0 ++ N` and `t=N`. The ordinary unary identity gives
`r r -> K N`, hence

```text
H F r N ->* c r N.
```

These are exactly the original parser clauses on every genuine input, so
the standard structural correctness argument applies unchanged. But for
independently rigid operands,

```text
H F R T -> c R (R R T)  !=beta  c R T.
```

Both sides are distinct beta-normal forms. The new handler is larger;
this counterexample asserts no bit saving. It retains the correct
value/remainder convention on actual variable streams, so it specifically
refutes the purported transfer to independent rigid laws, not the narrow
claim about the final remainder on those streams.

I checked both actual-stream clauses, the unequal rigid instance, and the
complete interpreter with this handler on four fixed closed programs.
This distinction agrees with the current boundary in
`interpreter.md:428–444`: actual correlations and independent rigid
interfaces require different arguments.

## 4. dispatch §3.4: proof defects and a replacement proof

### Defects in the supplied proof

1. **Lines 155–157 substitute an unstated variable convention.** Hypothesis
   1 permits an arbitrary value `v`; it yields `(T C) v N'`, not necessarily
   `(T C) t N'`. For the APP input, the misread variable indeed has unary
   length one because a closed `M` starts with zero. That identifies its
   remainder, but does not identify its value with the raw tail `t`.

2. **Lines 159–162 do not force exactly two initial lambdas.** Merely
   obtaining a `C`-headed result after two applications does not do so:
   `T = lambda k v.k v` has `T C V R -> C V R`, while `T k` has only one
   initial lambda. It is not beta-equal to its two-argument eta expansion.
   This example does not satisfy the abstraction law; it refutes the stated
   justification for omitting the zero- and one-binder cases.

3. **The `lambda^n.1` witnesses are appropriate.** The head-`t` branch at
   lines 166–170 is correct conditional on the displayed head form. For
   large enough `n`, all supplied arguments are erased and a leading lambda
   survives. Argument dependence on `V`, `R`, or `T C` does not defeat this.

4. **Line 179 does not justify `q=1`.** Substitution for a head variable
   can expose more lambdas. Even an actual application-code value extractor
   can have `q=0`: with an exact interpreter `E`, define
   `A_app(t) = E K (cons K (cons F t))`. For
   `t = code(M) ++ code(N) ++ R`, it returns `lambda z.M N`. With `t`
   rigid, the 165's parser equations expose a `t`-headed form, with no
   leading lambda. Thus the application-extraction property does not
   imply `q=1`. The particular `I I` example also cannot by itself
   establish that number of binders.

5. **The arithmetic at lines 180–182 is correct under its restrictions,
   but those restrictions were not proved.** With general head form
   `lambda^q.t B1...Bp`, the actual necessary equation is
   `2(q-p)=1`, also impossible. The parity argument can therefore be
   repaired without assuming `q=1`.

6. **Lines 183–186 omit the remainder component's full head analysis.**
   Its leading lambdas and bound head need treatment; moreover, the
   occurrence called `k` becomes `T C` in the inner substitution, not
   immediately rigid `C`. One must use the composed remainder equation,
   not just say that the component “must compute the rest.”

### A stronger obstruction, independent of the variable law

The following is a complete handwritten head-form argument. It is not
Lean-checked. It repairs the conclusion without the APP argument or any
assumption on the variable-value convention.

Let

```text
M_n = lambda^n.1,          V_n = lambda^(n+1).1,       n >= 1.
```

Re-entry twice, followed by the closed-source contract, gives

```text
T (T C) V_n R =beta C V_(n+1) R.                 (*)
```

Indeed `code(lambda.M_n) = 00 code(M_n)`. Here `C,R` are fresh rigid
variables. I claim no closed `T` can satisfy (*) for every `n`.

Since an instance of (*) is head-normalizable, `T k` has a head normal
form for fresh `k`: head non-normalizability cannot be repaired by
substitution and further application. Write it as

```text
lambda x1 ... xa. h Q1 ... Qb,
```

where `h` is `k` or one of the displayed bound variables. Choose `n` as
large as needed below; all head forms and their argument counts are fixed
independently of `n`.

**Classify the outer head form.**

- If `a>2`, (*) retains a leading lambda, impossible.
- If `h` is the first binder, substituting `V_n` and supplying the fixed
  number of arguments leaves a leading lambda for large `n`, impossible.
- If `h` is the second binder, necessarily `a=2` in the remaining cases,
  and the result is `R`-headed, impossible.
- Thus `h=k`. For `a=0`, composing twice produces `2b+2` arguments at `C`;
  (*) forces `b=0`. Then `T k =beta k`, which leaves `V_n` unchanged,
  contradicting (*).
- For `a=1`, composition produces `2b` arguments at `C`, so `b=1`.
- For `a=2`, `b<2` leaves a leading lambda, while `b>=2` produces
  `2b-2` arguments at `C`. Thus `b=2`.

There are only two remaining forms:

```text
(i)  T k =beta lambda t.   k A[k,t]
(ii) T k =beta lambda t j. k A[k,t,j] B[k,t,j].
```

**Case (i).** Put `A'=A[T C,V_n]`. The required value equation is

```text
A[C,A'] =beta V_(n+1).
```

The open term `A` has a head normal form `lambda^q.h U1...Up`, since its
displayed substitution is head-normalizable. A bound head has a fixed
number of leading lambdas, and head `k` becomes rigid `C`; neither can
give the unbounded projection family on the right. Hence `h=t`.

For sufficiently large `n`, projection erasure gives

```text
A'       =beta lambda^(n+1+q-p).1
A[C,A']  =beta lambda^(n+1+2(q-p)).1.
```

Equality with `V_(n+1)` requires `2(q-p)=1`, a contradiction.

**Case (ii).** Put

```text
A' = A[T C,V_n,R],             B' = B[T C,V_n,R].
```

Rigid-head injectivity in (*) gives both

```text
A[C,A',B'] =beta V_(n+1),      B[C,A',B'] =beta R.    (**)
```

Again write the head form of `A` as `lambda^q.h U1...Up`. A bound head or
`k` is excluded as in case (i); head `t` gives the same impossible parity
equation. It remains to consider `h=j`:

```text
A' =beta lambda^q.R U1'...Up'.
```

Write the head form of `B` as `lambda^d.g D1...De`. The second equation
of (**) forces `d=0`: an initial lambda cannot disappear from a term
required to equal rigid `R`. Thus `g` is `k,t`, or `j`.

- `g=k` immediately gives rigid head `C` in that equation, impossible.
- If `g=j`, then `B'=R D1'...De'`, and the composed remainder has `2e`
  arguments at `R`. Thus `e=0` and `B=beta j`. The value in (**) then
  has `R` as its head beneath `q` lambdas, not the required projection.
- If `g=t`, the composed remainder is `A' D1''...De''`. For `e<q` it
  retains a leading lambda; for `e>=q` it is `R`-headed with
  `p+e-q` arguments. Equality with bare `R` forces `p=0,e=q`.
  Consequently `A=beta lambda^q.j` and
  `B'=V_n D1'...Dq'`. For large `n`, this is
  `lambda^(n+1-q).1`, so the composed value is
  `lambda^q.B' =beta V_n`, contradicting the first equation of (**).

Every head form is excluded. Therefore (*) is impossible, and hypotheses
2 and 3 of dispatch §3.4 alone already rule out the proposed `P,T`.

The valid conclusion concerns this uniform, beta-exact re-entry equation
and the transparent parametric contract. It is not an exclusion of every
possible design described informally as “state in a continuation,” such
as designs with different internal values and a public adapter.

## 5. nextfuse §3: a shared argument need not be discarded or repeat the tag

Location: `nextfuse/REPORT.md:50`.

With `X=c`, rigid-head equality really does force `Z=beta V_abs`. With
`Y=P`, it forces `Z=beta k_app`. The fact that these payloads are distinct
normal forms rules out making both heads bare with one unchanged payload.
Distinctness alone does not prove that every possible adapter must erase
its input; that would require a residual or context argument for these
particular payloads.

More decisively, the proposed exhaustive classification is false. With
rigid `c,P,f,rest`, put

```text
A = lambda e a.f (lambda b r.b a (r e))
B = lambda g.c (lambda e.f e (g e))
Z = lambda h.h A B
X = lambda z.c (z K)
Y = lambda z.P (z F).
```

Then

```text
K X Y Z rest ->* c A rest
F X Y Z rest ->* P B rest.
```

Neither `X` nor `Y` is a bare head. Each uses `Z`, and neither contains
the tag bit or repeats its dispatch. The introduced binders are not dummy:
on `Z_uv=lambda h.h u v`, one gets `X Z_uv -> c u` and
`Y Z_uv -> P v`. All four equations were checked with independent rigid
variables by both Python and Rust normalization.

This construction is not claimed to be cheaper. It disproves “if neither
head is bare, the dispatch is duplicated inside,” the assertion that the
three rows exhaust shared-argument cases, and the universal
dummy-binder-or-second-dispatch dichotomy. A size proof could separately
exclude this family by pricing its packing and projections; that argument
is absent.

If the intended grammar forbids compound shared payloads, that restriction
must be stated. Neither the lemma nor I1–I4 currently states it.

## 6. nextfuse §4: 92 is a measured construction, not the proved minimum

Locations: `nextfuse/REPORT.md:54–61`, and the stronger claims at `76–78`.

I independently measured the displayed NEXT at **92 bits** in the stated
frame `[cont,intL,x]`. The arithmetic `34+19+6+7+8+2+16=92` is consistent
with that concrete term. It establishes an upper bound.

The sentence at line 61 calling this a “decomposition argument, not a
theorem over arbitrary terms” is the appropriate evidence boundary. The
claims of exhausted fusion and exact minimality go beyond the argument:

- The dispatch classification it cites is incomplete, as the preceding
  counterexample shows.
- Separate module minima do not add without proving the existence of
  disjoint charged pieces in every candidate, or fixing opaque modules
  syntactically. Sharing and beta expansion are exactly the issue here.
- I1–I4 specify semantic behavior but do not specify a candidate grammar,
  all allowed free variables and their de Bruijn depths, whether actual
  `intL` behavior may be exploited, whether values are independent rigid
  inputs, or whether the region can introduce lets, pair representations,
  extra calls, and alternate handoffs internally.
- In particular, a closed root contract does not by itself give all
  independent open-value laws used to price intermediate components.
  The report must either assume those laws or prove the transfer under
  precise uniformity and context-independence hypotheses.
- “Each priced >=166 in the record so far” reports the measured designs;
  it is not a lower bound on all implementations of the corresponding
  interface changes.

A precise conditional theorem could retain the fixed capture frame,
opaque module grammar, and independent rigid module laws from
`interpreter.md:274–294`, then state that the relevant module minima sum
to 92. Proving the stronger fused-region minimum requires a new argument
covering arbitrary terms within an explicitly defined interface. I1–I4
alone and the present catalogue do not supply it.

## 7. What was checked

Read the requested report sections, the current interpreter contract and
module-bound qualifications, the relevant protocol-obstruction sections,
and the current self-interpreter STATUS entry. The reported historical
search minima and whole batteries were not rerun.

Reproduction:

```sh
python tmp/overnight/verify/vdispatch_codex_checks.py
python tmp/overnight/nextfuse/checks.py
```

The new script passed 16 fixed equality/inequality comparisons through
both the repository Python normalizer and the existing Rust binary, checked
the literal NEXT size and the `q=0` application extractor's weak head, and
checked the correlated-handler interpreter on `I`, `K`, `I I`, and `S`.
The final run took 0.107 seconds. The existing nextfuse fixed-identity
script also reported `ALL PASS`.

Those computations support the concrete reductions and counterexamples.
The all-size claims in this review are the explicit handwritten arguments
above, not consequences of the finite checks. No sub-165 construction or
counterexample to the repaired §3.4 theorem was found or claimed.
