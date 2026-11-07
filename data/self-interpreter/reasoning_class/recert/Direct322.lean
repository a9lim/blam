import Blc.SelfintClass
import Blc.SelfintProbe
namespace Recert.Direct322
open Blc Blc.Term Blc.SelfintClass Blc.SelfintProbe
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def source : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))))
theorem reduces : headSteps 513 source = some (.lam (.var 0)) := by decide
theorem probe : headSteps 514 (.app source Z) = some Z := by decide
theorem solvable : Solvable (.app source Z) := ⟨514,Z,probe,rfl⟩
#print axioms reduces
#print axioms solvable
end Recert.Direct322
