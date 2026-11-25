import Blc.SelfintResidual45.Reg9692678919414B0
import Blc.SelfintResidual45.Reg9692678919414B1
import Blc.SelfintResidual45.Reg9692678919414B2
import Blc.SelfintResidual45.Reg9692678919414B3
import Blc.SelfintResidual45.Reg9692678919414B4
import Blc.SelfintResidual45.Reg9692678919414B5
import Blc.SelfintResidual45.Reg9692678919414B6
import Blc.SelfintResidual45.Reg9692678919414B7

set_option Elab.async false
namespace Blc.Floor45.Reg9692678919414
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 931 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 (RegProof.merge ok60 ok70)) (RegProof.merge ok80 (RegProof.merge ok90 ok100)))) (RegProof.merge (RegProof.merge (RegProof.merge ok110 (RegProof.merge ok120 ok130)) (RegProof.merge ok140 (RegProof.merge ok150 ok160))) (RegProof.merge (RegProof.merge ok170 (RegProof.merge ok180 ok190)) (RegProof.merge ok200 (RegProof.merge ok210 ok220))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok230 (RegProof.merge ok240 ok250)) (RegProof.merge ok260 (RegProof.merge ok270 ok280))) (RegProof.merge (RegProof.merge ok290 (RegProof.merge ok300 ok310)) (RegProof.merge ok320 (RegProof.merge ok330 ok340)))) (RegProof.merge (RegProof.merge (RegProof.merge ok350 (RegProof.merge ok360 ok370)) (RegProof.merge ok380 (RegProof.merge ok390 ok400))) (RegProof.merge (RegProof.merge ok410 (RegProof.merge ok420 ok430)) (RegProof.merge ok440 (RegProof.merge ok450 ok460)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok470 ok480) (RegProof.merge ok490 (RegProof.merge ok500 ok510))) (RegProof.merge (RegProof.merge ok520 (RegProof.merge ok530 ok540)) (RegProof.merge ok550 (RegProof.merge ok560 ok570)))) (RegProof.merge (RegProof.merge (RegProof.merge ok580 (RegProof.merge ok590 ok600)) (RegProof.merge ok610 (RegProof.merge ok620 ok630))) (RegProof.merge (RegProof.merge ok640 (RegProof.merge ok650 ok660)) (RegProof.merge ok670 (RegProof.merge ok680 ok690))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok700 (RegProof.merge ok710 ok720)) (RegProof.merge ok730 (RegProof.merge ok740 ok750))) (RegProof.merge (RegProof.merge ok760 (RegProof.merge ok770 ok780)) (RegProof.merge ok790 (RegProof.merge ok800 ok810)))) (RegProof.merge (RegProof.merge (RegProof.merge ok820 (RegProof.merge ok830 ok840)) (RegProof.merge ok850 (RegProof.merge ok860 ok870))) (RegProof.merge (RegProof.merge ok880 (RegProof.merge ok890 ok900)) (RegProof.merge ok910 (RegProof.merge ok920 ok930)))))))
def e9692678919414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1))))))))
theorem wire_e9692678919414 : Closed e9692678919414 ∧ code e9692678919414 = 44877051008246 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692678919414 := by
  intro he
  have h : ∃ j, Count (call e9692678919414 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e9692678919414 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact DirectReg.noClock mdl 931 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692678919414
