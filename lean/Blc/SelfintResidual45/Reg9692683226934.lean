import Blc.SelfintResidual45.Reg9692683226934Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692683226934
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
theorem ok80 : RegProof.Span ck 80 90 := RegProof.block (n := 10) (by decide +kernel)
theorem ok90 : RegProof.Span ck 90 100 := RegProof.block (n := 10) (by decide +kernel)
theorem ok100 : RegProof.Span ck 100 102 := RegProof.block (n := 2) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 102 := (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 (RegProof.merge ok60 ok70)) (RegProof.merge ok80 (RegProof.merge ok90 ok100))))
def e9692683226934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))))
theorem wire_e9692683226934 : Closed e9692683226934 ∧ code e9692683226934 = 44877055315766 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692683226934 := by
  intro he
  have h : ∃ j, Count (call e9692683226934 (.lam (.lam (.var 1))) (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.lam (.var 0))]) j := inputCount (k := 4) he (by decide) (by decide)
  have hp : replay [] (call e9692683226934 (.lam (.lam (.var 1))) (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.lam (.var 0))]) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 102 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692683226934
