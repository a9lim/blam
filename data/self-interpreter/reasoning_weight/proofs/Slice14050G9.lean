import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice14050G9
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r436 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3)))))) (.var 1))
theorem reject436 : ¬ Reader r436 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3)))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject436
def r437 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))) (.var 1))
theorem reject437 : ¬ Reader r437 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject437
def r438 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.var 1))
theorem reject438 : ¬ Reader r438 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject438
def r439 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.var 1))
theorem reject439 : ¬ Reader r439 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject439
def r440 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.var 1))
theorem reject440 : ¬ Reader r440 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject440
def r441 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1))
theorem reject441 : ¬ Reader r441 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject441
def r442 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1))
theorem reject442 : ¬ Reader r442 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject442
def r443 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))
theorem reject443 : ¬ Reader r443 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject443
def r444 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))
theorem reject444 : ¬ Reader r444 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.var 1)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject444
def r445 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject445 : ¬ Reader r445 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 0, 2], [1, 1], [1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 2, 2, 0], [1, 1, 1, 2, 2, 0], [1, 1, 1, 2, 2, 0, 0], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 0], [1, 1, 1]] [[1, 2, 0, 2, 0], [1, 2, 0, 1], [1, 1, 2, 0], [1, 1, 1]] (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2)))) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 2) (.var 3))))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3)))) (.lam (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 2) (.var 4))))))))) (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3)))) (.lam (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 2) (.var 4))))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.var 4)))) (.lam (.app (.app (.var 1) (.var 4)) (.lam (.app (.var 2) (.var 5))))))))))) [(.lam (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3)))) (.lam (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 2) (.var 4))))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.var 4)))) (.lam (.app (.app (.var 1) (.var 4)) (.lam (.app (.var 2) (.var 5))))))))))] [(.lam (.app (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.var 4))))))) (.var 1)) (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 4)) (.lam (.app (.var 1) (.var 5))))))) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject445
def r446 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject446 : ¬ Reader r446 := by
 exact mixed_reduct true [[1, 1], [1, 1], [1, 1], [1, 1, 2], [1, 1, 2, 0], [1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 1))))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 1) (.app (.var 3) (.lam (.app (.var 0) (.lam (.var 1))))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject446
def r447 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject447 : ¬ Reader r447 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 0, 2, 2], [1, 1], [1, 1], [1, 1, 2], [1, 1, 2, 0], [1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 3))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 3)))) (.lam (.app (.var 1) (.app (.var 3) (.lam (.var 4))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject447
def r448 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject448 : ¬ Reader r448 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 0, 1, 2], [1, 1], [1, 1], [1, 1, 1, 2], [1, 1, 1, 2, 0, 1], [1, 1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))))) (.var 0)) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject448
def r449 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject449 : ¬ Reader r449 := by
 exact mixed_reduct true [[1, 1], [1, 1], [1, 1], [1, 1, 1, 2], [1, 1, 1, 2, 0, 1], [1, 1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1))))))) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1))))))) (.var 2))))) (.var 0)) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject449
end Blc.HandlerLet.Slice14050G9
