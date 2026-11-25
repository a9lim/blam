import Blc.SelfintSize45Profiles

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain

/-- The two distinct free slots pay their raw indices at every occurrence,
including any extra lambdas traversed below the current root. -/
theorem two_slot_charge (t : Term) (i j : Nat) (ij : i < j) :
    i * occ i t + occDepth i t + j * occ j t + occDepth j t ≤ indexSum t := by
  induction t generalizing i j with
  | var n =>
    simp only [occ,occDepth,indexSum]
    split <;> split <;> simp_all <;> omega
  | app f a hf ha =>
    have := hf i j ij; have := ha i j ij
    simp only [occ,occDepth,indexSum,Nat.mul_add]; omega
  | lam b ih =>
    have h := ih (i+1) (j+1) (by omega)
    simp only [Nat.add_mul,Nat.one_mul] at h
    change i * occ (i+1) b + (occDepth (i+1) b + occ (i+1) b) +
      j * occ (j+1) b + (occDepth (j+1) b + occ (j+1) b) ≤ indexSum b
    omega

/-- A live width witness with adjacent owners. Each of the two outer slots
occurs exactly once, outside all lambdas of the witness body. -/
def ConsecutiveWitness (d : Nat) : Term → Prop
  | .var _ => False
  | .app f a => ConsecutiveWitness d f ∨ ConsecutiveWitness d a
  | .lam b => ConsecutiveWitness (d+1) b ∨
      (2 ≤ d ∧ 0 < occ 0 b ∧ occ 1 b = 1 ∧ occ 2 b = 1 ∧
       occDepth 1 b = 0 ∧ occDepth 2 b = 0 ∧ ¬ Factors b)

theorem consecutive_of_saturated (t : Term) (d : Nat) (hw : Witness d t) (hx : indexSum t ≤ 3) :
    ConsecutiveWitness d t := by
  induction t generalizing d with
  | var => cases hw
  | app f a hf ha =>
    change indexSum f + indexSum a ≤ 3 at hx
    rcases hw with h | h
    · exact .inl (hf d h (by omega))
    · exact .inr (ha d h (by omega))
  | lam b ih =>
    change indexSum b ≤ 3 at hx
    rcases hw with h | ⟨h0,i,j,ij,jd,hi,hj,nf⟩
    · exact .inl (ih (d+1) h hx)
    · have h := two_slot_charge b (i+1) (j+1) (by omega)
      have := Nat.le_mul_of_pos_right (i+1) hi
      have := Nat.le_mul_of_pos_right (j+1) hj
      obtain rfl : i = 0 := by omega
      obtain rfl : j = 1 := by omega
      simp only [Nat.reduceAdd,Nat.one_mul,Nat.reduceSucc] at *
      exact .inr ⟨by omega,h0,by omega,by omega,by omega,by omega,nf⟩

/-- The six-live profile saturates both the nonlinear leaf and witness index bounds. -/
theorem Size45.six_exact {e : Term} (he : IsSelfInterpreter e) (hw : wire e = 45) (hl : live e = 6) :
    lamCount e = 6 ∧ leafCount e = 8 ∧ indexSum e = 3 ∧ nonlinear e = 2 ∧
      OccBound 2 e ∧ ConsecutiveWitness 0 e := by
  rcases Size45.resources he hw with h | ⟨h,_⟩ | ⟨_,hv,hL,hX⟩
  · omega
  · omega
  have nn := selfInterpreter_two_nonlinear he
  have leaves := leaves_bound e
  refine ⟨hL,hv,hX,by omega,occBound_of_slack e 0 (by omega),?_⟩
  exact consecutive_of_saturated e 0 (selfInterpreter_width he) (by omega)

end Blc.SelfintSingleObject
