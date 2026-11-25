import Blc.SelfintRecursiveTypes
import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45ProbeClock

set_option Elab.async false
namespace Blc.H45
open Term SelfintControl SelfintLowerBound WeakHeadClock
theorem rigid_untyped {t : Term} (hr : Rigid t) (m : SelfintRecursiveTypes.Table) (i : Nat) :
    SelfintRecursiveTypes.has m SelfintRecursiveTypes.empty t i = false := by
  induction hr generalizing i with
  | var v => simp [SelfintRecursiveTypes.has,SelfintRecursiveTypes.empty]
  | app a h ih => simp [SelfintRecursiveTypes.has,ih]
theorem noOpenClock {m t} (ht : SelfintRecursiveTypes.has m SelfintRecursiveTypes.empty t 0 = true) {n} (hc : Count t n) : False := by
  induction hc with
  | @step t u n hw _ ih => exact ih (SelfintRecursiveTypes.preserved (weakStep_beta hw) 0 ht)
  | @stop t h =>
    cases t with
    | var j => simpa [SelfintRecursiveTypes.has,SelfintRecursiveTypes.empty] using ht
    | lam b => cases ht
    | app f a =>
      have hr := weakStep_none_rigid h (by intro h; exact h)
      rw [rigid_untyped hr] at ht
      contradiction
end Blc.H45
