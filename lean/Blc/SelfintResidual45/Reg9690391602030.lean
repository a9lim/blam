import Blc.SelfintResidual45.Reg9690391602030B0
import Blc.SelfintResidual45.Reg9690391602030B1
import Blc.SelfintResidual45.Reg9690391602030B2

set_option Elab.async false
namespace Blc.Floor45.Reg9690391602030
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 321 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30)) (RegProof.merge (RegProof.merge ok40 ok50) (RegProof.merge ok60 ok70))) (RegProof.merge (RegProof.merge (RegProof.merge ok80 ok90) (RegProof.merge ok100 ok110)) (RegProof.merge (RegProof.merge ok120 ok130) (RegProof.merge ok140 ok150)))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok160 ok170) (RegProof.merge ok180 ok190)) (RegProof.merge (RegProof.merge ok200 ok210) (RegProof.merge ok220 ok230))) (RegProof.merge (RegProof.merge (RegProof.merge ok240 ok250) (RegProof.merge ok260 ok270)) (RegProof.merge (RegProof.merge ok280 ok290) (RegProof.merge ok300 (RegProof.merge ok310 ok320))))))
def e9690391602030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.var 2)))))))
theorem wire_e9690391602030 : Closed e9690391602030 ∧ code e9690391602030 = 44874763690862 := by decide

theorem excluded : ¬ IsSelfInterpreter e9690391602030 := by
  intro he
  have h : ∃ j, Count (call e9690391602030 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e9690391602030 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 321 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9690391602030
