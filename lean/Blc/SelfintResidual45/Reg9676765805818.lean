import Blc.SelfintResidual45.Reg9676765805818B0
import Blc.SelfintResidual45.Reg9676765805818B1
import Blc.SelfintResidual45.Reg9676765805818B2
import Blc.SelfintResidual45.Reg9676765805818B3
import Blc.SelfintResidual45.Reg9676765805818B4

set_option Elab.async false
namespace Blc.Floor45.Reg9676765805818
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 490 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge ok30 (RegProof.merge ok40 ok50))) (RegProof.merge (RegProof.merge ok60 (RegProof.merge ok70 ok80)) (RegProof.merge ok90 (RegProof.merge ok100 ok110)))) (RegProof.merge (RegProof.merge (RegProof.merge ok120 (RegProof.merge ok130 ok140)) (RegProof.merge ok150 (RegProof.merge ok160 ok170))) (RegProof.merge (RegProof.merge ok180 (RegProof.merge ok190 ok200)) (RegProof.merge ok210 (RegProof.merge ok220 ok230))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok240 (RegProof.merge ok250 ok260)) (RegProof.merge ok270 (RegProof.merge ok280 ok290))) (RegProof.merge (RegProof.merge ok300 (RegProof.merge ok310 ok320)) (RegProof.merge ok330 (RegProof.merge ok340 ok350)))) (RegProof.merge (RegProof.merge (RegProof.merge ok360 (RegProof.merge ok370 ok380)) (RegProof.merge ok390 (RegProof.merge ok400 ok410))) (RegProof.merge (RegProof.merge ok420 (RegProof.merge ok430 ok440)) (RegProof.merge (RegProof.merge ok450 ok460) (RegProof.merge ok470 ok480))))))
def e9676765805818 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0))))))))))
theorem wire_e9676765805818 : Closed e9676765805818 ∧ code e9676765805818 = 44861137894650 := by decide

theorem excluded : ¬ IsSelfInterpreter e9676765805818 := by
  intro he
  have h : ∃ j, Count e9676765805818 j := rawCount he
  have hp : replay [] e9676765805818 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 490 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9676765805818
