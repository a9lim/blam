import Blc.SelfintNestedLets
import Blc.SelfintReader30
namespace Blc.RootLow
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets SelfintControl
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Precisely the three-coordinate minimum in the current class-bound. -/
structure Minimum3 (r : Term) : Prop extends LexMinimumReader r where
  depths : ∀ t, ReaderLaws t → occ 1 t=1 → weight 0 r=weight 0 t →
    lamCount r=lamCount t → occDepth 1 r ≤ occDepth 1 t

def OrderLE (u r : Term) : Prop :=
  weight 0 u < weight 0 r ∨
  weight 0 u = weight 0 r ∧ (lamCount u < lamCount r ∨
    lamCount u = lamCount r ∧ occDepth 1 u ≤ occDepth 1 r)

theorem transport {r u : Term} (hm : Minimum3 r) (hl : ReaderLaws u)
    (hj : occ 1 u=1) (ho : OrderLE u r) :
    Minimum3 u ∧ weight 0 u=weight 0 r ∧ lamCount u=lamCount r ∧
    occDepth 1 u=occDepth 1 r := by
  have hw := hm.minimal u hl hj
  have hew : weight 0 u=weight 0 r := by rcases ho with h|⟨h,_⟩ <;> omega
  have hL := hm.lambdas u hl hj hew.symm
  have heL : lamCount u=lamCount r := by
    rcases ho with h|⟨_,h|⟨h,_⟩⟩ <;> omega
  have hd := hm.depths u hl hj hew.symm heL.symm
  have hed : occDepth 1 u=occDepth 1 r := by
    rcases ho with h|⟨_,h|⟨_,h⟩⟩ <;> omega
  refine ⟨?_,hew,heL,hed⟩
  refine ⟨⟨⟨hl,hj,?_⟩,?_⟩,?_⟩
  · intro t ht hjt; rw [hew]; exact hm.minimal t ht hjt
  · intro t ht hjt hwt; rw [heL]; exact hm.lambdas t ht hjt (hew.symm.trans hwt)
  · intro t ht hjt hwt hlt
    rw [hed]; exact hm.depths t ht hjt (hew.symm.trans hwt) (heL.symm.trans hlt)

/-- The externally established lambda-rooted-minimum bound is an explicit
hypothesis. This theorem does not claim to formalize those finite inventories. -/
def LambdaFloor : Prop := ∀ b, Minimum3 (.lam b) → 46 ≤ weight 0 (.lam b)

theorem exposure_floor (hLambda : LambdaFloor) {r b : Term}
    (hm : Minimum3 r) (hs : FreeUnder 2 (.lam b))
    (hj : occ 1 (.lam b)=1) (hb : BetaJoin (.lam b) r)
    (ho : OrderLE (.lam b) r) : 46 ≤ weight 0 r := by
  obtain ⟨hmin,hw,_,_⟩ := transport hm (laws_join hm.laws hs hb) hj ho
  have h := hLambda b hmin
  omega

theorem swap_lambdas (t : Term) (k : Nat) : lamCount (swap k t)=lamCount t := by
  induction t generalizing k with
  | var n => simp only [swap]; split <;> (try split) <;> rfl
  | lam b ih => simp [swap,lamCount,ih]
  | app f a ihf iha => simp [swap,lamCount,ihf,iha]

theorem swap_depth_outer (t : Term) (k j : Nat) (hj : k+2≤j) :
    occDepth j (swap k t)=occDepth j t := by
  induction t generalizing k j with
  | var n => simp only [swap]; split <;> (try split) <;> rfl
  | lam b ih =>
    simp only [swap,occDepth]
    rw [ih (k+1) (j+1) (by omega),swap_occ_outer b (k+1) (j+1) (by omega)]
  | app f a ihf iha => simp only [swap,occDepth,ihf k j hj,iha k j hj]

theorem sink_lambdas (b a : Term) : lamCount (inner b a)=lamCount (outer b a) := by
  simp [inner,outer,lamCount,swap_lambdas,lamCount_shift]; omega

theorem sink_depth (b a : Term) (j : Nat) :
    occDepth j (inner b a)=occDepth j (outer b a)+occ j a := by
  simp only [inner,outer,occDepth,occ]
  rw [swap_depth_outer b 0 (j+1+1) (by omega),
    swap_occ_outer b 0 (j+1+1) (by omega),
    occDepth_shift_ge a j 0 (by omega),occ_shift_ge a j 0 (by omega)]
  omega

/-- If A contains j, a weight-neutral sink raises the third coordinate.
Consequently the non-strict numeric inequality alone is NOT a bridge. -/
theorem sink_order (b a : Term) : OrderLE (inner b a) (outer b a) ↔
    occ 0 b + freeLeaves 0 a + 3*occ 1 a < occ 1 b ∨
    (occ 0 b + freeLeaves 0 a + 3*occ 1 a = occ 1 b ∧ occ 1 a=0) := by
  have hw := sink_price b a 0
  have hl := sink_lambdas b a
  have hd := sink_depth b a 1
  simp only [Nat.reduceAdd] at hw
  unfold OrderLE
  constructor
  · intro h; rcases h with h|⟨h,h'|⟨_,h'⟩⟩ <;> omega
  · intro h; rcases h with h|⟨h,h'⟩
    · left; omega
    · right; refine ⟨by omega,Or.inr ⟨hl,by omega⟩⟩

/-- Pending operands remain outside a local sink. The price is unchanged;
the result need not be lambda-rooted. -/
theorem pending_sink_price (b a : Term) (cs : List Term) :
    weight 0 (spine (inner b a) cs) + occ 1 b =
      weight 0 (spine (outer b a) cs) + occ 0 b + freeLeaves 0 a + 3*occ 1 a := by
  have h := sink_price b a 0
  simp only [spine_weight,Nat.reduceAdd] at h ⊢; omega

/-- The root pull lemma, with arbitrary remaining operands. Its input
already displays the freshness condition as a shift; nothing is copied. -/
theorem pull_price (b a : Term) (bs cs : List Term) (d : Nat) :
    weight d (spine (push b a bs) cs) =
      weight d (spine (spine (.app (.lam b) a) bs) cs) +
      spineFree 0 bs + 3*spineOcc (d+1) bs := by
  have h:=push_price b a bs d
  simp only [spine_weight] at h ⊢; omega

/-- Exact telescoping bridge through arbitrary hand-offs. These premises
must be checked for the actual source trace; they assert neither source
normalization nor preservation of the hole count by arbitrary beta steps. -/
theorem handoff_floor (hLambda : LambdaFloor) {r u b : Term}
    (hm : Minimum3 r) (hru : BetaJoin u r) (hub : BetaJoin (.lam b) u)
    (hs : FreeUnder 2 (.lam b)) (hj : occ 1 (.lam b)=1)
    (dw1 dw2 : Int)
    (hp1 : (weight 0 u : Int)-weight 0 r=dw1)
    (hp2 : (weight 0 (.lam b) : Int)-weight 0 u=dw2)
    (hprice : dw1+dw2<0 ∨ dw1+dw2=0 ∧
       (lamCount (.lam b)<lamCount r ∨
        lamCount (.lam b)=lamCount r ∧ occDepth 1 (.lam b)≤occDepth 1 r)) :
    46≤weight 0 r := by
  apply exposure_floor hLambda hm hs hj (join_trans hub hru)
  rcases hprice with h|⟨h,hL⟩
  · left; omega
  · exact Or.inr ⟨by omega,hL⟩

/-- Scalar envelope for a linear root with j-free argument. f is c in A,
M is the depth of the unique x. The hypotheses are proved source invariants
in the report, not hidden semantic assumptions in this arithmetic theorem. -/
theorem linear_nohole_scalar (f M b h d L V T : Nat)
    (hf : 2≤f) (hM : 1≤M) (hL : M+2≤L) (hL3 : 3≤L)
    (hV : 5+f+b≤V) (hT : M+b≤T)
    (hbeta : 7+b+4*h≤(f-1)*M)
    (hw : 2*L+4*V-4+T+4*d≤45) :
    d=0 ∧ b=0 ∧ h=0 ∧
      ((f=3 ∧ M=4 ∧ L=6 ∧ V=8 ∧ (T=4 ∨ T=5)) ∨
       (f=4 ∧ M=3 ∧ L=5 ∧ V=9 ∧ T=3)) := by
  have hfhi : f≤5 := by omega
  have hh : f=2 ∨ f=3 ∨ f=4 ∨ f=5 := by omega
  rcases hh with rfl|rfl|rfl|rfl <;> simp only [Nat.reduceSub] at hbeta <;> omega

#print axioms exposure_floor
#print axioms sink_order
#print axioms pull_price
#print axioms handoff_floor
#print axioms linear_nohole_scalar
end Blc.RootLow

namespace Blc.RootLow
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum

/-- Exact extended-weight cost at any beta step, including intermediates
with more than one j. No law or normalization hypothesis is used. -/
theorem contextual_step_price (C : Context) (b a : Term) :
    (weight 0 (C.fill (contract b a)) : Int)-weight 0 (C.fill (.app (.lam b) a)) =
      ((occ 0 b : Int)-1)*weight (ctxDepth C) a+
      ((freeLeaves 0 a : Int)+3*occ (ctxDepth C+1) a-1)*occDepth 0 b-
      2*occ 0 b-4-freeLeaves 1 b-3*occ (ctxDepth C+2) b := by
  have h:=weighted_beta_at b a (ctxDepth C)
  simp only [weighted_fill,Nat.zero_add,Int.natCast_add]
  omega

/-- A syntactic mask selecting which residual j leaves to retain. The
semantic replay chooses the one colour surviving on zero. Every dropped
j at absolute lambda depth d is replaced by the free continuation c. -/
inductive Repair : Nat → Term → Term → Int → Prop
 | same (d n : Nat) : Repair d (.var n) (.var n) 0
 | drop (d : Nat) : Repair d (.var (d+1)) (.var d) (3*(d:Int)-2)
 | lam {d b u e} : Repair (d+1) b u e → Repair d (.lam b) (.lam u) e
 | app {d f a u v e g} : Repair d f u e → Repair d a v g →
     Repair d (.app f a) (.app u v) (e+g)

theorem repair_price {d t u e} (h : Repair d t u e) :
    (weight d t : Int)-weight d u=e := by
  induction h with
  | same => omega
  | drop d =>
    simp [weight,show d≠d+1 by omega]
    omega
  | lam h ih => simp only [weight,Int.natCast_add];omega
  | app h h' ih ih' => simp only [weight,Int.natCast_add];omega

theorem repair_lambdas {d t u e} (h : Repair d t u e) : lamCount t=lamCount u := by
  induction h with
  | same => rfl
  | drop => rfl
  | lam h ih => simp only [lamCount,ih]
  | app h h' ih ih' => simp only [lamCount,ih,ih']

/-- If the final head reduct is repaired to one lambda-rooted hole, the
net price is the total beta expansion minus the discarded-hole saving. -/
theorem repaired_endpoint_price {r t u : Term} {e S : Int}
    (h : Repair 0 t u e) (hp : (weight 0 t : Int)-weight 0 r=S) :
    (weight 0 u : Int)-weight 0 r=S-e := by
  have hh:=repair_price h
  omega

#print axioms contextual_step_price
#print axioms repair_price
#print axioms repaired_endpoint_price
end Blc.RootLow
