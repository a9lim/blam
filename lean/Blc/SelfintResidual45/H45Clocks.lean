import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.RegularBase

set_option Elab.async false
namespace Blc.H45
open Term SelfintSharp SelfintControl SelfintProbe SelfintLowerBound WeakHeadClock SelfintRegularSoundness
abbrev rawCount := @Blc.Floor45.rawCount
abbrev inputCount := @Blc.Floor45.inputCount
abbrev clocks_replay := @Blc.Floor45.clocks_replay
def diag := Term.lam (.app (.var 0) (.var 0))
theorem diagCount {e} (he : IsSelfInterpreter e) : ∃ n, Count (.app e diag) n := by
  obtain ⟨k,h⟩ := inputCount (e := e) (c := diag) (m := identity) (r := .var 0)
    (args := []) (k := 3) he (by decide) (by decide)
  obtain ⟨m,_,hm⟩ := Blc.Round3Floor38.count_app_left h
  exact ⟨m,hm⟩
theorem kCount {e} (he : IsSelfInterpreter e) : ∃ n, Count (.app e churchTrue) n := by
  obtain ⟨k,h⟩ := inputCount (e := e) (c := churchTrue) (m := identity) (r := .var 0)
    (args := []) (k := 2) he (by decide) (by decide)
  obtain ⟨m,_,hm⟩ := Blc.Round3Floor38.count_app_left h
  exact ⟨m,hm⟩
end Blc.H45
