# shared lane notes (round 4, wave 5): readers with no deletable dispatch site

## 0. Start (read brief)
- Read PROMPT, BRIEF, BRIEF5, class-bound §1-3, single REPORT.
- Plan: first certify the 90 fuel cut-offs of single's two-law probe
  `\s. (\g. _) (\y. y _ _)` at w<=45, then extend to other shared-dispatcher skeletons.

## 1. Probe P1 rerun once with full dump (computer)
probe1.py (wrapper over types/narrow.py unchanged, untabled, laws 0,1,2, fuel 2000):
 prefix '\s. (\g. _) (\y. y _ _)', B=45: 13,481 states, 0 SOL, 90 FUEL, 82 s, 63 MB, 1 thread.
 Full list in p1.json (single lane printed only 20). Next: certify the 90.

## 2. Certification method for cut-offs (handwritten soundness argument)
Erasure: replace each open hole by an opaque constant (no env). Every beta step on the erased
 term lifts to a real beta step at the same position for EVERY filling (holes are atoms, so
 no redex is inside one; e commutes with substitution). Head steps lift to head steps while
 the head is not a hole.
Criterion C1 (no hnf): an erased reduction S ->+ S e1..em (S an application, >=1 head step,
 arbitrary internal steps allowed, e.g. normalizing arguments) repeats forever with
 infinitely many head steps; by head/internal postponement (Barendregt 11.4.6:
 ->i;->h c= ->h+;->i*) the head reduction is infinite, so no hnf, for every filling.
Criterion C2 (mismatch): erased reduction reaches an hnf whose lambda count/head/arity
 differs from the target's root (head a non-hole constant or bound var): lifts, and these
 are beta-invariant -> law fails for every filling.
A cut-off is certified when some law fails by C1/C2 at some Boehm-tree node reached
 filler-independently (all ancestors' heads non-holes and matching the target).
cert.py first full run exceeded 2 min (killed at ~130 s; no output used). Rework: per-term
 timing, lower fuel. Cap incident noted.
cert.py v2 (low-water snapshot cycle check, as in narrow.py's CERT, but on erased terms with
 argument normalization): controls 162 ok/ok/ok, 47-reader ok, 40-bit near miss fails unary.
 Certifies 86 of the 90 P1 cut-offs (p1cert.txt + rerun of 16). 4 left: lambda s. H H with
 H = \y. y A _, A in {\z. y z _, \z. z (y z), \z. y (y z), \z. s (y z)}.

## 3. Self-feeding lemma (handwritten) -> the 4 remaining P1 cut-offs
Lemma SF. Let S be a set of terms closed under application (X,Y in S => X Y in S), every
 element a spine X0 X1..Xm with Xi in S and X0 in a base set B of lambdas, such that for every
 X0 in B and Z in S: X0 Z ->h+ X' Z' R.. with X', Z' in S. Then X Y R.. (X,Y in S) has no hnf.
 Proof: unfold X's spine: X0 Z1 rest with Z1 in S (Z1 = X1, or Y if m=0); one or more head
 steps give X' Z' rest' with X', Z' in S; repeat forever: infinite head reduction.
Instances, H = \y. y A_y W_y (W arbitrary), B = {H} u {A_X : X in S}:
 H Z -> Z A_Z W_Z: Z in S, A_Z in B.  Need A_X Z ->h+ (S-term) (S-term) ...:
 A = \z. y z V : A_X Z -> X Z V'          (X, Z in S)
 A = \z. z (y z): A_X Z -> Z (X Z)        (Z, X Z in S)
 A = \z. y (y z): A_X Z -> X (X Z)        (X, X Z in S)
 A = \z. s (y z): A_X Z -> s (X Z) -> (X Z) b r  for s = cons b r (X Z in S... head X, arg Z)
 So H H has no hnf, for every filling of the holes and every stream cons b r: all three
 laws fail. => all 90 P1 cut-offs certified (86 computer, C1/C2; 4 handwritten, SF).
RESULT 1 (computer-checked narrowing + certified cut-offs): no reader
 \s. (\g. B) (\y. y A W) with w <= 45, for ANY B, A, W (redexes included).

## 4. Engine speed (computer)
Profile: narrow.py time is almost all fuel (2000 beta/run, rerun with CERT). P1 at B=40:
 fuel 2000 -> 933 states/4 cut-offs (~6 s); fuel 300 -> same 933/4 in 0.4 s; fuel 100 same 0.1 s.
 Lower fuel is complete (fuel never prunes; cut-offs are post-certified by cert.py; an
 uncertified cut-off is re-narrowed from its show-string as --prefix at higher fuel).
P2 '\s. (\g. _) _' B=45 fuel 300: OVERFLOW (100k states in 1.3 s) -> state cap binds, not time.
 Must split into cells.
P3 '\s. (\g. _) (\y. _) _' B=45: OVERFLOW (100k, 3.2 s).
P4 '\s. (\g. _) (\y. y _ _) _' B=45 fuel 300: 47,591 states, 0 SOL, 239 cut-offs, 41 s. (p4.json)
P4 cut-offs: 223/239 certified by cert.py (p4cert.txt). 16 left; 4 of them (#33,35,55,107)
 are lambda s. H H C with the four SF dispatchers: Lemma SF covers trailing args -> certified
 (handwritten). 12 left: re-narrow each from its show-string at fuel 3000.
Re-narrow at fuel 3000 (renarrow.py): #184,185,192,237 now pruned by narrow.py itself (fail).
 8 left as cut-offs at fuel 3000: #15,135,147,182 (H = \y. y y (\z. z y)) handwritten:
 Y-family Y0 = \z.H, Y(k+1) = \w. w Yk; Y Y ->h+ H by induction; H Y C -> Y Y (\w. w Y) C
 ->h+ H (\w. w Y) C: infinite. 15: H (\z.H) C; 135: same + extra arg; 147: \z. consumes C,
 then H (\w.H); 182: H (H Y0) C ->h* H Y1 ...  => certified (handwritten).
 Open: #233,103,116,207 (lambda s. Hk Hk C, closed s-free Hk).
P4 open: #103,116,207,233 = lambda s. T C with T = Hk Hk closed s-free; certifier and
 fuel 3000 both inconclusive. Combinatory sim of #103 (cl103.py: H y = y A y, A z w = w (z w),
 start H H C): 20,000 head steps, stack above C grows ~0.39/step, never needs C. EVIDENCE only;
 needs an invariant proof (deferred). P4 status: 235/239 certified, 4 closed combinators open.
P3j '\s. (\g. _) (\y. _) _' --jdepth 1: OVERFLOW (100k, 4 s).

## 5. Tabling with redexes (handwritten + differential)
Needed-occurrence argument does not use beta-normality: j/c in the outputs must come from a
 source occurrence inside a hole present in some residual (no other way to create the name);
 an orphan (in no residual) never influences any law's future, so it is a 2-bit filler (all
 holes are under \s, depth >= 1). Fuel only yields 'fuel' (unclean, never tabled). So narrow2
 tabling is sound for joint law sets {0, unary} with redexes. Differential: P4 at B=42,
 tabled 6,686 states vs untabled 9,113: identical SOL (none) and identical 37 cut-offs.
 But tabled is slower per state (14.8 s vs 12.2 s): no help for the big cells.
Big cells overflow: P5 '\s. (\g. _) _ j', P5b '\s. (\g. _) (\y. _) j' (100k untabled).
Structural fact (handwritten): with j at M-depth 0, a let (\g. B) H in M is j-free as a
 whole (B under \g, H a lambda or under the let) -> every call g X is j-free; j sits outside.

## 6. Coordinator redirect (05:xx): lambda-rooted minimum readers are closed by syntactic
closures (s-spine + body lets). Wrap up; root-let results first.
Lift lemma (handwritten): a root reader R = (\g. \s. B) H with no pending argument (H free
 vars among c, j) and R' = \s. (\g. B~) H (binders swapped in B, H shifted under \s) satisfy
 R s =beta R' s for every s (both -> B[H/g]), so R' is a reader iff R is, and
 w(R') = w(R) + u_s(B) - u_g(B) + f_c(H) + 4 occ_j(H)
 (g's uses get one index cheaper, s's one dearer, H's c leaves +1, j in H one lambda deeper).
Corollary (P1 is minimality-free): every root reader (\g. \s. B) (\y. y A W) has
 w >= 46 - u_s + u_g - f_c(H) - 4 occ_j(H); in particular w >= 46 when u_g >= u_s + f_c(H)
 + 4 occ_j(H). (P1 searched A, W at depth 2 = (\s, \y) and B at depth 2, any j placement.)
No process of this lane left running.
REPORT.md write refused by harness; report returned as final message text instead.
