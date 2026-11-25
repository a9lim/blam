import Blc.SelfintResidual45.Reg9573528702586Data

set_option Elab.async false
namespace Blc.Floor45.Reg9573528702586
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 19 := RegProof.block (n := 9) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 19 := (RegProof.merge ok0 ok10)
def e9573528702586 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
theorem wire_e9573528702586 : Closed e9573528702586 ∧ code e9573528702586 = 44757900791418 := by decide

theorem excluded : ¬ IsSelfInterpreter e9573528702586 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9573528702586 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 19 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9573528702586
