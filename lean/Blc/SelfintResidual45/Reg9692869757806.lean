import Blc.SelfintResidual45.Reg9692869757806B0
import Blc.SelfintResidual45.Reg9692869757806B1
import Blc.SelfintResidual45.Reg9692869757806B2
import Blc.SelfintResidual45.Reg9692869757806B3

set_option Elab.async false
namespace Blc.Floor45.Reg9692869757806
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 451 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 (RegProof.merge ok60 ok70)) (RegProof.merge ok80 (RegProof.merge ok90 ok100)))) (RegProof.merge (RegProof.merge (RegProof.merge ok110 (RegProof.merge ok120 ok130)) (RegProof.merge ok140 (RegProof.merge ok150 ok160))) (RegProof.merge (RegProof.merge ok170 (RegProof.merge ok180 ok190)) (RegProof.merge ok200 (RegProof.merge ok210 ok220))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok230 ok240) (RegProof.merge ok250 (RegProof.merge ok260 ok270))) (RegProof.merge (RegProof.merge ok280 (RegProof.merge ok290 ok300)) (RegProof.merge ok310 (RegProof.merge ok320 ok330)))) (RegProof.merge (RegProof.merge (RegProof.merge ok340 (RegProof.merge ok350 ok360)) (RegProof.merge ok370 (RegProof.merge ok380 ok390))) (RegProof.merge (RegProof.merge ok400 (RegProof.merge ok410 ok420)) (RegProof.merge ok430 (RegProof.merge ok440 ok450))))))
def e9692869757806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))))
theorem wire_e9692869757806 : Closed e9692869757806 ∧ code e9692869757806 = 44877241846638 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692869757806 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9692869757806 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 451 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692869757806
