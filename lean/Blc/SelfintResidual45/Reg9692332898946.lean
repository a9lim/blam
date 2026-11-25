import Blc.SelfintResidual45.Reg9692332898946B0
import Blc.SelfintResidual45.Reg9692332898946B1
import Blc.SelfintResidual45.Reg9692332898946B2
import Blc.SelfintResidual45.Reg9692332898946B3

set_option Elab.async false
namespace Blc.Floor45.Reg9692332898946
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 414 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 ok60) (RegProof.merge ok70 (RegProof.merge ok80 ok90)))) (RegProof.merge (RegProof.merge (RegProof.merge ok100 ok110) (RegProof.merge ok120 (RegProof.merge ok130 ok140))) (RegProof.merge (RegProof.merge ok150 (RegProof.merge ok160 ok170)) (RegProof.merge ok180 (RegProof.merge ok190 ok200))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok210 ok220) (RegProof.merge ok230 (RegProof.merge ok240 ok250))) (RegProof.merge (RegProof.merge ok260 ok270) (RegProof.merge ok280 (RegProof.merge ok290 ok300)))) (RegProof.merge (RegProof.merge (RegProof.merge ok310 ok320) (RegProof.merge ok330 (RegProof.merge ok340 ok350))) (RegProof.merge (RegProof.merge ok360 (RegProof.merge ok370 ok380)) (RegProof.merge ok390 (RegProof.merge ok400 ok410))))))
def e9692332898946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.lam (.var 0))))))
theorem wire_e9692332898946 : Closed e9692332898946 ∧ code e9692332898946 = 44876704987778 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692332898946 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9692332898946 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 414 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692332898946
