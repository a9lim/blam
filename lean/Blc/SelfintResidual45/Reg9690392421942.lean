import Blc.SelfintResidual45.Reg9690392421942B0
import Blc.SelfintResidual45.Reg9690392421942B1
import Blc.SelfintResidual45.Reg9690392421942B2
import Blc.SelfintResidual45.Reg9690392421942B3

set_option Elab.async false
namespace Blc.Floor45.Reg9690392421942
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 374 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30)) (RegProof.merge (RegProof.merge ok40 ok50) (RegProof.merge ok60 (RegProof.merge ok70 ok80)))) (RegProof.merge (RegProof.merge (RegProof.merge ok90 ok100) (RegProof.merge ok110 (RegProof.merge ok120 ok130))) (RegProof.merge (RegProof.merge ok140 ok150) (RegProof.merge ok160 (RegProof.merge ok170 ok180))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok190 ok200) (RegProof.merge ok210 ok220)) (RegProof.merge (RegProof.merge ok230 ok240) (RegProof.merge ok250 (RegProof.merge ok260 ok270)))) (RegProof.merge (RegProof.merge (RegProof.merge ok280 ok290) (RegProof.merge ok300 (RegProof.merge ok310 ok320))) (RegProof.merge (RegProof.merge ok330 ok340) (RegProof.merge ok350 (RegProof.merge ok360 ok370))))))
def e9690392421942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))))
theorem wire_e9690392421942 : Closed e9690392421942 ∧ code e9690392421942 = 44874764510774 := by decide

theorem excluded : ¬ IsSelfInterpreter e9690392421942 := by
  intro he
  have h : ∃ j, Count (call e9690392421942 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e9690392421942 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 374 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9690392421942
