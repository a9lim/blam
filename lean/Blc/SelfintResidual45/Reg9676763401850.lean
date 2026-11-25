import Blc.SelfintResidual45.Reg9676763401850Data

set_option Elab.async false
namespace Blc.Floor45.Reg9676763401850
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
theorem ok100 : RegProof.Span ck 100 110 := RegProof.block (n := 10) (by decide +kernel)
theorem ok110 : RegProof.Span ck 110 120 := RegProof.block (n := 10) (by decide +kernel)
theorem ok120 : RegProof.Span ck 120 130 := RegProof.block (n := 10) (by decide +kernel)
theorem ok130 : RegProof.Span ck 130 140 := RegProof.block (n := 10) (by decide +kernel)
theorem ok140 : RegProof.Span ck 140 146 := RegProof.block (n := 6) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 146 := (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge (RegProof.merge ok30 ok40) (RegProof.merge ok50 ok60))) (RegProof.merge (RegProof.merge (RegProof.merge ok70 ok80) (RegProof.merge ok90 ok100)) (RegProof.merge (RegProof.merge ok110 ok120) (RegProof.merge ok130 ok140))))
def e9676763401850 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 2) (.var 0))))))))
theorem wire_e9676763401850 : Closed e9676763401850 ∧ code e9676763401850 = 44861135490682 := by decide

theorem excluded : ¬ IsSelfInterpreter e9676763401850 := by
  intro he
  have h : ∃ j, Count (call e9676763401850 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e9676763401850 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 146 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9676763401850
