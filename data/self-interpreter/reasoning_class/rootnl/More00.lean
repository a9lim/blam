import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.More00
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r0 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject0 : ¬ Reader r0 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1], [1, 1, 1]] [(.lam (.var 1))] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4))))))) (.var 0)) (.lam (.var 2)))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))))) (.var 0)) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject0

def r1 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject1 : ¬ Reader r1 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1]] [(.lam (.var 1))] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4))))))) (.var 0)) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1

def r2 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject2 : ¬ Reader r2 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.lam (.var 1))] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject2

def r3 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject3 : ¬ Reader r3 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1, 1]] [(.lam (.var 1))] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4))))))) (.var 0)) (.lam (.var 2)))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject3

def r4 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject4 : ¬ Reader r4 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.lam (.var 1))] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject4

def r5 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5 : ¬ Reader r5 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [(.var 0)] [] [(.var 0)] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 4)))))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject5

def r6 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject6 : ¬ Reader r6 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1]] [(.var 0)] [] [] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 4))))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject6

def r7 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7 : ¬ Reader r7 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 4))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject7

def r8 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject8 : ¬ Reader r8 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject8

def r9 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject9 : ¬ Reader r9 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0], [1, 1, 1], [1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject9

def r10 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject10 : ¬ Reader r10 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject10

def r11 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject11 : ¬ Reader r11 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject11

def r12 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject12 : ¬ Reader r12 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [(.var 0)] [] [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject12

def r13 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject13 : ¬ Reader r13 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject13

def r14 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject14 : ¬ Reader r14 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject14

def r15 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject15 : ¬ Reader r15 := by
  exact replay_loop true [[1, 1], [1, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject16 : ¬ Reader r16 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1]] 0 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject17 : ¬ Reader r17 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1]] 0 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject18 : ¬ Reader r18 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject19 : ¬ Reader r19 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 4))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 4)))))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject19

def r20 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject20 : ¬ Reader r20 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.lam (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject20

def r21 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject21 : ¬ Reader r21 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1, 1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject21

def r22 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject22 : ¬ Reader r22 := by
  exact replay_loop true [[1, 1], [1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1], [1, 1, 1]] 0 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject23 : ¬ Reader r23 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject24 : ¬ Reader r24 := by
  exact replay_loop true [[1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] 13 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject25 : ¬ Reader r25 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1]] 13 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject26 : ¬ Reader r26 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1]] (.app r26 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) [(.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject26

def r27 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject27 : ¬ Reader r27 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1]] (.app r27 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject27

def r28 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject28 : ¬ Reader r28 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1, 1, 0, 1, 2, 2], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1]] (.app r28 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject28

def r29 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject29 : ¬ Reader r29 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1]] (.app r29 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject29

def r30 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject30 : ¬ Reader r30 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 2, 2], [1, 1, 1]] (.app r30 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject30

def r31 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject31 : ¬ Reader r31 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1, 1, 0, 1, 2], [1, 1]] (.app r31 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.var 0)) [(.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 0))) (.var 0))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject31

def r32 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject32 : ¬ Reader r32 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1]] (.app r32 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.var 0)) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject32

def r33 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject33 : ¬ Reader r33 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r33 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.var 0)) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject33

def r34 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject34 : ¬ Reader r34 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r34 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.var 0)) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject34

def r35 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject35 : ¬ Reader r35 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r35 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject35

def r36 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject36 : ¬ Reader r36 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r36 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject36

def r37 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject37 : ¬ Reader r37 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r37 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject37

def r38 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject38 : ¬ Reader r38 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r38 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject38

def r39 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject39 : ¬ Reader r39 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r39 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject39

def r40 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject40 : ¬ Reader r40 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r40 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject40

def r41 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject41 : ¬ Reader r41 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r41 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject41

def r42 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject42 : ¬ Reader r42 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r42 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject42

def r43 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject43 : ¬ Reader r43 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r43 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 0)))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject43

def r44 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject44 : ¬ Reader r44 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r44 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject44

def r45 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject45 : ¬ Reader r45 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r45 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject45

def r46 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject46 : ¬ Reader r46 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r46 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject46

def r47 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject47 : ¬ Reader r47 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r47 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject47

def r48 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject48 : ¬ Reader r48 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r48 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject48

def r49 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject49 : ¬ Reader r49 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r49 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 0))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject49

def r50 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject50 : ¬ Reader r50 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r50 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 0))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject50

def r51 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject51 : ¬ Reader r51 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.app r51 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.var 0)) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject51

def r52 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject52 : ¬ Reader r52 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r52 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject52

def r53 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject53 : ¬ Reader r53 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r53 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject53

def r54 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject54 : ¬ Reader r54 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r54 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 0))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject54

def r55 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject55 : ¬ Reader r55 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r55 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject55

def r56 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject56 : ¬ Reader r56 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r56 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.var 0)) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject56

def r57 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject57 : ¬ Reader r57 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r57 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.var 0)) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject57

def r58 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1))
theorem reject58 : ¬ Reader r58 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r58 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) [(.var 0), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject58

def r59 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1))
theorem reject59 : ¬ Reader r59 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r59 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) [(.var 0), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject59

def r60 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject60 : ¬ Reader r60 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1]] (.app r60 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) [(.app (.var 0) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject60

def r61 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.var 1))
theorem reject61 : ¬ Reader r61 := by
  exact replay_loop true [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1, 2, 2], [1, 1, 1, 1, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1, 2, 2], [1, 1, 1, 1, 1, 0, 2]] 4 8 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject61

def r62 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject62 : ¬ Reader r62 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1]] (.app r62 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.var 0)) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject62

def r63 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject63 : ¬ Reader r63 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r63 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.var 0)) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject63

def r64 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject64 : ¬ Reader r64 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1]] 11 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))))] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject64

def r65 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject65 : ¬ Reader r65 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r65 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject65

def r66 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject66 : ¬ Reader r66 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r66 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject66

def r67 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.var 1))
theorem reject67 : ¬ Reader r67 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 2, 2], [1, 1, 1, 1, 0, 2]] 0 8 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject67

def r68 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.var 1))
theorem reject68 : ¬ Reader r68 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 2, 2], [1, 1, 1, 1, 0, 2]] 0 8 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))] [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject68

def r69 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject69 : ¬ Reader r69 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r69 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject69

def r70 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject70 : ¬ Reader r70 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r70 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject70

def r71 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject71 : ¬ Reader r71 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r71 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.var 0)))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject71

def r72 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject72 : ¬ Reader r72 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r72 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject72

def r73 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject73 : ¬ Reader r73 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r73 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject73

def r74 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject74 : ¬ Reader r74 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r74 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 0))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject74

def r75 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject75 : ¬ Reader r75 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r75 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject75

def r76 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject76 : ¬ Reader r76 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r76 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.var 0))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject76

def r77 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject77 : ¬ Reader r77 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r77 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.var 0)) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject77

def r78 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1))
theorem reject78 : ¬ Reader r78 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r78 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) [(.var 0), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject78

def r79 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.var 1))
theorem reject79 : ¬ Reader r79 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1, 2, 2], [1, 1, 1, 1, 1, 0, 2]] 0 8 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject79

def r80 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) (.var 1))
theorem reject80 : ¬ Reader r80 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1]] (.app r80 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) [(.var 0), (.app (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) (.var 0)), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject80

def r81 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))))) (.var 1))
theorem reject81 : ¬ Reader r81 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r81 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject81

def r82 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))))) (.var 1))
theorem reject82 : ¬ Reader r82 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r82 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject82

def r83 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))) (.var 1))
theorem reject83 : ¬ Reader r83 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r83 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject83

def r84 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))) (.var 1))
theorem reject84 : ¬ Reader r84 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r84 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject84

def r85 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))) (.var 1))
theorem reject85 : ¬ Reader r85 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r85 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject85

def r86 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))) (.var 1))
theorem reject86 : ¬ Reader r86 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r86 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject86

def r87 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))))) (.var 1))
theorem reject87 : ¬ Reader r87 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r87 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject87

def r88 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))))) (.var 1))
theorem reject88 : ¬ Reader r88 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r88 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject88

def r89 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))) (.var 1))
theorem reject89 : ¬ Reader r89 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r89 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject89

def r90 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))))) (.var 1))
theorem reject90 : ¬ Reader r90 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r90 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject90

def r91 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))) (.var 1))
theorem reject91 : ¬ Reader r91 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r91 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject91

def r92 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) (.var 1))
theorem reject92 : ¬ Reader r92 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r92 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject92

def r93 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))))) (.var 1))
theorem reject93 : ¬ Reader r93 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r93 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject93

def r94 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))))) (.var 1))
theorem reject94 : ¬ Reader r94 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r94 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject94

def r95 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))) (.var 1))
theorem reject95 : ¬ Reader r95 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r95 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject95

def r96 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))) (.var 1))
theorem reject96 : ¬ Reader r96 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r96 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject96

def r97 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))) (.var 1))
theorem reject97 : ¬ Reader r97 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r97 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject97

def r98 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))) (.var 1))
theorem reject98 : ¬ Reader r98 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r98 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject98

def r99 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))))) (.var 1))
theorem reject99 : ¬ Reader r99 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r99 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject99
end Blc.HandlerLet.More00
