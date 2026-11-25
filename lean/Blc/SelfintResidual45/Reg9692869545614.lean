import Blc.SelfintResidual45.Reg9692869545614B0
import Blc.SelfintResidual45.Reg9692869545614B1
import Blc.SelfintResidual45.Reg9692869545614B2
import Blc.SelfintResidual45.Reg9692869545614B3
import Blc.SelfintResidual45.Reg9692869545614B4

set_option Elab.async false
namespace Blc.Floor45.Reg9692869545614
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 526 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge ok30 (RegProof.merge ok40 ok50))) (RegProof.merge (RegProof.merge ok60 (RegProof.merge ok70 ok80)) (RegProof.merge (RegProof.merge ok90 ok100) (RegProof.merge ok110 ok120)))) (RegProof.merge (RegProof.merge (RegProof.merge ok130 (RegProof.merge ok140 ok150)) (RegProof.merge ok160 (RegProof.merge ok170 ok180))) (RegProof.merge (RegProof.merge ok190 (RegProof.merge ok200 ok210)) (RegProof.merge (RegProof.merge ok220 ok230) (RegProof.merge ok240 ok250))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok260 (RegProof.merge ok270 ok280)) (RegProof.merge ok290 (RegProof.merge ok300 ok310))) (RegProof.merge (RegProof.merge ok320 (RegProof.merge ok330 ok340)) (RegProof.merge (RegProof.merge ok350 ok360) (RegProof.merge ok370 ok380)))) (RegProof.merge (RegProof.merge (RegProof.merge ok390 (RegProof.merge ok400 ok410)) (RegProof.merge (RegProof.merge ok420 ok430) (RegProof.merge ok440 ok450))) (RegProof.merge (RegProof.merge ok460 (RegProof.merge ok470 ok480)) (RegProof.merge (RegProof.merge ok490 ok500) (RegProof.merge ok510 ok520))))))
def e9692869545614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 2)))))))))
theorem wire_e9692869545614 : Closed e9692869545614 ∧ code e9692869545614 = 44877241634446 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692869545614 := by
  intro he
  have h : ∃ j, Count e9692869545614 j := rawCount he
  have hp : replay [] e9692869545614 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 526 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692869545614
