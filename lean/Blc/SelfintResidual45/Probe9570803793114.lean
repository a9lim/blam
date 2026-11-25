import Blc.SelfintResidual45.Probe9570803793114D1

set_option Elab.async false
namespace Blc.Floor45.Probe9570803793114
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9570803793114 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0)))))
theorem wire_e9570803793114 : Closed e9570803793114 ∧ code e9570803793114 = 44755175881946 := by decide

private def endpoint : Term := (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9570803793114 : ¬ IsSelfInterpreter e9570803793114 := by
  apply afterTyped Op8e7c855a107a.G (x := 0) (y := 3) (z := 1) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9570803793114 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q185 (rho (n := 3) 0 3) rfl rfl)
  · decide
#print axioms ex_e9570803793114
end Blc.Floor45.Probe9570803793114
