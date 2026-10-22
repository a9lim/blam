/-
Two-head knot removal in the 162 skeleton. No unconditional 162-bit claim.
The first head must contain incomparable nonlinear binders. If the APP
I/Omega probe performs the ordinary first-child cut, the second head must
do so too, forcing total length at least 165.
-/
import Blc.Selfint162
import Blc.SelfintNonlinearChain
import Blc.SelfintControl
import Blc.SelfintWireCost
import Blc.SelfintSharp

namespace Blc.Round3Recursion
open Term SelfintLowerBound SelfintNonlinearChain SelfintControl
open SelfintWireCost

set_option maxRecDepth 16384
set_option maxHeartbeats 1000000

def delta : Term := .lam (.app (.var 0) (.var 0))
def omegaT : Term := .app delta delta
def C : Term := .var 0
def N : Term := .var 1
def out (n : Nat) : Term := .app (.app C (Nat.rec omegaT (fun _ t => .lam t) n)) N

theorem omega_beta_eq {u : Term} (h : Beta omegaT u) : u = omegaT := by
  have hs : Spine omegaT := Spine.redex (by decide) (by decide)
  have he := headStep_complete (spine_beta_head hs h)
  exact Option.some.inj he.symm

theorem wrapped_beta_eq (n : Nat) {u : Term}
    (h : Beta (Nat.rec omegaT (fun _ t => .lam t) n) u) :
    u = Nat.rec omegaT (fun _ t => .lam t) n := by
  induction n generalizing u with
  | zero => exact omega_beta_eq h
  | succ n ih =>
    cases h with
    | lam h => rw [ih h]

theorem out_beta_eq (n : Nat) {u : Term} (h : Beta (out n) u) : u = out n := by
  cases h with
  | appL _ h =>
    cases h with
    | appL _ h => cases h
    | appR _ h => rw [wrapped_beta_eq n h]; rfl
  | appR _ h => cases h

theorem out_betas_eq (n : Nat) {u : Term} (h : Betas (out n) u) : u = out n := by
  have aux : ∀ t v, Betas t v → t = out n → v = out n := by
    intro t v hs
    induction hs with
    | refl => exact id
    | head hb _ ih =>
      intro ht
      apply ih
      subst ht
      exact out_beta_eq n hb
  exact aux _ _ h rfl

theorem wrapped_not_chain (n : Nat) :
    ¬ Chain (Nat.rec omegaT (fun _ t => .lam t) n) := by
  induction n with
  | zero => simp [omegaT, delta, Chain, nonlinear, occ]
  | succ n ih => exact ih

theorem out_not_chain (n : Nat) : ¬ Chain (out n) := by
  intro h
  exact wrapped_not_chain n h.1.2.1

theorem chain_instN (as : List Term) (j : Nat) (t : Term)
    (ht : Chain t) (ha : ∀ a ∈ as, nonlinear a = 0) :
    Chain (instN as j t) := by
  induction as generalizing j with
  | nil => exact ht
  | cons a as ih =>
    apply chain_subst_affine
    · exact ih (j + 1) (fun u hu => ha u (by simp [hu]))
    · simpa only [nonlinear_shift_any] using ha a (by simp)

theorem chain_of_at_most_one (t : Term) (ht : nonlinear t ≤ 1) : Chain t := by
  induction t with
  | var n => trivial
  | lam b ih =>
    apply ih
    simp only [nonlinear] at ht
    split at ht <;> omega
  | app f a ihf iha =>
    have hf : nonlinear f ≤ 1 := by simp only [nonlinear] at ht; omega
    have ha : nonlinear a ≤ 1 := by simp only [nonlinear] at ht; omega
    have hz : nonlinear f = 0 ∨ nonlinear a = 0 := by
      simp only [nonlinear] at ht
      omega
    exact ⟨ihf hf, iha ha, hz⟩

/-- Instantiating the ambient names and supplying two affine arguments
cannot turn a chain-shaped head into the required Omega output. -/
theorem affine_boundary_not_chain (h : Term) (as : List Term) (k s : Term) (n : Nat)
    (ha : ∀ a ∈ as, nonlinear a = 0) (hk : nonlinear k = 0)
    (hs : nonlinear s = 0)
    (hc : BetaJoin (.app (.app (instN as 0 h) k) s) (out n)) :
    ¬ Chain h := by
  intro hh
  have hi := chain_instN as 0 h hh ha
  have hb : Chain (.app (.app (instN as 0 h) k) s) :=
    ⟨⟨hi, chain_of_affine k hk, Or.inr hk⟩, chain_of_affine s hs, Or.inr hs⟩
  obtain ⟨w, hw1, hw2⟩ := hc
  have hw := chain_betas hw1 hb
  rw [out_betas_eq n hw2] at hw
  exact out_not_chain n hw

theorem nonchain_wire_eighteen (h : Term) (hh : ¬ Chain h) : 18 ≤ wire h := by
  have hn : 2 ≤ nonlinear h := by
    by_cases hn : 2 ≤ nonlinear h
    · exact hn
    · exact (hh (chain_of_at_most_one h (by omega))).elim
  have hw := nonlinear_wire_bound h
  change 18 ≤ (blcCode h).length
  omega

/-- H lives in [bit1,list,cont], J in [exp,bit1,list,cont]. There is no
outer knot, recursive-parser binder, or generator binder. -/
def next (h j : Term) : Term :=
  .lam (.app h (.lam (.app (.app (.var 1) (.app (.var 3) absVt))
    (.app j (.lam (.app (.var 4) appVt))))))

def skeleton (h j : Term) : Term :=
  .lam (.lam (.app (.app (.app (.var 0) idT) varArm162) (next h j)))

theorem skeleton_cost (h j : Term) : wire (skeleton h j) = 129 + wire h + wire j := by
  simp [skeleton, next, idT, varArm162, absVt, appVt]
  omega

def omegaStream : Term := streamOf (blcCode omegaT) N
def absSource : Term := .lam omegaT
def absStream : Term := streamOf (blcCode absSource) N
def absK : Term := .lam (.app (.var 1) absVt)
def absResidual (h : Term) : Term :=
  .app (.app (instN [churchTrue, absStream, C] 0 h) absK) omegaStream

def absTrace : List (List SelfintSharp.Direction) :=
  [[.left], [], [.left, .left], [.left, .left, .left], [.left, .left],
   [.left], [], [.left], [.left, .right, .under, .left], [.left, .right, .under]]

/-- A uniform syntactic cut, not an additional parser hypothesis: the
outer ABS tag erases the entire second call head before H is used. -/
theorem abs_cut (h j : Term) :
    Betas (.app (.app (skeleton h j) C) absStream) (absResidual h) := by
  apply SelfintSharp.replay_sound (ps := absTrace)
  simp [SelfintSharp.replay, SelfintSharp.atPath, absTrace, skeleton, next,
    absResidual, absStream, absSource, omegaStream, omegaT, delta,
    C, N, absK, idT, varArm162, absVt, appVt,
    blcCode, streamOf, churchBit, churchTrue, churchFalse, pairT,
    contract, substDec, shift, instN]

theorem first_head_not_chain {h j : Term} (hE : IsSelfInterpreter (skeleton h j)) :
    ¬ Chain h := by
  have he := hE.2 absSource (by decide)
  have hj : BetaJoin (absResidual h) (out 2) :=
    join_trans (join_symm (join_of_betas (abs_cut h j))) he
  apply affine_boundary_not_chain h [churchTrue, absStream, C] absK omegaStream 2
  · intro a ha
    simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl
    · decide
    · simp [absStream, nonlinear_stream, N, nonlinear]
    · rfl
  · decide
  · simp [omegaStream, nonlinear_stream, N, nonlinear]
  · exact hj

def appSource : Term := .app idT omegaT
def appStream : Term := streamOf (blcCode appSource) N
def appK : Term := .lam (.app (.var 1) (.lam (.app (.var 1) (.var 0))))
def appResidual (j : Term) : Term :=
  .app (.app (instN [churchFalse, churchFalse, appStream, C] 0 j) appK) omegaStream

/-- The single additional assumption: parsing APP(I,Omega) makes the
ordinary first-child cut, with I's value F and the exact right stream.
The displayed APP callback is beta-normalized after substituting F. -/
def IdentityCut (h j : Term) : Prop :=
  BetaJoin (.app (.app (skeleton h j) C) appStream) (appResidual j)

theorem second_head_not_chain {h j : Term} (hE : IsSelfInterpreter (skeleton h j))
    (hcut : IdentityCut h j) : ¬ Chain j := by
  have he := hE.2 appSource (by decide)
  have ho : Betas (.app (.app C (.lam appSource)) N) (out 1) := by
    exact .head (.appL _ (.appR _ (.lam (.beta _ _)))) (.refl _)
  have hj : BetaJoin (appResidual j) (out 1) :=
    join_trans (join_symm hcut) (join_trans he (join_of_betas ho))
  apply affine_boundary_not_chain j [churchFalse, churchFalse, appStream, C]
    appK omegaStream 1
  · intro a ha
    simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl
    · decide
    · decide
    · simp [appStream, nonlinear_stream, N, nonlinear]
    · rfl
  · decide
  · simp [omegaStream, nonlinear_stream, N, nonlinear]
  · exact hj

/-- Scoped lower bound. It does not exclude protocols that use the first
head to retain extra reader code in the returned value or remainder. -/
theorem two_independent_heads_at_least_165 {h j : Term}
    (hE : IsSelfInterpreter (skeleton h j)) (hcut : IdentityCut h j) :
    165 ≤ wire (skeleton h j) := by
  have hh := nonchain_wire_eighteen h (first_head_not_chain hE)
  have hj := nonchain_wire_eighteen j (second_head_not_chain hE hcut)
  rw [skeleton_cost]
  omega

theorem first_head_at_least_18 {h j : Term}
    (hE : IsSelfInterpreter (skeleton h j)) : 18 ≤ wire h :=
  nonchain_wire_eighteen h (first_head_not_chain hE)

/-- A hypothetical sub-162 knotless fill necessarily lies outside the
ordinary identity-prefix cut. Its second head has at most 14 bits. -/
theorem sub162_requires_different_cut {h j : Term}
    (hE : IsSelfInterpreter (skeleton h j)) (hs : wire (skeleton h j) < 162) :
    ¬ IdentityCut h j ∧ wire j ≤ 14 := by
  constructor
  · intro hc
    have hf := two_independent_heads_at_least_165 hE hc
    omega
  · have hf := first_head_at_least_18 hE
    rw [skeleton_cost] at hs
    omega

/- A second family keeps the diagonal wrapper but eliminates the shared
parser let. Heads may have arbitrary affine internal lambdas, not just
application-only code. The generator name is at indices 3 and 4. -/

def generator (h j : Term) : Term := .lam (skeleton h j)
def direct (h j : Term) : Term := .app delta (generator h j)
def hExpanded (h j : Term) : Term := substDec 3 (shift 3 0 (generator h j)) h
def jExpanded (h j : Term) : Term := substDec 4 (shift 4 0 (generator h j)) j

theorem generator_chain (h j : Term) (hh : nonlinear h = 0) (hj : nonlinear j = 0) :
    Chain (generator h j) := by
  have ch := chain_of_affine h hh
  have cj := chain_of_affine j hj
  simp [generator, skeleton, next, idT, varArm162, absVt, appVt,
    Chain, nonlinear, occ, hh, hj, ch, cj]

theorem direct_cost (h j : Term) : wire (direct h j) = 141 + wire h + wire j := by
  simp only [direct, generator, wire_app, wire_lam, skeleton_cost]
  have hd : wire delta = 8 := by decide
  omega

theorem shift_same_add (t : Term) (a b c : Nat) :
    shift a c (shift b c t) = shift (a + b) c t :=
  shift_shift_add t a b c c (by omega) (by omega)

theorem direct_unfold_interp {h j : Term} (hE : IsSelfInterpreter (direct h j)) :
    IsSelfInterpreter (skeleton (hExpanded h j) (jExpanded h j)) := by
  have h1 := selfInterpreter_beta hE (Beta.beta _ _)
  have h2 := selfInterpreter_beta h1 (Beta.beta _ _)
  simpa [direct, generator, skeleton, next, hExpanded, jExpanded,
    delta, idT, varArm162, absVt, appVt, contract, substDec, shift, shift_same_add] using h2

/-- A leaf at free index i pays at least i+2, and connecting its k
occurrences needs at least k-1 application nodes. -/
theorem occurrence_wire (t : Term) (i : Nat) :
    (i + 4) * occ i t ≤ wire t + 2 := by
  induction t generalizing i with
  | var n =>
    simp only [occ]
    split <;> simp_all <;> omega
  | lam b ih =>
    have hb := ih (i + 1)
    simp only [occ, wire_lam]
    have he : (i + 1 + 4) * occ (i + 1) b =
        (i + 4) * occ (i + 1) b + occ (i + 1) b := by
      rw [show i + 1 + 4 = (i + 4) + 1 by omega, Nat.add_mul]
      simp
    rw [he] at hb
    omega
  | app f a ihf iha =>
    have hf := ihf i
    have ha := iha i
    simp only [occ, wire_app, Nat.mul_add]
    omega

theorem affine_direct_heads_at_least_167 {h j : Term}
    (hE : IsSelfInterpreter (direct h j))
    (hh : nonlinear h = 0) (hj : nonlinear j = 0)
    (hcut : IdentityCut (hExpanded h j) (jExpanded h j)) :
    167 ≤ wire (direct h j) := by
  have hs := direct_unfold_interp hE
  have hg := generator_chain h j hh hj
  have nh := first_head_not_chain hs
  have nj := second_head_not_chain hs hcut
  have oh : 2 ≤ occ 3 h := by
    by_cases ho : 2 ≤ occ 3 h
    · exact ho
    · exact (nh (chain_subst_once h _ 3 hh ((chain_shift _ 3 0).2 hg) (by omega))).elim
  have oj : 2 ≤ occ 4 j := by
    by_cases ho : 2 ≤ occ 4 j
    · exact ho
    · exact (nj (chain_subst_once j _ 4 hj ((chain_shift _ 4 0).2 hg) (by omega))).elim
  have wh := occurrence_wire h 3
  have wj := occurrence_wire j 4
  rw [direct_cost]
  omega

/-- The already-known unshared rendering attains 167. This is the 162
after reducing its parser-sharing let, not a new interpreter algorithm. -/
def hXX : Term := .app (.var 3) (.var 3)
def jXX : Term := .app (.var 4) (.var 4)
def refParser : Term := .app (generator hXX jXX) (generator hXX jXX)

theorem direct_reference_cost : wire (direct hXX jXX) = 167 := by decide
theorem reference_beta : Beta intL162 (direct hXX jXX) :=
  .appR _ (.lam (.beta _ _))
theorem reference_interpreter : IsSelfInterpreter (direct hXX jXX) :=
  selfInterpreter_beta isSelfInterpreter_intL162 reference_beta

theorem reference_cut : IdentityCut (hExpanded hXX jXX) (jExpanded hXX jXX) := by
  have hp : IsSelfInterpreter refParser :=
    selfInterpreter_beta reference_interpreter (Beta.beta _ _)
  have hs := direct_unfold_interp reference_interpreter
  have he := hs.2 appSource (by decide)
  have eo : Betas (.app (.app C (.lam appSource)) N) (out 1) :=
    .head (.appL _ (.appR _ (.lam (.beta _ _)))) (.refl _)
  have hr := contract_join hp (by decide : Closed omegaT) appK N
  have ro : Betas (.app (.app appK (.lam omegaT)) N) (out 1) :=
    .head (.appL _ (.beta _ _))
      (.head (.appL _ (.appR _ (.lam (.beta _ _)))) (.refl _))
  have hx : jExpanded hXX jXX = refParser := by decide
  have hc : Closed refParser := by decide
  unfold IdentityCut appResidual
  rw [hx, inst_closed _ _ hc]
  exact join_trans (join_trans he (join_of_betas eo))
    (join_symm (join_trans hr (join_of_betas ro)))

#print axioms first_head_not_chain
#print axioms two_independent_heads_at_least_165
#print axioms sub162_requires_different_cut
#print axioms affine_direct_heads_at_least_167
#print axioms reference_cut
end Blc.Round3Recursion
