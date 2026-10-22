import Grow
namespace Blc.BodyLetResidual
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet BodyLetGrow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r0 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 2)) (.var 0)))
theorem reject0 : ¬ Reader r0 := by
 exact grow_reduct true [[], [1, 1]] [(.var 0)] [] [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject0

def r1 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 2)))
theorem reject1 : ¬ Reader r1 := by
 exact grow_reduct true [[], [1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide)
#print axioms reject1

def r2 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.app (.var 2) (.var 0))))
theorem reject2 : ¬ Reader r2 := by
 exact grow_reduct true [[], [1]] [(.var 0)] [] [] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide)
#print axioms reject2

def r3 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.app (.var 0) (.var 2))))
theorem reject3 : ¬ Reader r3 := by
 exact grow_reduct true [[], [1]] [(.var 0)] [] [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide)
#print axioms reject3

def r4 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject4 : ¬ Reader r4 := by
 exact grow_reduct true [[], [1, 2, 0], [1]] [(.var 0)] [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3)] [(.var 1)] (by decide)
#print axioms reject4

def r5 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject5 : ¬ Reader r5 := by
 exact grow_reduct true [[], [1, 2, 0, 1, 2, 0], [1]] [(.lam (.lam (.var 1))), (.var 3)] [(.var 0)] [(.var 0)] [(.var 1)] (by decide)
#print axioms reject5

def r6 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2)))) (.var 2)))
theorem reject6 : ¬ Reader r6 := by
 exact grow_reduct true [[], [1]] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0)] [(.var 0)] [(.var 1)] (by decide)
#print axioms reject6

def r7 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 1)))) (.var 2)))
theorem reject7 : ¬ Reader r7 := by
 exact grow_reduct true [[], [1]] [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 1)] (by decide)
#print axioms reject7

def r8 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 2)) (.var 1)))
theorem reject8 : ¬ Reader r8 := by
 exact grow_reduct true [[], [1, 1]] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [] [] [(.var 1), (.var 0)] (by decide)
#print axioms reject8

def r9 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 2)))
theorem reject9 : ¬ Reader r9 := by
 exact grow_reduct true [[], [1, 1]] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [] [] [(.var 0), (.var 1)] (by decide)
#print axioms reject9

def r10 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.app (.var 2) (.var 1))))
theorem reject10 : ¬ Reader r10 := by
 exact grow_reduct true [[], [1]] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [] [] [(.app (.var 1) (.var 0))] (by decide)
#print axioms reject10

def r11 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.app (.var 1) (.var 2))))
theorem reject11 : ¬ Reader r11 := by
 exact grow_reduct true [[], [1]] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [] [] [(.app (.var 0) (.var 1))] (by decide)
#print axioms reject11

def r12 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject12 : ¬ Reader r12 := by
 exact grow_reduct true [[], [1, 1, 2, 0, 2, 0], [1, 1]] [(.lam (.lam (.var 1))), (.var 3)] [] [] [(.var 1), (.var 0)] (by decide)
#print axioms reject12

def r13 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject13 : ¬ Reader r13 := by
 exact grow_reduct true [[], [1, 1, 2, 0, 2, 0], [1, 1]] [(.lam (.lam (.var 1))), (.var 3)] [] [] [(.var 0), (.var 1)] (by decide)
#print axioms reject13

def r14 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject14 : ¬ Reader r14 := by
 exact grow_reduct true [[], [1, 2, 0, 2, 0], [1]] [(.lam (.lam (.var 1))), (.var 3)] [] [] [(.app (.var 1) (.var 0))] (by decide)
#print axioms reject14

def r15 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject15 : ¬ Reader r15 := by
 exact grow_reduct true [[], [1, 2, 0, 2, 0], [1]] [(.lam (.lam (.var 1))), (.var 3)] [] [] [(.app (.var 0) (.var 1))] (by decide)
#print axioms reject15

def r16 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 2)))
theorem reject16 : ¬ Reader r16 := by
 exact mixed_reduct true [[], [1, 1, 2, 0, 1], [1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1], [1]] [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1], [1]] (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) [] [] (by decide) (by decide)
#print axioms reject16

end Blc.BodyLetResidual
