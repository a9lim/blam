# nextctor lane notes

Target: Q in frame [c,p] (c idx 0, p idx 1 at Q's top), rigid laws
  Q K t = p (λf. c Abs f) t,  Q F t = p (λf. p (λg. c App f g)) t.
In the 162: total = 24 + 42 + q + F. Direct 161 iff q + F <= 95
(F=4,q<=91 | F=3,q<=92 | F=2,q<=93). Widen regions (any reader):
q<=91 | F=2,q<=97 | F=3,q<=94.

## Canonical pricing (handwritten, matches 92)
Q0 = λb. p (λf. b (c Abs(f)) (p (λg. c App(f,g))))
 L=8, A=13, X=22 -> 2L+4A+2+X = 92.
 header λb,p,app,λf, dispatch (b + 2 apps) = 17
 ABS: c(4) app(2) Abs(f)(34: λeλa 4, app 2, f 4, cell 24) = 40
 APP: p(5) app λg c(5) app App(19) = 35
 free leaves: p idx2 (4b), c idx2 (4b), p idx3 (5b), c idx3 (5b) = 18 bits.

## Design 1 (family A, single c via no-op 2nd parse, dispatch outside value)
 λb. p (λf. b (λk.k k) p (λg. c (b (Abs f) (App f g))))
 laws hold on paper. q = 103, F = 3. (matches prompt's "+11").
## Design 1b (same, dispatch inside one shared λe)
 λb. p (λf. b (λk.k k) p (λg. c (λe. b (λa. f (cell a e)) (f e (g e)))))
 q = 102, F = 3.
## Design 2 (c passed as shared 3rd tag argument)
 λb. p (λf. b (λk. k (Abs f)) (λk. p (λg. k (App f g))) c)
 q = 101, F = 3.
## Design 3 (dispatch the first-parse continuation)
 λb. p (b (λf. c Abs f) (λf. p (λg. c App f g)))   q = 93, F = 4.
## Design 4 (p let, top or under λb)
 (λP. λb. P (λf. b (c Abs f) (P (λg. c App f g)))) p  q = 99, F = 3.
 λb. (λP. ...) p : also 99. c-let likewise q = 100, F = 3.

All of designs 1-4 checked by chk.py (lane-local pricer + normal-order
normalizer, rigid c,p,t; normal forms compared): laws hold, prices as above.

## F=2 combinations (chk.py, laws hold)
 (λP. λb. P (λf. b (λk.k Abs) (λk. P (λg. k App)) c)) p      q=107
 (λP C. λb. P (λf. b (C Abs) (P (λg. C App)))) p c           q=105 (=widen Qlet shape)
 (λP. λb. P (λf. b (λk.kk) P (λg. c (λe. b ...)))) p        q=108
So far best F=2 is 105, best F=3 is 99, best F=4 is 92.

## Economics (handwritten)
 A free leaf in Q costs 4-5 bits in q (idx 2-3) + 1 in F. Replacing it by a
 bound leaf needs: binder (2) + a routing application (2) + bound leaf(s)
 (>=2 each) per use. Removing a c leaf removes one use but adds a routing
 binder per branch (dispatch selects functions) or a no-op parse (>=8) +
 second dispatch (b leaf + 2 apps >= 7). Removing a p leaf: no existing
 binder can be bound to p under rigid laws (b:=K/F, f,g:=rigid values,
 rests rigid), so a fresh redex (λP. M) A, A containing the p leaf: the
 p-related leaf bits stay 9 at best and the redex costs 4 + shifts.

## Shared-continuation (open-function nonlinear sharing) variants, chk.py
 λb. p (λf. (λk. b (k k) (p k)) (λg. c (λe. b (λa. f cell) (f e (g e)))))  q=108 F=3
   (junk k b / k f: 110 / 109; value dispatch outside λe: 109)
 c-let placements: (λC. λb. ...) c and λb.p(λf.(λC. ...) c)   q=100 F=3
 p-let + continuation dispatch: 100.  Best F=3 remains the p-let, 99.
Obstruction (handwritten, rigid): a shared continuation K* used by both
 branches must contain b. Proof: if K* (with no b) satisfies
 K* g =β c (App f g) for rigid g, then K* X =β c (App f X) =
 c (λe. f e (X e)) for every X, whose normal form has rigid f applied to
 two arguments, never =β c (Abs f) (f under λe λa with one argument).
 Same argument for the value: V(f,g) =β App f g for rigid g forces
 V(f,X) =β λe. f e (X e) ≠ Abs f. So c-sharing through a shared
 continuation always pays a second b-dispatch (b leaf >= 3 + 2 apps).

## Idea: "selected head" (b c p) applied to a merged binder
 λb. p (λf. b c p (λz. b (λa. f (λx y. x a (y z))) (c (λe. f e (z e)))))
 merges Abs's λe with APP's λg (the same binder z serves as env or as g).
 Hand price q=96, F=4: second dispatch costs 8, merge saves 2. (unchecked yet)
 checked: merged-binder design q=96 F=4 laws hold.

## More tag-spine designs (chk.py, all laws hold)
 λb. p (b (λk f. k Abs) (λk f. p (λg. k App)) c)          q=101 F=3
 λb. p (λf. b (λh. c Abs[h]) (λh. p (λg. c App[h,g])) f)   q=103 F=4
 λb. b (λP k. P (λf. k Abs)) (λP k. P (λf. P (λg. k App))) p c   q=113 F=2 (=Qfour)
 λb. b (λk. p (λf. k Abs)) (λk. p (λf. p (λg. k App))) c   q=109 F=4

## Why sharing beyond c/p leaves cannot pay (handwritten sketch, not a proof)
 Residual/origin view: every λ/app node of NF0, NF1 is a copy of a Q node
 (K/F's own λs never survive: NFs have no vacuous λ and no I subterm).
 Canonical = exactly the union of NF0 (18 nodes) and NF1 (16) sharing only
 the prefix p·(λf.) (3 nodes) plus 4 consumed nodes (λb, b, 2 dispatch apps):
 35 nodes = L 8 + A 13 + 14 leaves, size 70 + X, X = 22.
 Common material of NF0, NF1 (same free variables): only p, c, f. A shared λ
 (one source λ with residuals in both NFs) needs the two bodies to be
 instances of one source body; capture-avoiding substitution forbids an
 argument body from using the shared binder, so a shared λe is paid back by
 a consumed λe' in each argument (λh. c (λe. h e) shares nothing). Every
 other merge diverges at once (heads c vs p, then λa vs c) and pays a
 dispatch (b leaf + 2 apps) per divergence: the 96 above.
 Push-in (spine b B1 B2 Z -> b (B1 Z) (B2 Z), contract both): for Z = c,
 J0 = q drops by 10-|Z| and J3 = q+3F by 7-|Z| (z linear in each arm), so
 short shared spine arguments are dominated by the two-arm form.
Consult1 (Codex astra high, read-only) launched with this ledger.

## Observation: long tag spines are two-arm merges at an application
 b B1 B2 Z1..Zm = (b B1 B2) Z1 .. Zm, and the two-arm merge of the prunes
 (B1 Z⃗, B2 Z⃗) at their common application nodes is exactly this term. So a
 normal source with long spines is a two-arm merge of NON-normal prunes
 T0 = B1' Z⃗, T1 = B2' Z⃗ (redexes when B_i are λs). The only thing the old
 proof loses is prune normality; the gap is the same as source redexes
 whose argument Z is shared by both arms. Vacuous-in-one-arm Z is strictly
 dominated (b (B1 Z) B2'' saves λz, keeps all apps and indices). Z used in
 both arms must leave residual material common to NF0 and NF1.

## One continuation serving ABS's first parse and APP's second (chk.py)
 λb. (λk. p (b (k k) (λf. p (k f)))) (λf g. c (λe. b (λa. g cell) (f e (g e))))
 q=114 F=3 (variants 115, 121). Far worse: the value dispatch moves inside
 a closed-over continuation and pays a let.

## Splice check (validates 24 + 42 + q + F)
 contdisp163.lam = 162 with NEXT := λb. p (b (λf. c Abs) (λf. p (λg. c App)))
 battery: `163 bits  ok=667 skip=1 fail=0`; polish: letopt (3 cuts) smallest
 163, --no-inline 2 cuts smallest 163 (renderings re-batteried ok=667).

## Lemma (computer-checked, complete): the no-op parser costs >= 8
 noop.py enumerates every term of size <= 9 over the frame [c,p] (free c, p
 allowed) and normalizes N k t with rigid k, t: N k t =β k X t holds only for
 λk. k k (8) and λk. k c (9). So family A's ABS route pays >= 8 for N0,
 plus a selection between N0 and p (b leaf + 2 apps, or a binder).

## Consult1 result (Codex, astra/high, read-only; job cx-20261021-233815-7f07)
 - New c-let placement, one bit under mine (Codex's):
   λb. p ((λC f. b (C Abs) (p (λg. C App))) c)   q=99 F=3 (chk.py: laws hold)
   (P-analogue λb. p ((λP f. ...) p) gives 101/F4; with p let too 105/F2.)
 - Family exclusion (Codex's argument; reproduced independently by my
   invbeta.py, complete): every source that contracts to literal Q0 in ONE
   β-step at any site (any argument liftable to the site, any nonempty
   subset of its occurrences): 121 constructions; min q = 98 at F=4,
   99 at F=3, no F=2. Codex's formula: sharing two occurrences of a
   variable of index i, with E leaves free relative to the site, changes
   size by E + 4 − i; repeated arguments in Q0 are only p (+7), c (+7),
   f (+10) and APP's e (+8); no repeated compound argument.
 - Codex's opening: tag-specific sources that do not reduce to Q0 for a
   rigid b, or interacting redexes.

## Complete inverse-β sweeps (invbeta.py, invbeta2.py, invbeta3.py, invbase.py)
 Non-erasing expansions at any site, any liftable argument, any nonempty
 occurrence subset; dedup per parent. Min q per F:
  above Q0:  level1 (121 srcs) F4 98, F3 99;  level2 (16,157) F2 105, F3 105,
             F4 104;  level3 (2,374,981; 17 s) F2 111, F3 105, F4 106.
  So every source with a non-erasing reduction path of length <= 3 to Q0
  has (F,q) in {(4,92)} ∪ {q >= 98}: none in a region. Min per-step size
  increments: 6, 3, 0 (sharing becomes possible after an expansion, so no
  monotonicity proof for unbounded depth).
  above #1 (93): L1 F4 99, F3 100; L2 F2 106, F3 106, F4 105.
  above #2 (96): L1 F4 102, F3 103; L2 F2 109, F3 109, F4 108.
  above #6 (101,F3): L1 F2 107, F3 107; L2 113, 113.

## Complete long-spine sweep (spine.py; laws verified for all 215 by spinecheck.py)
 b (λz. X[z/SX]) (λz. Y[z/SY]) Z for every Z liftable to the dispatch site,
 every pair of occurrence subsets; level 2 = a second shared argument.
  Q0 base 92: spine1 F3 101, F4 102; spine2 F3 110, F4 109; spine1+one
     inverse-β expansion: F2 107, F3 107, F4 106.
  #1 base 93: spine1 F3 101, F4 102; spine2 109/110; +exp 107/107/108.
  DF (dispatch first) base 99: spine1 F3 105; spine2 F2 112; +exp F2 111.
 All outside the regions.

## Done: REPORT.md written (ledger, L1-L6, honest read). No stray blam processes.
