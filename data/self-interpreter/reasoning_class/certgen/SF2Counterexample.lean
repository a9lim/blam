import Blc.SelfintClass
import Blc.SelfintProbe
namespace Certgen.SF2Counterexample
open Blc Blc.Term Blc.SelfintClass Blc.SelfintProbe
set_option maxRecDepth 10000
def source : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.var 0)))))
theorem reduces : headSteps 17 (.app source Z) = some (.var 3) := by decide
theorem solvable : Solvable (.app source Z) := ⟨17,.var 3,reduces,rfl⟩
#print axioms reduces
#print axioms solvable
end Certgen.SF2Counterexample
