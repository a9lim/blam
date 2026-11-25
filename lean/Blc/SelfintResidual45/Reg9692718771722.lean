import Blc.SelfintResidual45.Reg9692718771722B0
import Blc.SelfintResidual45.Reg9692718771722B1
import Blc.SelfintResidual45.Reg9692718771722B10
import Blc.SelfintResidual45.Reg9692718771722B2
import Blc.SelfintResidual45.Reg9692718771722B3
import Blc.SelfintResidual45.Reg9692718771722B4
import Blc.SelfintResidual45.Reg9692718771722B5
import Blc.SelfintResidual45.Reg9692718771722B6
import Blc.SelfintResidual45.Reg9692718771722B7
import Blc.SelfintResidual45.Reg9692718771722B8
import Blc.SelfintResidual45.Reg9692718771722B9

set_option Elab.async false
namespace Blc.Floor45.Reg9692718771722
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 1204 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge (RegProof.merge ok30 ok40) (RegProof.merge ok50 ok60))) (RegProof.merge (RegProof.merge (RegProof.merge ok70 ok80) (RegProof.merge ok90 ok100)) (RegProof.merge (RegProof.merge ok110 ok120) (RegProof.merge ok130 ok140)))) (RegProof.merge (RegProof.merge (RegProof.merge ok150 (RegProof.merge ok160 ok170)) (RegProof.merge (RegProof.merge ok180 ok190) (RegProof.merge ok200 ok210))) (RegProof.merge (RegProof.merge (RegProof.merge ok220 ok230) (RegProof.merge ok240 ok250)) (RegProof.merge (RegProof.merge ok260 ok270) (RegProof.merge ok280 ok290))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok300 (RegProof.merge ok310 ok320)) (RegProof.merge (RegProof.merge ok330 ok340) (RegProof.merge ok350 ok360))) (RegProof.merge (RegProof.merge (RegProof.merge ok370 ok380) (RegProof.merge ok390 ok400)) (RegProof.merge (RegProof.merge ok410 ok420) (RegProof.merge ok430 ok440)))) (RegProof.merge (RegProof.merge (RegProof.merge ok450 (RegProof.merge ok460 ok470)) (RegProof.merge (RegProof.merge ok480 ok490) (RegProof.merge ok500 ok510))) (RegProof.merge (RegProof.merge (RegProof.merge ok520 ok530) (RegProof.merge ok540 ok550)) (RegProof.merge (RegProof.merge ok560 ok570) (RegProof.merge ok580 ok590)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok600 (RegProof.merge ok610 ok620)) (RegProof.merge (RegProof.merge ok630 ok640) (RegProof.merge ok650 ok660))) (RegProof.merge (RegProof.merge (RegProof.merge ok670 ok680) (RegProof.merge ok690 ok700)) (RegProof.merge (RegProof.merge ok710 ok720) (RegProof.merge ok730 ok740)))) (RegProof.merge (RegProof.merge (RegProof.merge ok750 (RegProof.merge ok760 ok770)) (RegProof.merge (RegProof.merge ok780 ok790) (RegProof.merge ok800 ok810))) (RegProof.merge (RegProof.merge (RegProof.merge ok820 ok830) (RegProof.merge ok840 ok850)) (RegProof.merge (RegProof.merge ok860 ok870) (RegProof.merge ok880 ok890))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok900 (RegProof.merge ok910 ok920)) (RegProof.merge (RegProof.merge ok930 ok940) (RegProof.merge ok950 ok960))) (RegProof.merge (RegProof.merge (RegProof.merge ok970 ok980) (RegProof.merge ok990 ok1000)) (RegProof.merge (RegProof.merge ok1010 ok1020) (RegProof.merge ok1030 ok1040)))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1050 ok1060) (RegProof.merge ok1070 ok1080)) (RegProof.merge (RegProof.merge ok1090 ok1100) (RegProof.merge ok1110 ok1120))) (RegProof.merge (RegProof.merge (RegProof.merge ok1130 ok1140) (RegProof.merge ok1150 ok1160)) (RegProof.merge (RegProof.merge ok1170 ok1180) (RegProof.merge ok1190 ok1200)))))))
def e9692718771722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)))))))))
theorem wire_e9692718771722 : Closed e9692718771722 ∧ code e9692718771722 = 44877090860554 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692718771722 := by
  intro he
  have h : ∃ j, Count (call e9692718771722 (.lam (.lam (.var 0))) (.lam (.lam (.var 0))) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) j := inputCount (k := 2) he (by decide) (by decide)
  have hp : replay [] (call e9692718771722 (.lam (.lam (.var 0))) (.lam (.lam (.var 0))) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 1204 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692718771722
