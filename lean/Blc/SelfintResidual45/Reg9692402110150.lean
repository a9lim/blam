import Blc.SelfintResidual45.Reg9692402110150Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692402110150
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem ok30 : RegProof.Span ck 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem ok40 : RegProof.Span ck 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem ok50 : RegProof.Span ck 50 60 := RegProof.block (n := 10) (by decide +kernel)
theorem ok60 : RegProof.Span ck 60 69 := RegProof.block (n := 9) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 69 := (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge (RegProof.merge ok30 ok40) (RegProof.merge ok50 ok60)))
def e9692402110150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.var 1)))))
theorem wire_e9692402110150 : Closed e9692402110150 ∧ code e9692402110150 = 44876774198982 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692402110150 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9692402110150 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 69 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692402110150
