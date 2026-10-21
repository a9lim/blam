The 4 missing bits are one application: forcing `r r = K N` inside `C`’s argument. Dropping it gives a 164 that is not a self-interpreter. Below are exact siblings, each with L, A, X counted juxtaposition-by-juxtaposition.

## Why this shape sits at 168

The working var arm is `\t. cont r (r r t)` — four applications:

1. `cont r`
2. `r r`
3. `(r r) t`
4. `(cont r) ((r r) t)`

`r r = K N` on every unary tail, so (3) is the force `(K N) t = N`. The closed-term size treats one application as 4 bits (`4A`). That force is exactly the gap from a 164 thunk to the working 168.

The other +4 is unused-`λlist` tax on four NEXT refs (`intL`, `intL`, `cont`, `cont`). Moving NEXTBODY outside `λlist` requires a let, which is +1 λ +1 app. Letopt already said that let structure bottoms at 168: the let costs as much as the tax it removes.

So this exact idea does not have a 4-bit working shrink. The siblings below are the pushes; several are 164/158 on the wire and fail the contract in a precise way.

## 1. Thunked remainder — 164, expected fail

```
(\x. x x) (\x. (\intL. \cont. \list.
    list (\bit0 \r. bit0 r (\t. cont r (r r)))
         (\bit1. intL (\exp. bit1
           (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
           (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

**L=16, A=24, X=34, |M|=2·16+4·24+2+34=164.**

Same as the 168 with application (3) deleted. `t` is unused (absorbs T). Handler apps are now 5: `bit0 r`; `(bit0 r)(λt.…)`; `cont r`; `r r`; `(cont r)(r r)`.

| case | reduction | remainder |
|---|---|---|
| 00 / 01 | `K r VAR T = r T = T b2 r2` | same as 165/168 constructors |
| `1^n0++N` | `(λt. C r (r r)) T = C r (K N)` | **`K N`, not `N`** |

Fails the contract: `C` must receive `N`. This is the “rest as thunk” obstacle in §6 (listed there at 202 with a force adapter). Here the missing force is a single app, so the term is 164 and wrong. Not listed at this size.

## 2. Drop `λt` as well — 158, expected fail

```
(\x. x x) (\x. (\intL. \cont. \list.
    list (\bit0 \r. bit0 r (cont r (r r)))
         (\bit1. intL (\exp. bit1
           (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
           (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

**L=15, A=24, X=30, |M|=2·15+4·24+2+30=158.**

Handler (stack `r=0,bit0=1,list=2,cont=3`): `bit0=1`, `r=0`, `cont=3`, three `r`s at 0. Handler X=4, NEXT under `λlist` X=26, total 30.

0-tag: `r T` still holds. Variable: `(C r (K N)) T = C r (K N) T` — three arguments at rigid `C`, and a thunk. Same failure mode as spine3-bare (158). Not a new size class.

## 3. `I` as 0-arm, `r` Scott-supplied — 169, should pass

```
(\x. x x) (\x. (\intL. \cont. \list.
    list (\bit0. bit0 (\z. z) (\v \t. cont v (v v t)))
         (\bit1. intL (\exp. bit1
           (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
           (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

**L=17, A=25, X=33, |M|=2·17+4·25+2+33=169.**

`s H T = b I VAR r T`.

- 00/01: `I r T = r T = T b2 r2` (168’s 0-tag).
- Variable: `VAR r T = C r (r r T) = C r N`.

Apps (25): knot 4; reader 2; `bit0 I`, `(bit0 I) VAR` (2); `cont v`, `v v`, `(v v) t`, `(cont v)(…)` (4); NEXT 3; ABS 5; APP 5.

X: `bit0=0`, `z=0`; wrap `cont=4,v=1,v=1,v=1,t=0` (7); NEXT under `λlist` (26).

This is the 168 with `r` not shared: K-as-return-r is replaced by `I r T`. Extra `λz` (+2), `bit0` at 0 instead of 1 (−1). Net +1. Should pass. Not in §6.

## 4. NEXT let (shallow NEXT) — 172, should pass

```
(\x. x x) (\x. (\intL. \cont.
   (\next. \list.
     list (\bit0 \r. bit0 r (\t. cont r (r r t))) next)
   (\bit1. intL (\exp. bit1
     (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
     (intL (\exp2. cont (\args. exp args (exp2 args)))))))
 (x x))
```

**L=17, A=26, X=32, |M|=2·17+4·26+2+32=172.**

Same equations as the 168 with `T = next`. NEXTBODY is outside `λlist` (165 depths, −4 X), plus `next` as a leaf at 1 (+1) and `next` in the handler stack (`cont` at 5 instead of 4, +1). Letopt of the 168 already implied this is worse. Not listed (the listed “next inlined” is 170 with skip `s s s`).

## 5. Hoisted skip + T together — 177, should pass

```
(\x. x x) (\x. (\intL. \cont. \list.
    list (\bit0 \r. bit0 (\s. s) (\s \t. cont r s))
         (list list list)
         (\bit1. intL (\exp. bit1
           (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
           (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

**L=18, A=26, X=35, |M|=2·18+4·26+2+35=177.**

`s H S T = b I VAR S T`, `S = s s s`.

- 00/01: `I S T = S T = r T`.
- Variable: `(λs t. C r s) S T = C r N` (`t` absorbs T; skip is already `N`).

Apps (26): knot 4; reader 3; skip 2; `bit0 I`, `(bit0 I) VAR` (2); `cont r`, `(cont r) s` (2); NEXT 3; ABS 5; APP 5.

X: `bit0=1`; I `s=0`; var `cont=5,r=2,s=1` (8); skip 0; NEXT under `λlist` (26). Total 35.

The 165 already Scott-supplies `(r, N)` to bare `cont`. Adding T as a fourth argument forces `I` + `λs λt` + an extra reader app, which costs more than the 27-bit var arm it replaces. Should pass. Not in §6.

## 6. Both arms mention `next` (no `λt`) — 171, should pass

```
(\x. x x) (\x. (\intL. \cont.
  (\next. \list.
    list (\bit0 \r. bit0 (r next) (cont r (r r next))))
  (\bit1. intL (\exp. bit1
    (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
    (intL (\exp2. cont (\args. exp args (exp2 args)))))))
 (x x))
```

**L=16, A=26, X=33, |M|=2·16+4·26+2+33=171.**

Reader is `s H` (one arg). `T` is a free `next`, used twice, so the let is shallow-NEXT and pays.

- 00/01: `r next = next b2 r2`.
- Variable: `C r (r r next) = C r N`.

Handler apps (7): `r next`; `bit0 (r next)`; `cont r`; `r r`; `(r r) next`; `(cont r)(…)`; `(bit0 (r next)) VAR`. Plus next-let (1), reader (1).

Handler stack `r=0,bit0=1,list=2,next=3,cont=4`: X_H=1+0+3+4+0+0+0+3=11; NEXTBODY shallow X=22. Total 33.

This is Palmer’s 168 with skip leaf `next` instead of `list1`. Worse by 3. Should pass. Not listed (Palmer uses `list1 list1 list1`).

## What would actually be 164

Palmer is `(16, 26, 30)`. This idea is `(16, 25, 34)`. The mixed pair `(16, 25, 30)` is 164: Palmer’s shallow NEXT with this idea’s missing let-application. That mix is exactly the let-bound term above, which reintroduces the application and lands at 172.

A working 164 in this family needs one of:

- a 3-application var arm whose fourth leaf is already `N` (no 1-app form of `N` exists among `t,r,bit0,list,cont`), or
- a dummy force that is not an extra application (the 165’s Scott-supplied skip is that dummy; putting NEXT in that slot is what made the var arm expensive), or
- a use of NEXT that also does existing 0-arm work without a new application — the 166 `list list next` is the one-bit version of that, and dropping `λunused` from it reintroduces an extra argument at `C` or at NEXT (listed 162 / the 166 swap).

I do not have a working term ≤ 164. The thunked 164 and the 158 are the exact size claims to run first; they should fail in the ways above. The 169 is the cheapest correct sibling of the 168.
[gaslamp] job: gk-20261021-015625-1853 · session: 01a15cf4-c2e1-72f2-9ea9-288800cbe355 · thread: overnight-grok · resume: gaslamp grok --thread overnight-grok · model: grok-4.6 (billed grok-4.6-build) · tok: 297k→87k · $1.11
