# chead lane notes (continuation-headed interpreters)

## 0. Setup read
- hnf shapes: λc s. c A B  or  λc s. s A1..Ak (head-decomposition.md).
- c-replacement: in a literal c-headed form, c inside A,B can be s (saves 1 bit/occ).
- literal c-headed floor 73 (11 + 37 + 25).
- |E K| = |E|+9 (value decoder), |E F| = |E|+8 (remainder extractor).
- Class members are s-headed: R Z(r) = r j with r rigid forces R's hnf = λs. s P⃗
  (n=0 head c/j wrong head; n>=2 leaves a λ; n=1 head c/j wrong head).

## 1. Paper prices, first pass (handwritten)
- Parse twice, wrapper outside the 162: λc s.(λp. c (p K s) (p F s)) P162
  inner: c idx2 (4) + p K s (4+2+7+3=16) + p F s (15) + apps 4 = 39; λp 2, app 2, λcλs 4
  => 162 + 47 = 209.  ((λp.λc s. c (p K s)(p F s)) P162 = 162 + 48 = 210.)
  NOTE: the prompt's "|P| + ~20" is not attainable this way; the selector
  constants K (7) and F (6) and the two spines cost ~33 by themselves.

## 2. Built and measured (battery: 668 programs; polish = letopt)
- twice209.lam  parse twice around the 162:  209 bits ok=667 skip=1 fail=0; letopt 209.
- mode200.lam   λc s.(λg. c (g K) (g F)) (λσ. BODY_σ), BODY_σ = the 162 body with cont:=σ,
                recursion through the c-headed fixed point itself (exponential, fine):
                200 bits ok=667 skip=1 fail=0; letopt --max-cuts 2: 200.
                This IS the "single pass, lazily value / lazily rest" design: w = λσ.BODY_σ
                is the shared parse closure, K/F select. Under β nothing is shared at run time;
                the sharing is of source code only.
- spec200.lam   λc s. c A B with A = value-mode reader+NEXT, B = rest-mode reader+NEXT:
                A = s I (λu. s F) NEXT_A           (V_A = 13 bits: s F = r on unary)
                B = s I (s s) (λb2. p (λexp. b2 I (p F)))   (54 bits)
                200 bits ok=667 skip=1 fail=0; letopt 199:
                (\a. a a) (\a b. (\c d. b (d (\e. e) (\e. d (\f g. g)) (\e. c (\f. e (\g h i. f (\j k. j i (k h))) (c (\g h i. f i (g i)))))) (d (\e. e) (d d) (\e. c (\f. e (\g. g) (c (\g h. h)))))) (a a))
                (the let of p moves under the continuation binder: head c +1, four p leaves -1 each, knot +2)
- Accounting spec vs 162: V 28 -> 13+6 (-9); NEXT 96 -> 88+36 (+28); reader skeleton s I _ _ twice (+12);
  c head + interface 11 vs 4 (+7). Net +38 (letopt +37).
- hnf.py (head reduction, computer-checked shapes): twice209 / mode200 / spec200 all
  `λc s. c A B` (2 args). int162 `λc s. s _ _ _`.

## 3. Lemma S23 (generic s-head conversion, +23) — handwritten, battery-checked
For ANY closed interpreter E (either head shape):
   E' = λc s. E (s (λx y. c)) s      |E'| = |E| + 23,  hnf of E' is s-headed.
Proof. Contract: E (S X) S =β (S X) (λz.M) N, S = cons b r, S X = X b r = c. So
  E' C S =β C (λz.M) N for every closed M (divergent included: only β-joins used,
  substitution of the closed-in-context term S X for the rigid continuation of the
  contract instance). Shape: if E is c-headed, E k s →h* k A B for every k (head
  reduction never touches k's arguments), so the hnf is λc s. S X A B: s-headed, 3 args.
  If E is s-headed the hnf is λc s. s A1[..]..Ak[..]. Price: λcλs 4, two apps 4,
  s X: app 2 + s 2 + λλ 4 + c at index 3 (5) = 13, last s 2 -> 23.
Checks: conv_spec.lam (spec200 converted) 223 bits ok=667 skip=1 fail=0, hnf λc s. s _ _ _;
        conv162.lam 185 bits ok=667 skip=1 fail=0.
Consequence: min(all interpreters) >= min(s-headed) - 23. NOT zero overhead, and the
  image is never in the separated class (its reader on Z(r) gives c A B, not r j).

## 4. Lemma K (literal-interface source surgery, +(d+10)) — handwritten
If E = λc s. X literally, its hnf is λc s. c A B, and the hnf head c is a residual of
the source occurrence o of c at depth d below λs, replace o by s (λx y. c) (indices
adjusted). Head reduction never contracts c, so the same head reduction gives hnf
λc s. s (λxy.c) A~ B~ where A~, B~ have SOME c-occurrences replaced. Partial
replacement is sound: lift the join A(C,C,S) ->* w <-* λz.M to distinct rigid c1,c2
(variable-for-variable substitution creates no redex), w has no c1,c2 because λz.M
has none, then substitute c2 := T. Cost: c at index d+1 (d+3 bits) -> app 2 + s (d+2)
+ λλ 4 + c (d+5) = 2d+13: delta d+10.
Generator form T[λp c s. c A B]: d = 0, +10. Check: knotconv.lam (spec200's generator
head c -> s (\x y. c)) 210 bits ok=667 skip=1 fail=0, hnf s-headed 3 args.

## 5. Toward a c-headed split-class bound (Lean probe)
Targets in frame [c=0,p=1] (c unused), fresh t = var 2:
 value mode  K: p (λf r. Abs f)      F: p (λf. p (λg r. App f g))
 rest  mode  K: p (λf r. r)          F: p (λf. p (λg r. r))
`merged true 0` over the four η-choices (Probe.lean, #eval): value [84,99,98,93] -> body>=84,
 NEXT_A >= 86; rest [32,47,46,41] -> NEXT_B >= 34. (Canonical class targets give 90 -> 92.)
Plan: copy Next/pruned_forms/next_price generically over a target pair -> kernel-checked
 NEXT_A >= 86, NEXT_B >= 34 with >=2 free leaves each; then the assembly arithmetic:
 |E| >= 20 (knot) + 13 (λp c s, c A B) + cost(R_A)+cost(R_B) + 86+34 + f_A(1+d_A)+f_B(1+d_B)
     >= 157 + cost(R_A) + cost(R_B) >= 165  (each reader needs an app and an s leaf: cost>=4).
- KERNEL-CHECKED (lean/ModeNext.lean, axioms propext + Quot.sound only):
  value_next_bound: ModeNext valZero valOne Q -> 86 <= |Q| and 2 <= free c/p leaves.
  rest_next_bound:  ModeNext restZero restOne Q -> 34 <= |Q| and 2 <= free leaves.
  Both sharp: valNext_sharp (λb. p (λf. b (λr. Abs f) (p (λg r. App f g))), 86 bits),
  restNext_sharp (λb. p (λf. b I (p F)), 34 bits). Hypotheses exactly as the class's NEXT:
  frame [c,p], β-normal, tag only as head of exactly-two-arg spines, the two rigid laws.
  Proof = generic copy of SelfintClassNext.next_price over a target pair (`mode_price`).

## 6. SPLIT CLASS BOUND (kernel-checked, lean/ModeNext.lean, propext + Quot.sound)
Split class: E = T[λp c s. c A B], A = RA[QA/j], B = RB[QB/j] where
 - T: any opaque knot, T[h] =β h T[h] (any number of holes);
 - RA, RB: arbitrary source terms in frame [s, c, j], exactly one source occurrence of j each,
   Q inserted hygienically (substDec 2 (shift 1 0 Q) R);
 - QA: ModeNext valZero valOne (value-mode rigid laws), QB: ModeNext restZero restOne.
cassembly_lower: |E| >= 157 + holeCost(RA) + holeCost(RB) + 2 depth(jA) + 2 depth(jB).
split_class_165: if RA, RB are applications, |E| >= 165 + 2 depth(jA) + 2 depth(jB).
spec200_member: spec200 = cassemble knot readerA valNext readerB restNext, wire 200 (decide).
Handwritten bridge (zero laws only): RA[Z(r)/s] =β r j and RB[Z(r)/s] =β r j force RA, RB
 to be applications: a variable gives Z(r) (a λ) or a rigid c/j; a λ only reduces to λs;
 r j is normal, not a λ, rigid head r.  => EVERY split-class member has >= 165 bits.
 Unconditional in the reader weight question: no w>=46 needed. (Value/rest laws on unary
 inputs are not even used.)

## 7. Lemma M (mode-shared designs are dominated) — handwritten, battery-checked
E = T[λp c s. (λg. c (g m1) (g m2)) W]. If W is continuation-parametric (T[λp c s. W c] is an
interpreter; e.g. W = λσ. M with M a class-law body in σ), then E_s = T[λp c s. W c] is an
interpreter and |E| - |E_s| = 15 + |m1| + |m2| (selector spine 20+|m1|+|m2| vs `W c` 5).
m1 V N =β V, m2 V N =β N force |m1| >= 7 (K), |m2| >= 6 (F) (no term <= 6 bits in scope works;
small handwritten case check), so >= 28. mode200 -> modedom.lam 172 bits ok=667 skip=1 fail=0,
hnf λc s. s _ _ _.  Direct mode-class arithmetic (no contraction): knot 20 + λpcs 6 + spine 20
 + 13 + λσ 2 + class NEXT 92 + p-lift (>=2 p leaves cross s,c: +4) + reader body (app, s, σ: >=6)
 >= 163.
## 8. Shared-NEXT mixed designs (λn. c (RA[n m1]) (RB[n m2])) (λσ. Qσ): handwritten >= 165
 (knot 20, λpcs 6, let 4, c-spine 8, readers >=4+4, n m1 >=11, n m2 >=10, λσ 2, class Q 92,
  p-lift +2 per p leaf over s,c with >=2 p leaves (pruning only deletes; nextOne has two p) = 4).
 Measured instance 205 (paper).
- spec199.blc (letopt rendering of spec200, p let-bound under λc): 199 bits ok=667 skip=1 fail=0,
  hnf λc s. c A B.  It is outside the literal split class (binder order [c,p,s]); handwritten
  re-run of the assembly arithmetic per layout: [p,c,s] >= 165 (Lean), [c,p,s] >= 164
  (p-lift 0, x x under λc +2, head c +1), [c,s,p] >= 164 (p-lift -1 per p leaf, x x +4,
  head c +1, reader s leaves cost 3). No layout admits a member below 162.
