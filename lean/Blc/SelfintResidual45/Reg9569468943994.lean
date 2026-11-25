import Blc.SelfintResidual45.Reg9569468943994B0
import Blc.SelfintResidual45.Reg9569468943994B1
import Blc.SelfintResidual45.Reg9569468943994B2
import Blc.SelfintResidual45.Reg9569468943994B3
import Blc.SelfintResidual45.Reg9569468943994B4
import Blc.SelfintResidual45.Reg9569468943994B5
import Blc.SelfintResidual45.Reg9569468943994B6
import Blc.SelfintResidual45.Reg9569468943994B7

set_option Elab.async false
namespace Blc.Floor45.Reg9569468943994
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 847 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 ok60) (RegProof.merge ok70 (RegProof.merge ok80 ok90)))) (RegProof.merge (RegProof.merge (RegProof.merge ok100 ok110) (RegProof.merge ok120 (RegProof.merge ok130 ok140))) (RegProof.merge (RegProof.merge ok150 (RegProof.merge ok160 ok170)) (RegProof.merge ok180 (RegProof.merge ok190 ok200))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok210 ok220) (RegProof.merge ok230 (RegProof.merge ok240 ok250))) (RegProof.merge (RegProof.merge ok260 ok270) (RegProof.merge ok280 (RegProof.merge ok290 ok300)))) (RegProof.merge (RegProof.merge (RegProof.merge ok310 ok320) (RegProof.merge ok330 (RegProof.merge ok340 ok350))) (RegProof.merge (RegProof.merge ok360 (RegProof.merge ok370 ok380)) (RegProof.merge ok390 (RegProof.merge ok400 ok410)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok420 ok430) (RegProof.merge ok440 (RegProof.merge ok450 ok460))) (RegProof.merge (RegProof.merge ok470 ok480) (RegProof.merge ok490 (RegProof.merge ok500 ok510)))) (RegProof.merge (RegProof.merge (RegProof.merge ok520 ok530) (RegProof.merge ok540 (RegProof.merge ok550 ok560))) (RegProof.merge (RegProof.merge ok570 (RegProof.merge ok580 ok590)) (RegProof.merge ok600 (RegProof.merge ok610 ok620))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok630 ok640) (RegProof.merge ok650 (RegProof.merge ok660 ok670))) (RegProof.merge (RegProof.merge ok680 (RegProof.merge ok690 ok700)) (RegProof.merge ok710 (RegProof.merge ok720 ok730)))) (RegProof.merge (RegProof.merge (RegProof.merge ok740 ok750) (RegProof.merge ok760 (RegProof.merge ok770 ok780))) (RegProof.merge (RegProof.merge ok790 (RegProof.merge ok800 ok810)) (RegProof.merge ok820 (RegProof.merge ok830 ok840)))))))
def e9569468943994 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
theorem wire_e9569468943994 : Closed e9569468943994 ∧ code e9569468943994 = 44753841032826 := by decide

theorem excluded : ¬ IsSelfInterpreter e9569468943994 := by
  intro he
  have h : ∃ j, Count e9569468943994 j := rawCount he
  have hp : replay [[],[.left],[.left,.right,.right,.under,.under,.right]] e9569468943994 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 847 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9569468943994
