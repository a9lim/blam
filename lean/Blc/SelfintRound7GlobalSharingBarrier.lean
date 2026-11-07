/-
An unbounded normal-form growth family inside the unresolved three-live
source shape. This is a barrier to a counting argument, not an interpreter.

For k = n+1, set A = lambda a b. a (b a ... a), with k argument copies,
and E = (lambda x. x x) A. Its sharing body and closed operand are normal;
the body has zero live binders, A has two on a capturing chain, and E has
two incomparable nonlinear binders and three live binders in total.

Three beta contractions reach the normal form
  lambda b c. P (c P ... P),   P = b A ... A,
whose number of live binders is 2 + 2k + 2k^2. Thus no uniform normal-output
live-binder bound depends only on these two source counts. Bounds using
source size or further dependency structure are not ruled out.
-/
import Blc.SelfintRound6BoundPotential
import Blc.SelfintRound6BoundGlobal

namespace Blc.SelfintRound7GlobalSharingBarrier
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture
  SelfintNonlinearChain

def apps : Nat → Term → Term → Term
  | 0, f, _ => f
  | n+1, f, a => .app (apps n f a) a

theorem apps_subst (n : Nat) (f a s : Term) (j : Nat) :
    substDec j s (apps n f a) = apps n (substDec j s f) (substDec j s a) := by
  induction n <;> simp [apps,substDec, *]

theorem apps_shift (n : Nat) (f a : Term) (d c : Nat) :
    shift d c (apps n f a) = apps n (shift d c f) (shift d c a) := by
  induction n <;> simp [apps,shift, *]

theorem apps_occ (n : Nat) (f a : Term) (j : Nat) :
    occ j (apps n f a) = occ j f+n*occ j a := by
  induction n <;> simp [apps,occ, *,Nat.add_mul,Nat.add_assoc]

theorem apps_live (n : Nat) (f a : Term) : live (apps n f a) = live f+n*live a := by
  induction n <;> simp [apps,live, *,Nat.add_mul,Nat.add_assoc]

theorem apps_nonlinear (n : Nat) (f a : Term) :
    nonlinear (apps n f a) = nonlinear f+n*nonlinear a := by
  induction n <;> simp [apps,nonlinear, *,Nat.add_mul,Nat.add_assoc]

theorem apps_wire (n : Nat) (f a : Term) : wire (apps n f a) = wire f+n*(wire a+2) := by
  induction n <;> simp only [apps,wire_app] at * <;> simp_all [Nat.add_mul] <;> omega

theorem apps_scope (n : Nat) {f a : Term} {d : Nat}
    (hf : FreeUnder d f) (ha : FreeUnder d a) : FreeUnder d (apps n f a) := by
  induction n with
  | zero => exact hf
  | succ n ih => exact ⟨ih,ha⟩

theorem apps_normal (n : Nat) {f a : Term} (hf : NFt f) (ha : NFt a)
    (hn : ¬ IsLam f) : NFt (apps n f a) ∧ ¬ IsLam (apps n f a) := by
  induction n with
  | zero => exact ⟨hf,hn⟩
  | succ n ih => exact ⟨⟨ih.2,ih.1,ha⟩,fun h => h⟩

def body (n : Nat) : Term := .app (.var 1) (apps (n+1) (.var 0) (.var 1))
def helper (n : Nat) : Term := .lam (.lam (body n))
def sharingBody : Term := .app (.var 0) (.var 0)
def source (n : Nat) : Term := .app (.lam sharingBody) (helper n)
def payload (n : Nat) : Term := apps (n+1) (.var 1) (helper n)
def result (n : Nat) : Term :=
  .lam (.lam (.app (payload n) (apps (n+1) (.var 0) (payload n))))

theorem helper_closed (n : Nat) : Closed (helper n) :=
  ⟨by decide,apps_scope _ (by decide) (by decide)⟩

theorem helper_normal (n : Nat) : NFt (helper n) :=
  ⟨(fun h => h),trivial,(apps_normal (n+1) (f:=.var 0) (a:=.var 1) trivial trivial (fun h => h)).1⟩

theorem body_occurrences (n : Nat) : occ 0 (body n) = 1 ∧ occ 1 (body n) = n+2 := by
  simp [body,occ,apps_occ]
  omega

theorem helper_live (n : Nat) : live (helper n) = 2 := by
  have ho := body_occurrences n
  simp only [helper,live,occ,ho.1,ho.2]
  simp only [body,live,apps_live,Nat.mul_zero,Nat.zero_add]
  simp [show 0 < n+2 by omega]

theorem helper_nonlinear (n : Nat) : nonlinear (helper n) = 1 := by
  have ho := body_occurrences n
  simp only [helper,nonlinear,occ,ho.1,ho.2]
  simp only [body,nonlinear,apps_nonlinear,Nat.mul_zero,Nat.zero_add]
  simp [show 1 < n+2 by omega]

theorem helper_capture (n : Nat) : ¬ Separated 0 (helper n) := by
  intro h
  have ho := body_occurrences n
  have hz := h.1.2 (by rw [ho.1]; decide) 0 (by decide)
  simp only [Nat.zero_add] at hz
  omega

theorem source_resources (n : Nat) :
    Closed (source n) ∧ live (source n) = 3 ∧ nonlinear (source n) = 2 ∧
      ¬ Chain (source n) := by
  have hl := helper_live n
  have hn := helper_nonlinear n
  refine ⟨⟨by decide,helper_closed n⟩,?_,?_,?_⟩
  · simp [source,sharingBody,live,occ,hl]
  · simp [source,sharingBody,nonlinear,occ,hn]
  · intro hc
    have hh := hc.2.2
    simp [sharingBody,nonlinear,occ,hn] at hh

theorem source_wire (n : Nat) : wire (source n) = 26+5*n := by
  simp only [source,sharingBody,helper,body,wire_app,wire_lam,wire_var,apps_wire]
  omega

theorem helper_apply (n : Nat) (a : Term) :
    Beta (.app (helper n) a)
      (.lam (.app (shift 1 0 a) (apps (n+1) (.var 0) (shift 1 0 a)))) := by
  have h := Beta.beta (.lam (body n)) a
  simpa only [helper,body,contract,substDec,apps_subst,if_true,
    show ¬ (0 = 1) by decide,show ¬ (0 > 1) by decide,if_false] using h

/-- The complete symbolic reduction consists of three beta steps. -/
theorem source_reduces (n : Nat) : Betas (source n) (result n) := by
  have h0 : Beta (source n) (.app (helper n) (helper n)) := by
    simpa only [source,sharingBody,contract,substDec,if_true] using
      Beta.beta sharingBody (helper n)
  have h1 := helper_apply n (helper n)
  rw [shift_closed 1 0 (helper_closed n)] at h1
  have h2 := Beta.lam (helper_apply n (apps (n+1) (.var 0) (helper n)))
  simp only [apps_shift,shift,shift_closed 1 0 (helper_closed n)] at h2
  exact .head h0 (.head h1 (.head h2 (.refl _)))

theorem result_normal (n : Nat) : NFt (result n) := by
  have hp := apps_normal (n+1) (f:=.var 1) trivial (helper_normal n) (fun h => h)
  exact ⟨hp.2,hp.1,(apps_normal (n+1) (f:=.var 0) trivial hp.1 (fun h => h)).1⟩

theorem result_live (n : Nat) :
    live (result n) = 2+2*(n+1)+2*(n+1)*(n+1) := by
  have hc0 := occ_of_freeUnder (helper n) 0 0 (helper_closed n) (by omega)
  have hc1 := occ_of_freeUnder (helper n) 0 1 (helper_closed n) (by omega)
  have hp0 : occ 0 (payload n) = 0 := by simp [payload,apps_occ,occ,hc0]
  have hp1 : occ 1 (payload n) = 1 := by simp [payload,apps_occ,occ,hc1]
  have hpl : live (payload n) = 2*(n+1) := by
    simp [payload,apps_live,live,helper_live,Nat.mul_comm]
  simp only [result,live,occ,apps_occ,hp0,hp1,hpl,apps_live,
    Nat.mul_zero,Nat.mul_one,Nat.zero_add,Nat.add_zero,Nat.reduceEqDiff,if_false,
    show 0 < 1 by decide,show 0 < 1+(n+1) by omega,if_true]
  simp only [Nat.mul_comm]
  omega

/-- The unresolved normal-component source shape admits arbitrarily many
live binders in a normal result, despite only three in the source. -/
theorem unbounded_normal_live (bound : Nat) :
    ∃ E T, Closed E ∧ live E = 3 ∧ nonlinear E = 2 ∧ ¬ Chain E ∧
      Betas E T ∧ NFt T ∧ bound < live T := by
  refine ⟨source bound,result bound,(source_resources bound).1,
    (source_resources bound).2.1,(source_resources bound).2.2.1,
    (source_resources bound).2.2.2,source_reduces bound,result_normal bound,?_⟩
  rw [result_live]
  omega

/-- At k=1 every source binder is binary. Potential five already grows
to six live source binders in a normal form, so the potential-four
threshold in `binary_small_steps` cannot be raised to five. -/
theorem binary_five_sharp :
    QuoteOrigins.Marked.Good (QuoteOrigins.Marked.red (source 0)) ∧
    QuoteOrigins.Marked.Binary (QuoteOrigins.Marked.red (source 0)) ∧
    QuoteOrigins.Marked.potential (QuoteOrigins.Marked.red (source 0)) = 5 ∧
    QuoteOrigins.Marked.Steps (QuoteOrigins.Marked.red (source 0))
      (QuoteOrigins.Marked.red (result 0)) ∧
    NFt (result 0) ∧ QuoteOrigins.Marked.redLive (QuoteOrigins.Marked.red (result 0)) = 6 ∧
    QuoteOrigins.Marked.Binary (QuoteOrigins.Marked.red (result 0)) ∧
    QuoteOrigins.Marked.potential (QuoteOrigins.Marked.red (result 0)) = 9 := by
  have hbs : QuoteOrigins.Marked.Binary (QuoteOrigins.Marked.red (source 0)) := by
    simp [QuoteOrigins.Marked.Binary,QuoteOrigins.Marked.red,QuoteOrigins.Marked.erase,
      source,helper,body,sharingBody,apps,occ]
  have hbr : QuoteOrigins.Marked.Binary (QuoteOrigins.Marked.red (result 0)) := by
    simp [QuoteOrigins.Marked.Binary,QuoteOrigins.Marked.red,QuoteOrigins.Marked.erase,
      result,payload,helper,body,apps,occ]
  refine ⟨QuoteOrigins.Marked.red_good _,hbs,by decide,?_,result_normal 0,
    by decide,hbr,by decide⟩
  have h0 : QuoteOrigins.Marked.Step (QuoteOrigins.Marked.red (source 0))
      (QuoteOrigins.Marked.red (.app (helper 0) (helper 0))) := .beta false _ _
  have h1 : QuoteOrigins.Marked.Step
      (QuoteOrigins.Marked.red (.app (helper 0) (helper 0)))
      (QuoteOrigins.Marked.red (.lam (.app (helper 0) (.app (.var 0) (helper 0))))) :=
    .beta false _ _
  have h2 : QuoteOrigins.Marked.Step
      (QuoteOrigins.Marked.red (.lam (.app (helper 0) (.app (.var 0) (helper 0)))))
      (QuoteOrigins.Marked.red (result 0)) := .lam false (.beta false _ _)
  exact .step h0 (.step h1 (.step h2 (.refl _)))

#print axioms source_reduces
#print axioms unbounded_normal_live
#print axioms binary_five_sharp
end Blc.SelfintRound7GlobalSharingBarrier
