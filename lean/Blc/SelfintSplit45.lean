import Blc.SelfintFast45
import Blc.SelfintWordMeasures

namespace Blc.SelfintSingleObject.Fast45
open Term SelfintFloor SelfintLowerBound SelfintWireCost
open OperandGrammar FiveLive Saturated Grammar43 RowReplay SourceRefutations

def FrameCover (both lit : Bool) (V L X x l v : Nat) (ks : List Shell) :=
  ∀ k ∈ frames V L X lit x l v, fits both l v lit k = true → k ∈ ks

theorem frameCover_eq {both lit V L X x l v} {ks : List Shell}
    (h : (frames V L X lit x l v).filter (fits both l v lit) = ks) :
    FrameCover both lit V L X x l v ks := by
  intro k hk ok
  rw [← h]
  exact List.mem_filter.mpr ⟨hk,ok⟩

theorem row_cover {both lit V L X x l v w ks} (wl : w.length = v)
    (cf : FrameCover both lit V L X x l v ks) (hb : BadRow (row both lit ks L x l v w)) :
    BadRow (original both V L X lit x l v w) := by
  apply row_of_forall
  intro e he hm
  have obtainB : ∃ b ∈ atoms L lit x l v w, ∃ k ∈ frames V L X lit x l v,
      e = wrap lit (k.fill (.lam b)) ∧
      ((live e == 5 || (both && live e == 6)) && !chainB e && (!lit || 0 < occ 0 (k.fill (.lam b)))) = true := by
    cases both <;> simp only [original, Bool.false_eq_true,if_false,if_true,fiveRow,Size45.eightRow] at he <;>
      split at he
    all_goals first | cases he; done | skip
    all_goals
      obtain ⟨b,hb,h⟩ := List.mem_flatMap.mp he
      obtain ⟨k,hk,mem⟩ := List.mem_flatMap.mp h
      split at mem
      · rename_i ok
        simp only [List.mem_singleton] at mem
        subst e
        exact ⟨b,hb,k,hk,rfl,by simpa using ok⟩
      · cases mem
  obtain ⟨b,ab,k,hk,rfl,ok⟩ := obtainB
  have a := (List.mem_filter.mp ab).1
  have inner := List.mem_filter.mp a
  have ⟨lc,vc⟩ := marked_measures inner.1
  have live3 : 3 ≤ live (.lam b) := of_decide_eq_true (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp inner.2).1).1
  have h := (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp ok).1).1
  simp only [Bool.or_eq_true,Bool.and_eq_true,beq_iff_eq] at h
  have fit := fits_required hm h live3
  rw [lc,vc,wl] at fit
  apply hb.get _ hm
  exact List.mem_flatMap.mpr ⟨b,ab,List.mem_flatMap.mpr ⟨k,cf _ hk fit,by simp only [if_pos ok,List.mem_singleton]⟩⟩

private theorem every_of_forall {xs : List α} {P : α → Prop} (h : ∀ x ∈ xs, P x) : Every P xs := by
  induction xs with
  | nil => exact .nil
  | cons x xs ih => exact .cons (h x (by simp)) (ih (fun a ha => h a (by simp [ha])))

theorem empty_cell {both lit V L X x l v} (cf : FrameCover both lit V L X x l v []) :
    Every (fun w => BadRow (original both V L X lit x l v w)) (words (x+1) v x) := by
  apply every_of_forall
  intro w hw
  apply row_cover (word_length hw) cf
  apply row_of_forall
  simp [row,useAtom]

def splitAtoms (count i L : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) :=
  (Split43.bucket count i (Split43.markedBlocks (l+v) 1 (atomScope lit x) l w)).filter fun b =>
    (3 ≤ live (.lam b) && l+1 ≤ live (.lam b)+(L-5) && Layouts.nonshrinking b) &&
      FactorFilter.markedHere 0 (.lam b)

private theorem mem_part (n : Nat) (hn : 0 < n) {ss : Split43.Seg} {b : Term} (h : b ∈ ss.flatten) :
    ∃ i ∈ List.range n, b ∈ Split43.bucket n i ss := by
  obtain ⟨ts,hm,ht⟩ := List.mem_flatten.mp h
  obtain ⟨j,hj⟩ := List.mem_iff_getElem?.mp hm
  exact ⟨j%n,List.mem_range.mpr (Nat.mod_lt _ hn),List.mem_flatMap.mpr
    ⟨(ts,j),List.mk_mem_zipIdx_iff_getElem?.mpr hj,by simpa using ht⟩⟩

def piece (n i : Nat) (both lit : Bool) (ks : List Shell) (L x l v : Nat) (w : List Nat) :=
  (splitAtoms n i L lit x l v w).flatMap (useAtom both lit ks)

theorem pieces_cover (n : Nat) (hn : 0 < n) (both lit : Bool) (ks : List Shell) (L x l v : Nat) (w : List Nat)
    (p : Every (fun i => BadRow (piece n i both lit ks L x l v w)) (List.range n)) :
    BadRow (row both lit ks L x l v w) := by
  apply row_of_forall
  intro e h
  obtain ⟨b,hb,he⟩ := List.mem_flatMap.mp h
  obtain ⟨h,marked⟩ := List.mem_filter.mp hb
  obtain ⟨h,ok⟩ := List.mem_filter.mp h
  rw [← Split43.marked_flatten] at h
  obtain ⟨i,hi,hs⟩ := mem_part n hn h
  exact (p.get hi).get (List.mem_flatMap.mpr ⟨b,List.mem_filter.mpr ⟨hs,Bool.and_eq_true_iff.mpr ⟨ok,marked⟩⟩,he⟩)

end Blc.SelfintSingleObject.Fast45
