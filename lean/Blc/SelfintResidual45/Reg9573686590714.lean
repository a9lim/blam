import Blc.SelfintResidual45.Reg9573686590714B0
import Blc.SelfintResidual45.Reg9573686590714B1
import Blc.SelfintResidual45.Reg9573686590714B2
import Blc.SelfintResidual45.Reg9573686590714B3
import Blc.SelfintResidual45.Reg9573686590714B4

set_option Elab.async false
namespace Blc.Floor45.Reg9573686590714
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 553 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge (RegProof.merge ok30 ok40) (RegProof.merge ok50 ok60))) (RegProof.merge (RegProof.merge ok70 (RegProof.merge ok80 ok90)) (RegProof.merge (RegProof.merge ok100 ok110) (RegProof.merge ok120 ok130)))) (RegProof.merge (RegProof.merge (RegProof.merge ok140 (RegProof.merge ok150 ok160)) (RegProof.merge (RegProof.merge ok170 ok180) (RegProof.merge ok190 ok200))) (RegProof.merge (RegProof.merge ok210 (RegProof.merge ok220 ok230)) (RegProof.merge (RegProof.merge ok240 ok250) (RegProof.merge ok260 ok270))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok280 (RegProof.merge ok290 ok300)) (RegProof.merge (RegProof.merge ok310 ok320) (RegProof.merge ok330 ok340))) (RegProof.merge (RegProof.merge ok350 (RegProof.merge ok360 ok370)) (RegProof.merge (RegProof.merge ok380 ok390) (RegProof.merge ok400 ok410)))) (RegProof.merge (RegProof.merge (RegProof.merge ok420 (RegProof.merge ok430 ok440)) (RegProof.merge (RegProof.merge ok450 ok460) (RegProof.merge ok470 ok480))) (RegProof.merge (RegProof.merge ok490 (RegProof.merge ok500 ok510)) (RegProof.merge (RegProof.merge ok520 ok530) (RegProof.merge ok540 ok550))))))
def e9573686590714 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0))))))))))
theorem wire_e9573686590714 : Closed e9573686590714 ∧ code e9573686590714 = 44758058679546 := by decide

theorem excluded : ¬ IsSelfInterpreter e9573686590714 := by
  intro he
  have h := rawCount he
  have hp : replay [[],[.left]] e9573686590714 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 553 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9573686590714
