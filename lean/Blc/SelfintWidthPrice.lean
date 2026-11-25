import Blc.SelfintStatman
import Blc.SelfintOperandWords

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintWireCost SelfintCapture SelfintNonlinearChain

/-- Sum of raw indices at leaves owned by the d surrounding local binders
or by binders inside the term. External leaves have zero charge here. -/
def localPrice (d : Nat) : Term → Nat
  | .var i => if i < d then i else 0
  | .app f a => localPrice d f + localPrice d a
  | .lam b => localPrice (d+1) b

theorem localPrice_le (t : Term) (d : Nat) : localPrice d t ≤ indexSum t := by
  induction t generalizing d with
  | var i => simp only [localPrice,indexSum]; split <;> omega
  | app f a hf ha => exact Nat.add_le_add (hf d) (ha d)
  | lam b ih => exact ih (d+1)

private theorem local_occ_price (t : Term) (d i : Nat) (hid : i < d) (h : 0 < occ i t) :
    i ≤ localPrice d t := by
  induction t generalizing d i with
  | var n => simp only [occ] at h; split at h <;> simp_all [localPrice]
  | lam b ih => have := ih (d+1) (i+1) (by omega) h; change i ≤ localPrice (d+1) b; omega
  | app f a ihf iha =>
    simp only [occ] at h; simp only [localPrice]
    by_cases hf : 0 < occ i f
    · have := ihf d i hid hf; omega
    · have := iha d i hid (by omega); omega

private theorem local_pair_price (t : Term) (d i j : Nat) (hij : i < j) (hjd : j < d)
    (hi : 0 < occ i t) (hj : 0 < occ j t) : i+j ≤ localPrice d t := by
  induction t generalizing d i j with
  | var n => simp only [occ] at hi hj; split at hi <;> split at hj <;> omega
  | lam b ih =>
    have := ih (d+1) (i+1) (j+1) (by omega) (by omega) hi hj
    change i+j ≤ localPrice (d+1) b; omega
  | app f a ihf iha =>
    simp only [occ] at hi hj; simp only [localPrice]
    by_cases hif : 0 < occ i f <;> by_cases hjf : 0 < occ j f
    · have := ihf d i j hij hjd hif hjf; omega
    · have := local_occ_price f d i (by omega) hif
      have := local_occ_price a d j hjd (by omega); omega
    · have := local_occ_price a d i (by omega) (by omega)
      have := local_occ_price f d j hjd hjf; omega
    · have := iha d i j hij hjd (by omega) (by omega); omega

theorem width_local_price (t : Term) (d : Nat) (h : Witness d t) : 3 ≤ localPrice d t := by
  induction t generalizing d with
  | var => cases h
  | lam b ih =>
    rcases h with h | ⟨_,i,j,hij,hj,hi',hj',_⟩
    · exact ih (d+1) h
    · have := local_pair_price b (d+1) (i+1) (j+1) (by omega) (by omega) hi' hj'
      change 3 ≤ localPrice (d+1) b; omega
  | app f a ihf iha =>
    rcases h with h | h
    · have := ihf d h; simp only [localPrice]; omega
    · have := iha d h; simp only [localPrice]; omega

theorem scope_of_price_eq (t : Term) (d : Nat) (hd : 0 < d)
    (h : localPrice d t = indexSum t) : FreeUnder d t := by
  induction t generalizing d with
  | var i => simp only [localPrice,indexSum] at h; split at h <;> change i < d <;> omega
  | lam b ih => exact ih (d+1) (by omega) h
  | app f a ihf iha =>
    have := localPrice_le f d; have := localPrice_le a d
    simp only [localPrice,indexSum] at h
    exact ⟨ihf d hd (by omega),iha d hd (by omega)⟩

/-- At index sum three, an abstraction containing an internal width witness
captures no external variables, even when its ambient term is open. -/
theorem closed_of_saturated_width {b} (hw : Witness 0 (.lam b)) (hx : indexSum b = 3) :
    Closed (.lam b) := by
  have hh := width_local_price (.lam b) 0 hw
  change 3 ≤ localPrice 1 b at hh
  have := localPrice_le b 1
  exact scope_of_price_eq b 1 (by decide) (by omega)

#print axioms width_local_price
#print axioms closed_of_saturated_width
end Blc.SelfintSingleObject
