import Blc.SelfintResidual45.Reg9676620391342Data

set_option Elab.async false
namespace Blc.Floor45.Reg9676620391342
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem ok30 : RegProof.Span ck 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem ok40 : RegProof.Span ck 40 44 := RegProof.block (n := 4) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 44 := (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40)))
def e9676620391342 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2)))))))
theorem wire_e9676620391342 : Closed e9676620391342 ∧ code e9676620391342 = 44860992480174 := by decide

theorem excluded : ¬ IsSelfInterpreter e9676620391342 := by
  intro he
  have h : ∃ j, Count (call e9676620391342 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e9676620391342 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 44 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9676620391342
