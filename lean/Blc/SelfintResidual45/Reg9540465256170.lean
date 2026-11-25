import Blc.SelfintResidual45.Reg9540465256170Data

set_option Elab.async false
namespace Blc.Floor45.Reg9540465256170
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 20 := (RegProof.merge ok0 ok10)
def e9540465256170 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 0))))))
theorem wire_e9540465256170 : Closed e9540465256170 ∧ code e9540465256170 = 44724837345002 := by decide

theorem excluded : ¬ IsSelfInterpreter e9540465256170 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9540465256170 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 20 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9540465256170
