import Blc.SelfintResidual45.Reg9690032584078Data

set_option Elab.async false
namespace Blc.Floor45.Reg9690032584078
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 20 := (RegProof.merge ok0 ok10)
def e9690032584078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.var 2))))))
theorem wire_e9690032584078 : Closed e9690032584078 ∧ code e9690032584078 = 44874404672910 := by decide

theorem excluded : ¬ IsSelfInterpreter e9690032584078 := by
  intro he
  have h : ∃ j, Count (call e9690032584078 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e9690032584078 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 20 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9690032584078
