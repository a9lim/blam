import Blc.SelfintCompact44.ShellSplit

namespace Blc.SelfintSingleObject.SiblingSplit
open Term SelfintFloor SelfintLowerBound SelfintNonlinearChain FiveLive Saturated OperandGrammar SourceRefutations RowReplay

private def select (n i seed : Nat) (ss : List (List α)) : List α :=
  ss.zipIdx.flatMap fun (ts,j) => if (seed+j) % n = i then ts else []

private theorem mem_select (n : Nat) (hn : 0 < n) (seed : Nat) {ss : List (List α)} {t : α}
    (h : t ∈ ss.flatten) : ∃ i ∈ List.range n, t ∈ select n i seed ss := by
  obtain ⟨ts,hm,ht⟩ := List.mem_flatten.mp h
  obtain ⟨j,hj⟩ := List.mem_iff_getElem?.mp hm
  refine ⟨(seed+j) % n,List.mem_range.mpr (Nat.mod_lt _ hn),List.mem_flatMap.mpr
    ⟨(ts,j),List.mk_mem_zipIdx_iff_getElem?.mpr hj,?_⟩⟩
  simpa using ht

/-- Distribute the sibling's own word and first application across the slices.
A large single-sibling context can be partitioned even when its outer resource split is fixed. -/
def sides (n i seed d l v x : Nat) : List Term :=
  (words (x+1) v x).zipIdx.flatMap fun (w,j) =>
    select n i (seed+7*j) (Split43.plain (l+v) d l w)

theorem sides_cover (n : Nat) (hn : 0 < n) (seed d l v x : Nat) {s : Term}
    (h : s ∈ (words (x+1) v x).flatMap (layouts (l+v) d l)) :
    ∃ i ∈ List.range n, s ∈ sides n i seed d l v x := by
  obtain ⟨w,hw,hs⟩ := List.mem_flatMap.mp h
  obtain ⟨j,hj⟩ := List.mem_iff_getElem?.mp hw
  rw [← Split43.plain_flatten] at hs
  obtain ⟨i,hi,hm⟩ := mem_select n hn (seed+7*j) hs
  exact ⟨i,hi,List.mem_flatMap.mpr ⟨(w,j),List.mk_mem_zipIdx_iff_getElem?.mpr hj,hm⟩⟩

def contexts (n i fuel d l v x : Nat) : List Shell :=
  let hole := if l=0 ∧ v=0 ∧ x=0 then [Shell.hole] else []
  match fuel with
  | 0 => hole
  | f+1 => hole ++ (List.range v).flatMap fun r => (List.range (l+1)).flatMap fun m =>
      (List.range (x+1)).flatMap fun y =>
        let tails := shells f d (l-m) (v-(r+1)) (x-y)
        if tails.isEmpty then [] else
          let ts := sides n i (11*r+17*m+23*y) d m (r+1) y
          tails.flatMap fun k => ts.flatMap fun s => [.left k s,.right s k]

theorem contexts_cover (n : Nat) (hn : 0 < n) (f d l v x : Nat) {k : Shell}
    (h : k ∈ shells f d l v x) :
    ∃ i ∈ List.range n, k ∈ contexts n i f d l v x := by
  cases f with
  | zero => exact ⟨0,List.mem_range.mpr hn,h⟩
  | succ f =>
    simp only [shells,List.mem_append] at h
    rcases h with base | more
    · exact ⟨0,List.mem_range.mpr hn,List.mem_append_left _ base⟩
    obtain ⟨r,hr,m,hm,y,hy,k',hk',s,hs,eq⟩ := by
      simpa only [List.mem_flatMap] using more
    obtain ⟨i,hi,hh⟩ := sides_cover n hn (11*r+17*m+23*y) d m (r+1) y (List.mem_flatMap.mpr hs)
    refine ⟨i,hi,List.mem_append_right _ (List.mem_flatMap.mpr ⟨r,hr,List.mem_flatMap.mpr
      ⟨m,hm,List.mem_flatMap.mpr ⟨y,hy,?_⟩⟩⟩)⟩
    simp only
    split
    · rename_i empty
      rw [List.isEmpty_iff.mp empty] at hk'; cases hk'
    · exact List.mem_flatMap.mpr ⟨k',hk',List.mem_flatMap.mpr ⟨s,hh,eq⟩⟩

private def bodies (L : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) :=
  (SharedShell.atoms L lit x l v w).filter fun b => FactorFilter.markedHere 0 (.lam b)

def five (n i V L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) :=
  (bodies L lit x l v w).flatMap fun b =>
    (contexts n i (V-v) (if lit then 1 else 0) (L-(l+1)-(if lit then 1 else 0)) (V-v) (X-x)).flatMap fun k =>
      if 2 ≤ k.mass nonlinear + nonlinear (.lam b) then
        let t := k.fill (.lam b)
        let e := wrap lit t
        if live e == 5 && !chainB e && (!lit || 0 < occ 0 t) then [e] else []
      else []

theorem five_cover (n : Nat) (hn : 0 < n) (V L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat)
    (hs : Every (fun i => BadRow (five n i V L X lit x l v w)) (List.range n)) :
    BadRow (Grammar43.fiveRow V L X lit x l v w) := by
  apply row_of_forall
  intro e he interp
  simp only [Grammar43.fiveRow] at he
  split at he
  · cases he
  · obtain ⟨b,hb,h⟩ := List.mem_flatMap.mp he
    obtain ⟨k,hk,mem⟩ := List.mem_flatMap.mp h
    have same := mem
    split at same
    · simp only [List.mem_singleton] at same; subst e
      have nc : ¬ Chain (k.fill (.lam b)) := by
        cases lit <;> exact fun hc => selfInterpreter_not_chain interp.1 hc
      have price := not_chain_two_nonlinear _ nc
      rw [k.additive nonlinear (.lam b) (fun _ _ => rfl)] at price
      obtain ⟨i,hi,hh⟩ := contexts_cover n hn _ _ _ _ _ (List.mem_filter.mp hk).1
      apply (hs.get hi).get _ interp
      exact List.mem_flatMap.mpr ⟨b,hb,List.mem_flatMap.mpr ⟨k,hh,by simpa only [if_pos price] using mem⟩⟩
    · cases same

private theorem mass_nonlin_le (k : Shell) : k.mass nonlinear ≤ k.mass live := by
  induction k with
  | hole => exact Nat.le_refl _
  | left k s ih => exact Nat.add_le_add ih (nonlinear_le_live s)
  | right s k ih => exact Nat.add_le_add (nonlinear_le_live s) ih

/-- A live public variable leaves at most one exterior live binder when the
atom already has three. A linear atom then cannot supply two incomparable nonlinear sites. -/
theorem public_linear (V L X x l v : Nat) (w : List Nat)
    (ok : (bodies L true x l v w).all (fun b => 3 ≤ live (.lam b) && nonlinear (.lam b) == 0) = true) :
    BadRow (Grammar43.fiveRow V L X true x l v w) := by
  apply row_of_forall
  intro e he interp
  simp only [Grammar43.fiveRow] at he
  split at he
  · cases he
  · obtain ⟨b,hb,h⟩ := List.mem_flatMap.mp he
    obtain ⟨k,hk,mem⟩ := List.mem_flatMap.mp h
    have bh := List.all_eq_true.mp ok b hb
    simp only [Bool.and_eq_true,decide_eq_true_eq,beq_iff_eq] at bh
    split at mem
    · rename_i good
      simp only [List.mem_singleton] at mem; subst e
      have pub := SelfintRound6BoundLiteral.one_lambda_public_occ interp.1
      have count : live (.lam (k.fill (.lam b))) = 5 := by
        exact beq_iff_eq.mp (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp good).1).1
      have exterior := mass_nonlin_le k
      have nn := not_chain_two_nonlinear (k.fill (.lam b)) (fun hc => selfInterpreter_not_chain interp.1 hc)
      rw [k.additive nonlinear (.lam b) (fun _ _ => rfl)] at nn
      change 0 < occ 0 (k.fill (.lam b)) at pub
      simp only [live,if_pos pub] at count
      rw [k.additive live (.lam b) (fun _ _ => rfl)] at count
      omega
    · cases mem
end Blc.SelfintSingleObject.SiblingSplit
