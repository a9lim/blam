import Blc.SelfintResidual45.Reg9692402990434B0
import Blc.SelfintResidual45.Reg9692402990434B1
import Blc.SelfintResidual45.Reg9692402990434B2
import Blc.SelfintResidual45.Reg9692402990434B3
import Blc.SelfintResidual45.Reg9692402990434B4
import Blc.SelfintResidual45.Reg9692402990434B5

set_option Elab.async false
namespace Blc.Floor45.Reg9692402990434
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 712 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30)) (RegProof.merge (RegProof.merge ok40 ok50) (RegProof.merge ok60 (RegProof.merge ok70 ok80)))) (RegProof.merge (RegProof.merge (RegProof.merge ok90 ok100) (RegProof.merge ok110 ok120)) (RegProof.merge (RegProof.merge ok130 ok140) (RegProof.merge ok150 (RegProof.merge ok160 ok170))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok180 ok190) (RegProof.merge ok200 ok210)) (RegProof.merge (RegProof.merge ok220 ok230) (RegProof.merge ok240 (RegProof.merge ok250 ok260)))) (RegProof.merge (RegProof.merge (RegProof.merge ok270 ok280) (RegProof.merge ok290 ok300)) (RegProof.merge (RegProof.merge ok310 ok320) (RegProof.merge ok330 (RegProof.merge ok340 ok350)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok360 ok370) (RegProof.merge ok380 ok390)) (RegProof.merge (RegProof.merge ok400 ok410) (RegProof.merge ok420 (RegProof.merge ok430 ok440)))) (RegProof.merge (RegProof.merge (RegProof.merge ok450 ok460) (RegProof.merge ok470 ok480)) (RegProof.merge (RegProof.merge ok490 ok500) (RegProof.merge ok510 (RegProof.merge ok520 ok530))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok540 ok550) (RegProof.merge ok560 ok570)) (RegProof.merge (RegProof.merge ok580 ok590) (RegProof.merge ok600 (RegProof.merge ok610 ok620)))) (RegProof.merge (RegProof.merge (RegProof.merge ok630 ok640) (RegProof.merge ok650 ok660)) (RegProof.merge (RegProof.merge ok670 ok680) (RegProof.merge ok690 (RegProof.merge ok700 ok710)))))))
def e9692402990434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.var 0)))))
theorem wire_e9692402990434 : Closed e9692402990434 ∧ code e9692402990434 = 44876775079266 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692402990434 := by
  intro he
  have h : ∃ j, Count (call e9692402990434 (.lam (.lam (.var 0))) (.lam (.lam (.var 0))) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) j := inputCount (k := 2) he (by decide) (by decide)
  have hp : replay [] (call e9692402990434 (.lam (.lam (.var 0))) (.lam (.lam (.var 0))) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 712 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692402990434
