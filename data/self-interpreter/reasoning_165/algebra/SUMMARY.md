( •̀_•́) **No sub-165 result.** Two complete constructions pass. The strongest new result excludes knot constructions made from arbitrary application trees mixing the current reader partials and handlers.

Full proofs, sources, encodings, and reproducible checks are in [REPORT.txt](REPORT.txt).

| Construction | Result | Idea |
|---|---|---|
| [balanced_skip.lam](balanced_skip.lam) | **169 bits — `ok=667 skip=1 fail=0`** | Replace `s s s` by `(s s) (s s)`. |
| [shared_delta.lam](shared_delta.lam) | **176 bits — `ok=667 skip=1 fail=0`** | Share `Δ = λx.x x` between the knot driver and forcing `s s`. |
| [arity_switch_failed.lam](arity_switch_failed.lam) | **167 bits — refuted** | Use `s (s K)` to change arity between constructor and variable cases. |

Both batteries used two workers and took about 2.5 seconds each. Separately, 38 targeted symbolic normal-form equalities passed. No enumeration or long search was run. The proofs below are hand proofs, not new Lean formalizations.

**Stream identities.** Write `[b,r] = λf.f b r`, with `K=0`, `F=1`. Then

```text
[b,r] [d,t] →* b d t r

[K,r] [K,t] = K r
[K,r] [F,t] = I
[F,r] [d,t] = t r
```

The first line follows by two stream applications; Boolean reduction gives the remaining lines. Consequently,

```text
s K = b
s F = r
s (s K) = b b r = K when b=K, r when b=F.
```

For `s=[K,[d,t]]`, writing `r=[d,t]` gives

```text
s (s F) = d r = K r for 00, I for 01.
```

Thus `s (s F)` distinguishes the two constructor tags by arity while retaining a tail. Its limitation is precise: the constant branch retains **the stream `r`**, so another operation must turn that stream into the ABS computation.

**Cross-unary identity.** Let `U_n(N)=1^n0 ++ N`. The stream identity gives

```text
U_(i+1)(N) U_(j+1)(M) = U_j(M) U_i(N).
```

Repeated swapping and decrementing yields:

```text
i=j:  K N                    if i is even
      K M                    if i is odd

i<j:  I                      if i is even
      N U_(j-i-1)(M)         if i is odd

i>j:  M U_(i-j-1)(N)         if j is even
      I                      if j is odd
```

Proof: the terminal cases are `U_0(N)U_0(M)=K N`, `U_0(N)U_(j+1)(M)=I`, and `U_(i+1)(N)U_0(M)=M U_i(N)`. These and the recurrence constitute an induction.

Taking identical streams gives `s s = K N`, hence both `(s s)(s s)` and `Δ(s s)` reduce to `N`. This proves the skip replacements correct on every parser input, including code for divergent source terms. The balanced skip costs four extra bits. Sharing Δ loses eleven: five in its reader occurrence and six in the outer binding.

**Cross-application of environment cells.** For `B(a,e)=λx y.x a(y e)`,

```text
B(a,e) B(b,d)
→ λk. B(b,d) a (k e)
→ λk. a b (k e d).
```

This extends the recorded diagonal identity. It simultaneously applies payloads and combines environments. It does **not** implement the present APP law: it produces `a b`, whereas APP needs `f e (g e)`. Exploiting it would require a different denotation protocol.

**Parser projections and thunk exclusion.** Let `Q_C` be the actual NEXT, and define

```text
V_C = λr.r Q_C
Z_C = λu r.r Q_C
H_C = λb.b Z_C C
R_C = λs.s H_C (s s s).
```

One unfolding gives `E C →* R_C`. Direct reduction establishes

```text
R_C K       = H_C
R_C F       = F
R_C I       = V_C
R_C (K a)   = a (a (K a)).
```

For the last identity, set `t=K a`: `t H_C=a` and `t t t=a t`. The other three follow immediately from `K K K=K`, `F F F=F`, and `I I I=I`. Derived projections are `R_C K F=C` and `R_C I I=Q_C`.

The last law proves an exclusion at **every adapter size**: no continuation-only adapter can make the unchanged 165 accept thunked input. For every `A`,

```text
E (A C) (K s) →* s (s (K s)),
```

independent of rigid `C`. For a fixed stream without `C`, this cannot equal the required normal form containing `C`. The input path must change; adapting only the continuation cannot repair it.

**Mixed reader/handler knot exclusion.** Exact reductions give

```text
H_C H_D = D Q_C C

R_C H_D = C Q_D D (D Q_D D H_D)

H_C R_D = Q_C Q_C C

R_C R_D =
  D Q_C C (C Q_C C H_C) (R_D R_D R_D).
```

For example, `H_C H_D = H_D Z_C C = Z_C Z_D D C = D Q_C C`. Substituting this into the reader definition proves the second and fourth identities. For the third, `H_C R_D=R_D Z_C C`; both `Z_C H_D` and `Z_C Z_C Z_C` reduce to `V_C`, so `R_D Z_C=V_C V_C=Q_C Q_C`.

For the actual NEXT, `Q_C b=E J_(C,b)` for a continuation `J`. Therefore the remaining case also becomes continuation-headed:

```text
Q_C Q_C C →* E J C →* C H_J (C C C).
```

**Theorem:** any binary application tree with at least two leaves chosen from `H_(C_i)` and `R_(C_i)`, for rigid continuations `C_i`, head-reduces to some `C_i` with at least two arguments.

Proof by induction: the four two-leaf cases are above. A nontrivial left subtree preserves its rigid head under further application. If the left leaf is a handler or reader and the right subtree is `B`, their reductions are `B Z_C C` and `B H_C (B B B)`, respectively; these preserve `B`’s rigid head.

Such trees cannot supply a parser or NEXT partial, which requires an outer lambda. Applying a stream instead adds a third continuation argument. This extends the recorded handler-only exclusion. It does **not** exclude bare NEXT objects, new lambdas, transformed streams, or non-rigid continuations.

**The failed 167-bit reader** was

```text
R'_C(s) = (s (s K)) (λr.r Q'_C) C (s s s).
```

Its zero case is correct. Its variable case fails decisively: for `M=I` and `N=λa b c d.I`, reduction reaches

```text
E' J N = N (N K) (λr.r Q'_J) J (N N N) → I.
```

The Rust normalizer confirmed `λc.I`, whereas the contract requires `λc.c (λz.I) N`. No full battery was run after this exact refutation.

My read: the cross-cell identity offers a concrete operation around which to design a different value protocol. The constructor arity switch also retains useful information, but needs a semantic use for its retained stream. Simple reader/handler application trees are now excluded more broadly; NEXT-bearing constructions remain outside that proof. **There is no new global lower bound and no evidence here of a sub-165 interpreter.**

