import Blc.SelfintResidual45.Reg9692332849794Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692332849794
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem ok30 : RegProof.Span ck 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem ok40 : RegProof.Span ck 40 49 := RegProof.block (n := 9) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 49 := (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40)))
def e9692332849794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)) (.lam (.lam (.var 0))))))
theorem wire_e9692332849794 : Closed e9692332849794 ∧ code e9692332849794 = 44876704938626 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692332849794 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9692332849794 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 49 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692332849794
