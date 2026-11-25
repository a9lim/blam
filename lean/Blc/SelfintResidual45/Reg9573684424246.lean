import Blc.SelfintResidual45.Reg9573684424246B0
import Blc.SelfintResidual45.Reg9573684424246B1
import Blc.SelfintResidual45.Reg9573684424246B2
import Blc.SelfintResidual45.Reg9573684424246B3
import Blc.SelfintResidual45.Reg9573684424246B4
import Blc.SelfintResidual45.Reg9573684424246B5
import Blc.SelfintResidual45.Reg9573684424246B6

set_option Elab.async false
namespace Blc.Floor45.Reg9573684424246
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 822 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 ok60) (RegProof.merge ok70 (RegProof.merge ok80 ok90)))) (RegProof.merge (RegProof.merge (RegProof.merge ok100 ok110) (RegProof.merge ok120 (RegProof.merge ok130 ok140))) (RegProof.merge (RegProof.merge ok150 ok160) (RegProof.merge ok170 (RegProof.merge ok180 ok190))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok200 ok210) (RegProof.merge ok220 (RegProof.merge ok230 ok240))) (RegProof.merge (RegProof.merge ok250 ok260) (RegProof.merge ok270 (RegProof.merge ok280 ok290)))) (RegProof.merge (RegProof.merge (RegProof.merge ok300 ok310) (RegProof.merge ok320 (RegProof.merge ok330 ok340))) (RegProof.merge (RegProof.merge ok350 (RegProof.merge ok360 ok370)) (RegProof.merge ok380 (RegProof.merge ok390 ok400)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok410 ok420) (RegProof.merge ok430 (RegProof.merge ok440 ok450))) (RegProof.merge (RegProof.merge ok460 ok470) (RegProof.merge ok480 (RegProof.merge ok490 ok500)))) (RegProof.merge (RegProof.merge (RegProof.merge ok510 ok520) (RegProof.merge ok530 (RegProof.merge ok540 ok550))) (RegProof.merge (RegProof.merge ok560 (RegProof.merge ok570 ok580)) (RegProof.merge ok590 (RegProof.merge ok600 ok610))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok620 ok630) (RegProof.merge ok640 (RegProof.merge ok650 ok660))) (RegProof.merge (RegProof.merge ok670 ok680) (RegProof.merge ok690 (RegProof.merge ok700 ok710)))) (RegProof.merge (RegProof.merge (RegProof.merge ok720 ok730) (RegProof.merge ok740 (RegProof.merge ok750 ok760))) (RegProof.merge (RegProof.merge ok770 (RegProof.merge ok780 ok790)) (RegProof.merge ok800 (RegProof.merge ok810 ok820)))))))
def e9573684424246 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))))))
theorem wire_e9573684424246 : Closed e9573684424246 ∧ code e9573684424246 = 44758056513078 := by decide

theorem excluded : ¬ IsSelfInterpreter e9573684424246 := by
  intro he
  have h : ∃ j, Count e9573684424246 j := rawCount he
  have hp : replay [] e9573684424246 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 822 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9573684424246
