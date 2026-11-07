/-
Nested head redexes as lets. ((λy.D) E) B1 … Bk is beta-equal to
(λy. D B1↑ … Bk↑) E, which keeps the reader laws and the hole count in any
source context and costs exactly the captures of the B_i, j counted four
times (`push_context_price`). Adjacent independent lets interchange at the
exact price F_d(A) - F_d(E) + uses_y(D) - uses_x(D) (`order_price`;
`minimum_order_charge` in a minimum reader), also across pending operands
(`pending_price`). So in a minimum reader every nested head redex beneath a
let either has x free in its inner definition E or pays the combined
interchange price nonnegatively (`minimum_nested_alternative`). `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintNeededHead
namespace Blc.SelfintNestedLets
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def push (b e : Term) (bs : List Term) : Term :=
  .app (.lam (spine b (bs.map (shift 1 0)))) e

theorem shifted_arguments_contract (bs : List Term) (e : Term) :
    (bs.map (shift 1 0)).map (substDec 0 e) = bs := by
  simp only [List.map_map,Function.comp_def,substDec_shift]
  exact List.map_id bs

/-- ((lambda y.D) E) B1...Bk =beta
    (lambda y.D (shift B1)...(shift Bk)) E. -/
theorem push_join (b e : Term) (bs : List Term) :
    BetaJoin (push b e bs) (spine (.app (.lam b) e) bs) := by
  refine ⟨spine (contract b e) bs,?_,?_⟩
  · have hh := Beta.beta (spine b (bs.map (shift 1 0))) e
    rw [contract,subst_spine,shifted_arguments_contract] at hh
    exact .head hh (.refl _)
  · exact .head (SelfintSourceCost.spine_beta (Beta.beta b e) bs) (.refl _)

theorem shifted_spine_price (bs : List Term) (d : Nat) :
    spineWeight (d+1) (bs.map (shift 1 0)) =
      spineWeight d bs + spineFree 0 bs + 3 * spineOcc (d+1) bs := by
  induction bs with
  | nil => simp [spineWeight,spineFree,spineOcc]
  | cons b bs ih =>
    have hh := shifted_weight b d 0 (by omega)
    simp only [List.map_cons,spineWeight,spineFree,spineOcc]
    omega

theorem push_price (b e : Term) (bs : List Term) (d : Nat) :
    weight d (push b e bs) = weight d (spine (.app (.lam b) e) bs) +
      spineFree 0 bs + 3 * spineOcc (d+1) bs := by
  have hh := shifted_spine_price bs d
  simp only [push,weight,spine_weight]
  omega

theorem shifted_spine_occ (bs : List Term) (j : Nat) :
    spineOcc (j+1) (bs.map (shift 1 0)) = spineOcc j bs := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    simp only [List.map_cons,spineOcc,occ_shift_ge b j 0 (by omega),ih]

theorem push_occ (b e : Term) (bs : List Term) (j : Nat) :
    occ j (push b e bs) = occ j (spine (.app (.lam b) e) bs) := by
  simp only [push,occ,spine_occ,shifted_spine_occ]
  omega

theorem push_scope (b e : Term) (bs : List Term) (k : Nat)
    (hs : FreeUnder k (spine (.app (.lam b) e) bs)) :
    FreeUnder k (push b e bs) := by
  have hh := spine_scope (.app (.lam b) e) bs k hs
  refine ⟨spine_scope_of _ _ _ hh.1 ?_,hh.2⟩
  intro q hq
  obtain ⟨v,hv,rfl⟩ := List.mem_map.mp hq
  exact SelfintClassNext.shift_scope v 0 k
    (spine_arguments_scope (.app (.lam b) e) bs k hs v hv)

theorem betas_context (c : Context) {t u : Term} (h : Betas t u) :
    Betas (c.fill t) (c.fill u) := by
  induction h with
  | refl => exact .refl _
  | head h hs ih => exact .head (beta_fill c h) ih

theorem join_context (c : Context) {t u : Term} (h : BetaJoin t u) :
    BetaJoin (c.fill t) (c.fill u) := by
  obtain ⟨v,ht,hu⟩ := h
  exact ⟨c.fill v,betas_context c ht,betas_context c hu⟩

theorem push_context_laws (c : Context) (b e : Term) (bs : List Term)
    (hr : ReaderLaws (c.fill (spine (.app (.lam b) e) bs))) :
    ReaderLaws (c.fill (push b e bs)) := by
  apply laws_join hr
  · exact context_scope_replace c _ _ 2 hr.scope
      (push_scope b e bs (2+ctxDepth c) (context_scope c _ 2 hr.scope))
  · exact join_context c (push_join b e bs)

theorem push_context_holes (c : Context) (b e : Term) (bs : List Term) :
    occ 1 (c.fill (push b e bs)) = occ 1 (c.fill (spine (.app (.lam b) e) bs)) := by
  simp only [occ_fill,push_occ]

theorem push_context_price (c : Context) (b e : Term) (bs : List Term) :
    weight 0 (c.fill (push b e bs)) =
      weight 0 (c.fill (spine (.app (.lam b) e) bs)) +
      spineFree 0 bs + 3 * spineOcc (ctxDepth c+1) bs := by
  simp only [weighted_fill,Nat.zero_add,push_price]
  omega

/-- Two independent definitions, initially x=A then y=E. The shift on E
    records exactly that E does not depend on x. -/
def oldOrder (b a e : Term) : Term :=
  .app (.lam (.app (.lam b) (shift 1 0 e))) a

def newOrder (b a e : Term) : Term :=
  .app (.lam (.app (.lam (swap 0 b)) (shift 1 0 a))) e

theorem order_join (b a e : Term) : BetaJoin (newOrder b a e) (oldOrder b a e) := by
  have hn := join_appL e (sink_join b a)
  have ho := push_join (.lam b) a [e]
  exact join_trans hn (join_symm ho)

theorem order_occ (b a e : Term) (j : Nat) :
    occ j (newOrder b a e)=occ j (oldOrder b a e) := by
  have hh := push_occ (.lam b) a [e] j
  have hi := inner_occ b a j
  change occ j (inner b a) + occ j e = _
  rw [hi]
  simpa only [push,List.map_cons,List.map_nil,spine,oldOrder,outer,occ] using hh.symm

/-- Exact adjacent-let price: uses_y-uses_x plus captures(A)-captures(E).
    Both definitions remain present exactly once. -/
theorem order_price (b a e : Term) (d : Nat) :
    weight d (newOrder b a e) + occ 1 b + freeLeaves 0 e + 3*occ (d+1) e =
      weight d (oldOrder b a e) + occ 0 b + freeLeaves 0 a + 3*occ (d+1) a := by
  have hb := swap_weight b 0 d
  have ha := shifted_weight a d 0 (by omega)
  have he := shifted_weight e d 0 (by omega)
  simp only [Nat.add_zero,Nat.zero_add] at hb
  simp only [oldOrder,newOrder,weight,Nat.add_assoc,Nat.reduceAdd]
  omega

theorem order_scope (b a e : Term) (k : Nat) (hk : 0<k)
    (hs : FreeUnder k (oldOrder b a e)) : FreeUnder k (newOrder b a e) := by
  have he := beta_freeUnder (Beta.beta (shift 1 0 e) (.var 0)) k ⟨hs.1.2,hk⟩
  simp only [contract,substDec_shift] at he
  exact ⟨⟨swap_scope b 0 (k+2) (by omega) hs.1.1,
    SelfintClassNext.shift_scope a 0 k hs.2⟩,he⟩

theorem order_context_laws (c : Context) (b a e : Term)
    (hr : ReaderLaws (c.fill (oldOrder b a e))) :
    ReaderLaws (c.fill (newOrder b a e)) := by
  apply laws_join hr
  · exact context_scope_replace c _ _ 2 hr.scope
      (order_scope b a e (2+ctxDepth c) (by omega) (context_scope c _ 2 hr.scope))
  · exact join_context c (order_join b a e)

/-- In a minimum reader, independent adjacent lets are ordered by their
    use count minus definition capture charge. -/
theorem minimum_order_charge (c : Context) (b a e : Term)
    (hm : MinimumReader (c.fill (oldOrder b a e))) :
    occ 1 b + freeLeaves 0 e + 3*occ (ctxDepth c+1) e ≤
      occ 0 b + freeLeaves 0 a + 3*occ (ctxDepth c+1) a := by
  have hl := order_context_laws c b a e hm.laws
  have hj : occ 1 (c.fill (newOrder b a e))=1 := by
    simpa only [occ_fill,order_occ] using hm.oneHole
  have hmin := hm.minimal _ hl hj
  have hp := order_price b a e (ctxDepth c)
  simp only [weighted_fill,Nat.zero_add] at hmin
  omega

def pendingOld (b a e : Term) (bs : List Term) : Term :=
  .app (.lam (spine (.app (.lam b) (shift 1 0 e)) bs)) a

def pendingNew (b a e : Term) (bs : List Term) : Term :=
  newOrder (spine b (bs.map (shift 1 0))) a e

theorem pending_join (b a e : Term) (bs : List Term) :
    BetaJoin (pendingNew b a e bs) (pendingOld b a e bs) := by
  have hp := join_context (.appL (.lam .hole) a) (push_join b (shift 1 0 e) bs)
  exact join_trans (order_join (spine b (bs.map (shift 1 0))) a e) hp

theorem shifted_spine_zero (bs : List Term) : spineOcc 0 (bs.map (shift 1 0))=0 := by
  induction bs with
  | nil => rfl
  | cons b bs ih => simp only [List.map_cons,spineOcc,occ_shift_eq,ih,Nat.zero_add]

theorem spineFree_split (bs : List Term) (j : Nat) :
    spineFree j bs = spineOcc j bs + spineFree (j+1) bs := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    have hh := freeLeaves_split b j
    simp only [spineFree,spineOcc]
    omega

/-- With arbitrary pending operands, their x uses cancel against their
    binder-crossing charge. Only their other captured leaves remain. -/
theorem pending_price (b a e : Term) (bs : List Term) (d : Nat) :
    weight d (pendingNew b a e bs) + occ 1 b + freeLeaves 0 e + 3*occ (d+1) e =
      weight d (pendingOld b a e bs) + occ 0 b + freeLeaves 0 a + 3*occ (d+1) a +
      spineFree 1 bs + 3*spineOcc (d+2) bs := by
  have ho := order_price (spine b (bs.map (shift 1 0))) a e d
  simp only [spine_occ,shifted_spine_occ,shifted_spine_zero,Nat.add_zero] at ho
  have hp := push_price b (shift 1 0 e) bs (d+1)
  have he : weight d (oldOrder (spine b (bs.map (shift 1 0))) a e) =
      weight d (pendingOld b a e bs) + spineFree 0 bs + 3*spineOcc (d+2) bs := by
    simp only [oldOrder,pendingOld,push,weight] at hp ⊢
    simp only [Nat.add_assoc,Nat.reduceAdd] at hp ⊢
    omega
  have hf := spineFree_split bs 0
  simp only [Nat.reduceAdd] at hf
  change weight d (newOrder (spine b (bs.map (shift 1 0))) a e) + _ + _ + _ = _
  omega

theorem pending_occ (b a e : Term) (bs : List Term) (j : Nat) :
    occ j (pendingNew b a e bs) = occ j (pendingOld b a e bs) := by
  rw [pendingNew,order_occ]
  have hp := push_occ b (shift 1 0 e) bs (j+1)
  simpa only [oldOrder,pendingOld,push,occ] using congrArg (fun n => n + occ j a) hp

theorem pending_scope (b a e : Term) (bs : List Term) (k : Nat) (hk : 0<k)
    (hs : FreeUnder k (pendingOld b a e bs)) : FreeUnder k (pendingNew b a e bs) := by
  have hp : FreeUnder k (oldOrder (spine b (bs.map (shift 1 0))) a e) :=
    ⟨push_scope b (shift 1 0 e) bs (k+1) hs.1,hs.2⟩
  exact order_scope _ a e k hk hp

theorem pending_context_laws (c : Context) (b a e : Term) (bs : List Term)
    (hr : ReaderLaws (c.fill (pendingOld b a e bs))) :
    ReaderLaws (c.fill (pendingNew b a e bs)) := by
  apply laws_join hr
  · exact context_scope_replace c _ _ 2 hr.scope
      (pending_scope b a e bs (2+ctxDepth c) (by omega) (context_scope c _ 2 hr.scope))
  · exact join_context c (pending_join b a e bs)

theorem minimum_pending_charge (c : Context) (b a e : Term) (bs : List Term)
    (hm : MinimumReader (c.fill (pendingOld b a e bs))) :
    occ 1 b + freeLeaves 0 e + 3*occ (ctxDepth c+1) e ≤
      occ 0 b + freeLeaves 0 a + 3*occ (ctxDepth c+1) a +
      spineFree 1 bs + 3*spineOcc (ctxDepth c+2) bs := by
  have hl := pending_context_laws c b a e bs hm.laws
  have hj : occ 1 (c.fill (pendingNew b a e bs))=1 := by
    simpa only [occ_fill,pending_occ] using hm.oneHole
  have hmin := hm.minimal _ hl hj
  have hp := pending_price b a e bs (ctxDepth c)
  simp only [weighted_fill,Nat.zero_add] at hmin
  omega

/-- Every nested head redex either has an occurrence of x in E, or its
    independent-let interchange pays this exact source price. -/
theorem minimum_nested_alternative (c : Context) (b a e : Term) (bs : List Term)
    (hm : MinimumReader (c.fill (.app (.lam (spine (.app (.lam b) e) bs)) a))) :
    0<occ 0 e ∨
    occ 1 b + freeLeaves 0 (contract e (.var 0)) +
      3*occ (ctxDepth c+1) (contract e (.var 0)) ≤
      occ 0 b + freeLeaves 0 a + 3*occ (ctxDepth c+1) a +
      spineFree 1 bs + 3*spineOcc (ctxDepth c+2) bs := by
  by_cases he : occ 0 e=0
  · right
    have hs := SelfintClassNext.shift_subst_absent e 0 (.var 0) he
    have hp : MinimumReader (c.fill (pendingOld b a (contract e (.var 0)) bs)) := by
      simpa only [pendingOld,contract,hs] using hm
    exact minimum_pending_charge c b a _ bs hp
  · left; omega

#print axioms pending_price
#print axioms minimum_nested_alternative
#print axioms order_price
#print axioms minimum_order_charge
#print axioms push_context_price
end Blc.SelfintNestedLets
