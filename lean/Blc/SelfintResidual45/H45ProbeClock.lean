import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Clocks

set_option Elab.async false
namespace Blc.H45
open Term SelfintLowerBound SelfintControl WeakHeadClock
theorem argCount {e c : Term} {k : Nat} (he : IsSelfInterpreter e)
    (ht : (headSteps k (Blc.Floor45.want c identity identity [])).any (fun x => (headStep x).isNone) = true) :
    ∃ n, Count (.app e c) n := by
  obtain ⟨n,h⟩ := inputCount (e := e) (c := c) (m := identity) (r := identity) (args := []) (k := k) he (by decide) ht
  obtain ⟨m,_,hm⟩ := Blc.Round3Floor38.count_app_left h
  exact ⟨m,hm⟩
end Blc.H45
