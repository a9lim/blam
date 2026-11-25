import Blc.SelfintResidual45.Reg9692683226074B0
import Blc.SelfintResidual45.Reg9692683226074B1
import Blc.SelfintResidual45.Reg9692683226074B2

set_option Elab.async false
namespace Blc.Floor45.Reg9692683226074
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 338 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 ok30)) (RegProof.merge (RegProof.merge ok40 ok50) (RegProof.merge ok60 ok70))) (RegProof.merge (RegProof.merge (RegProof.merge ok80 ok90) (RegProof.merge ok100 ok110)) (RegProof.merge (RegProof.merge ok120 ok130) (RegProof.merge ok140 (RegProof.merge ok150 ok160))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok170 ok180) (RegProof.merge ok190 ok200)) (RegProof.merge (RegProof.merge ok210 ok220) (RegProof.merge ok230 ok240))) (RegProof.merge (RegProof.merge (RegProof.merge ok250 ok260) (RegProof.merge ok270 ok280)) (RegProof.merge (RegProof.merge ok290 ok300) (RegProof.merge ok310 (RegProof.merge ok320 ok330))))))
def e9692683226074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))))
theorem wire_e9692683226074 : Closed e9692683226074 ∧ code e9692683226074 = 44877055314906 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692683226074 := by
  intro he
  have h : ∃ j, Count (call e9692683226074 (.lam (.lam (.var 1))) (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.lam (.var 0))]) j := inputCount (k := 4) he (by decide) (by decide)
  have hp : replay [[.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left,.left],[.left,.left,.left],[.left,.left,.left]] (call e9692683226074 (.lam (.lam (.var 1))) (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.lam (.var 0))]) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 338 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692683226074
