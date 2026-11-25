import Blc.SelfintResidual45.Reg9692718531194B0
import Blc.SelfintResidual45.Reg9692718531194B1
import Blc.SelfintResidual45.Reg9692718531194B2
import Blc.SelfintResidual45.Reg9692718531194B3

set_option Elab.async false
namespace Blc.Floor45.Reg9692718531194
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 365 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30)) (RegProof.merge (RegProof.merge ok40 ok50) (RegProof.merge ok60 (RegProof.merge ok70 ok80)))) (RegProof.merge (RegProof.merge (RegProof.merge ok90 ok100) (RegProof.merge ok110 ok120)) (RegProof.merge (RegProof.merge ok130 ok140) (RegProof.merge ok150 (RegProof.merge ok160 ok170))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok180 ok190) (RegProof.merge ok200 ok210)) (RegProof.merge (RegProof.merge ok220 ok230) (RegProof.merge ok240 (RegProof.merge ok250 ok260)))) (RegProof.merge (RegProof.merge (RegProof.merge ok270 ok280) (RegProof.merge ok290 (RegProof.merge ok300 ok310))) (RegProof.merge (RegProof.merge ok320 ok330) (RegProof.merge ok340 (RegProof.merge ok350 ok360))))))
def e9692718531194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0)))))))))
theorem wire_e9692718531194 : Closed e9692718531194 ∧ code e9692718531194 = 44877090620026 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692718531194 := by
  intro he
  have h : ∃ j, Count (call e9692718531194 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) j := inputCount (k := 2) he (by decide) (by decide)
  have hp : replay [] (call e9692718531194 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 365 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692718531194
