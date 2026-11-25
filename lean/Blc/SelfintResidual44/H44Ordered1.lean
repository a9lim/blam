import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P448

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
private def sentinel (t : Term) : Nat := (blcCode t).foldl (fun n b => 2*n + if b then 1 else 0) 1
def e223894971174152376362648984469628621328607046 : Term := (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))) (.app (.var 1) (.var 0))) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 1)))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
theorem wire_e223894971174152376362648984469628621328607046 : Closed e223894971174152376362648984469628621328607046 ∧ sentinel e223894971174152376362648984469628621328607046 = 937518817527132316891791969194376189519980358 := by decide
theorem ex_e223894971174152376362648984469628621328607046 : ¬ IsSelfInterpreter e223894971174152376362648984469628621328607046 := by
  intro he
  have hz := necessary gm1 (m := (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (by decide) (by decide) sm1_19 he (oh1_468 (rho (n := 3) 0 0))
  exact (by decide : ¬ eval gm1 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.var 0)) ≤ opm1 (opm1 2 0) 0) hz
#print axioms ex_e223894971174152376362648984469628621328607046

end Blc.H44Chain
