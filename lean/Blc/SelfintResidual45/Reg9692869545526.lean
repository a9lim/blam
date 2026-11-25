import Blc.SelfintResidual45.Reg9692869545526B0
import Blc.SelfintResidual45.Reg9692869545526B1
import Blc.SelfintResidual45.Reg9692869545526B2
import Blc.SelfintResidual45.Reg9692869545526B3
import Blc.SelfintResidual45.Reg9692869545526B4

set_option Elab.async false
namespace Blc.Floor45.Reg9692869545526
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 508 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge ok30 (RegProof.merge ok40 ok50))) (RegProof.merge (RegProof.merge ok60 (RegProof.merge ok70 ok80)) (RegProof.merge ok90 (RegProof.merge ok100 ok110)))) (RegProof.merge (RegProof.merge (RegProof.merge ok120 (RegProof.merge ok130 ok140)) (RegProof.merge ok150 (RegProof.merge ok160 ok170))) (RegProof.merge (RegProof.merge ok180 (RegProof.merge ok190 ok200)) (RegProof.merge (RegProof.merge ok210 ok220) (RegProof.merge ok230 ok240))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok250 (RegProof.merge ok260 ok270)) (RegProof.merge ok280 (RegProof.merge ok290 ok300))) (RegProof.merge (RegProof.merge ok310 (RegProof.merge ok320 ok330)) (RegProof.merge (RegProof.merge ok340 ok350) (RegProof.merge ok360 ok370)))) (RegProof.merge (RegProof.merge (RegProof.merge ok380 (RegProof.merge ok390 ok400)) (RegProof.merge ok410 (RegProof.merge ok420 ok430))) (RegProof.merge (RegProof.merge ok440 (RegProof.merge ok450 ok460)) (RegProof.merge (RegProof.merge ok470 ok480) (RegProof.merge ok490 ok500))))))
def e9692869545526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1))))))))
theorem wire_e9692869545526 : Closed e9692869545526 ∧ code e9692869545526 = 44877241634358 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692869545526 := by
  intro he
  have h := rawCount he
  have hp : replay [[],[],[],[.left]] e9692869545526 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 508 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692869545526
