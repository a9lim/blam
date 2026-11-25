import Blc.SelfintResidual45.Reg2394982569594Data

set_option Elab.async false
namespace Blc.Floor45.Reg2394982569594
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 20 := (RegProof.merge ok0 ok10)
def e2394982569594 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))))))))
theorem wire_e2394982569594 : Closed e2394982569594 ∧ code e2394982569594 = 37579354658426 := by decide

theorem excluded : ¬ IsSelfInterpreter e2394982569594 := by
  intro he
  have h : ∃ j, Count (call e2394982569594 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e2394982569594 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 20 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg2394982569594
