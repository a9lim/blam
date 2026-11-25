import Blc.SelfintResidual45.Reg9692411655146Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692411655146
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem ok30 : RegProof.Span ck 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem ok40 : RegProof.Span ck 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem ok50 : RegProof.Span ck 50 56 := RegProof.block (n := 6) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 56 := (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge ok30 (RegProof.merge ok40 ok50)))
def e9692411655146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))) (.var 0))))
theorem wire_e9692411655146 : Closed e9692411655146 ∧ code e9692411655146 = 44876783743978 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692411655146 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9692411655146 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 56 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692411655146
