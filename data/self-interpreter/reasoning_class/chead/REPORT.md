# Lane chead: continuation-headed interpreters

**Verdict.** No c-headed interpreter below 162 exists in any c-headed analogue of the
separated class: the split class (separate value and remainder payloads, each with its
own reader and mode-NEXT) costs at least **165**, kernel-checked, unconditionally (no
reader-weight question involved); mode-shared and shared-NEXT variants cost at least
163 / 165 (handwritten), and mode sharing is strictly dominated (−28 bits) by an
s-headed design. The cheapest c-headed interpreter built is **199** bits. A
*zero-overhead* conversion c-headed → s-headed is not available by any local or
black-box method (best: +23 for every interpreter, +10 at the generator); having one is
equivalent to the numerical claim that some s-headed interpreter is optimal. So
"c-headed" can be struck from the class-escape list *for class-shaped designs*, not for
arbitrary sources.

All files: `/Users/a9lim/Work/blam/tmp/round4/chead/`. Lean: `lean/ModeNext.lean`
(checked with `LEAN_PATH=.../lean/.lake/build/lib/lean lean -j2`, 0.5 s; every theorem
depends only on `propext`, `Quot.sound`).

## 0. Notions of "c-headed" (question 4)

- **H (hnf-c-headed):** the principal hnf of E is `λc s. c A B`; equivalently E's head
  reduction with c, s rigid reaches a c-spine without ever exposing s.
- **L (literal):** E ≡ `λc s. c A B` syntactically.
- **G (generator):** E = T[λp c s. c A B] for an opaque knot T (T[h] =β h T[h]).
- **Split / mode-shared / shared-NEXT:** source-level classes of §3 (each ⊂ G ⊂ H).

Class members of `class-bound.md` are s-headed in the hnf sense, as a *consequence* of the
reader zero law, not a separate hypothesis: R Z(r) =β r j with r rigid excludes an hnf with
0 or ≥2 leading λs and any head other than s. Coverage of each result is stated with it.
An hnf-c-headed source may display s applications (λc s.(λy. c A B)(s X), an erasing redex,
absent from global minima by `SelfintWireCost`), and an hnf-s-headed source may contain a
c-headed interpreter verbatim (conv_spec.lam below).

## 1. Constructions (questions 1, 2)

Every line is `python3 tools/self-interpreter/battery.py FILE` from the repo root; hnf
shapes from `hnf.py` (head reduction, computer-checked).

| file | bits (written / letopt) | battery | hnf | idea |
|---|---|---|---|---|
| twice209.lam | 209 / 209 | `209 bits ok=667 skip=1 fail=0` | c, 2 args | `λc s.(λp. c (p K s) (p F s)) INT162` |
| mode200.lam | 200 / 200 | `200 bits ok=667 skip=1 fail=0` | c, 2 args | `λc s.(λg. c (g K) (g F)) (λσ. BODY_σ)`: the 162's body with cont := σ, recursion through the c-headed fixed point (the "one lazy pass" design) |
| spec200.lam | 200 / **199** | `200 bits ok=667 skip=1 fail=0` | c, 2 args | `λc s. c A B`, A = value-mode reader + NEXT, B = rest-mode reader + NEXT, sharing only the knot |
| spec199.blc | 199 | `199 bits ok=667 skip=1 fail=0` | c, 2 args | letopt rendering of spec200: the p-let moves under λc |
| modedom.lam | 172 | `172 bits ok=667 skip=1 fail=0` | s, 3 args | mode200 with the selector spine replaced by `W c` (Lemma M) |
| knotconv.lam | 210 | `210 bits ok=667 skip=1 fail=0` | s, 3 args | spec200's generator head c → `s (λx y. c)` (Lemma K, +10) |
| conv_spec.lam | 223 | `223 bits ok=667 skip=1 fail=0` | s, 3 args | `λc s. E (s (λx y. c)) s` on spec200 (Lemma S23, +23) |
| conv162.lam | 185 | `185 bits ok=667 skip=1 fail=0` | s, 3 args | the same conversion on the 162 |

polish lines: mode200 `letopt --max-cuts 2: smallest 200`; spec200 `smallest 199`;
twice209 `smallest 209`.

spec200, exactly:

    (\x. x x) (\x. (\p. \c. \s. c
       (s I (\u. s F) (\b2. p (\exp. b2 (\r. \args \arg. exp (cell arg args))
                                     (p (\exp2 \r. \args. exp args (exp2 args))))))
       (s I (s s) (\b2. p (\exp. b2 I (p F)))))
      (x x))

A's variable arm is `λu. s F` (13 bits; s F = r on unary), B's is `s s` (6;
s s u = N), B's NEXT is `λb2. p (λexp. b2 I (p F))` (36): ABS gives B r2, APP gives
B (B r2) because p F t = B t for the c-headed fixed point p.

Accounting against the 162: variable arms 28 → 13 + 6 (−9), NEXT 96 → 88 + 36 (+28),
reader skeleton `s I _ _` twice (+12), interface and c-spine 11 vs 4 (+7): +38, letopt +37.

**Answer to (1).** The "single recursive pass, lazily value / lazily rest" design is
mode200: one closure w = λσ. BODY_σ, selected twice. Under β there is no run-time sharing;
the source shares code only, and the selector spine `c (w K) (w F)` costs 29 bits plus
λw and the let, and K, F are the cheapest selectors (no term ≤ 6 bits behaves as K; F is
the 6-bit minimum). The prompt's "|P| + ~20" for parse-twice is not attainable: it is +47.
Splitting the payloads (spec) ties the mode design at 200 and letopts to 199; a mixed
design sharing only NEXT is 205 on paper. The c-headed premium over the 162 is 37–47 bits
in every architecture tried, and it is structural: CPS passes the remainder by η for free,
while a c-head must pay an explicit remainder computation (B) before reading the stream.

## 2. Conversions c-headed → s-headed (question 3, first half)

**Lemma S23 (handwritten; battery-checked instances).** For *every* closed interpreter E
(coverage: all of H, and s-headed E too),

    E' = λc s. E (s (λx y. c)) s,     |E'| = |E| + 23,     hnf(E') is s-headed.

*Proof.* Contract instance with continuation S X, S = cons b r, X = λx y. c:
E (S X) S =β S X (λz.M) N = X b r (λz.M) N = c (λz.M) N (β-joins only; substituting a term
for the rigid continuation of a join is sound, divergent M included). Shape: E k s →h* k A B
for every k when E is c-headed (head reduction never inspects k), so hnf(E') = λc s. s X A B.
Price: λcλs 4, two applications 4, `s X` 2+2+(4+5), last s 2.
Consequence: min(all) ≥ min(s-headed) − 23. The image is never a class member (its zero law
gives c A B, not r j).

**Lemma K (handwritten).** If E = λc s. X literally, hnf λc s. c A B, and the hnf head c is
the residual of the source occurrence o of c at depth d below λs, replacing o by
`s (λx y. c)` gives an s-headed interpreter of |E| + d + 10. *Proof.* Head reduction never
contracts c, so the same head steps reach λc s. s (λxy.c) A~ B~ with only *some* c's of
A, B replaced. Partial replacement is sound: lift the join A(C,C,S) →* w ←* λz.M to two
distinct rigid continuations (a variable-for-variable substitution creates no redex, so every
step lifts); w contains neither, since λz.M contains no continuation; then substitute.
For generator form T[λp c s. c A B], d = 0: **+10** (knotconv.lam, 210 = 200 + 10).

**Lemma M (handwritten; battery-checked).** For E = T[λp c s. (λg. c (g m1) (g m2)) W] with W
continuation-parametric (T[λp c s. W c] an interpreter, e.g. W = λσ. M with M obeying the
class laws in σ), E_s = T[λp c s. W c] is an interpreter and |E| − |E_s| = 15 + |m1| + |m2|
≥ 28 (m1 V N =β V for all values forces |m1| ≥ 7, m2 V N =β N forces |m2| ≥ 6: every term of
at most 6 bits in scope — variables p,c,s,g, I, λ-variables, two-leaf applications — fails on
a witness; handwritten case check). Mode-sharing is never optimal. mode200 → modedom 172.
Parse-twice is the degenerate case: E_s = P itself, −47.

**No zero-overhead conversion.** A conversion C with |C(E)| ≤ |E| for every c-headed E
implies min(s-headed) ≤ min(c-headed); conversely if the global minimum is s-headed the
identity on minima is one. So "remove s-headedness by conversion" *is* the numerical
statement "some s-headed interpreter is optimal", exactly as the global lane found for
contract-only conversion into the class (`tmp/round4/global/REPORT.md` §3). Black-box
contexts λc s. E κ σ need κ s-headed with κ A B =β c A B and σ =β s, which costs ≥ 13 + 10;
I found no context below +23 and none at the source level below +10.

## 3. Lower bounds for c-headed classes (question 3, second half)

### 3.1 Mode NEXT bounds (kernel-checked, `lean/ModeNext.lean`)

Frame [c = 0, p = 1], fresh stream t = var 2, NEXT β-normal with its tag only as the head
of exactly-two-argument spines — the class's NEXT hypotheses verbatim — with the laws

    value mode:  Q K t =β p (λf r. Abs f) t      Q F t =β p (λf. p (λg r. App(f,g))) t
    rest mode:   Q K t =β p (λf r. r) t          Q F t =β p (λf. p (λg r. r)) t

- `value_next_bound`: |Q| ≥ 86 and ≥ 2 free c/p leaves; sharp (`valNext_sharp`,
  λb. p (λf. b (λr. Abs f) (p (λg r. App f g))), 86 bits).
- `rest_next_bound`: |Q| ≥ 34 and ≥ 2 free leaves; sharp (`restNext_sharp`,
  λb. p (λf. b I (p F)), 34 bits).

The proof is `SelfintClassNext.next_price` generalized over the target pair (`mode_price`:
`ModeNext.lambda`, `ModeNext.pruned_forms`, `merged_lower`, a `decide` over the four
η-choices). The merge minima: value [84, 99, 98, 93], rest [32, 47, 46, 41], against the
class's [90, 106, 105, 101].

### 3.2 The split class: at least 165 bits (kernel-checked + one-line handwritten bridge)

Members: E = T[λp c s. c (RA[QA/j]) (RB[QB/j])] with T any opaque knot (any number of
holes), RA, RB arbitrary source terms over [s, c, j] with one source occurrence of j each
(they may sit j under binders and duplicate it), QA a value-mode NEXT, QB a rest-mode NEXT,
inserted hygienically (`payload R Q = substDec 2 (shift 1 0 Q) R`).

- `cassembly_lower`: |E| ≥ 157 + holeCost(RA) + holeCost(RB) + 2·depth(jA) + 2·depth(jB)
  (knot ≥ 20, interface + c-spine 13, 86 + 34, each NEXT's ≥ 2 leaves lifted over λs).
- `split_class_165`: if RA and RB are applications, |E| ≥ 165 + 2·depth(jA) + 2·depth(jB).
- `spec200_member`: spec200 is literally `cassemble knot readerA valNext readerB restNext`,
  200 bits (`decide`).
- Handwritten bridge, using only the zero laws RA[Z(r)/s] =β r j and RB[Z(r)/s] =β r j: a
  variable reader gives Z(r) (a λ) or a rigid c / j; a λ-reader reduces only to λs; r j is
  normal, not a λ, with rigid head r. So both readers are applications and **every split
  member has ≥ 165 bits.** The unary laws are not used, so the bound also holds for readers
  with any unary behaviour.
- Binder-order variants (handwritten re-run of the same arithmetic): p let-bound between c
  and s (spec199's layout) ≥ 164; p let-bound under s ≥ 164.

### 3.3 Shared variants (handwritten, on the kernel-checked class NEXT bound)

- **Mode-shared** E = T[λp c s. (λg. c (g m1) (g m2)) (λσ. Rb[Q/j])], Rb a class reader body
  in σ, Q a class NEXT in frame [σ, p]: knot 20 + λpcs 6 + selector spine 33 (with K, F
  minimal) + λσ 2 + Q 92 + p-lift 4 (≥ 2 p leaves cross s, c; pruning only deletes and
  nextOne has two p) + Rb ≥ 6 (an application containing s and σ) ≥ **163**. And Lemma M
  makes it 28 bits worse than an s-headed design anyway.
- **Shared NEXT only** (λn. c (RA[n m1]) (RB[n m2])) (λσ. Qσ): 20 + 6 + 4 (let) + 8 (c-spine,
  c at index 2) + 4 + 4 (readers) + 11 + 10 (n m1, n m2) + 2 + 92 + 4 ≥ **165**.

## 4. Literal c-headed interpreters (handwritten)

For E ≡ λc s. c A B, |E| = 11 + |A| + |B|. After c := s (head-decomposition.md), λs. A' is
a closed value decoder D and λs. B' a closed remainder extractor R with |A'| = |A| − q_A,
|B'| = |B| − q_B. Hence

    |E| ≥ 7 + min|D| + min|R| + q ≥ min|D| + 34      (min|R| ≥ 27, remainder.md),
    and conversely λc s. c (D s) (R s) is a literal c-headed interpreter of |D| + |R| + 19.

A literal c-headed sub-162 therefore needs a value decoder of at most 127 bits. The best
value decoder known is `intL162 K`, 171; a value-only recursion with a separate extractor
prices at 177+ on paper (APP needs the remainder, so a decoder contains either a CPS parser
or an extractor). No value-decoder floor above ~39 is known, so this is a reduction, not an
exclusion. (Coverage: L only.)

## 5. Exact identities used

- c-headed fixed point p (p k t = k (A t) (B t)): p F t =β B t, p (λa. X) t =β X[A t/a] (B t);
  so B's APP case is p F (B r2) = B (B r2) and its NEXT is λb2. p (λexp. b2 I (p F)).
  Proof: one unfolding of the knot, then two head contractions.
- On genuine streams: s F = r and s s u = N give the value-mode / rest-mode variable arms
  `λu. s F` (13) and `s s` (6) — together 9 bits below the 162's 28-bit arm, which must
  deliver both at once through cont.
- On closed-program streams (first bit 0), s K = K b r = K, s (λx y. c) = c.
- Lemma M's exact difference |E| − |E_s| = 15 + |m1| + |m2| (selector spine 20 + |m1| + |m2|
  against `W c`, 5).

## 6. Read

- c-headed interpreters can be removed from the hypothesis list **for every class-shaped
  design**: the c-headed analogues of the separated class (split, mode-shared, shared-NEXT)
  all sit at ≥ 163–165 under the class's own kind of hypotheses, and the split bound is
  kernel-checked and unconditional, with no w ≥ 46 question. That is a stronger position
  than the s-headed class itself, where 146 ≤ min ≤ 162.
- They cannot be removed *in general* by conversion: every conversion I can build costs
  +10 (generator surgery) or +23 (black box), and a zero-overhead one is equivalent to the
  open numerical statement. A general hnf-c-headed sub-162 would have to break the same
  kinds of hypotheses as an s-headed one (NEXT using the stream, non-normal or
  non-canonical mode laws, knotless recursion, payloads sharing code non-parametrically) and
  additionally pay the remainder computation that CPS gets free by η; every construction pays
  37–47 bits for it.
- The technique that would close the general case is a source-level projection-sharing
  theorem: if head reduction copies shared code into both payloads, either the shared code is
  continuation-parametric (then Lemma M removes the c-head at a saving) or the payloads
  carry separately priced value and remainder engines. head-decomposition.md's sharing
  counterexample (shows payload binder counts alone do not price sources) is the obstacle;
  the needed extra ingredient is to use both projection *laws* on the shared code, not
  only counts.

## 7. Files

`twice209.lam`, `mode200.lam`, `spec200.lam`, `spec199.blc`, `modedom.lam`, `knotconv.lam`,
`conv_spec.lam`, `conv162.lam`, `hnf.py` (hnf shape checker), `lean/ModeNext.lean`
(mode NEXT bounds, split-class assembly, spec200 membership), `lean/Probe.lean` (merge
minima), `lean/spec200_term.txt`, `NOTES.md`.
