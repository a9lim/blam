import Blc.SelfintSharedShell

namespace Blc.SelfintSingleObject.RowReplay
open Term SelfintFloor SelfintClass SelfintSharp SelfintProbe SelfintControl SelfintLowerBound SelfintWireCost
open WeakHeadClock SourceRefutations FactorFilter

inductive Hint where
  | keep
  | chain (normal : Bool) (steps : Nat)
  | cost (normal : Bool) (steps : Nat)
  | width (normal : Bool) (steps : Nat)
  | diverges (normal : Bool) (steps : Nat)
  | cycle (identityCall : Bool) (start period : Nat)
  | dead (steps : Nat)
  | probe (c m r u : Term) (targetSteps fuel : Nat)

def rejects (e : Term) : Hint → Bool
  | .keep => false
  | .chain n k => chainB (run n k e)
  | .cost n k => wire (run n k e) < wire e
  | .width n k => !markedHere 0 (body (run n k e))
  | .diverges n k => decide (Round3Floor38.WGrammar38.B Round3Floor38.WGrammar38.empty (run n k e))
  | .cycle ident k p => 0 < p && cycleCheck (if ident then idCall e else e) k p
  | .dead k => match headSteps k e with
    | some (.lam b) => occ 0 b == 0
    | _ => false
  | .probe c m r u k fuel =>
    decide (Closed m) && normalSteps k (.app (.app c (.lam m)) r) == some u && decide (NFt u) &&
      Layouts.mismatch fuel (.app (.app e c) (streamOf (blcCode m) r)) u

theorem rejects_sound {e : Term} (h : Hint) (ok : rejects e h = true) : ¬ MinimalInterpreter e := by
  cases h with
  | keep => contradiction
  | chain n k => exact chain_cut n k ok
  | cost n k => exact cost_cut n k (of_decide_eq_true ok)
  | width n k =>
    intro he
    have hr := required (reduct_interprets (run_reduct n k e) he.1)
    simp only [rejects,hr,Bool.not_true] at ok
    contradiction
  | diverges n k => exact w_cut n k (of_decide_eq_true ok)
  | cycle ident k p =>
    simp only [rejects,Bool.and_eq_true,decide_eq_true_eq] at ok
    cases ident with
    | false => exact cycle_cut k p ok.1 ok.2
    | true => exact id_cycle_cut k p ok.1 ok.2
  | dead k =>
    simp only [rejects] at ok; split at ok
    next b hb => exact dead_cut k hb (eq_of_beq ok)
    next => contradiction
  | probe c m r u k f =>
    simp only [rejects,Bool.and_eq_true,decide_eq_true_eq,beq_iff_eq] at ok
    exact mismatch_cut k f ok.1.1.1 ok.1.1.2 ok.1.2 ok.2

/-- Tags select certificates only. A failed or missing certificate keeps
the source in the row, so the final empty remainder proves coverage. -/
def remainder (bank : Nat → Hint) : List Nat → List Term → List Term
  | [], ts => ts
  | _ :: _, [] => []
  | id :: ids, t :: ts =>
    if rejects t (bank id) then remainder bank ids ts else t :: remainder bank ids ts

theorem remainder_complete (bank : Nat → Hint) (ids : List Nat) (ts : List Term) {t}
    (hm : MinimalInterpreter t) (ht : t ∈ ts) : t ∈ remainder bank ids ts := by
  induction ids generalizing ts with
  | nil => exact ht
  | cons id ids ih =>
    cases ts with
    | nil => cases ht
    | cons u us =>
      simp only [remainder]; split
      next hu =>
        rcases List.mem_cons.mp ht with rfl | h
        · exact (rejects_sound _ hu hm).elim
        · exact ih us h
      next => rcases List.mem_cons.mp ht with rfl | h; exact .head _; exact .tail _ (ih us h)

def prefilter (ts : List Term) := ts.filter staticOK

theorem discharge {ts} (bank : Nat → Hint) (ids : List Nat) {hard : List Term}
    (eqn : remainder bank ids (prefilter ts) = hard) (bad : BadRow hard) :
    ∀ t ∈ ts, ¬ MinimalInterpreter t := by
  intro t ht hm
  have mem := remainder_complete bank ids (prefilter ts) hm (List.mem_filter.mpr ⟨ht,static_required hm⟩)
  exact bad.get (eqn ▸ mem) hm

theorem row_of_forall {ts : List Term} (h : ∀ t ∈ ts, ¬ MinimalInterpreter t) : BadRow ts := by
  induction ts with
  | nil => exact .nil
  | cons t ts ih => exact .cons (h t (.head _)) (ih (fun u hu => h u (.tail _ hu)))

#print axioms discharge
end Blc.SelfintSingleObject.RowReplay
