import Blc.SelfintOperandWords
import Blc.Selfint37Evidence

namespace Blc.SelfintSingleObject.SourceRefutations
open Term SelfintFloor SelfintClass SelfintControl SelfintProbe SelfintLowerBound SelfintNonlinearChain
open SelfintWireCost WeakHeadClock

def chainB : Term → Bool
  | .var _ => true
  | .lam b => chainB b
  | .app f a => chainB f && chainB a && (nonlinear f == 0 || nonlinear a == 0)

private theorem chainB_sound (t : Term) (h : chainB t = true) : Chain t := by
  induction t with
  | var => trivial
  | lam b ih => exact ih h
  | app f a ihf iha =>
    simp only [chainB,Bool.and_eq_true,Bool.or_eq_true,beq_iff_eq] at h
    exact ⟨ihf h.1.1,iha h.1.2,h.2⟩

def run (normal : Bool) (k : Nat) (t : Term) : Term :=
  ((if normal then normalSteps k t else headSteps k t)).getD t

theorem run_reduct (normal : Bool) (k : Nat) (t : Term) : Betas t (run normal k t) := by
  cases normal with
  | false =>
    cases h : headSteps k t with
    | none => simpa [run,h] using Betas.refl t
    | some u => simpa [run,h] using headReds_betas' h
  | true =>
    cases h : normalSteps k t with
    | none => simpa [run,h] using Betas.refl t
    | some u => simpa [run,h] using normalSteps_sound h

theorem reduct_interprets {e t} (h : Betas e t) (he : IsSelfInterpreter e) : IsSelfInterpreter t := by
  induction h with
  | refl => exact he
  | head h _ ih => exact ih (selfInterpreter_beta he h)

theorem chain_cut {e} (n : Bool) (k : Nat) (h : chainB (run n k e) = true) :
    ¬ MinimalInterpreter e := fun he =>
  selfInterpreter_not_chain (reduct_interprets (run_reduct n k e) he.1) (chainB_sound _ h)

theorem cost_cut {e} (n : Bool) (k : Nat) (h : wire (run n k e) < wire e) :
    ¬ MinimalInterpreter e := fun he => Nat.not_le_of_lt h
      (he.2 _ (reduct_interprets (run_reduct n k e) he.1))

theorem w_cut {e} (n : Bool) (k : Nat) (h : Round3Floor38.WGrammar38.B
    Round3Floor38.WGrammar38.empty (run n k e)) : ¬ MinimalInterpreter e :=
  fun he => Round3Floor38.WGrammar38.not_selfinterpreter h
    (reduct_interprets (run_reduct n k e) he.1)

/-- Expose at most two literal public binders. Closedness gives the
second abstraction at most one external variable. -/
def body : Term → Term
  | .lam (.lam b) => b
  | .lam b => b
  | t => t

theorem so_cut {e} (n : Bool) (k : Nat) (h : SO (body (run n k e))) : ¬ MinimalInterpreter e := by
  intro he
  have hi := reduct_interprets (run_reduct n k e) he.1
  generalize hu : run n k e = u at h hi
  apply selfInterpreter_not_so hi
  cases u with
  | var | app => exact h
  | lam b =>
    apply so_closed_lam hi.1
    cases b with
    | var | app => exact h
    | lam b => exact .lam h (.var 0) hi.1 (SelfintProjections.subst_self _ 0 hi.1).symm

theorem mismatch_cut {e c m r u : Term} (targetSteps fuel : Nat) (hm : Closed m)
    (hr : normalSteps targetSteps (.app (.app c (.lam m)) r) = some u) (hu : NFt u)
    (h : Layouts.mismatch fuel (.app (.app e c) (streamOf (blcCode m) r)) u = true) :
    ¬ MinimalInterpreter e := by
  intro he
  have hj := join_trans (contract_join he.1 hm c r) (join_of_betas (normalSteps_sound hr))
  obtain ⟨v,hv,hv'⟩ := hj
  have eq := normalForm_betas_eq (fun _ => nft_no_beta hu) hv'
  subst v
  simp [Layouts.mismatch_sound fuel hv hu] at h

theorem raw_solvable {e} (he : IsSelfInterpreter e) : Solvable e := by
  have hi := solvable_backwards (interpreter_idCall_betas he)
    (show Solvable idOutput from ⟨0,_,rfl,rfl⟩)
  exact solvable_app_reflect _ _ (solvable_app_reflect _ _ hi)

theorem cycle_cut {e} (m p : Nat) (hp : 0 < p) (h : cycleCheck e m p = true) :
    ¬ MinimalInterpreter e := by
  intro he
  obtain ⟨u,hu,hp'⟩ := cycleCheck_spec h
  have hd := cycle_diverges hu hp' hp
  obtain ⟨k,v,hv,hz⟩ := raw_solvable he.1
  obtain ⟨w,hw,hn⟩ := hd k
  exact hn ((Option.some.inj (hw.symm.trans hv)) ▸ hz)

theorem dead_cut {e b} (k : Nat) (h : headSteps k e = some (.lam b)) (hz : occ 0 b = 0) :
    ¬ MinimalInterpreter e := by
  intro he
  have hp := SelfintRound6BoundLiteral.one_lambda_public_occ
    (reduct_interprets (headReds_betas' h) he.1)
  omega

theorem id_cycle_cut {e} (m p : Nat) (hp : 0 < p) (h : cycleCheck (idCall e) m p = true) :
    ¬ MinimalInterpreter e := by
  intro he
  obtain ⟨u,hu,hp'⟩ := cycleCheck_spec h
  exact headDiverges_not_hasNormalForm (cycle_diverges hu hp' hp)
    ⟨_,interpreter_idCall_betas he.1,idOutput_normal⟩

/-- Evidence for every element of a finite grammar row. -/
inductive Every {α : Type} (P : α → Prop) : List α → Prop where
  | nil : Every P []
  | cons {x xs} : P x → Every P xs → Every P (x :: xs)

theorem Every.get {α : Type} {P : α → Prop} {xs} (h : Every P xs) {x} (hx : x ∈ xs) : P x := by
  induction h with
  | nil => cases hx
  | cons h _ ih => rcases List.mem_cons.mp hx with rfl | h'; exact h; exact ih h'

abbrev BadRow (xs : List Term) := Every (fun e => ¬ MinimalInterpreter e) xs

def BadCell (c : OperandGrammar.Cell) : Prop :=
  Every (fun fw => Every (fun aw => BadRow (OperandGrammar.row c fw aw))
    (OperandGrammar.words (1+c.la) c.va c.xa)) (OperandGrammar.words (1+c.lf) c.vf c.xf)

end Blc.SelfintSingleObject.SourceRefutations
