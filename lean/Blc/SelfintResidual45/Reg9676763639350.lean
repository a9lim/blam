import Blc.SelfintResidual45.Reg9676763639350B0
import Blc.SelfintResidual45.Reg9676763639350B1
import Blc.SelfintResidual45.Reg9676763639350B2

set_option Elab.async false
namespace Blc.Floor45.Reg9676763639350
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 356 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30)) (RegProof.merge (RegProof.merge ok40 ok50) (RegProof.merge ok60 (RegProof.merge ok70 ok80)))) (RegProof.merge (RegProof.merge (RegProof.merge ok90 ok100) (RegProof.merge ok110 ok120)) (RegProof.merge (RegProof.merge ok130 ok140) (RegProof.merge ok150 (RegProof.merge ok160 ok170))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok180 ok190) (RegProof.merge ok200 ok210)) (RegProof.merge (RegProof.merge ok220 ok230) (RegProof.merge ok240 (RegProof.merge ok250 ok260)))) (RegProof.merge (RegProof.merge (RegProof.merge ok270 ok280) (RegProof.merge ok290 ok300)) (RegProof.merge (RegProof.merge ok310 ok320) (RegProof.merge ok330 (RegProof.merge ok340 ok350))))))
def e9676763639350 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))))))
theorem wire_e9676763639350 : Closed e9676763639350 ∧ code e9676763639350 = 44861135728182 := by decide

theorem excluded : ¬ IsSelfInterpreter e9676763639350 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9676763639350 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 356 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9676763639350
