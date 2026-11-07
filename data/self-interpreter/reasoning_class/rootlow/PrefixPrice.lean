import Bridge
namespace Blc.RootLow
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Move binder k outward over n adjacent binders. -/
def rotate (k n : Nat) : Term → Term
 | .var i => if i=k then .var (k+n) else
     if k<i ∧ i≤k+n then .var (i-1) else .var i
 | .lam b => .lam (rotate (k+1) n b)
 | .app f a => .app (rotate k n f) (rotate k n a)

def band (k n : Nat) : Term → Nat
 | .var i => if k<i ∧ i≤k+n then 1 else 0
 | .lam b => band (k+1) n b
 | .app f a => band k n f + band k n a

theorem rotate_price (t : Term) (k n d : Nat) :
    weight (d+k+n+1) (rotate k n t)+band k n t =
      weight (d+k+n+1) t+n*occ k t := by
  induction t generalizing k d with
  | var i =>
    simp only [rotate,band,weight,occ]
    repeat' first | split | simp_all [weight] | omega
  | lam b ih =>
    have h:=ih (k+1) d
    simp only [rotate,band,weight,occ]
    rw [show d+k+n+1+1=d+(k+1)+n+1 by omega]
    omega
  | app f a ihf iha =>
    have hf:=ihf k d;have ha:=iha k d
    simp only [rotate,band,weight,occ,Nat.mul_add];omega

theorem rotate_lambdas (t : Term) (k n : Nat) :
    lamCount (rotate k n t)=lamCount t := by
  induction t generalizing k with
  | var i => simp only [rotate];split <;> (try split) <;> rfl
  | lam b ih => simp [rotate,lamCount,ih]
  | app f a ihf iha => simp [rotate,lamCount,ihf,iha]

def lams : Nat → Term → Term
 | 0,t => t
 | n+1,t => .lam (lams n t)

theorem lams_weight (t : Term) (n d : Nat) :
    weight d (lams n t)=2*n+weight (d+n) t := by
  induction n generalizing d with
  | zero => simp [lams]
  | succ n ih => simp only [lams,weight,ih];rw [show d+1+n=d+(n+1) by omega];omega

def prefixOld (n : Nat) (M A : Term) (cs : List Term) : Term :=
 spine (.app (lams (n+1) M) A) cs

def prefixNew (n : Nat) (M A : Term) (cs : List Term) : Term :=
 .lam (spine (.app (lams n (rotate 0 n M)) (shift 1 0 A)) (cs.map (shift 1 0)))

/-- Exact price even without an arity premise. For the semantic bridge,
n=length(cs)+1: n counts x and every pending-argument binder, while the
innermost original binder is the stream. Captures count j four times. -/
theorem prefix_price (n : Nat) (M A : Term) (cs : List Term) :
    weight 0 (prefixNew n M A cs)+band 0 n M =
      weight 0 (prefixOld n M A cs)+n*occ 0 M+
      freeLeaves 0 A+3*occ 1 A+spineFree 0 cs+3*spineOcc 1 cs := by
  have hm:=rotate_price M 0 n 0
  have ha:=shifted_weight A 0 0 (by omega)
  have hs:=shifted_spine_price cs 0
  simp only [prefixNew,prefixOld,weight,spine_weight,lams_weight,Nat.zero_add] at hm ha hs ⊢
  rw [show 1+n=n+1 by omega]
  omega

#print axioms rotate_price
#print axioms prefix_price
end Blc.RootLow

namespace Blc.RootLow
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

theorem rotate_occ_outer (t : Term) (k n j : Nat) (hj : k+n<j) :
    occ j (rotate k n t)=occ j t := by
  induction t generalizing k j with
  | var i =>
    simp only [rotate,occ]
    repeat' first | split | simp_all [occ] | omega
  | lam b ih => exact ih (k+1) (j+1) (by omega)
  | app f a ihf iha => simp only [rotate,occ,ihf k j hj,iha k j hj]

theorem rotate_depth_outer (t : Term) (k n j : Nat) (hj : k+n<j) :
    occDepth j (rotate k n t)=occDepth j t := by
  induction t generalizing k j with
  | var i => simp only [rotate];split <;> (try split) <;> rfl
  | lam b ih => simp only [rotate,occDepth,ih (k+1) (j+1) (by omega),
      rotate_occ_outer b (k+1) n (j+1) (by omega)]
  | app f a ihf iha => simp only [rotate,occDepth,ihf k j hj,iha k j hj]

theorem lams_lambdas (t : Term) (n : Nat) : lamCount (lams n t)=n+lamCount t := by
  induction n with
  | zero => simp [lams]
  | succ n ih => simp [lams,lamCount,ih,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm]

theorem lams_occ (t : Term) (n j : Nat) : occ j (lams n t)=occ (j+n) t := by
  induction n generalizing j with
  | zero => simp [lams]
  | succ n ih => simpa only [lams,occ,ih,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm]

theorem lams_depth (t : Term) (n j : Nat) :
    occDepth j (lams n t)=occDepth (j+n) t+n*occ (j+n) t := by
  induction n generalizing j with
  | zero => simp [lams]
  | succ n ih =>
    simp only [lams,occDepth,ih,lams_occ]
    rw [show j+1+n=j+(n+1) by omega]
    simp only [Nat.add_mul,Nat.one_mul]
    omega

theorem spineLambdas_shift (cs : List Term) :
    spineLambdas (cs.map (shift 1 0))=spineLambdas cs := by
  induction cs with
  | nil => rfl
  | cons c cs ih => simp [spineLambdas,lamCount_shift,ih]

theorem spineDepth_shift (cs : List Term) (j : Nat) :
    spineDepth (j+1) (cs.map (shift 1 0))=spineDepth j cs := by
  induction cs with
  | nil => rfl
  | cons c cs ih => simp [spineDepth,occDepth_shift_ge c j 0 (by omega),ih]

theorem prefix_lambdas (n : Nat) (M A : Term) (cs : List Term) :
    lamCount (prefixNew n M A cs)=lamCount (prefixOld n M A cs) := by
  simp only [prefixNew,prefixOld,lamCount,spine_lambdas,lams_lambdas,
    rotate_lambdas,lamCount_shift,spineLambdas_shift]
  omega

theorem prefix_depth (n : Nat) (M A : Term) (cs : List Term) :
    occDepth 1 (prefixNew n M A cs)=occDepth 1 (prefixOld n M A cs)+
      occ 1 A+spineOcc 1 cs := by
  simp only [prefixNew,prefixOld,occDepth,occ,spine_depth,spine_occ,lams_depth,lams_occ,
    occDepth_shift_ge A 1 0 (by omega),occ_shift_ge A 1 0 (by omega),
    spineDepth_shift cs 1,shifted_spine_occ cs 1]
  rw [show 2+n=1+(n+1) by omega]
  rw [rotate_depth_outer M 0 n (1+(n+1)) (by omega),
    rotate_occ_outer M 0 n (1+(n+1)) (by omega)]
  simp only [Nat.add_mul,Nat.one_mul]
  omega

/-- When the hole is outside the literal binder prefix, exposure strictly
raises its depth. Equal weight is therefore insufficient, independently
of any semantic claim. In the low-depth profiles the hole must be outside
because the literal prefix has at least two lambdas. -/
theorem prefix_order_external_hole (n : Nat) (M A : Term) (cs : List Term)
    (hj : occ 1 A+spineOcc 1 cs=1) :
    OrderLE (prefixNew n M A cs) (prefixOld n M A cs) ↔
      n*occ 0 M+freeLeaves 0 A+3*occ 1 A+spineFree 0 cs+3*spineOcc 1 cs < band 0 n M := by
  have hw:=prefix_price n M A cs
  have hl:=prefix_lambdas n M A cs
  have hd:=prefix_depth n M A cs
  unfold OrderLE
  constructor
  · intro h;rcases h with h|⟨h,h'|⟨_,h'⟩⟩ <;> omega
  · intro h;left;omega

#print axioms prefix_depth
#print axioms prefix_order_external_hole
end Blc.RootLow
