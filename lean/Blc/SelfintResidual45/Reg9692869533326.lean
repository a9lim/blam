import Blc.SelfintResidual45.Reg9692869533326B0
import Blc.SelfintResidual45.Reg9692869533326B1
import Blc.SelfintResidual45.Reg9692869533326B2
import Blc.SelfintResidual45.Reg9692869533326B3

set_option Elab.async false
namespace Blc.Floor45.Reg9692869533326
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 467 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 (RegProof.merge ok60 ok70)) (RegProof.merge ok80 (RegProof.merge ok90 ok100)))) (RegProof.merge (RegProof.merge (RegProof.merge ok110 (RegProof.merge ok120 ok130)) (RegProof.merge ok140 (RegProof.merge ok150 ok160))) (RegProof.merge (RegProof.merge ok170 (RegProof.merge ok180 ok190)) (RegProof.merge ok200 (RegProof.merge ok210 ok220))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok230 (RegProof.merge ok240 ok250)) (RegProof.merge ok260 (RegProof.merge ok270 ok280))) (RegProof.merge (RegProof.merge ok290 (RegProof.merge ok300 ok310)) (RegProof.merge ok320 (RegProof.merge ok330 ok340)))) (RegProof.merge (RegProof.merge (RegProof.merge ok350 (RegProof.merge ok360 ok370)) (RegProof.merge ok380 (RegProof.merge ok390 ok400))) (RegProof.merge (RegProof.merge ok410 (RegProof.merge ok420 ok430)) (RegProof.merge ok440 (RegProof.merge ok450 ok460))))))
def e9692869533326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))))
theorem wire_e9692869533326 : Closed e9692869533326 ∧ code e9692869533326 = 44877241622158 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692869533326 := by
  intro he
  have h := rawCount he
  have hp : replay [[],[]] e9692869533326 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 467 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692869533326
