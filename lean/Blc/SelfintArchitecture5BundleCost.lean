/-
Exact cost of replacing the adjacent continuation/parser slots c,p by one
bundle h, using its independent projections h I and h F. This is the
literal projection scheme, not a lower bound on correlated service use or
all possible bundle representations.

At local depth d, c occupies index d and p index d+1. A c occurrence gains
6 bits; a p occurrence gains 7 bits after the adjacent-slot collapse. Every
more distant free occurrence saves one index bit. Canonical NEXT has two
of each and no farther free variables, so it grows 26 bits. Removing one
of the two enclosing binders saves only 2.
-/
import Blc.SelfintArchitecture5Bundle
import Blc.SelfintClass
import Blc.Factor

namespace Blc.SelfintArchitecture5BundleCost
open Term SelfintLowerBound SelfintWireCost SelfintClass
set_option maxRecDepth 8192

/-- Collapse adjacent c,p slots to one h slot. The source projections are
exactly h I and h F; outer slots decrement once. -/
def project (d : Nat) : Term → Term
  | .var n =>
      if n = d then .app (.var d) idT
      else if n = d + 1 then .app (.var d) churchFalse
      else if d + 1 < n then .var (n - 1)
      else .var n
  | .lam b => .lam (project (d + 1) b)
  | .app f a => .app (project d f) (project d a)

/-- Exact source price, including every saved outer-variable index bit. -/
theorem project_wire (t : Term) (d : Nat) :
    wire (project d t) + freeLeaves (d + 2) t =
      wire t + 6 * occ d t + 7 * occ (d + 1) t := by
  induction t generalizing d with
  | var n =>
      by_cases hc : n = d
      · subst n
        simp [project, occ, freeLeaves, idT, wire_lam, wire_var]
      · by_cases hp : n = d + 1
        · subst n
          simp [project, occ, freeLeaves, churchFalse, wire_lam, wire_var]
        · by_cases ho : d + 1 < n
          · simp only [project, hc, hp, ho, if_false, if_true, wire_var,
              occ, freeLeaves]
            split <;> omega
          · simp only [project, hc, hp, ho, if_false, wire_var, occ, freeLeaves]
            split <;> omega
  | lam b ih =>
      have hb := ih (d + 1)
      simp only [project, wire_lam, occ, freeLeaves]
      simpa [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using hb
  | app f a ihf iha =>
      have hf := ihf d
      have ha := iha d
      simp only [project, wire_app, occ, freeLeaves, Nat.mul_add]
      omega

theorem project_wire_scoped (t : Term) (d : Nat) (ht : FreeUnder (d + 2) t) :
    wire (project d t) = wire t + 6 * occ d t + 7 * occ (d + 1) t := by
  have h := project_wire t d
  rw [SelfintFloor.freeLeaves_closed t _ ht, Nat.add_zero] at h
  exact h

/-- The canonical NEXT has exactly two c and two p occurrences. The
complete pair of old binders costs 96 bits; the projected one costs 120. -/
theorem canonical_next_projection_price :
    wire (project 0 canonicalNext) = 118 ∧
    wire (.lam (project 0 canonicalNext)) =
      wire (.lam (.lam canonicalNext)) + 24 := by decide

/-- `b I b` sends the ABS tag K to I and the APP tag F to F. -/
def correctedQuery : Term := .lam (.app (.app (.var 0) idT) (.var 0))

theorem corrected_query_true : spineSteps 3 (.app correctedQuery churchTrue) = some idT := by decide
theorem corrected_query_false :
    spineSteps 3 (.app correctedQuery churchFalse) = some churchFalse := by decide

/-- In the actual [f,b,s,c,p] frame, replacing the selected head b c p by
h (b I b), with h occupying c's old slot, still costs three more bits. -/
theorem joint_head_price :
    wire (.app (.app (.var 1) (.var 3)) (.var 4)) = 18 ∧
    wire (.app (.var 3) (.app (.app (.var 1) idT) (.var 1))) = 21 := by decide

/-- The tempting replacement of literal NEXT by its own bundle service
`p c K`, in `lambda p c s. s I V (p c K)`. The original bundle variable
arm is retained exactly. -/
def bootBody : Term :=
  .lam (.lam (.lam (.app (.app (.app (.var 0) idT)
    SelfintArchitecture5Bundle.varArmPack)
      (.app (.app (.var 2) (.var 1)) churchTrue))))

def bootGenerator : Term := .lam (.app bootBody (.app (.var 0) (.var 0)))
def bootParser : Term := .app bootGenerator bootGenerator
def boot87 : Term := .app (.lam (.app (.var 0) (.var 0))) bootGenerator

def bootProbe : Term := .app (.app boot87 churchFalse) (streamOf (blcCode idT) idT)
def bootLoop : Term := .app (.app (.app (.app bootParser churchFalse) churchTrue)
  churchTrue) (streamOf [true, false] idT)

theorem boot87_price : wire boot87 = 87 := by decide
theorem boot_prefix : headSteps 10 bootProbe = some bootLoop := by decide
theorem boot_cycle : headSteps 7 bootLoop = some bootLoop := by decide

theorem boot_repeats (n : Nat) : HeadReds (n * 7) bootLoop bootLoop := by
  induction n with
  | zero => exact .refl _
  | succ n ih =>
      simpa [Nat.succ_mul] using headReds_trans ih (headReds_of_headSteps _ boot_cycle)

theorem boot_probe_head_diverges : HeadDiverges bootProbe := by
  apply headDiverges_of_unbounded
  intro n
  refine ⟨10 + (n + 1) * 7, bootLoop, by omega, ?_⟩
  exact headSteps_of_headReds
    (headReds_trans (headReds_of_headSteps _ boot_prefix) (boot_repeats (n + 1)))

/-- A self-query cannot supply the clause being defined: the exact source
I already enters a seven-step head-reduction loop, with closed C=F,N=I. -/
theorem boot87_not_self_interpreter : ¬ IsSelfInterpreter boot87 := by
  intro hE
  have hc := SelfintControl.contract_join hE (by decide : Closed idT) churchFalse idT
  have he := betas_of_spineReds (spine_false2 (.lam idT) idT)
  have hI : NormalForm idT := fun _ hb => nft_no_beta (by decide) hb
  have hn := join_normal (SelfintControl.join_trans hc (SelfintControl.join_of_betas he)) hI
  exact headDiverges_not_hasNormalForm boot_probe_head_diverges ⟨idT, hn, hI⟩

#print axioms project_wire
#print axioms canonical_next_projection_price
#print axioms corrected_query_true
#print axioms boot87_not_self_interpreter

end Blc.SelfintArchitecture5BundleCost
