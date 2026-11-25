import Blc.SelfintResidual45.Reg9690391395638Data

set_option Elab.async false
namespace Blc.Floor45.Reg9690391395638
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem ok30 : RegProof.Span ck 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem ok40 : RegProof.Span ck 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem ok50 : RegProof.Span ck 50 60 := RegProof.block (n := 10) (by decide +kernel)
theorem ok60 : RegProof.Span ck 60 70 := RegProof.block (n := 10) (by decide +kernel)
theorem ok70 : RegProof.Span ck 70 80 := RegProof.block (n := 10) (by decide +kernel)
theorem ok80 : RegProof.Span ck 80 87 := RegProof.block (n := 7) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 87 := (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30)) (RegProof.merge (RegProof.merge ok40 ok50) (RegProof.merge ok60 (RegProof.merge ok70 ok80))))
def e9690391395638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.app (.var 0) (.var 1))))))))
theorem wire_e9690391395638 : Closed e9690391395638 ∧ code e9690391395638 = 44874763484470 := by decide

theorem excluded : ¬ IsSelfInterpreter e9690391395638 := by
  intro he
  have h : ∃ j, Count (call e9690391395638 (.lam (.lam (.var 1))) (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.lam (.var 0))]) j := inputCount (k := 4) he (by decide) (by decide)
  have hp : replay [] (call e9690391395638 (.lam (.lam (.var 1))) (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.lam (.var 0))]) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 87 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9690391395638
