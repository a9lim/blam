import Blc.SelfintResidual44.Concrete

set_option Elab.async false
namespace Blc.Floor44.E4838387637902
open Term SelfintSharp Concrete
set_option maxRecDepth 30000
set_option maxHeartbeats 8000000
def e : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
theorem wire_e : Closed e ∧ code e = 22430573682318 := by decide
theorem excluded : ¬ IsSelfInterpreter e :=
  Concrete.reject (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (args := [])
    (x := .lam) (y := (.rigid 1 2)) (n := 1088) (k := 3) (by decide) (by decide +kernel) (by decide +kernel) (by decide)
#print axioms excluded
end Blc.Floor44.E4838387637902
