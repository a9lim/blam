import Blc.SelfintResidual45.Reg9569468944186B0
import Blc.SelfintResidual45.Reg9569468944186B1
import Blc.SelfintResidual45.Reg9569468944186B10
import Blc.SelfintResidual45.Reg9569468944186B2
import Blc.SelfintResidual45.Reg9569468944186B3
import Blc.SelfintResidual45.Reg9569468944186B4
import Blc.SelfintResidual45.Reg9569468944186B5
import Blc.SelfintResidual45.Reg9569468944186B6
import Blc.SelfintResidual45.Reg9569468944186B7
import Blc.SelfintResidual45.Reg9569468944186B8
import Blc.SelfintResidual45.Reg9569468944186B9

set_option Elab.async false
namespace Blc.Floor45.Reg9569468944186
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 1319 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30)) (RegProof.merge (RegProof.merge ok40 ok50) (RegProof.merge ok60 ok70))) (RegProof.merge (RegProof.merge (RegProof.merge ok80 ok90) (RegProof.merge ok100 ok110)) (RegProof.merge (RegProof.merge ok120 ok130) (RegProof.merge ok140 ok150)))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok160 ok170) (RegProof.merge ok180 ok190)) (RegProof.merge (RegProof.merge ok200 ok210) (RegProof.merge ok220 ok230))) (RegProof.merge (RegProof.merge (RegProof.merge ok240 ok250) (RegProof.merge ok260 ok270)) (RegProof.merge (RegProof.merge ok280 ok290) (RegProof.merge ok300 (RegProof.merge ok310 ok320)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok330 ok340) (RegProof.merge ok350 ok360)) (RegProof.merge (RegProof.merge ok370 ok380) (RegProof.merge ok390 ok400))) (RegProof.merge (RegProof.merge (RegProof.merge ok410 ok420) (RegProof.merge ok430 ok440)) (RegProof.merge (RegProof.merge ok450 ok460) (RegProof.merge ok470 ok480)))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok490 ok500) (RegProof.merge ok510 ok520)) (RegProof.merge (RegProof.merge ok530 ok540) (RegProof.merge ok550 ok560))) (RegProof.merge (RegProof.merge (RegProof.merge ok570 ok580) (RegProof.merge ok590 ok600)) (RegProof.merge (RegProof.merge ok610 ok620) (RegProof.merge ok630 (RegProof.merge ok640 ok650))))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok660 ok670) (RegProof.merge ok680 ok690)) (RegProof.merge (RegProof.merge ok700 ok710) (RegProof.merge ok720 ok730))) (RegProof.merge (RegProof.merge (RegProof.merge ok740 ok750) (RegProof.merge ok760 ok770)) (RegProof.merge (RegProof.merge ok780 ok790) (RegProof.merge ok800 ok810)))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok820 ok830) (RegProof.merge ok840 ok850)) (RegProof.merge (RegProof.merge ok860 ok870) (RegProof.merge ok880 ok890))) (RegProof.merge (RegProof.merge (RegProof.merge ok900 ok910) (RegProof.merge ok920 ok930)) (RegProof.merge (RegProof.merge ok940 ok950) (RegProof.merge ok960 (RegProof.merge ok970 ok980)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok990 ok1000) (RegProof.merge ok1010 ok1020)) (RegProof.merge (RegProof.merge ok1030 ok1040) (RegProof.merge ok1050 ok1060))) (RegProof.merge (RegProof.merge (RegProof.merge ok1070 ok1080) (RegProof.merge ok1090 ok1100)) (RegProof.merge (RegProof.merge ok1110 ok1120) (RegProof.merge ok1130 ok1140)))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1150 ok1160) (RegProof.merge ok1170 ok1180)) (RegProof.merge (RegProof.merge ok1190 ok1200) (RegProof.merge ok1210 ok1220))) (RegProof.merge (RegProof.merge (RegProof.merge ok1230 ok1240) (RegProof.merge ok1250 ok1260)) (RegProof.merge (RegProof.merge ok1270 ok1280) (RegProof.merge ok1290 (RegProof.merge ok1300 ok1310))))))))
def e9569468944186 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
theorem wire_e9569468944186 : Closed e9569468944186 ∧ code e9569468944186 = 44753841033018 := by decide

theorem excluded : ¬ IsSelfInterpreter e9569468944186 := by
  intro he
  have h : ∃ j, Count e9569468944186 j := rawCount he
  have hp : replay [] e9569468944186 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 1319 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9569468944186
