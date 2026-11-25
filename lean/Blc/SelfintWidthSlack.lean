import Blc.SelfintWidthPrice

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintCapture

/-- Each occurrence of an external slot costs at least its ambient index,
in addition to the full internal witness charge. -/
theorem external_index_charge (t : Term) (d j : Nat) (hd : d ≤ j) :
    localPrice d t + j * occ j t ≤ indexSum t := by
  induction t generalizing d j with
  | var n =>
    simp only [localPrice,indexSum,occ]
    split <;> split <;> simp_all <;> omega
  | app f a hf ha =>
    simp only [localPrice,indexSum,occ,Nat.mul_add]
    have := hf d j hd; have := ha d j hd; omega
  | lam b ih =>
    have h := ih (d+1) (j+1) (by omega)
    simp only [Nat.add_mul,Nat.one_mul] at h
    change localPrice (d+1) b + j * occ (j+1) b ≤ indexSum b; omega

theorem width_external_charge (t : Term) (d j : Nat) (hd : d ≤ j) (hw : Witness d t) :
    3 + j * occ j t ≤ indexSum t := by
  have := width_local_price t d hw
  have := external_index_charge t d j hd
  omega

/-- With a single spare index unit an internal witness abstraction can
capture its nearest external variable once. Every further slot is absent. -/
theorem one_spare_capture {b} (hw : Witness 0 (.lam b)) (hx : indexSum b ≤ 4) :
    occ 0 (.lam b) ≤ 1 ∧ ∀ j, 0 < j → occ j (.lam b) = 0 := by
  have hc := width_local_price (.lam b) 0 hw
  change 3 ≤ localPrice 1 b at hc
  constructor
  · have h := external_index_charge b 1 1 (Nat.le_refl _)
    simp only [Nat.one_mul] at h; change occ 1 b ≤ 1; omega
  · intro j hj
    have h := external_index_charge b 1 (j+1) (by omega)
    by_cases hp : 0 < occ (j+1) b
    · have := Nat.le_mul_of_pos_right (j+1) hp; omega
    · change occ (j+1) b = 0; omega

#print axioms width_external_charge
#print axioms one_spare_capture
end Blc.SelfintSingleObject
