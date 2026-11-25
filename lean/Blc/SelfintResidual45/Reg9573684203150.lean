import Blc.SelfintResidual45.Reg9573684203150B0
import Blc.SelfintResidual45.Reg9573684203150B1
import Blc.SelfintResidual45.Reg9573684203150B2
import Blc.SelfintResidual45.Reg9573684203150B3
import Blc.SelfintResidual45.Reg9573684203150B4
import Blc.SelfintResidual45.Reg9573684203150B5

set_option Elab.async false
namespace Blc.Floor45.Reg9573684203150
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 626 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge (RegProof.merge ok30 ok40) (RegProof.merge ok50 ok60))) (RegProof.merge (RegProof.merge (RegProof.merge ok70 ok80) (RegProof.merge ok90 ok100)) (RegProof.merge (RegProof.merge ok110 ok120) (RegProof.merge ok130 ok140)))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok150 ok160) (RegProof.merge ok170 ok180)) (RegProof.merge (RegProof.merge ok190 ok200) (RegProof.merge ok210 ok220))) (RegProof.merge (RegProof.merge (RegProof.merge ok230 ok240) (RegProof.merge ok250 ok260)) (RegProof.merge (RegProof.merge ok270 ok280) (RegProof.merge ok290 ok300))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok310 ok320) (RegProof.merge ok330 ok340)) (RegProof.merge (RegProof.merge ok350 ok360) (RegProof.merge ok370 ok380))) (RegProof.merge (RegProof.merge (RegProof.merge ok390 ok400) (RegProof.merge ok410 ok420)) (RegProof.merge (RegProof.merge ok430 ok440) (RegProof.merge ok450 ok460)))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok470 ok480) (RegProof.merge ok490 ok500)) (RegProof.merge (RegProof.merge ok510 ok520) (RegProof.merge ok530 ok540))) (RegProof.merge (RegProof.merge (RegProof.merge ok550 ok560) (RegProof.merge ok570 ok580)) (RegProof.merge (RegProof.merge ok590 ok600) (RegProof.merge ok610 ok620))))))
def e9573684203150 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 2))))))))
theorem wire_e9573684203150 : Closed e9573684203150 ∧ code e9573684203150 = 44758056291982 := by decide

theorem excluded : ¬ IsSelfInterpreter e9573684203150 := by
  intro he
  have h : ∃ j, Count e9573684203150 j := rawCount he
  have hp : replay [[],[.left],[.left],[.left],[],[.left],[.left,.left],[.left]] e9573684203150 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 626 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9573684203150
