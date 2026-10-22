import Certificates
namespace Blc.BodyLetExceptions.B16
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r0 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 2)))
theorem reject0 : ¬ Reader r0 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1 : ¬ Reader r1 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0)))
theorem reject2 : ¬ Reader r2 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 2)))
theorem reject3 : ¬ Reader r3 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0))))
theorem reject4 : ¬ Reader r4 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.var 0))), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 2))))
theorem reject5 : ¬ Reader r5 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0))))
theorem reject6 : ¬ Reader r6 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0))))
theorem reject7 : ¬ Reader r7 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0))))
theorem reject8 : ¬ Reader r8 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0))))
theorem reject9 : ¬ Reader r9 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0))))
theorem reject10 : ¬ Reader r10 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0))))
theorem reject11 : ¬ Reader r11 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 0))))
theorem reject12 : ¬ Reader r12 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0))))
theorem reject13 : ¬ Reader r13 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0))))
theorem reject14 : ¬ Reader r14 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0))))
theorem reject15 : ¬ Reader r15 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0))))
theorem reject16 : ¬ Reader r16 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0))))
theorem reject17 : ¬ Reader r17 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 1)))
theorem reject18 : ¬ Reader r18 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 1)))
theorem reject19 : ¬ Reader r19 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject19

def r20 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1)))
theorem reject20 : ¬ Reader r20 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject20

def r21 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1)))
theorem reject21 : ¬ Reader r21 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject21

def r22 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0)))
theorem reject22 : ¬ Reader r22 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0)))
theorem reject23 : ¬ Reader r23 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0)))
theorem reject24 : ¬ Reader r24 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0)))
theorem reject25 : ¬ Reader r25 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.app (.var 1) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0)))
theorem reject26 : ¬ Reader r26 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.var 1)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0)))
theorem reject27 : ¬ Reader r27 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.lam (.var 0))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject28 : ¬ Reader r28 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject29 : ¬ Reader r29 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject29

def r30 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 2)))
theorem reject30 : ¬ Reader r30 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject30

def r31 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 2)))
theorem reject31 : ¬ Reader r31 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject31

def r32 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))
theorem reject32 : ¬ Reader r32 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject32

def r33 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))
theorem reject33 : ¬ Reader r33 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject33

def r34 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))
theorem reject34 : ¬ Reader r34 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject34

def r35 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))
theorem reject35 : ¬ Reader r35 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject35

def r36 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0))))))
theorem reject36 : ¬ Reader r36 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject36

def r37 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1)))))
theorem reject37 : ¬ Reader r37 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject37

def r38 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0)))))
theorem reject38 : ¬ Reader r38 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject38

def r39 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0)))))
theorem reject39 : ¬ Reader r39 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0)))))
theorem reject40 : ¬ Reader r40 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0)))))
theorem reject41 : ¬ Reader r41 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject41

def r42 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))
theorem reject42 : ¬ Reader r42 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject42

def r43 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1))))
theorem reject43 : ¬ Reader r43 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject43

def r44 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1))))
theorem reject44 : ¬ Reader r44 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject44

def r45 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))
theorem reject45 : ¬ Reader r45 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject45

def r46 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))
theorem reject46 : ¬ Reader r46 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject46

def r47 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))
theorem reject47 : ¬ Reader r47 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject47

def r48 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))
theorem reject48 : ¬ Reader r48 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject48

def r49 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))
theorem reject49 : ¬ Reader r49 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject49

def r50 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))
theorem reject50 : ¬ Reader r50 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject50

def r51 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))
theorem reject51 : ¬ Reader r51 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject51

def r52 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))
theorem reject52 : ¬ Reader r52 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject52

def r53 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))
theorem reject53 : ¬ Reader r53 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject53

def r54 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem reject54 : ¬ Reader r54 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject54

def r55 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0))))))
theorem reject55 : ¬ Reader r55 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject55

def r56 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))
theorem reject56 : ¬ Reader r56 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject56

def r57 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))
theorem reject57 : ¬ Reader r57 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject57

def r58 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem reject58 : ¬ Reader r58 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject58

def r59 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0)))))
theorem reject59 : ¬ Reader r59 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject59

def r60 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1))))
theorem reject60 : ¬ Reader r60 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject60

def r61 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem reject61 : ¬ Reader r61 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject61

def r62 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2))))
theorem reject62 : ¬ Reader r62 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject62

def r63 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2))))
theorem reject63 : ¬ Reader r63 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject63

def r64 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))
theorem reject64 : ¬ Reader r64 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject64

def r65 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))
theorem reject65 : ¬ Reader r65 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject65

def r66 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))
theorem reject66 : ¬ Reader r66 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject66

def r67 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))
theorem reject67 : ¬ Reader r67 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject67

def r68 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0))))))
theorem reject68 : ¬ Reader r68 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject68

def r69 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0)))))
theorem reject69 : ¬ Reader r69 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject69

def r70 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2)))))
theorem reject70 : ¬ Reader r70 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject70

def r71 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0)))))
theorem reject71 : ¬ Reader r71 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject71

def r72 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0)))))
theorem reject72 : ¬ Reader r72 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject72

def r73 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))
theorem reject73 : ¬ Reader r73 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject73

def r74 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0)))))
theorem reject74 : ¬ Reader r74 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject74

def r75 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))
theorem reject75 : ¬ Reader r75 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject75

def r76 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))
theorem reject76 : ¬ Reader r76 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject76

def r77 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))
theorem reject77 : ¬ Reader r77 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject77

def r78 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2))))
theorem reject78 : ¬ Reader r78 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject78

def r79 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2))))
theorem reject79 : ¬ Reader r79 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject79

def r80 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0))))
theorem reject80 : ¬ Reader r80 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject80

def r81 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1)))
theorem reject81 : ¬ Reader r81 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject81

def r82 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 0)))))
theorem reject82 : ¬ Reader r82 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject82

def r83 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0))))
theorem reject83 : ¬ Reader r83 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject83

def r84 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0)))
theorem reject84 : ¬ Reader r84 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject84

def r85 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1)))
theorem reject85 : ¬ Reader r85 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject85

def r86 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0)))
theorem reject86 : ¬ Reader r86 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject86

def r87 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 1))))
theorem reject87 : ¬ Reader r87 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject87

def r88 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 0))))
theorem reject88 : ¬ Reader r88 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject88

def r89 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 0))))
theorem reject89 : ¬ Reader r89 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject89

def r90 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 0))))
theorem reject90 : ¬ Reader r90 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject90

def r91 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))
theorem reject91 : ¬ Reader r91 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject91

def r92 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))
theorem reject92 : ¬ Reader r92 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject92

def r93 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))
theorem reject93 : ¬ Reader r93 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject93

def r94 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))
theorem reject94 : ¬ Reader r94 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject94

def r95 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))
theorem reject95 : ¬ Reader r95 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject95

def r96 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 0))))
theorem reject96 : ¬ Reader r96 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject96

def r97 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 1)))
theorem reject97 : ¬ Reader r97 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject97

def r98 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.var 0)))))
theorem reject98 : ¬ Reader r98 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.app (.var 0) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject98

def r99 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0))))
theorem reject99 : ¬ Reader r99 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject99

def r100 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2)))
theorem reject100 : ¬ Reader r100 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject100

def r101 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 0)))))
theorem reject101 : ¬ Reader r101 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject101

def r102 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1)))
theorem reject102 : ¬ Reader r102 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject102

def r103 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2)))
theorem reject103 : ¬ Reader r103 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject103

def r104 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1))))
theorem reject104 : ¬ Reader r104 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject104

def r105 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2))))
theorem reject105 : ¬ Reader r105 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject105

def r106 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0))))
theorem reject106 : ¬ Reader r106 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject106

def r107 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0))))
theorem reject107 : ¬ Reader r107 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject107

def r108 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 1)))
theorem reject108 : ¬ Reader r108 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.lam (.var 0))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject108

def r109 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 2)))
theorem reject109 : ¬ Reader r109 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.lam (.var 0))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject109

def r110 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject110 : ¬ Reader r110 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject110

def r111 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject111 : ¬ Reader r111 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject111

def r112 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject112 : ¬ Reader r112 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject112

def r113 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject113 : ¬ Reader r113 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject113

def r114 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject114 : ¬ Reader r114 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject114

def r115 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject115 : ¬ Reader r115 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject115

def r116 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0))))
theorem reject116 : ¬ Reader r116 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject116

def r117 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0)))
theorem reject117 : ¬ Reader r117 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject117

def r118 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0))))
theorem reject118 : ¬ Reader r118 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject118

def r119 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 2)))
theorem reject119 : ¬ Reader r119 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject119

def r120 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.var 0)))))
theorem reject120 : ¬ Reader r120 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject120

def r121 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0)))
theorem reject121 : ¬ Reader r121 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject121

def r122 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 2)))
theorem reject122 : ¬ Reader r122 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject122

def r123 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 0))))
theorem reject123 : ¬ Reader r123 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.var 0)), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject123

def r124 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 2))))
theorem reject124 : ¬ Reader r124 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject124

def r125 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 0))))
theorem reject125 : ¬ Reader r125 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject125

def r126 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.var 0))))
theorem reject126 : ¬ Reader r126 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject126

def r127 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0)))
theorem reject127 : ¬ Reader r127 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.var 1) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject127

def r128 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))
theorem reject128 : ¬ Reader r128 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject128

def r129 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))
theorem reject129 : ¬ Reader r129 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject129

def r130 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))
theorem reject130 : ¬ Reader r130 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject130

def r131 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))
theorem reject131 : ¬ Reader r131 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject131

def r132 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 1)))
theorem reject132 : ¬ Reader r132 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject132

def r133 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 0)))
theorem reject133 : ¬ Reader r133 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject133

def r134 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject134 : ¬ Reader r134 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject134

def r135 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject135 : ¬ Reader r135 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject135

def r136 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1)))
theorem reject136 : ¬ Reader r136 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject136

def r137 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2)))
theorem reject137 : ¬ Reader r137 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject137

def r138 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject138 : ¬ Reader r138 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject138

def r139 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject139 : ¬ Reader r139 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject139

def r140 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0)))
theorem reject140 : ¬ Reader r140 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject140

def r141 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2)))
theorem reject141 : ¬ Reader r141 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject141

def r142 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject142 : ¬ Reader r142 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject142

def r143 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject143 : ¬ Reader r143 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject143

def r144 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject144 : ¬ Reader r144 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject144

def r145 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject145 : ¬ Reader r145 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject145

def r146 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject146 : ¬ Reader r146 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject146

def r147 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject147 : ¬ Reader r147 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject147

def r148 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject148 : ¬ Reader r148 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject148

def r149 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject149 : ¬ Reader r149 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject149

def r150 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject150 : ¬ Reader r150 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject150

def r151 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject151 : ¬ Reader r151 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject151

def r152 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject152 : ¬ Reader r152 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject152

def r153 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject153 : ¬ Reader r153 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject153

def r154 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject154 : ¬ Reader r154 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject154

def r155 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject155 : ¬ Reader r155 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject155

def r156 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject156 : ¬ Reader r156 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject156

def r157 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject157 : ¬ Reader r157 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject157

def r158 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject158 : ¬ Reader r158 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject158

def r159 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject159 : ¬ Reader r159 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject159

def r160 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject160 : ¬ Reader r160 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject160

def r161 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject161 : ¬ Reader r161 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject161

def r162 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 0))))
theorem reject162 : ¬ Reader r162 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject162

def r163 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 1)))
theorem reject163 : ¬ Reader r163 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject163

def r164 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 0)))))
theorem reject164 : ¬ Reader r164 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.app (.var 0) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject164

def r165 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.var 0))))
theorem reject165 : ¬ Reader r165 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.var 0), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject165

def r166 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 1)))
theorem reject166 : ¬ Reader r166 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.lam (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject166

def r167 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.var 0)))))
theorem reject167 : ¬ Reader r167 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.app (.var 0) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject167

def r168 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0))))
theorem reject168 : ¬ Reader r168 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject168

def r169 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0)))
theorem reject169 : ¬ Reader r169 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject169

def r170 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0))))
theorem reject170 : ¬ Reader r170 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject170

def r171 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0)))
theorem reject171 : ¬ Reader r171 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject171

def r172 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1)))
theorem reject172 : ¬ Reader r172 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject172

def r173 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0)))
theorem reject173 : ¬ Reader r173 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject173

def r174 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 1))))
theorem reject174 : ¬ Reader r174 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject174

def r175 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 0))))
theorem reject175 : ¬ Reader r175 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject175

def r176 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 0))))
theorem reject176 : ¬ Reader r176 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 1), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject176

def r177 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 2)))
theorem reject177 : ¬ Reader r177 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject177

def r178 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject178 : ¬ Reader r178 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject178

def r179 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.var 0))))
theorem reject179 : ¬ Reader r179 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject179

def r180 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 2)))
theorem reject180 : ¬ Reader r180 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject180

def r181 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0)))))
theorem reject181 : ¬ Reader r181 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject181

def r182 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0)))
theorem reject182 : ¬ Reader r182 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject182

def r183 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 2)))
theorem reject183 : ¬ Reader r183 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject183

def r184 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0))))
theorem reject184 : ¬ Reader r184 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject184

def r185 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 2))))
theorem reject185 : ¬ Reader r185 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject185

def r186 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0))))
theorem reject186 : ¬ Reader r186 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject186

def r187 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0))))
theorem reject187 : ¬ Reader r187 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject187

def r188 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0))))
theorem reject188 : ¬ Reader r188 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject188

def r189 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0))))
theorem reject189 : ¬ Reader r189 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject189

def r190 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0))))
theorem reject190 : ¬ Reader r190 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject190

def r191 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0))))
theorem reject191 : ¬ Reader r191 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject191

def r192 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 0))))
theorem reject192 : ¬ Reader r192 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject192

def r193 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0))))
theorem reject193 : ¬ Reader r193 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject193

def r194 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0))))
theorem reject194 : ¬ Reader r194 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject194

def r195 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0))))
theorem reject195 : ¬ Reader r195 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject195

def r196 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0))))
theorem reject196 : ¬ Reader r196 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject196

def r197 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0))))
theorem reject197 : ¬ Reader r197 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject197

def r198 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 1)))
theorem reject198 : ¬ Reader r198 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject198

def r199 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 1)))
theorem reject199 : ¬ Reader r199 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject199

def r200 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1)))
theorem reject200 : ¬ Reader r200 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject200

def r201 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1)))
theorem reject201 : ¬ Reader r201 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject201

def r202 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0)))
theorem reject202 : ¬ Reader r202 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject202

def r203 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0)))
theorem reject203 : ¬ Reader r203 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject203

def r204 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0)))
theorem reject204 : ¬ Reader r204 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject204

def r205 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0)))
theorem reject205 : ¬ Reader r205 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.var 1) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject205

def r206 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0)))
theorem reject206 : ¬ Reader r206 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.var 1)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject206

def r207 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0)))
theorem reject207 : ¬ Reader r207 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.var 0))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject207

def r208 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject208 : ¬ Reader r208 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject208

def r209 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject209 : ¬ Reader r209 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject209

def r210 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 2)))
theorem reject210 : ¬ Reader r210 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject210

def r211 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 2)))
theorem reject211 : ¬ Reader r211 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject211

def r212 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))
theorem reject212 : ¬ Reader r212 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject212

def r213 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))
theorem reject213 : ¬ Reader r213 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject213

def r214 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))
theorem reject214 : ¬ Reader r214 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject214

def r215 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))
theorem reject215 : ¬ Reader r215 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject215

def r216 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0))))))
theorem reject216 : ¬ Reader r216 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject216

def r217 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1)))))
theorem reject217 : ¬ Reader r217 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject217

def r218 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0)))))
theorem reject218 : ¬ Reader r218 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject218

def r219 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0)))))
theorem reject219 : ¬ Reader r219 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject219

def r220 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0)))))
theorem reject220 : ¬ Reader r220 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject220

def r221 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0)))))
theorem reject221 : ¬ Reader r221 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject221

def r222 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))
theorem reject222 : ¬ Reader r222 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject222

def r223 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1))))
theorem reject223 : ¬ Reader r223 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject223

def r224 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1))))
theorem reject224 : ¬ Reader r224 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject224

def r225 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))
theorem reject225 : ¬ Reader r225 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject225

def r226 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))
theorem reject226 : ¬ Reader r226 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject226

def r227 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))
theorem reject227 : ¬ Reader r227 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject227

def r228 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))
theorem reject228 : ¬ Reader r228 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject228

def r229 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))
theorem reject229 : ¬ Reader r229 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject229

def r230 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))
theorem reject230 : ¬ Reader r230 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject230

def r231 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))
theorem reject231 : ¬ Reader r231 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject231

def r232 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))
theorem reject232 : ¬ Reader r232 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject232

def r233 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))
theorem reject233 : ¬ Reader r233 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject233

def r234 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem reject234 : ¬ Reader r234 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject234

def r235 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0))))))
theorem reject235 : ¬ Reader r235 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject235

def r236 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))
theorem reject236 : ¬ Reader r236 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject236

def r237 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))
theorem reject237 : ¬ Reader r237 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject237

def r238 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem reject238 : ¬ Reader r238 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject238

def r239 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0)))))
theorem reject239 : ¬ Reader r239 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject239

def r240 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1))))
theorem reject240 : ¬ Reader r240 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject240

def r241 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem reject241 : ¬ Reader r241 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject241

def r242 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2))))
theorem reject242 : ¬ Reader r242 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject242

def r243 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2))))
theorem reject243 : ¬ Reader r243 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject243

def r244 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))
theorem reject244 : ¬ Reader r244 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject244

def r245 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))
theorem reject245 : ¬ Reader r245 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject245

def r246 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))
theorem reject246 : ¬ Reader r246 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject246

def r247 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))
theorem reject247 : ¬ Reader r247 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject247

def r248 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0))))))
theorem reject248 : ¬ Reader r248 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject248

def r249 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0)))))
theorem reject249 : ¬ Reader r249 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject249

def r250 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2)))))
theorem reject250 : ¬ Reader r250 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject250

def r251 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0)))))
theorem reject251 : ¬ Reader r251 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject251

def r252 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0)))))
theorem reject252 : ¬ Reader r252 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject252

def r253 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))
theorem reject253 : ¬ Reader r253 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject253

def r254 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0)))))
theorem reject254 : ¬ Reader r254 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject254

def r255 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))
theorem reject255 : ¬ Reader r255 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject255

def r256 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))
theorem reject256 : ¬ Reader r256 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject256

def r257 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))
theorem reject257 : ¬ Reader r257 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject257

def r258 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2))))
theorem reject258 : ¬ Reader r258 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject258

def r259 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2))))
theorem reject259 : ¬ Reader r259 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject259

def r260 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.lam (.lam (.var 3)))))
theorem reject260 : ¬ Reader r260 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject260

def r261 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.lam (.lam (.var 2)))))
theorem reject261 : ¬ Reader r261 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.var 0), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))] (by decide) (by decide) (by decide)
#print axioms reject261

def r262 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 1))) (.lam (.var 2))))
theorem reject262 : ¬ Reader r262 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject262

def r263 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 2))) (.lam (.var 1))))
theorem reject263 : ¬ Reader r263 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.var 1)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject263

def r264 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.lam (.var 2)))) (.var 1)))
theorem reject264 : ¬ Reader r264 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject264

def r265 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.lam (.var 3)))) (.var 0)))
theorem reject265 : ¬ Reader r265 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject265

def r266 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 0) (.lam (.lam (.var 3))))))
theorem reject266 : ¬ Reader r266 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject266

def r267 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 2))))))
theorem reject267 : ¬ Reader r267 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject267

def r268 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.lam (.lam (.var 3)))))
theorem reject268 : ¬ Reader r268 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject268

def r269 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 3)))) (.var 2)))
theorem reject269 : ¬ Reader r269 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 2))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject269

def r270 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject270 : ¬ Reader r270 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject270

def r271 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.lam (.lam (.var 2)))))
theorem reject271 : ¬ Reader r271 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 1), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))] (by decide) (by decide) (by decide)
#print axioms reject271

def r272 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 2)))
theorem reject272 : ¬ Reader r272 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject272

def r273 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 2) (.lam (.lam (.var 2))))))
theorem reject273 : ¬ Reader r273 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject273

def r274 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))) (.lam (.lam (.var 3)))))
theorem reject274 : ¬ Reader r274 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject274

def r275 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))) (.lam (.lam (.var 3)))))
theorem reject275 : ¬ Reader r275 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject275

def r276 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 2)) (.lam (.var 2))))
theorem reject276 : ¬ Reader r276 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 1), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject276

def r277 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.var 2))) (.var 2)))
theorem reject277 : ¬ Reader r277 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.var 1)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject277

def r278 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.app (.var 2) (.lam (.var 2)))))
theorem reject278 : ¬ Reader r278 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject278

def r279 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))) (.lam (.lam (.var 2)))))
theorem reject279 : ¬ Reader r279 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.var 0)), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))] (by decide) (by decide) (by decide)
#print axioms reject279

def r280 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))) (.lam (.lam (.var 2)))))
theorem reject280 : ¬ Reader r280 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.var 1)), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))] (by decide) (by decide) (by decide)
#print axioms reject280

def r281 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.var 2)) (.lam (.var 1))))
theorem reject281 : ¬ Reader r281 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.var 1), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject281

def r282 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.lam (.var 1))) (.var 2)))
theorem reject282 : ¬ Reader r282 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject282

def r283 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.app (.var 2) (.lam (.var 1)))))
theorem reject283 : ¬ Reader r283 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject283

def r284 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 1)))) (.lam (.var 2))))
theorem reject284 : ¬ Reader r284 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject284

def r285 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))) (.var 2)) (.var 1)))
theorem reject285 : ¬ Reader r285 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject285

def r286 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 2)))
theorem reject286 : ¬ Reader r286 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject286

def r287 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))) (.app (.var 2) (.var 1))))
theorem reject287 : ¬ Reader r287 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject287

def r288 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 2))))
theorem reject288 : ¬ Reader r288 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject288

def r289 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 1))))
theorem reject289 : ¬ Reader r289 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.lam (.var 1))), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject289

def r290 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 3)))) (.var 2)) (.var 0)))
theorem reject290 : ¬ Reader r290 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject290

def r291 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 3)))) (.var 0)) (.var 2)))
theorem reject291 : ¬ Reader r291 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject291

def r292 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 3)))) (.app (.var 2) (.var 0))))
theorem reject292 : ¬ Reader r292 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 2))), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject292

def r293 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 2))))
theorem reject293 : ¬ Reader r293 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 2))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject293

def r294 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.var 2))))) (.var 1)))
theorem reject294 : ¬ Reader r294 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject294

def r295 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 0)))
theorem reject295 : ¬ Reader r295 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject295

def r296 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject296 : ¬ Reader r296 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject296

def r297 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.lam (.var 2))))) (.var 2)))
theorem reject297 : ¬ Reader r297 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject297

def r298 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3)))))))
theorem reject298 : ¬ Reader r298 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))))] (by decide) (by decide) (by decide)
#print axioms reject298

def r299 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3))))))
theorem reject299 : ¬ Reader r299 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject299

def r300 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))
theorem reject300 : ¬ Reader r300 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject300

def r301 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2)))))))
theorem reject301 : ¬ Reader r301 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))] (by decide) (by decide) (by decide)
#print axioms reject301

def r302 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))
theorem reject302 : ¬ Reader r302 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject302

def r303 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1))))
theorem reject303 : ¬ Reader r303 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject303

def r304 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))
theorem reject304 : ¬ Reader r304 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.lam (.var 2)))))] (by decide) (by decide) (by decide)
#print axioms reject304

def r305 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3))))))
theorem reject305 : ¬ Reader r305 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject305

def r306 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2))))
theorem reject306 : ¬ Reader r306 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject306

def r307 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2)))))))
theorem reject307 : ¬ Reader r307 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))] (by decide) (by decide) (by decide)
#print axioms reject307

def r308 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))
theorem reject308 : ¬ Reader r308 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject308

def r309 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2))))
theorem reject309 : ¬ Reader r309 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject309

def r310 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2)))))
theorem reject310 : ¬ Reader r310 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject310

def r311 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))
theorem reject311 : ¬ Reader r311 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject311

def r312 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 0)) (.lam (.lam (.var 3)))))
theorem reject312 : ¬ Reader r312 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject312

def r313 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.lam (.lam (.var 2)))))
theorem reject313 : ¬ Reader r313 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))] (by decide) (by decide) (by decide)
#print axioms reject313

def r314 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 1))) (.lam (.var 2))))
theorem reject314 : ¬ Reader r314 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject314

def r315 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 2))) (.lam (.var 1))))
theorem reject315 : ¬ Reader r315 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.var 1)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject315

def r316 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.lam (.var 2)))) (.var 1)))
theorem reject316 : ¬ Reader r316 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject316

def r317 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.lam (.var 3)))) (.var 0)))
theorem reject317 : ¬ Reader r317 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject317

def r318 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 0) (.lam (.lam (.var 3))))))
theorem reject318 : ¬ Reader r318 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject318

def r319 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 2))))))
theorem reject319 : ¬ Reader r319 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject319

def r320 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 2)) (.lam (.lam (.var 3)))))
theorem reject320 : ¬ Reader r320 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject320

def r321 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 3)))) (.var 2)))
theorem reject321 : ¬ Reader r321 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 2))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject321

def r322 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject322 : ¬ Reader r322 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject322

def r323 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 2)) (.lam (.lam (.var 2)))))
theorem reject323 : ¬ Reader r323 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))] (by decide) (by decide) (by decide)
#print axioms reject323

def r324 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 2)))) (.var 2)))
theorem reject324 : ¬ Reader r324 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject324

def r325 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 2) (.lam (.lam (.var 2))))))
theorem reject325 : ¬ Reader r325 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject325

def r326 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 0))) (.lam (.lam (.var 3)))))
theorem reject326 : ¬ Reader r326 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject326

def r327 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 2))) (.lam (.lam (.var 3)))))
theorem reject327 : ¬ Reader r327 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject327

def r328 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 2)) (.lam (.var 2))))
theorem reject328 : ¬ Reader r328 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 1), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject328

def r329 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.var 2))) (.var 2)))
theorem reject329 : ¬ Reader r329 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.var 1)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject329

def r330 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.app (.var 2) (.lam (.var 2)))))
theorem reject330 : ¬ Reader r330 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject330

def r331 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 1))) (.lam (.lam (.var 2)))))
theorem reject331 : ¬ Reader r331 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.var 0)), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))] (by decide) (by decide) (by decide)
#print axioms reject331

def r332 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 2))) (.lam (.lam (.var 2)))))
theorem reject332 : ¬ Reader r332 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.var 1)), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))] (by decide) (by decide) (by decide)
#print axioms reject332

def r333 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2))) (.var 2)) (.lam (.var 1))))
theorem reject333 : ¬ Reader r333 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject333

def r334 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2))) (.lam (.var 1))) (.var 2)))
theorem reject334 : ¬ Reader r334 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 1)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject334

def r335 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2))) (.app (.var 2) (.lam (.var 1)))))
theorem reject335 : ¬ Reader r335 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 1)), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject335

def r336 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.var 1)))) (.lam (.var 2))))
theorem reject336 : ¬ Reader r336 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject336

def r337 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 2)))) (.var 2)) (.var 1)))
theorem reject337 : ¬ Reader r337 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject337

def r338 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1)) (.var 2)))
theorem reject338 : ¬ Reader r338 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject338

def r339 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 2)))) (.app (.var 2) (.var 1))))
theorem reject339 : ¬ Reader r339 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject339

def r340 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 2))))
theorem reject340 : ¬ Reader r340 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject340

def r341 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 1))))
theorem reject341 : ¬ Reader r341 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.var 1))), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject341

def r342 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 3)))) (.var 2)) (.var 0)))
theorem reject342 : ¬ Reader r342 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject342

def r343 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 3)))) (.var 0)) (.var 2)))
theorem reject343 : ¬ Reader r343 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject343

def r344 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 3)))) (.app (.var 2) (.var 0))))
theorem reject344 : ¬ Reader r344 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 2))), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject344

def r345 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 2))))
theorem reject345 : ¬ Reader r345 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 2))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject345

def r346 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.lam (.var 2))))) (.var 1)))
theorem reject346 : ¬ Reader r346 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject346

def r347 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 0)))
theorem reject347 : ¬ Reader r347 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject347

def r348 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject348 : ¬ Reader r348 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject348

def r349 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 2))))) (.var 2)))
theorem reject349 : ¬ Reader r349 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject349

def r350 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3)))))))
theorem reject350 : ¬ Reader r350 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))))] (by decide) (by decide) (by decide)
#print axioms reject350

def r351 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3))))))
theorem reject351 : ¬ Reader r351 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject351

def r352 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))
theorem reject352 : ¬ Reader r352 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject352

def r353 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2)))))))
theorem reject353 : ¬ Reader r353 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))] (by decide) (by decide) (by decide)
#print axioms reject353

def r354 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))
theorem reject354 : ¬ Reader r354 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1))))
theorem reject355 : ¬ Reader r355 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))
theorem reject356 : ¬ Reader r356 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.lam (.var 2)))))] (by decide) (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3))))))
theorem reject357 : ¬ Reader r357 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject357

def r358 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2))))
theorem reject358 : ¬ Reader r358 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject358

def r359 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2)))))))
theorem reject359 : ¬ Reader r359 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))] (by decide) (by decide) (by decide)
#print axioms reject359

def r360 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))
theorem reject360 : ¬ Reader r360 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject360

def r361 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2))))
theorem reject361 : ¬ Reader r361 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject361

def r362 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2)))))
theorem reject362 : ¬ Reader r362 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject362

def r363 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))
theorem reject363 : ¬ Reader r363 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject363

def r364 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 0)) (.var 1)))
theorem reject364 : ¬ Reader r364 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject364

def r365 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.var 0)))
theorem reject365 : ¬ Reader r365 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject365

def r366 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject366 : ¬ Reader r366 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject366

def r367 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject367 : ¬ Reader r367 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject367

def r368 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 2)) (.var 1)))
theorem reject368 : ¬ Reader r368 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject368

def r369 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 2)))
theorem reject369 : ¬ Reader r369 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject369

def r370 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject370 : ¬ Reader r370 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject370

def r371 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject371 : ¬ Reader r371 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject371

def r372 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 2)) (.var 0)))
theorem reject372 : ¬ Reader r372 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject372

def r373 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 2)))
theorem reject373 : ¬ Reader r373 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject373

def r374 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject374 : ¬ Reader r374 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject374

def r375 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject375 : ¬ Reader r375 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject375

def r376 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject376 : ¬ Reader r376 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject376

def r377 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject377 : ¬ Reader r377 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject377

def r378 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject378 : ¬ Reader r378 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject378

def r379 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject379 : ¬ Reader r379 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject379

def r380 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject380 : ¬ Reader r380 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject380

def r381 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject381 : ¬ Reader r381 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject381

def r382 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject382 : ¬ Reader r382 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject382

def r383 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject383 : ¬ Reader r383 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject383

def r384 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject384 : ¬ Reader r384 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject384

def r385 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject385 : ¬ Reader r385 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject385

def r386 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject386 : ¬ Reader r386 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject386

def r387 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject387 : ¬ Reader r387 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject387

def r388 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject388 : ¬ Reader r388 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject388

def r389 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject389 : ¬ Reader r389 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject389

def r390 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject390 : ¬ Reader r390 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject390

def r391 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject391 : ¬ Reader r391 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject391

def r392 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject392 : ¬ Reader r392 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject392

def r393 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject393 : ¬ Reader r393 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject393

def r394 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 0)) (.lam (.var 2))))
theorem reject394 : ¬ Reader r394 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject394

def r395 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.lam (.var 1))))
theorem reject395 : ¬ Reader r395 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject395

def r396 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 1))) (.var 1)))
theorem reject396 : ¬ Reader r396 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject396

def r397 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 2))) (.var 0)))
theorem reject397 : ¬ Reader r397 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject397

def r398 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 0) (.lam (.var 2)))))
theorem reject398 : ¬ Reader r398 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject398

def r399 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.lam (.var 1)))))
theorem reject399 : ¬ Reader r399 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject399

def r400 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 2)) (.lam (.var 2))))
theorem reject400 : ¬ Reader r400 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject400

def r401 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 2))) (.var 2)))
theorem reject401 : ¬ Reader r401 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 1)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject401

def r402 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 2) (.lam (.var 2)))))
theorem reject402 : ¬ Reader r402 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject402

def r403 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 2)) (.lam (.var 1))))
theorem reject403 : ¬ Reader r403 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject403

def r404 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 2)))
theorem reject404 : ¬ Reader r404 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject404

def r405 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 2) (.lam (.var 1)))))
theorem reject405 : ¬ Reader r405 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject405

def r406 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 0))) (.lam (.var 2))))
theorem reject406 : ¬ Reader r406 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject406

def r407 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 2))) (.lam (.var 2))))
theorem reject407 : ¬ Reader r407 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject407

def r408 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 2)) (.var 1)))
theorem reject408 : ¬ Reader r408 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject408

def r409 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 2)))
theorem reject409 : ¬ Reader r409 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject409

def r410 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.app (.var 2) (.var 1))))
theorem reject410 : ¬ Reader r410 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject410

def r411 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.app (.var 1) (.var 2))))
theorem reject411 : ¬ Reader r411 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject411

def r412 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 1))) (.lam (.var 1))))
theorem reject412 : ¬ Reader r412 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject412

def r413 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 2))) (.lam (.var 1))))
theorem reject413 : ¬ Reader r413 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject413

def r414 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2))) (.var 2)) (.var 0)))
theorem reject414 : ¬ Reader r414 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject414

def r415 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2))) (.var 0)) (.var 2)))
theorem reject415 : ¬ Reader r415 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject415

def r416 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2))) (.app (.var 2) (.var 0))))
theorem reject416 : ¬ Reader r416 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject416

def r417 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2))) (.app (.var 0) (.var 2))))
theorem reject417 : ¬ Reader r417 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject417

def r418 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.var 1)))) (.var 1)))
theorem reject418 : ¬ Reader r418 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject418

def r419 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.lam (.var 2)))) (.var 0)))
theorem reject419 : ¬ Reader r419 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject419

def r420 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.var 2)))) (.var 2)))
theorem reject420 : ¬ Reader r420 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject420

def r421 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.lam (.var 1)))) (.var 2)))
theorem reject421 : ¬ Reader r421 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject421

def r422 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))
theorem reject422 : ¬ Reader r422 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject422

def r423 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))
theorem reject423 : ¬ Reader r423 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject423

def r424 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))
theorem reject424 : ¬ Reader r424 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject424

def r425 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))
theorem reject425 : ¬ Reader r425 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject425

def r426 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))
theorem reject426 : ¬ Reader r426 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject426

def r427 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))
theorem reject427 : ¬ Reader r427 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject427

def r428 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))
theorem reject428 : ¬ Reader r428 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject428

def r429 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))
theorem reject429 : ¬ Reader r429 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject429

def r430 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))
theorem reject430 : ¬ Reader r430 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject430

def r431 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))
theorem reject431 : ¬ Reader r431 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject431

def r432 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))
theorem reject432 : ¬ Reader r432 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject432

def r433 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))
theorem reject433 : ¬ Reader r433 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject433

def r434 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.var 1)))
theorem reject434 : ¬ Reader r434 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject434

def r435 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 0)))
theorem reject435 : ¬ Reader r435 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject435

def r436 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject436 : ¬ Reader r436 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject436

def r437 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject437 : ¬ Reader r437 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject437

def r438 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.var 1)))
theorem reject438 : ¬ Reader r438 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject438

def r439 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 2)))
theorem reject439 : ¬ Reader r439 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject439

def r440 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject440 : ¬ Reader r440 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject440

def r441 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject441 : ¬ Reader r441 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject441

def r442 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 0)))
theorem reject442 : ¬ Reader r442 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject442

def r443 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 2)))
theorem reject443 : ¬ Reader r443 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject443

def r444 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject444 : ¬ Reader r444 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject444

def r445 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject445 : ¬ Reader r445 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject445

def r446 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject446 : ¬ Reader r446 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject446

def r447 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject447 : ¬ Reader r447 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject447

def r448 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject448 : ¬ Reader r448 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject448

def r449 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject449 : ¬ Reader r449 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject449

def r450 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject450 : ¬ Reader r450 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject450

def r451 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject451 : ¬ Reader r451 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject451

def r452 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject452 : ¬ Reader r452 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject452

def r453 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject453 : ¬ Reader r453 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject453

def r454 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject454 : ¬ Reader r454 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject454

def r455 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject455 : ¬ Reader r455 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject455

def r456 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject456 : ¬ Reader r456 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject456

def r457 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject457 : ¬ Reader r457 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject457

def r458 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject458 : ¬ Reader r458 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject458

def r459 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject459 : ¬ Reader r459 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject459

def r460 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject460 : ¬ Reader r460 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject460

def r461 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject461 : ¬ Reader r461 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject461

def r462 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject462 : ¬ Reader r462 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject462

def r463 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject463 : ¬ Reader r463 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject463

def r464 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 0)) (.var 1)))
theorem reject464 : ¬ Reader r464 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject464

def r465 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.var 0)))
theorem reject465 : ¬ Reader r465 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject465

def r466 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject466 : ¬ Reader r466 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject466

def r467 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject467 : ¬ Reader r467 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject467

def r468 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 2)) (.var 1)))
theorem reject468 : ¬ Reader r468 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject468

def r469 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 2)))
theorem reject469 : ¬ Reader r469 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject469

def r470 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject470 : ¬ Reader r470 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject470

def r471 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject471 : ¬ Reader r471 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject471

def r472 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 2)) (.var 0)))
theorem reject472 : ¬ Reader r472 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject472

def r473 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 2)))
theorem reject473 : ¬ Reader r473 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject473

def r474 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject474 : ¬ Reader r474 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject474

def r475 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject475 : ¬ Reader r475 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject475

def r476 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject476 : ¬ Reader r476 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject476

def r477 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject477 : ¬ Reader r477 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject477

def r478 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject478 : ¬ Reader r478 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject478

def r479 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject479 : ¬ Reader r479 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject479

def r480 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject480 : ¬ Reader r480 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject480

def r481 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject481 : ¬ Reader r481 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject481

def r482 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject482 : ¬ Reader r482 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject482

def r483 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject483 : ¬ Reader r483 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject483

def r484 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject484 : ¬ Reader r484 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject484

def r485 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject485 : ¬ Reader r485 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject485

def r486 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject486 : ¬ Reader r486 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject486

def r487 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject487 : ¬ Reader r487 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject487

def r488 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject488 : ¬ Reader r488 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject488

def r489 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject489 : ¬ Reader r489 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject489

def r490 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject490 : ¬ Reader r490 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject490

def r491 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject491 : ¬ Reader r491 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject491

def r492 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject492 : ¬ Reader r492 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject492

def r493 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject493 : ¬ Reader r493 := by
 exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject493

def r494 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.var 1)))
theorem reject494 : ¬ Reader r494 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject494

def r495 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 2)))
theorem reject495 : ¬ Reader r495 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject495

def r496 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject496 : ¬ Reader r496 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject496

def r497 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject497 : ¬ Reader r497 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject497

def r498 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.lam (.var 2))))
theorem reject498 : ¬ Reader r498 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject498

def r499 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 2))) (.var 2)))
theorem reject499 : ¬ Reader r499 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 1)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject499

def r500 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.lam (.var 2)))))
theorem reject500 : ¬ Reader r500 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject500

def r501 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.var 0)) (.var 1)))
theorem reject501 : ¬ Reader r501 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject501

def r502 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.var 1)) (.var 0)))
theorem reject502 : ¬ Reader r502 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject502

def r503 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject503 : ¬ Reader r503 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject503

def r504 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject504 : ¬ Reader r504 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject504

def r505 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 2)) (.var 1)))
theorem reject505 : ¬ Reader r505 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject505

def r506 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.var 2)))
theorem reject506 : ¬ Reader r506 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject506

def r507 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject507 : ¬ Reader r507 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject507

def r508 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject508 : ¬ Reader r508 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject508

def r509 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 2)) (.var 0)))
theorem reject509 : ¬ Reader r509 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject509

def r510 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.var 2)))
theorem reject510 : ¬ Reader r510 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject510

def r511 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject511 : ¬ Reader r511 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject511

def r512 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject512 : ¬ Reader r512 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject512

def r513 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject513 : ¬ Reader r513 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject513

def r514 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject514 : ¬ Reader r514 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject514

def r515 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject515 : ¬ Reader r515 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject515

def r516 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject516 : ¬ Reader r516 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject516

def r517 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject517 : ¬ Reader r517 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject517

def r518 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject518 : ¬ Reader r518 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject518

def r519 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject519 : ¬ Reader r519 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject519

def r520 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject520 : ¬ Reader r520 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject520

def r521 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject521 : ¬ Reader r521 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject521

def r522 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject522 : ¬ Reader r522 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject522

def r523 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject523 : ¬ Reader r523 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject523

def r524 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject524 : ¬ Reader r524 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject524

def r525 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject525 : ¬ Reader r525 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject525

def r526 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject526 : ¬ Reader r526 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject526

def r527 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject527 : ¬ Reader r527 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject527

def r528 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject528 : ¬ Reader r528 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject528

def r529 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject529 : ¬ Reader r529 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject529

def r530 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject530 : ¬ Reader r530 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject530

def r531 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.var 1)) (.var 1)))
theorem reject531 : ¬ Reader r531 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject531

def r532 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))))
theorem reject532 : ¬ Reader r532 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject532

def r533 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 2)) (.var 1)))
theorem reject533 : ¬ Reader r533 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject533

def r534 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 1)) (.var 2)))
theorem reject534 : ¬ Reader r534 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject534

def r535 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 2) (.var 1))))
theorem reject535 : ¬ Reader r535 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject535

def r536 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 1) (.var 2))))
theorem reject536 : ¬ Reader r536 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject536

def r537 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.var 1))) (.var 1)))
theorem reject537 : ¬ Reader r537 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject537

def r538 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 2))) (.var 1)))
theorem reject538 : ¬ Reader r538 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject538

def r539 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 1))) (.var 2)))
theorem reject539 : ¬ Reader r539 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject539

def r540 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject540 : ¬ Reader r540 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject540

def r541 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject541 : ¬ Reader r541 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject541

def r542 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject542 : ¬ Reader r542 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject542

def r543 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject543 : ¬ Reader r543 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject543

def r544 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject544 : ¬ Reader r544 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject544

def r545 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject545 : ¬ Reader r545 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject545

def r546 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.var 1)) (.lam (.var 0))))
theorem reject546 : ¬ Reader r546 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject546

def r547 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.lam (.var 0))) (.var 1)))
theorem reject547 : ¬ Reader r547 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject547

def r548 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.app (.var 1) (.lam (.var 0)))))
theorem reject548 : ¬ Reader r548 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject548

def r549 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 2)) (.lam (.var 0))))
theorem reject549 : ¬ Reader r549 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject549

def r550 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 2)))
theorem reject550 : ¬ Reader r550 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject550

def r551 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 2) (.lam (.var 0)))))
theorem reject551 : ¬ Reader r551 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject551

def r552 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 2)) (.var 1)))
theorem reject552 : ¬ Reader r552 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject552

def r553 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 2)))
theorem reject553 : ¬ Reader r553 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject553

def r554 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.app (.var 2) (.var 1))))
theorem reject554 : ¬ Reader r554 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject554

def r555 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.app (.var 1) (.var 2))))
theorem reject555 : ¬ Reader r555 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject555

def r556 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.var 1))) (.lam (.var 0))))
theorem reject556 : ¬ Reader r556 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject556

def r557 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 2))) (.lam (.var 0))))
theorem reject557 : ¬ Reader r557 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject557

def r558 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.lam (.var 0)))) (.var 1)))
theorem reject558 : ¬ Reader r558 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.lam (.var 0))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject558

def r559 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.var 0)))) (.var 2)))
theorem reject559 : ¬ Reader r559 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject559

def r560 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject560 : ¬ Reader r560 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject560

def r561 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject561 : ¬ Reader r561 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject561

def r562 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject562 : ¬ Reader r562 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject562

def r563 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject563 : ¬ Reader r563 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject563

def r564 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject564 : ¬ Reader r564 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject564

def r565 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject565 : ¬ Reader r565 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject565

def r566 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.lam (.lam (.var 3)))))
theorem reject566 : ¬ Reader r566 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject566

def r567 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 3)))) (.var 2)))
theorem reject567 : ¬ Reader r567 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.lam (.var 2))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject567

def r568 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject568 : ¬ Reader r568 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject568

def r569 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)) (.var 1)))
theorem reject569 : ¬ Reader r569 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject569

def r570 : Term := (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 2)))
theorem reject570 : ¬ Reader r570 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject570

def r571 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject571 : ¬ Reader r571 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject571

def r572 : Term := (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject572 : ¬ Reader r572 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject572

def r573 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)))
theorem reject573 : ¬ Reader r573 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject573

def r574 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)))
theorem reject574 : ¬ Reader r574 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject574

def r575 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject575 : ¬ Reader r575 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject575

def r576 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject576 : ¬ Reader r576 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject576

def r577 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 2))))
theorem reject577 : ¬ Reader r577 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject577

def r578 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.var 2)))
theorem reject578 : ¬ Reader r578 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 1)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject578

def r579 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject579 : ¬ Reader r579 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject579

def r580 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.var 1)))
theorem reject580 : ¬ Reader r580 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject580

def r581 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 0)))
theorem reject581 : ¬ Reader r581 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject581

def r582 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject582 : ¬ Reader r582 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject582

def r583 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject583 : ¬ Reader r583 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject583

def r584 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.var 1)))
theorem reject584 : ¬ Reader r584 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject584

def r585 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 2)))
theorem reject585 : ¬ Reader r585 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject585

def r586 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject586 : ¬ Reader r586 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject586

def r587 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject587 : ¬ Reader r587 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject587

def r588 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 0)))
theorem reject588 : ¬ Reader r588 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject588

def r589 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 2)))
theorem reject589 : ¬ Reader r589 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject589

def r590 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject590 : ¬ Reader r590 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject590

def r591 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject591 : ¬ Reader r591 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject591

def r592 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject592 : ¬ Reader r592 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject592

def r593 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject593 : ¬ Reader r593 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject593

def r594 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject594 : ¬ Reader r594 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject594

def r595 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject595 : ¬ Reader r595 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject595

def r596 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject596 : ¬ Reader r596 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject596

def r597 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject597 : ¬ Reader r597 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject597

def r598 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject598 : ¬ Reader r598 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject598

def r599 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject599 : ¬ Reader r599 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject599

def r600 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject600 : ¬ Reader r600 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject600

def r601 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject601 : ¬ Reader r601 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject601

def r602 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject602 : ¬ Reader r602 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject602

def r603 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject603 : ¬ Reader r603 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject603

def r604 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject604 : ¬ Reader r604 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject604

def r605 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject605 : ¬ Reader r605 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject605

def r606 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject606 : ¬ Reader r606 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject606

def r607 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject607 : ¬ Reader r607 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject607

def r608 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject608 : ¬ Reader r608 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject608

def r609 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject609 : ¬ Reader r609 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject609

def r610 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 1)))
theorem reject610 : ¬ Reader r610 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.var 0), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject610

def r611 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1))))
theorem reject611 : ¬ Reader r611 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.var 0) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject611

def r612 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 1)))
theorem reject612 : ¬ Reader r612 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject612

def r613 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 1)) (.var 2)))
theorem reject613 : ¬ Reader r613 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject613

def r614 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 2) (.var 1))))
theorem reject614 : ¬ Reader r614 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject614

def r615 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 1) (.var 2))))
theorem reject615 : ¬ Reader r615 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject615

def r616 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))) (.var 1)))
theorem reject616 : ¬ Reader r616 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject616

def r617 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))) (.var 1)))
theorem reject617 : ¬ Reader r617 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject617

def r618 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 1))) (.var 2)))
theorem reject618 : ¬ Reader r618 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject618

def r619 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject619 : ¬ Reader r619 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject619

def r620 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject620 : ¬ Reader r620 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject620

def r621 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject621 : ¬ Reader r621 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject621

def r622 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject622 : ¬ Reader r622 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject622

def r623 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject623 : ¬ Reader r623 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject623

def r624 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject624 : ¬ Reader r624 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject624

def r625 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.lam (.var 0))))
theorem reject625 : ¬ Reader r625 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.var 0), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject625

def r626 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 0))) (.var 1)))
theorem reject626 : ¬ Reader r626 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject626

def r627 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.lam (.var 0)))))
theorem reject627 : ¬ Reader r627 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.var 0) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject627

def r628 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.lam (.var 0))))
theorem reject628 : ¬ Reader r628 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 1), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject628

def r629 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 2)))
theorem reject629 : ¬ Reader r629 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject629

def r630 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 2) (.lam (.var 0)))))
theorem reject630 : ¬ Reader r630 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject630

def r631 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 2)) (.var 1)))
theorem reject631 : ¬ Reader r631 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 0)), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject631

def r632 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 2)))
theorem reject632 : ¬ Reader r632 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 0)), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject632

def r633 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.var 2) (.var 1))))
theorem reject633 : ¬ Reader r633 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 0)), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject633

def r634 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.var 1) (.var 2))))
theorem reject634 : ¬ Reader r634 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 0)), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject634

def r635 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))) (.lam (.var 0))))
theorem reject635 : ¬ Reader r635 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.var 0)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject635

def r636 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))) (.lam (.var 0))))
theorem reject636 : ¬ Reader r636 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.var 1)), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject636

def r637 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 0)))) (.var 1)))
theorem reject637 : ¬ Reader r637 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.var 0))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject637

def r638 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 0)))) (.var 2)))
theorem reject638 : ¬ Reader r638 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.lam (.var 0))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject638

def r639 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject639 : ¬ Reader r639 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject639

def r640 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject640 : ¬ Reader r640 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject640

def r641 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject641 : ¬ Reader r641 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject641

def r642 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject642 : ¬ Reader r642 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject642

def r643 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject643 : ¬ Reader r643 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject643

def r644 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject644 : ¬ Reader r644 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject644

def r645 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.lam (.var 3)))))
theorem reject645 : ¬ Reader r645 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject645

def r646 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 3)))) (.var 2)))
theorem reject646 : ¬ Reader r646 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 2))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject646

def r647 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject647 : ¬ Reader r647 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject647

def r648 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.lam (.var 2))))
theorem reject648 : ¬ Reader r648 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject648

def r649 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.lam (.var 1))))
theorem reject649 : ¬ Reader r649 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject649

def r650 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 1))) (.var 1)))
theorem reject650 : ¬ Reader r650 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject650

def r651 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 2))) (.var 0)))
theorem reject651 : ¬ Reader r651 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject651

def r652 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 0) (.lam (.var 2)))))
theorem reject652 : ¬ Reader r652 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject652

def r653 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.lam (.var 1)))))
theorem reject653 : ¬ Reader r653 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject653

def r654 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.lam (.var 2))))
theorem reject654 : ¬ Reader r654 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject654

def r655 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 2))) (.var 2)))
theorem reject655 : ¬ Reader r655 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 1)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject655

def r656 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 2) (.lam (.var 2)))))
theorem reject656 : ¬ Reader r656 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject656

def r657 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.lam (.var 1))))
theorem reject657 : ¬ Reader r657 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 1), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject657

def r658 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.var 2)))
theorem reject658 : ¬ Reader r658 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject658

def r659 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 2) (.lam (.var 1)))))
theorem reject659 : ¬ Reader r659 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject659

def r660 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))) (.lam (.var 2))))
theorem reject660 : ¬ Reader r660 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject660

def r661 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))) (.lam (.var 2))))
theorem reject661 : ¬ Reader r661 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.lam (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject661

def r662 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 2)) (.var 1)))
theorem reject662 : ¬ Reader r662 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject662

def r663 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 2)))
theorem reject663 : ¬ Reader r663 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject663

def r664 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.app (.var 2) (.var 1))))
theorem reject664 : ¬ Reader r664 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject664

def r665 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.app (.var 1) (.var 2))))
theorem reject665 : ¬ Reader r665 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject665

def r666 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))) (.lam (.var 1))))
theorem reject666 : ¬ Reader r666 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject666

def r667 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))) (.lam (.var 1))))
theorem reject667 : ¬ Reader r667 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.var 1)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject667

def r668 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.var 2)) (.var 0)))
theorem reject668 : ¬ Reader r668 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject668

def r669 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.var 0)) (.var 2)))
theorem reject669 : ¬ Reader r669 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject669

def r670 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.app (.var 2) (.var 0))))
theorem reject670 : ¬ Reader r670 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 1)), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject670

def r671 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.app (.var 0) (.var 2))))
theorem reject671 : ¬ Reader r671 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 1)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject671

def r672 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 1)))) (.var 1)))
theorem reject672 : ¬ Reader r672 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject672

def r673 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))) (.var 0)))
theorem reject673 : ¬ Reader r673 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject673

def r674 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 2)))) (.var 2)))
theorem reject674 : ¬ Reader r674 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject674

def r675 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 1)))) (.var 2)))
theorem reject675 : ¬ Reader r675 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject675

def r676 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))
theorem reject676 : ¬ Reader r676 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject676

def r677 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))
theorem reject677 : ¬ Reader r677 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject677

def r678 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))
theorem reject678 : ¬ Reader r678 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject678

def r679 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))
theorem reject679 : ¬ Reader r679 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject679

def r680 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))
theorem reject680 : ¬ Reader r680 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject680

def r681 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))
theorem reject681 : ¬ Reader r681 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject681

def r682 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))
theorem reject682 : ¬ Reader r682 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject682

def r683 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))
theorem reject683 : ¬ Reader r683 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject683

def r684 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))
theorem reject684 : ¬ Reader r684 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject684

def r685 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))
theorem reject685 : ¬ Reader r685 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject685

def r686 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))
theorem reject686 : ¬ Reader r686 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject686

def r687 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))
theorem reject687 : ¬ Reader r687 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject687

def r688 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.app (.var 0) (.var 2)))))
theorem reject688 : ¬ Reader r688 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject688

def r689 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.app (.var 2) (.var 0)))))
theorem reject689 : ¬ Reader r689 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject689

def r690 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 2)))) (.var 2)))
theorem reject690 : ¬ Reader r690 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.var 0) (.var 1))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject690

def r691 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 2) (.var 0)))) (.var 2)))
theorem reject691 : ¬ Reader r691 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.var 1) (.var 0))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject691

def r692 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))
theorem reject692 : ¬ Reader r692 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject692

def r693 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))
theorem reject693 : ¬ Reader r693 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.lam (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject693

def r694 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.var 0)) (.var 1)))
theorem reject694 : ¬ Reader r694 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject694

def r695 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.var 1)) (.var 0)))
theorem reject695 : ¬ Reader r695 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject695

def r696 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.app (.var 0) (.var 1))))
theorem reject696 : ¬ Reader r696 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject696

def r697 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.app (.var 1) (.var 0))))
theorem reject697 : ¬ Reader r697 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject697

def r698 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 0)) (.var 0)))
theorem reject698 : ¬ Reader r698 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject698

def r699 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))))
theorem reject699 : ¬ Reader r699 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject699

def r700 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 0) (.var 0))) (.var 1)))
theorem reject700 : ¬ Reader r700 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject700

def r701 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 0) (.var 1))) (.var 0)))
theorem reject701 : ¬ Reader r701 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject701

def r702 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 0))) (.var 0)))
theorem reject702 : ¬ Reader r702 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject702

def r703 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1)))))
theorem reject703 : ¬ Reader r703 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject703

def r704 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0)))))
theorem reject704 : ¬ Reader r704 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject704

def r705 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0))))
theorem reject705 : ¬ Reader r705 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject705

def r706 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0)))))
theorem reject706 : ¬ Reader r706 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject706

def r707 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1))))
theorem reject707 : ¬ Reader r707 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject707

def r708 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0))))
theorem reject708 : ¬ Reader r708 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 1), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject708

def r709 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.var 0)) (.var 1)))
theorem reject709 : ¬ Reader r709 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject709

def r710 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.var 1)) (.var 0)))
theorem reject710 : ¬ Reader r710 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject710

def r711 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject711 : ¬ Reader r711 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject711

def r712 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject712 : ¬ Reader r712 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject712

def r713 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 2)) (.var 1)))
theorem reject713 : ¬ Reader r713 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject713

def r714 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1)) (.var 2)))
theorem reject714 : ¬ Reader r714 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject714

def r715 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject715 : ¬ Reader r715 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject715

def r716 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject716 : ¬ Reader r716 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject716

def r717 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 2)) (.var 0)))
theorem reject717 : ¬ Reader r717 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject717

def r718 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0)) (.var 2)))
theorem reject718 : ¬ Reader r718 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject718

def r719 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject719 : ¬ Reader r719 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject719

def r720 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject720 : ¬ Reader r720 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject720

def r721 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject721 : ¬ Reader r721 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject721

def r722 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject722 : ¬ Reader r722 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject722

def r723 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject723 : ¬ Reader r723 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject723

def r724 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject724 : ¬ Reader r724 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject724

def r725 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject725 : ¬ Reader r725 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject725

def r726 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject726 : ¬ Reader r726 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject726

def r727 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject727 : ¬ Reader r727 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject727

def r728 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject728 : ¬ Reader r728 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject728

def r729 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject729 : ¬ Reader r729 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject729

def r730 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject730 : ¬ Reader r730 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject730

def r731 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject731 : ¬ Reader r731 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject731

def r732 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject732 : ¬ Reader r732 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject732

def r733 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject733 : ¬ Reader r733 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject733

def r734 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject734 : ¬ Reader r734 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject734

def r735 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject735 : ¬ Reader r735 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject735

def r736 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject736 : ¬ Reader r736 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject736

def r737 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject737 : ¬ Reader r737 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject737

def r738 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject738 : ¬ Reader r738 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject738

def r739 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 0)) (.var 0)))
theorem reject739 : ¬ Reader r739 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject739

def r740 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))
theorem reject740 : ¬ Reader r740 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject740

def r741 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 2)) (.var 0)))
theorem reject741 : ¬ Reader r741 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject741

def r742 : Term := (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0)) (.var 2)))
theorem reject742 : ¬ Reader r742 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject742

def r743 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.app (.var 2) (.var 0))))
theorem reject743 : ¬ Reader r743 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject743

def r744 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 2))))
theorem reject744 : ¬ Reader r744 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject744

def r745 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 2) (.var 0))) (.var 0)))
theorem reject745 : ¬ Reader r745 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject745

def r746 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 2))) (.var 0)))
theorem reject746 : ¬ Reader r746 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject746

def r747 : Term := (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 2)))
theorem reject747 : ¬ Reader r747 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject747

def r748 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0)))))
theorem reject748 : ¬ Reader r748 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject748

def r749 : Term := (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0)))))
theorem reject749 : ¬ Reader r749 := by
 exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject749

end Blc.BodyLetExceptions.B16
