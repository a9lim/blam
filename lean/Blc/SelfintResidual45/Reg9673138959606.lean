import Blc.SelfintResidual45.Reg9673138959606Data

set_option Elab.async false
namespace Blc.Floor45.Reg9673138959606
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem ok30 : RegProof.Span ck 30 39 := RegProof.block (n := 9) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 39 := (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30))
def e9673138959606 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))
theorem wire_e9673138959606 : Closed e9673138959606 ∧ code e9673138959606 = 44857511048438 := by decide

theorem excluded : ¬ IsSelfInterpreter e9673138959606 := by
  intro he
  have h : ∃ j, Count (call e9673138959606 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e9673138959606 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 39 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9673138959606
