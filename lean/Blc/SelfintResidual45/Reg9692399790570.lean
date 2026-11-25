import Blc.SelfintResidual45.Reg9692399790570Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692399790570
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem ok30 : RegProof.Span ck 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem ok40 : RegProof.Span ck 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 50 := (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40)))
def e9692399790570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0))))
theorem wire_e9692399790570 : Closed e9692399790570 ∧ code e9692399790570 = 44876771879402 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692399790570 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9692399790570 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 50 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692399790570
