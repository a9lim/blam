import Blc.SelfintResidual45.Reg9573528304106Data

set_option Elab.async false
namespace Blc.Floor45.Reg9573528304106
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 14 := RegProof.block (n := 4) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 14 := (RegProof.merge ok0 ok10)
def e9573528304106 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))) (.var 0)))))
theorem wire_e9573528304106 : Closed e9573528304106 ∧ code e9573528304106 = 44757900392938 := by decide

theorem excluded : ¬ IsSelfInterpreter e9573528304106 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9573528304106 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 14 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9573528304106
