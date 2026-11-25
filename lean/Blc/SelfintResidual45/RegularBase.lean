import Blc.SelfintRegularSoundness
import Blc.SelfintResidual45.Floor45

set_option Elab.async false
namespace Blc.Floor45
open Term SelfintSharp SelfintLowerBound SelfintControl SelfintProbe
open Round3Floor38 WeakHeadClock SelfintRegularSoundness
theorem rawCount {e : Term} (he : IsSelfInterpreter e) : ∃ n, Count e n := by
  obtain ⟨n,h⟩ := hasNormalForm_count (identity_has_normal_form he)
  obtain ⟨_,_,h⟩ := count_app_left h
  obtain ⟨m,_,hm⟩ := count_app_left h
  exact ⟨m,hm⟩
theorem joinArgs {t u : Term} (h : BetaJoin t u) (args : List Term) :
    BetaJoin (tApps t args) (tApps u args) := by
  induction args generalizing t u with
  | nil => exact h
  | cons a xs ih => exact ih (join_appL a h)
def call (e c m r : Term) (args : List Term) := tApps (.app (.app e c) (streamOf (blcCode m) r)) args
def want (c m r : Term) (args : List Term) := tApps (.app (.app c (.lam m)) r) args
theorem inputCount {e c m r : Term} {args : List Term} {k : Nat}
    (he : IsSelfInterpreter e) (hm : Closed m)
    (h : (headSteps k (want c m r args)).any (fun x => (headStep x).isNone) = true) :
    ∃ n, Count (call e c m r args) n := by
  apply solvable_count
  apply (solvable_join (joinArgs (contract_join he hm c r) args)).2
  cases hq : headSteps k (want c m r args) with
  | none => simp [hq] at h
  | some u =>
    have hh : headStep u = none := by simpa [hq] using h
    exact ⟨k,u,hq,hh⟩
theorem clocks_replay {t u : Term} {ps : List (List Direction)}
    (h : ∃ n, Count t n) (hp : replay ps t = some u) : ∃ n, Count u n := by
  obtain ⟨n,hn⟩ := h
  obtain ⟨m,_,hm⟩ := count_reduct n hn (replay_sound hp)
  exact ⟨m,hm⟩
#print axioms inputCount
end Blc.Floor45
