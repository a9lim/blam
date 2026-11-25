import Blc.SelfintResidual44.Concrete

set_option Elab.async false
namespace Blc.Floor44.E4846434481070
open Term SelfintSharp Concrete
set_option maxRecDepth 30000
set_option maxHeartbeats 8000000
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))))
theorem wire_e : Closed e ∧ code e = 22438620525486 := by decide
theorem excluded : ¬ IsSelfInterpreter e :=
  Concrete.reject (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (args := [])
    (x := (.rigid 1 35)) (y := (.rigid 1 2)) (n := 635) (k := 3) (by decide) (by decide +kernel) (by decide +kernel) (by decide)
#print axioms excluded
end Blc.Floor44.E4846434481070
