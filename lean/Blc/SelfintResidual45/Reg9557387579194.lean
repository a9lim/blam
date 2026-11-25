import Blc.SelfintResidual45.Reg9557387579194Data

set_option Elab.async false
namespace Blc.Floor45.Reg9557387579194
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 26 := RegProof.block (n := 6) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 26 := (RegProof.merge ok0 (RegProof.merge ok10 ok20))
def e9557387579194 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
theorem wire_e9557387579194 : Closed e9557387579194 ∧ code e9557387579194 = 44741759668026 := by decide

theorem excluded : ¬ IsSelfInterpreter e9557387579194 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9557387579194 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 26 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9557387579194
