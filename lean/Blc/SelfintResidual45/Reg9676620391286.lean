import Blc.SelfintResidual45.Reg9676620391286B0
import Blc.SelfintResidual45.Reg9676620391286B1
import Blc.SelfintResidual45.Reg9676620391286B2
import Blc.SelfintResidual45.Reg9676620391286B3
import Blc.SelfintResidual45.Reg9676620391286B4

set_option Elab.async false
namespace Blc.Floor45.Reg9676620391286
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 564 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge (RegProof.merge ok30 ok40) (RegProof.merge ok50 ok60))) (RegProof.merge (RegProof.merge ok70 (RegProof.merge ok80 ok90)) (RegProof.merge (RegProof.merge ok100 ok110) (RegProof.merge ok120 ok130)))) (RegProof.merge (RegProof.merge (RegProof.merge ok140 (RegProof.merge ok150 ok160)) (RegProof.merge (RegProof.merge ok170 ok180) (RegProof.merge ok190 ok200))) (RegProof.merge (RegProof.merge ok210 (RegProof.merge ok220 ok230)) (RegProof.merge (RegProof.merge ok240 ok250) (RegProof.merge ok260 ok270))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok280 (RegProof.merge ok290 ok300)) (RegProof.merge (RegProof.merge ok310 ok320) (RegProof.merge ok330 ok340))) (RegProof.merge (RegProof.merge ok350 (RegProof.merge ok360 ok370)) (RegProof.merge (RegProof.merge ok380 ok390) (RegProof.merge ok400 ok410)))) (RegProof.merge (RegProof.merge (RegProof.merge ok420 (RegProof.merge ok430 ok440)) (RegProof.merge (RegProof.merge ok450 ok460) (RegProof.merge ok470 ok480))) (RegProof.merge (RegProof.merge (RegProof.merge ok490 ok500) (RegProof.merge ok510 ok520)) (RegProof.merge (RegProof.merge ok530 ok540) (RegProof.merge ok550 ok560))))))
def e9676620391286 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1)))))))
theorem wire_e9676620391286 : Closed e9676620391286 ∧ code e9676620391286 = 44860992480118 := by decide

theorem excluded : ¬ IsSelfInterpreter e9676620391286 := by
  intro he
  have h : ∃ j, Count (call e9676620391286 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [[.left,.left],[.left,.left],[.left],[.left,.left]] (call e9676620391286 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 564 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9676620391286
