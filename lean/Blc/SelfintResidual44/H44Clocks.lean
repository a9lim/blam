import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.RegularBase

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintControl SelfintProbe SelfintLowerBound WeakHeadClock SelfintRegularSoundness
abbrev rawCount := @Blc.Floor44.rawCount
abbrev inputCount := @Blc.Floor44.inputCount
abbrev clocks_replay := @Blc.Floor44.clocks_replay
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
end Blc.H44
