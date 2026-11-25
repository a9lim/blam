import Blc.SelfintResidual45.Reg11219193772674B0
import Blc.SelfintResidual45.Reg11219193772674B1
import Blc.SelfintResidual45.Reg11219193772674B2
import Blc.SelfintResidual45.Reg11219193772674B3

set_option Elab.async false
namespace Blc.Floor45.Reg11219193772674
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 427 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 ok60) (RegProof.merge ok70 (RegProof.merge ok80 ok90)))) (RegProof.merge (RegProof.merge (RegProof.merge ok100 ok110) (RegProof.merge ok120 (RegProof.merge ok130 ok140))) (RegProof.merge (RegProof.merge ok150 (RegProof.merge ok160 ok170)) (RegProof.merge ok180 (RegProof.merge ok190 ok200))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok210 ok220) (RegProof.merge ok230 (RegProof.merge ok240 ok250))) (RegProof.merge (RegProof.merge ok260 (RegProof.merge ok270 ok280)) (RegProof.merge ok290 (RegProof.merge ok300 ok310)))) (RegProof.merge (RegProof.merge (RegProof.merge ok320 ok330) (RegProof.merge ok340 (RegProof.merge ok350 ok360))) (RegProof.merge (RegProof.merge ok370 (RegProof.merge ok380 ok390)) (RegProof.merge ok400 (RegProof.merge ok410 ok420))))))
def e11219193772674 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)))) (.lam (.lam (.var 0))))
theorem wire_e11219193772674 : Closed e11219193772674 ∧ code e11219193772674 = 46403565861506 := by decide

theorem excluded : ¬ IsSelfInterpreter e11219193772674 := by
  intro he
  have h := rawCount he
  have hp : replay [] e11219193772674 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 427 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg11219193772674
