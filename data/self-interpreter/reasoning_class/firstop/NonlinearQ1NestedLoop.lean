import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q1NestedLoop
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r0 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject0 : ¬ Reader r0 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1 : ¬ Reader r1 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject2 : ¬ Reader r2 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject3 : ¬ Reader r3 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject4 : ¬ Reader r4 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject5 : ¬ Reader r5 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.lam (.var 2)))))
theorem reject6 : ¬ Reader r6 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.var 2)) (.var 2))))
theorem reject7 : ¬ Reader r7 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject8 : ¬ Reader r8 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject9 : ¬ Reader r9 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject10 : ¬ Reader r10 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject11 : ¬ Reader r11 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject12 : ¬ Reader r12 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject13 : ¬ Reader r13 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject14 : ¬ Reader r14 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject15 : ¬ Reader r15 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject16 : ¬ Reader r16 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject17 : ¬ Reader r17 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject18 : ¬ Reader r18 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject19 : ¬ Reader r19 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject19

def r20 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject20 : ¬ Reader r20 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject20

def r21 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject21 : ¬ Reader r21 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject21

def r22 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject22 : ¬ Reader r22 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject23 : ¬ Reader r23 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject24 : ¬ Reader r24 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject25 : ¬ Reader r25 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject26 : ¬ Reader r26 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject27 : ¬ Reader r27 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject28 : ¬ Reader r28 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject29 : ¬ Reader r29 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject29

def r30 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject30 : ¬ Reader r30 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject30

def r31 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject31 : ¬ Reader r31 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject31

def r32 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject32 : ¬ Reader r32 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject32

def r33 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject33 : ¬ Reader r33 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject33

def r34 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject34 : ¬ Reader r34 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject34

def r35 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject35 : ¬ Reader r35 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject35

def r36 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject36 : ¬ Reader r36 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject36

def r37 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject37 : ¬ Reader r37 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject37

def r38 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject38 : ¬ Reader r38 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject38

def r39 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject39 : ¬ Reader r39 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject40 : ¬ Reader r40 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject41 : ¬ Reader r41 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject41

def r42 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject42 : ¬ Reader r42 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject42

def r43 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject43 : ¬ Reader r43 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject43

def r44 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject44 : ¬ Reader r44 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject44

def r45 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject45 : ¬ Reader r45 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject45

def r46 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject46 : ¬ Reader r46 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject46

def r47 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject47 : ¬ Reader r47 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject47

def r48 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject48 : ¬ Reader r48 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject48

def r49 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject49 : ¬ Reader r49 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject49

def r50 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject50 : ¬ Reader r50 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject50

def r51 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject51 : ¬ Reader r51 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject51

def r52 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject52 : ¬ Reader r52 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject52

def r53 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject53 : ¬ Reader r53 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject53

def r54 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject54 : ¬ Reader r54 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject54

def r55 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject55 : ¬ Reader r55 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject55

def r56 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject56 : ¬ Reader r56 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject56

def r57 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject57 : ¬ Reader r57 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject57

def r58 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject58 : ¬ Reader r58 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject58

def r59 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject59 : ¬ Reader r59 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject59

def r60 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject60 : ¬ Reader r60 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject60

def r61 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject61 : ¬ Reader r61 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject61

def r62 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject62 : ¬ Reader r62 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject62

def r63 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject63 : ¬ Reader r63 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject63

def r64 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject64 : ¬ Reader r64 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject64

def r65 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject65 : ¬ Reader r65 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject65

def r66 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject66 : ¬ Reader r66 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject66

def r67 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject67 : ¬ Reader r67 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject67

def r68 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject68 : ¬ Reader r68 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject68

def r69 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject69 : ¬ Reader r69 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject69

def r70 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject70 : ¬ Reader r70 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject70

def r71 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject71 : ¬ Reader r71 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject71

def r73 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject73 : ¬ Reader r73 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject73

def r76 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject76 : ¬ Reader r76 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject76

def r77 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject77 : ¬ Reader r77 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject77

def r80 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject80 : ¬ Reader r80 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject80

def r81 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject81 : ¬ Reader r81 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject81

def r84 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject84 : ¬ Reader r84 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject84

def r85 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject85 : ¬ Reader r85 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject85

def r88 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.var 1)))))
theorem reject88 : ¬ Reader r88 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject88

def r89 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.var 1)) (.var 2))))
theorem reject89 : ¬ Reader r89 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject89

def r98 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.lam (.var 0))))))
theorem reject98 : ¬ Reader r98 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject98

def r99 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.app (.var 0) (.var 0)))))
theorem reject99 : ¬ Reader r99 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject99

def r100 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 0)))))
theorem reject100 : ¬ Reader r100 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject100

def r101 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 2)))))
theorem reject101 : ¬ Reader r101 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject101

def r102 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 0))))
theorem reject102 : ¬ Reader r102 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject102

def r103 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0))))
theorem reject103 : ¬ Reader r103 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject103

def r104 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.lam (.var 0))) (.var 2))))
theorem reject104 : ¬ Reader r104 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject104

def r105 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject105 : ¬ Reader r105 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject105

def r108 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.var 2)))))
theorem reject108 : ¬ Reader r108 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject108

def r109 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.var 2)) (.var 2))))
theorem reject109 : ¬ Reader r109 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject109

def r112 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.lam (.var 1))))))
theorem reject112 : ¬ Reader r112 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject112

def r113 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.lam (.var 1))) (.var 2))))
theorem reject113 : ¬ Reader r113 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject113

def r126 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject126 : ¬ Reader r126 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject126

def r127 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject127 : ¬ Reader r127 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject127

def r128 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject128 : ¬ Reader r128 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject128

def r129 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject129 : ¬ Reader r129 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject129

def r130 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject130 : ¬ Reader r130 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject130

def r131 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject131 : ¬ Reader r131 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject131

def r132 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject132 : ¬ Reader r132 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject132

def r133 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject133 : ¬ Reader r133 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject133

def r134 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject134 : ¬ Reader r134 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject134

def r135 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject135 : ¬ Reader r135 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject135

def r136 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject136 : ¬ Reader r136 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject136

def r137 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject137 : ¬ Reader r137 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject137

def r156 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.lam (.var 2))))))
theorem reject156 : ¬ Reader r156 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject156

def r157 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))))
theorem reject157 : ¬ Reader r157 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject157

def r158 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))
theorem reject158 : ¬ Reader r158 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.var 0) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject158

def r159 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))
theorem reject159 : ¬ Reader r159 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject159

def r160 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.app (.lam (.var 0)) (.var 0)))))
theorem reject160 : ¬ Reader r160 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject160

def r161 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))
theorem reject161 : ¬ Reader r161 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject161

def r162 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.app (.lam (.var 0)) (.var 2)))))
theorem reject162 : ¬ Reader r162 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject162

def r163 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.var 0)) (.app (.var 2) (.var 0)))))
theorem reject163 : ¬ Reader r163 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject163

def r164 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.var 0)) (.app (.var 0) (.var 2)))))
theorem reject164 : ¬ Reader r164 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject164

def r165 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))
theorem reject165 : ¬ Reader r165 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject165

def r166 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))
theorem reject166 : ¬ Reader r166 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject166

def r167 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))
theorem reject167 : ¬ Reader r167 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject167

def r168 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 0))))
theorem reject168 : ¬ Reader r168 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject168

def r169 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.lam (.var 2))) (.var 2))))
theorem reject169 : ¬ Reader r169 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject169

def r170 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.lam (.lam (.var 0)))) (.var 2))))
theorem reject170 : ¬ Reader r170 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.lam (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject170

def r171 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.var 2))))
theorem reject171 : ¬ Reader r171 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 0) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject171

def r172 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))
theorem reject172 : ¬ Reader r172 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject172

def r173 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.lam (.var 0)) (.var 0)) (.var 2))))
theorem reject173 : ¬ Reader r173 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject173

def r180 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject180 : ¬ Reader r180 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject180

def r181 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject181 : ¬ Reader r181 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject181

def r182 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject182 : ¬ Reader r182 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject182

def r183 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject183 : ¬ Reader r183 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject183

def r184 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject184 : ¬ Reader r184 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject184

def r185 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject185 : ¬ Reader r185 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject185

def r186 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject186 : ¬ Reader r186 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject186

def r187 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject187 : ¬ Reader r187 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject187

def r188 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject188 : ¬ Reader r188 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject188

def r189 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject189 : ¬ Reader r189 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject189

def r190 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject190 : ¬ Reader r190 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject190

def r191 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject191 : ¬ Reader r191 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject191

def r192 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 2) (.lam (.var 2)))))
theorem reject192 : ¬ Reader r192 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject192

def r193 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.lam (.var 2)) (.var 2))))
theorem reject193 : ¬ Reader r193 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject193

def r194 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject194 : ¬ Reader r194 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject194

def r195 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject195 : ¬ Reader r195 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject195

def r196 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject196 : ¬ Reader r196 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject196

def r197 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject197 : ¬ Reader r197 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject197

def r198 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject198 : ¬ Reader r198 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject198

def r199 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject199 : ¬ Reader r199 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject199

def r200 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject200 : ¬ Reader r200 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject200

def r201 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject201 : ¬ Reader r201 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject201

def r202 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject202 : ¬ Reader r202 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject202

def r203 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject203 : ¬ Reader r203 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject203

def r204 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject204 : ¬ Reader r204 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject204

def r205 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject205 : ¬ Reader r205 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject205

def r206 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject206 : ¬ Reader r206 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject206

def r207 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject207 : ¬ Reader r207 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject207

def r208 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject208 : ¬ Reader r208 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject208

def r209 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject209 : ¬ Reader r209 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject209

def r210 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject210 : ¬ Reader r210 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject210

def r211 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject211 : ¬ Reader r211 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject211

def r212 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject212 : ¬ Reader r212 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject212

def r213 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject213 : ¬ Reader r213 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject213

def r214 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject214 : ¬ Reader r214 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject214

def r215 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject215 : ¬ Reader r215 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject215

def r216 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject216 : ¬ Reader r216 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject216

def r217 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject217 : ¬ Reader r217 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject217

def r218 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.app (.var 2) (.var 1))))
theorem reject218 : ¬ Reader r218 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject218

def r219 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.app (.var 1) (.var 2))))
theorem reject219 : ¬ Reader r219 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject219

def r220 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.app (.var 2) (.lam (.var 2)))))
theorem reject220 : ¬ Reader r220 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject220

def r221 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.app (.lam (.var 2)) (.var 2))))
theorem reject221 : ¬ Reader r221 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject221

def r222 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject222 : ¬ Reader r222 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject222

def r223 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject223 : ¬ Reader r223 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject223

def r224 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject224 : ¬ Reader r224 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject224

def r225 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject225 : ¬ Reader r225 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject225

def r226 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject226 : ¬ Reader r226 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject226

def r227 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject227 : ¬ Reader r227 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject227

def r228 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject228 : ¬ Reader r228 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject228

def r229 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject229 : ¬ Reader r229 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject229

def r230 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject230 : ¬ Reader r230 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject230

def r231 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject231 : ¬ Reader r231 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject231

def r232 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject232 : ¬ Reader r232 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject232

def r233 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject233 : ¬ Reader r233 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject233

def r234 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject234 : ¬ Reader r234 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject234

def r235 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.app (.var 2) (.var 0))))
theorem reject235 : ¬ Reader r235 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject235

def r236 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.app (.var 0) (.var 2))))
theorem reject236 : ¬ Reader r236 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject236

def r237 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.app (.var 2) (.var 1))))
theorem reject237 : ¬ Reader r237 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject237

def r238 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.app (.var 1) (.var 2))))
theorem reject238 : ¬ Reader r238 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject238

def r239 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.app (.var 2) (.lam (.var 0)))))
theorem reject239 : ¬ Reader r239 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject239

def r240 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.app (.lam (.var 0)) (.var 2))))
theorem reject240 : ¬ Reader r240 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject240

def r241 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.app (.var 2) (.lam (.var 1)))))
theorem reject241 : ¬ Reader r241 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject241

def r242 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.app (.lam (.var 1)) (.var 2))))
theorem reject242 : ¬ Reader r242 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject242

def r243 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject243 : ¬ Reader r243 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject243

def r244 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject244 : ¬ Reader r244 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject244

def r245 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject245 : ¬ Reader r245 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject245

def r246 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject246 : ¬ Reader r246 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject246

def r249 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject249 : ¬ Reader r249 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject249

def r250 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.var 2)))
theorem reject250 : ¬ Reader r250 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject250

def r252 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject252 : ¬ Reader r252 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject252

def r254 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.var 2)))
theorem reject254 : ¬ Reader r254 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject254

def r256 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject256 : ¬ Reader r256 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject256

def r258 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject258 : ¬ Reader r258 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject258

def r263 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 2) (.var 0))))
theorem reject263 : ¬ Reader r263 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject263

def r264 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 0) (.var 2))))
theorem reject264 : ¬ Reader r264 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject264

def r265 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.app (.var 2) (.var 0))))
theorem reject265 : ¬ Reader r265 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject265

def r266 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.app (.var 0) (.var 2))))
theorem reject266 : ¬ Reader r266 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject266

def r269 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject269 : ¬ Reader r269 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject269

def r270 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject270 : ¬ Reader r270 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject270

def r273 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject273 : ¬ Reader r273 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject273

def r274 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject274 : ¬ Reader r274 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject274

def r277 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 0))))
theorem reject277 : ¬ Reader r277 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject277

def r278 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 2))))
theorem reject278 : ¬ Reader r278 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject278

def r281 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 0))))
theorem reject281 : ¬ Reader r281 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject281

def r282 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 2))))
theorem reject282 : ¬ Reader r282 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject282

def r287 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 2) (.var 1))))
theorem reject287 : ¬ Reader r287 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject287

def r288 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 1) (.var 2))))
theorem reject288 : ¬ Reader r288 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject288

def r289 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject289 : ¬ Reader r289 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject289

def r290 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject290 : ¬ Reader r290 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject290

def r293 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject293 : ¬ Reader r293 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject293

def r294 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject294 : ¬ Reader r294 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject294

def r297 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject297 : ¬ Reader r297 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject297

def r298 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject298 : ¬ Reader r298 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject298

def r301 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 1))))
theorem reject301 : ¬ Reader r301 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject301

def r302 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 2))))
theorem reject302 : ¬ Reader r302 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject302

def r305 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject305 : ¬ Reader r305 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject305

def r306 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject306 : ¬ Reader r306 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject306

def r311 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 2) (.lam (.var 0)))))
theorem reject311 : ¬ Reader r311 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject311

def r312 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.lam (.var 0)) (.var 2))))
theorem reject312 : ¬ Reader r312 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject312

def r313 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.app (.var 2) (.lam (.var 0)))))
theorem reject313 : ¬ Reader r313 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject313

def r314 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.app (.lam (.var 0)) (.var 2))))
theorem reject314 : ¬ Reader r314 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject314

def r317 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject317 : ¬ Reader r317 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject317

def r318 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject318 : ¬ Reader r318 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject318

def r321 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject321 : ¬ Reader r321 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject321

def r322 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject322 : ¬ Reader r322 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject322

def r325 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.app (.var 2) (.lam (.var 0)))))
theorem reject325 : ¬ Reader r325 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject325

def r326 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.app (.lam (.var 0)) (.var 2))))
theorem reject326 : ¬ Reader r326 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject326

def r329 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.app (.var 2) (.lam (.var 0)))))
theorem reject329 : ¬ Reader r329 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject329

def r330 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.app (.lam (.var 0)) (.var 2))))
theorem reject330 : ¬ Reader r330 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject330

def r331 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject331 : ¬ Reader r331 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject331

def r332 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject332 : ¬ Reader r332 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject332

def r333 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject333 : ¬ Reader r333 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject333

def r334 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject334 : ¬ Reader r334 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject334

def r335 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject335 : ¬ Reader r335 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject335

def r336 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject336 : ¬ Reader r336 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject336

def r337 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject337 : ¬ Reader r337 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject337

def r338 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject338 : ¬ Reader r338 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject338

def r339 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject339 : ¬ Reader r339 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject339

def r340 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject340 : ¬ Reader r340 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject340

def r341 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject341 : ¬ Reader r341 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject341

def r342 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject342 : ¬ Reader r342 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject342

def r343 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject343 : ¬ Reader r343 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject343

def r344 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject344 : ¬ Reader r344 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject344

def r345 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject345 : ¬ Reader r345 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject345

def r346 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject346 : ¬ Reader r346 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject346

def r347 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject347 : ¬ Reader r347 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject347

def r348 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject348 : ¬ Reader r348 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject348

def r349 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject349 : ¬ Reader r349 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject349

def r350 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject350 : ¬ Reader r350 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject350

def r351 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject351 : ¬ Reader r351 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject351

def r352 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject352 : ¬ Reader r352 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject352

def r353 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject353 : ¬ Reader r353 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject353

def r354 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject354 : ¬ Reader r354 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject355 : ¬ Reader r355 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject356 : ¬ Reader r356 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject357 : ¬ Reader r357 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject357

def r358 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject358 : ¬ Reader r358 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject358

def r359 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject359 : ¬ Reader r359 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject359

def r360 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject360 : ¬ Reader r360 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject360

def r364 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1))) (.var 2)))
theorem reject364 : ¬ Reader r364 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject364

def r366 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject366 : ¬ Reader r366 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject366

def r373 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject373 : ¬ Reader r373 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject373

def r374 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject374 : ¬ Reader r374 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject374

def r377 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1)))) (.app (.var 2) (.var 0))))
theorem reject377 : ¬ Reader r377 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject377

def r378 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 2))))
theorem reject378 : ¬ Reader r378 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject378

def r385 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject385 : ¬ Reader r385 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject385

def r386 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject386 : ¬ Reader r386 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject386

def r389 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1)))) (.app (.var 2) (.var 1))))
theorem reject389 : ¬ Reader r389 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject389

def r390 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 2))))
theorem reject390 : ¬ Reader r390 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject390

def r392 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject392 : ¬ Reader r392 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject392

def r394 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject394 : ¬ Reader r394 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject394

def r397 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject397 : ¬ Reader r397 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject397

def r398 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject398 : ¬ Reader r398 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject398

def r399 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject399 : ¬ Reader r399 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject399

def r401 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject401 : ¬ Reader r401 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject401

def r403 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject403 : ¬ Reader r403 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject403

def r406 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject406 : ¬ Reader r406 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject406

def r407 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject407 : ¬ Reader r407 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject407

def r410 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject410 : ¬ Reader r410 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject410

def r411 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject411 : ¬ Reader r411 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject411

def r416 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 2) (.var 0))))
theorem reject416 : ¬ Reader r416 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject416

def r417 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 0) (.var 2))))
theorem reject417 : ¬ Reader r417 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject417

def r418 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))) (.app (.var 2) (.var 0))))
theorem reject418 : ¬ Reader r418 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject418

def r419 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))) (.app (.var 0) (.var 2))))
theorem reject419 : ¬ Reader r419 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject419

def r420 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 3))))) (.app (.var 2) (.var 0))))
theorem reject420 : ¬ Reader r420 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject420

def r421 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 3))))) (.app (.var 0) (.var 2))))
theorem reject421 : ¬ Reader r421 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject421

def r424 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject424 : ¬ Reader r424 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject424

def r425 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject425 : ¬ Reader r425 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject425

def r428 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 1)))) (.app (.var 2) (.var 0))))
theorem reject428 : ¬ Reader r428 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject428

def r429 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 1)))) (.app (.var 0) (.var 2))))
theorem reject429 : ¬ Reader r429 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject429

def r430 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 2)))
theorem reject430 : ¬ Reader r430 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject430

def r431 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.var 0))) (.var 2)))
theorem reject431 : ¬ Reader r431 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject431

def r433 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))) (.var 2)))
theorem reject433 : ¬ Reader r433 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject433

def r435 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))) (.var 2)))
theorem reject435 : ¬ Reader r435 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject435

def r436 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject436 : ¬ Reader r436 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject436

def r437 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 2)))) (.var 2)))
theorem reject437 : ¬ Reader r437 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject437

def r438 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 2))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject438 : ¬ Reader r438 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject438

def r439 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 2))))) (.var 2)))
theorem reject439 : ¬ Reader r439 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject439

def r441 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.var 0))))) (.var 2)))
theorem reject441 : ¬ Reader r441 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject441

def r443 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 2))))) (.var 2)))
theorem reject443 : ¬ Reader r443 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject443

def r445 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 1))))) (.var 2)))
theorem reject445 : ¬ Reader r445 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject445

def r446 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 1)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject446 : ¬ Reader r446 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject446

def r447 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 1)) (.var 1)))) (.var 2)))
theorem reject447 : ¬ Reader r447 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject447

def r449 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 2)) (.var 0)))) (.var 2)))
theorem reject449 : ¬ Reader r449 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject449

def r454 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject454 : ¬ Reader r454 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject454

def r455 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 0))) (.var 2)))
theorem reject455 : ¬ Reader r455 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject455

def r456 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.var 2)))
theorem reject456 : ¬ Reader r456 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject456

def r457 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))) (.var 2)))
theorem reject457 : ¬ Reader r457 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject457

def r460 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject460 : ¬ Reader r460 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject460

def r461 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject461 : ¬ Reader r461 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject461

def r464 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.var 2)))
theorem reject464 : ¬ Reader r464 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject464

def r465 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))) (.var 2)))
theorem reject465 : ¬ Reader r465 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject465

def r468 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.var 2)))
theorem reject468 : ¬ Reader r468 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject468

def r469 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0))) (.var 2)))
theorem reject469 : ¬ Reader r469 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject469

def r472 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.var 2)))
theorem reject472 : ¬ Reader r472 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject472

def r473 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))) (.var 0))) (.var 2)))
theorem reject473 : ¬ Reader r473 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject473

def r475 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject475 : ¬ Reader r475 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject475

def r477 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject477 : ¬ Reader r477 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject477

def r479 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))) (.var 2)))
theorem reject479 : ¬ Reader r479 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject479

def r481 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))) (.var 2)))
theorem reject481 : ¬ Reader r481 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject481

def r483 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))) (.var 2)))
theorem reject483 : ¬ Reader r483 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject483

def r485 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))) (.var 2)))
theorem reject485 : ¬ Reader r485 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject485

def r487 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.var 1))) (.var 2)))
theorem reject487 : ¬ Reader r487 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject487

def r489 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))) (.var 2)))
theorem reject489 : ¬ Reader r489 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject489

def r491 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))) (.var 2)))
theorem reject491 : ¬ Reader r491 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject491

def r493 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 2)))) (.var 2)))
theorem reject493 : ¬ Reader r493 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject493

def r495 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject495 : ¬ Reader r495 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject495

def r497 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject497 : ¬ Reader r497 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject497

def r499 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject499 : ¬ Reader r499 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject499

def r501 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject501 : ¬ Reader r501 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject501

def r502 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 2))))) (.var 2)))
theorem reject502 : ¬ Reader r502 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject502

def r503 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.var 1))))) (.var 2)))
theorem reject503 : ¬ Reader r503 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject503

def r505 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 2))))) (.var 2)))
theorem reject505 : ¬ Reader r505 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject505

def r507 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 2)) (.var 1)))) (.var 2)))
theorem reject507 : ¬ Reader r507 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject507

def r509 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 2)))
theorem reject509 : ¬ Reader r509 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject509

def r511 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 2)))
theorem reject511 : ¬ Reader r511 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject511

def r513 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject513 : ¬ Reader r513 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject513

def r515 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 2)))
theorem reject515 : ¬ Reader r515 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject515

def r517 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)))
theorem reject517 : ¬ Reader r517 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject517

def r519 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 2)))
theorem reject519 : ¬ Reader r519 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject519

def r521 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 2)))
theorem reject521 : ¬ Reader r521 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject521

def r522 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject522 : ¬ Reader r522 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject522

def r523 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.var 0))) (.var 1)))) (.var 2)))
theorem reject523 : ¬ Reader r523 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject523

def r530 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1)))) (.var 2)))
theorem reject530 : ¬ Reader r530 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject530

def r531 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1)) (.var 0))) (.var 2)))
theorem reject531 : ¬ Reader r531 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject531

def r534 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1))))) (.var 2)))
theorem reject534 : ¬ Reader r534 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject534

def r535 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0))) (.var 2)))
theorem reject535 : ¬ Reader r535 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject535

def r537 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject537 : ¬ Reader r537 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject537

def r539 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1))) (.var 2)))
theorem reject539 : ¬ Reader r539 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject539

def r545 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 1))) (.var 2)))
theorem reject545 : ¬ Reader r545 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject545

def r547 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 1))) (.var 2)))
theorem reject547 : ¬ Reader r547 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject547

def r551 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 1))) (.var 2)))
theorem reject551 : ¬ Reader r551 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject551

def r555 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 1))) (.var 2)))
theorem reject555 : ¬ Reader r555 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject555

def r559 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.var 1))) (.var 2)))
theorem reject559 : ¬ Reader r559 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject559

def r563 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))) (.var 1))) (.var 2)))
theorem reject563 : ¬ Reader r563 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject563

def r564 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 2)))
theorem reject564 : ¬ Reader r564 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject564

def r565 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.lam (.var 0)))) (.var 2)))
theorem reject565 : ¬ Reader r565 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject565

def r566 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject566 : ¬ Reader r566 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject566

def r567 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 2)))) (.var 2)))
theorem reject567 : ¬ Reader r567 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject567

def r570 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject570 : ¬ Reader r570 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject570

def r571 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1))))) (.var 2)))
theorem reject571 : ¬ Reader r571 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject571

def r575 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject575 : ¬ Reader r575 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject575

def r579 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject579 : ¬ Reader r579 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject579

def r581 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject581 : ¬ Reader r581 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject581

def r583 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject583 : ¬ Reader r583 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject583

def r584 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 4)))))) (.var 2)))
theorem reject584 : ¬ Reader r584 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 3)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject584

def r585 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.var 2))))) (.var 2)))
theorem reject585 : ¬ Reader r585 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject585

def r586 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 2)))
theorem reject586 : ¬ Reader r586 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject586

def r587 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.var 0)) (.var 2))))) (.var 2)))
theorem reject587 : ¬ Reader r587 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject587

def r589 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 2)))
theorem reject589 : ¬ Reader r589 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject589

def r590 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.lam (.var 2))))) (.var 2)))
theorem reject590 : ¬ Reader r590 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject590

def r592 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 2)) (.lam (.var 0))))) (.var 2)))
theorem reject592 : ¬ Reader r592 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject592

def r593 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.var 1))) (.var 1)))) (.var 2)))
theorem reject593 : ¬ Reader r593 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.var 1))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject593

def r595 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)))
theorem reject595 : ¬ Reader r595 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject595

def r597 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)))
theorem reject597 : ¬ Reader r597 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject597

def r599 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)))
theorem reject599 : ¬ Reader r599 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject599

def r601 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)))
theorem reject601 : ¬ Reader r601 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject601

def r603 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)))
theorem reject603 : ¬ Reader r603 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject603

def r605 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)))
theorem reject605 : ¬ Reader r605 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject605

def r608 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject608 : ¬ Reader r608 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject608

def r609 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject609 : ¬ Reader r609 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject609

def r612 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1)))) (.var 2)))
theorem reject612 : ¬ Reader r612 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject612

def r613 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))) (.var 2)))
theorem reject613 : ¬ Reader r613 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject613

def r618 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject618 : ¬ Reader r618 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject618

def r619 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 0))) (.var 2)))
theorem reject619 : ¬ Reader r619 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject619

def r620 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0))))) (.var 2)))
theorem reject620 : ¬ Reader r620 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject620

def r621 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))) (.var 2)))
theorem reject621 : ¬ Reader r621 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject621

def r622 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 3)))))) (.var 2)))
theorem reject622 : ¬ Reader r622 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject622

def r623 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 3)))) (.var 0))) (.var 2)))
theorem reject623 : ¬ Reader r623 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject623

def r626 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0)))))) (.var 2)))
theorem reject626 : ¬ Reader r626 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject626

def r627 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.var 2)))
theorem reject627 : ¬ Reader r627 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject627

def r630 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 1))))) (.var 2)))
theorem reject630 : ¬ Reader r630 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject630

def r631 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 1))) (.var 0))) (.var 2)))
theorem reject631 : ¬ Reader r631 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject631

def r633 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject633 : ¬ Reader r633 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject633

def r635 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject635 : ¬ Reader r635 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject635

def r637 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))) (.var 2)))
theorem reject637 : ¬ Reader r637 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject637

def r639 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))) (.var 2)))
theorem reject639 : ¬ Reader r639 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject639

def r641 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject641 : ¬ Reader r641 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject641

def r643 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject643 : ¬ Reader r643 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject643

def r645 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))) (.var 2)))
theorem reject645 : ¬ Reader r645 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject645

def r647 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject647 : ¬ Reader r647 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject647

def r649 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))) (.var 2)))
theorem reject649 : ¬ Reader r649 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject649

def r651 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject651 : ¬ Reader r651 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject651

def r653 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject653 : ¬ Reader r653 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject653

def r655 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject655 : ¬ Reader r655 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject655

def r657 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))) (.var 2)))
theorem reject657 : ¬ Reader r657 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject657

def r659 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.var 0)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject659 : ¬ Reader r659 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject659

def r661 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 0))) (.var 1))) (.var 2)))
theorem reject661 : ¬ Reader r661 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject661

def r669 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1)) (.var 1))) (.var 2)))
theorem reject669 : ¬ Reader r669 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject669

def r673 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1))) (.var 1))) (.var 2)))
theorem reject673 : ¬ Reader r673 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject673

def r678 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject678 : ¬ Reader r678 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject678

def r679 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.var 0)))) (.var 2)))
theorem reject679 : ¬ Reader r679 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject679

def r680 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.var 2)))
theorem reject680 : ¬ Reader r680 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject680

def r681 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))) (.var 2)))
theorem reject681 : ¬ Reader r681 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject681

def r684 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject684 : ¬ Reader r684 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject684

def r685 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject685 : ¬ Reader r685 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject685

def r688 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.var 2)))
theorem reject688 : ¬ Reader r688 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject688

def r689 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject689 : ¬ Reader r689 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject689

def r692 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.var 2)))
theorem reject692 : ¬ Reader r692 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject692

def r693 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.var 2)))
theorem reject693 : ¬ Reader r693 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject693

def r696 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.var 2)))
theorem reject696 : ¬ Reader r696 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject696

def r697 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.var 2)))
theorem reject697 : ¬ Reader r697 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject697

def r698 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.lam (.var 1)))) (.var 2)))
theorem reject698 : ¬ Reader r698 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject698

def r699 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 2)))) (.var 2)))
theorem reject699 : ¬ Reader r699 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject699

def r701 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject701 : ¬ Reader r701 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject701

def r703 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject703 : ¬ Reader r703 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject703

def r705 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject705 : ¬ Reader r705 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject705

def r707 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject707 : ¬ Reader r707 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject707

def r709 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))) (.var 2)))
theorem reject709 : ¬ Reader r709 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject709

def r711 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0)))))) (.var 2)))
theorem reject711 : ¬ Reader r711 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject711

def r714 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject714 : ¬ Reader r714 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject714

def r715 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject715 : ¬ Reader r715 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject715

def r717 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.var 2)))
theorem reject717 : ¬ Reader r717 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject717

def r720 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject720 : ¬ Reader r720 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject720

def r721 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.lam (.var 0)) (.var 0)))) (.var 2)))
theorem reject721 : ¬ Reader r721 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject721

def r725 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject725 : ¬ Reader r725 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject725

def r726 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject726 : ¬ Reader r726 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject726

def r727 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject727 : ¬ Reader r727 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject727

def r729 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject729 : ¬ Reader r729 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject729

def r731 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject731 : ¬ Reader r731 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject731

def r733 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject733 : ¬ Reader r733 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject733

def r735 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject735 : ¬ Reader r735 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject735

def r736 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 2)))
theorem reject736 : ¬ Reader r736 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject736

def r737 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 3) (.var 0)))))) (.var 2)))
theorem reject737 : ¬ Reader r737 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 2) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject737

def r738 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 3)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject738 : ¬ Reader r738 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject738

def r739 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 2)))
theorem reject739 : ¬ Reader r739 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject739

def r741 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 2)))
theorem reject741 : ¬ Reader r741 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject741

def r742 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.var 1)) (.var 2))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject742 : ¬ Reader r742 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject742

def r743 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.var 1)) (.var 2))))) (.var 2)))
theorem reject743 : ¬ Reader r743 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.var 1)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject743

def r744 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.var 3)) (.var 0))))) (.var 2)))
theorem reject744 : ¬ Reader r744 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.var 2)) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject744

def r746 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.var 2)))
theorem reject746 : ¬ Reader r746 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject746

def r748 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 2)))))) (.var 2)))
theorem reject748 : ¬ Reader r748 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject748

def r749 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 1)) (.lam (.var 2))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject749 : ¬ Reader r749 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject749

def r750 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 1)) (.lam (.var 2))))) (.var 2)))
theorem reject750 : ¬ Reader r750 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject750

def r752 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 2)) (.lam (.var 1))))) (.var 2)))
theorem reject752 : ¬ Reader r752 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject752

def r753 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.var 2))) (.var 1)))) (.var 2)))
theorem reject753 : ¬ Reader r753 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject753

def r754 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.var 3))) (.var 0)))) (.var 2)))
theorem reject754 : ¬ Reader r754 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject754

def r756 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.var 2)))
theorem reject756 : ¬ Reader r756 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject756

def r758 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.var 0)) (.var 1))))) (.var 2)))
theorem reject758 : ¬ Reader r758 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 0)) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject758

def r760 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.var 2)))
theorem reject760 : ¬ Reader r760 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject760

def r762 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.lam (.var 0)) (.var 0))))) (.var 2)))
theorem reject762 : ¬ Reader r762 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject762

def r764 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.app (.var 0) (.var 1))))) (.var 2)))
theorem reject764 : ¬ Reader r764 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject764

def r766 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.app (.var 1) (.var 0))))) (.var 2)))
theorem reject766 : ¬ Reader r766 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject766

def r768 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.var 2)))
theorem reject768 : ¬ Reader r768 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject768

def r770 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.var 2)))
theorem reject770 : ¬ Reader r770 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject770

def r772 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.var 2)))
theorem reject772 : ¬ Reader r772 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject772

def r774 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.var 0)) (.var 0)) (.var 1)))) (.var 2)))
theorem reject774 : ¬ Reader r774 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject774

def r776 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.var 2)))
theorem reject776 : ¬ Reader r776 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject776

def r778 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 0)))) (.var 2)))
theorem reject778 : ¬ Reader r778 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject778

def r780 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))) (.var 2)))
theorem reject780 : ¬ Reader r780 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject780

def r781 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.lam (.var 0)))) (.var 1)))) (.var 2)))
theorem reject781 : ¬ Reader r781 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.lam (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject781

def r783 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject783 : ¬ Reader r783 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject783

def r785 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))) (.var 2)))
theorem reject785 : ¬ Reader r785 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject785

def r787 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)))
theorem reject787 : ¬ Reader r787 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject787

def r789 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)))
theorem reject789 : ¬ Reader r789 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject789

def r790 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject790 : ¬ Reader r790 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject790

def r791 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject791 : ¬ Reader r791 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject791

def r792 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject792 : ¬ Reader r792 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject792

def r793 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject793 : ¬ Reader r793 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject793

def r794 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject794 : ¬ Reader r794 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject794

def r795 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject795 : ¬ Reader r795 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject795

def r796 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject796 : ¬ Reader r796 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject796

def r797 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject797 : ¬ Reader r797 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject797

def r799 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject799 : ¬ Reader r799 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject799

def r801 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject801 : ¬ Reader r801 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject801

def r804 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject804 : ¬ Reader r804 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject804

def r805 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject805 : ¬ Reader r805 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject805

def r808 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject808 : ¬ Reader r808 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject808

def r809 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject809 : ¬ Reader r809 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject809

def r812 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject812 : ¬ Reader r812 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject812

def r813 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject813 : ¬ Reader r813 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject813

def r816 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject816 : ¬ Reader r816 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject816

def r817 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject817 : ¬ Reader r817 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject817

def r820 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject820 : ¬ Reader r820 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject820

def r821 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject821 : ¬ Reader r821 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject821

def r824 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject824 : ¬ Reader r824 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject824

def r825 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject825 : ¬ Reader r825 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject825

def r826 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject826 : ¬ Reader r826 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject826

def r827 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject827 : ¬ Reader r827 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject827

def r828 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject828 : ¬ Reader r828 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject828

def r829 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject829 : ¬ Reader r829 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject829

def r830 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject830 : ¬ Reader r830 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject830

def r831 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject831 : ¬ Reader r831 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject831

def r832 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject832 : ¬ Reader r832 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject832

def r833 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject833 : ¬ Reader r833 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject833

def r834 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject834 : ¬ Reader r834 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject834

def r835 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject835 : ¬ Reader r835 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject835

def r838 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject838 : ¬ Reader r838 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject838

def r839 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.var 2)))
theorem reject839 : ¬ Reader r839 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject839

def r841 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject841 : ¬ Reader r841 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject841

def r843 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.var 2)))
theorem reject843 : ¬ Reader r843 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject843

def r845 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject845 : ¬ Reader r845 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject845

def r847 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject847 : ¬ Reader r847 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject847

def r850 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject850 : ¬ Reader r850 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject850

def r851 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.var 2)))
theorem reject851 : ¬ Reader r851 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject851

def r853 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject853 : ¬ Reader r853 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject853

def r855 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.var 2)))
theorem reject855 : ¬ Reader r855 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject855

def r857 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject857 : ¬ Reader r857 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject857

def r859 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject859 : ¬ Reader r859 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject859

def r863 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1))) (.var 2)))
theorem reject863 : ¬ Reader r863 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject863

def r865 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject865 : ¬ Reader r865 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject865

def r869 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1))) (.var 2)))
theorem reject869 : ¬ Reader r869 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject869

def r871 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject871 : ¬ Reader r871 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject871

def r873 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject873 : ¬ Reader r873 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject873

def r875 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject875 : ¬ Reader r875 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject875

def r878 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject878 : ¬ Reader r878 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject878

def r879 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject879 : ¬ Reader r879 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject879

def r880 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject880 : ¬ Reader r880 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject880

def r882 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject882 : ¬ Reader r882 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject882

def r884 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject884 : ¬ Reader r884 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject884

def r886 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject886 : ¬ Reader r886 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject886

def r888 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject888 : ¬ Reader r888 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject888

def r891 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject891 : ¬ Reader r891 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject891

def r892 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject892 : ¬ Reader r892 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject892

def r893 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject893 : ¬ Reader r893 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject893

def r895 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject895 : ¬ Reader r895 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject895

def r897 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject897 : ¬ Reader r897 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject897

def r898 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject898 : ¬ Reader r898 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject898

def r899 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject899 : ¬ Reader r899 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject899

def r900 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject900 : ¬ Reader r900 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject900

def r901 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject901 : ¬ Reader r901 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject901

def r903 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject903 : ¬ Reader r903 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject903

def r906 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject906 : ¬ Reader r906 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject906

def r907 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject907 : ¬ Reader r907 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject907

def r908 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject908 : ¬ Reader r908 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject908

def r911 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject911 : ¬ Reader r911 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject911

def r912 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))) (.var 2)))
theorem reject912 : ¬ Reader r912 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject912

def r914 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject914 : ¬ Reader r914 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject914

def r916 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.var 2)))
theorem reject916 : ¬ Reader r916 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject916

def r918 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject918 : ¬ Reader r918 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject918

def r920 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject920 : ¬ Reader r920 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject920

def r922 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject922 : ¬ Reader r922 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject922

def r924 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject924 : ¬ Reader r924 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject924

def r926 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject926 : ¬ Reader r926 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject926

def r927 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject927 : ¬ Reader r927 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject927

def r928 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject928 : ¬ Reader r928 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject928

def r929 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject929 : ¬ Reader r929 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject929

def r931 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject931 : ¬ Reader r931 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject931

def r933 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject933 : ¬ Reader r933 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject933

def r935 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject935 : ¬ Reader r935 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject935

def r937 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject937 : ¬ Reader r937 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject937

def r939 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject939 : ¬ Reader r939 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject939

def r941 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject941 : ¬ Reader r941 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject941

def r943 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject943 : ¬ Reader r943 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject943

def r945 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject945 : ¬ Reader r945 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject945

def r947 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject947 : ¬ Reader r947 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject947

def r949 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject949 : ¬ Reader r949 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject949

def r951 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject951 : ¬ Reader r951 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject951

def r953 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject953 : ¬ Reader r953 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject953

def r955 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject955 : ¬ Reader r955 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject955

def r957 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject957 : ¬ Reader r957 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject957

def r959 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject959 : ¬ Reader r959 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject959

def r961 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject961 : ¬ Reader r961 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject961

def r963 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject963 : ¬ Reader r963 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject963

def r965 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject965 : ¬ Reader r965 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject965

def r967 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject967 : ¬ Reader r967 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject967

def r969 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject969 : ¬ Reader r969 := by
  exact loop_reduct true 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject969

def r971 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject971 : ¬ Reader r971 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject971

def r973 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject973 : ¬ Reader r973 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject973

def r975 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject975 : ¬ Reader r975 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject975

def r977 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject977 : ¬ Reader r977 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject977

def r979 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject979 : ¬ Reader r979 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject979

def r981 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject981 : ¬ Reader r981 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject981

def r982 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject982 : ¬ Reader r982 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject982

def r983 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject983 : ¬ Reader r983 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject983

def r986 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject986 : ¬ Reader r986 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject986

def r987 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject987 : ¬ Reader r987 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject987

def r988 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject988 : ¬ Reader r988 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject988

def r989 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject989 : ¬ Reader r989 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject989

def r992 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject992 : ¬ Reader r992 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject992

def r993 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject993 : ¬ Reader r993 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject993

def r994 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject994 : ¬ Reader r994 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject994

def r995 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject995 : ¬ Reader r995 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject995

def r996 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject996 : ¬ Reader r996 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject996

def r997 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject997 : ¬ Reader r997 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject997

def r999 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject999 : ¬ Reader r999 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject999

def r1003 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1003 : ¬ Reader r1003 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1003

def r1005 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1005 : ¬ Reader r1005 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1005

def r1009 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1009 : ¬ Reader r1009 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1009

def r1011 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1011 : ¬ Reader r1011 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1011

def r1013 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1013 : ¬ Reader r1013 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1013

def r1015 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1015 : ¬ Reader r1015 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1015

def r1017 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1017 : ¬ Reader r1017 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1017

def r1019 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1019 : ¬ Reader r1019 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1019

def r1021 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1021 : ¬ Reader r1021 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1021

def r1023 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1023 : ¬ Reader r1023 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1023

def r1025 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1025 : ¬ Reader r1025 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1025

def r1027 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1027 : ¬ Reader r1027 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1027

def r1029 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1029 : ¬ Reader r1029 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1029

def r1047 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1047 : ¬ Reader r1047 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1047

def r1122 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1122 : ¬ Reader r1122 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1122

def r1123 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1123 : ¬ Reader r1123 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1123

def r1124 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1124 : ¬ Reader r1124 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1124

def r1125 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1125 : ¬ Reader r1125 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1125

def r1126 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1126 : ¬ Reader r1126 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1126

def r1127 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1127 : ¬ Reader r1127 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1127

def r1128 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1128 : ¬ Reader r1128 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1128

def r1129 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1129 : ¬ Reader r1129 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1129

def r1131 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1131 : ¬ Reader r1131 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1131

def r1133 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1133 : ¬ Reader r1133 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1133

def r1136 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1136 : ¬ Reader r1136 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1136

def r1137 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1137 : ¬ Reader r1137 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1137

def r1140 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1140 : ¬ Reader r1140 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1140

def r1141 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1141 : ¬ Reader r1141 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1141

def r1144 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject1144 : ¬ Reader r1144 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1144

def r1145 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject1145 : ¬ Reader r1145 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1145

def r1148 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject1148 : ¬ Reader r1148 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1148

def r1149 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject1149 : ¬ Reader r1149 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1149

def r1152 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1152 : ¬ Reader r1152 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1152

def r1153 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1153 : ¬ Reader r1153 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1153

def r1156 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1156 : ¬ Reader r1156 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1156

def r1157 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1157 : ¬ Reader r1157 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1157

def r1158 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1158 : ¬ Reader r1158 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1158

def r1159 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1159 : ¬ Reader r1159 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1159

def r1160 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject1160 : ¬ Reader r1160 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1160

def r1161 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject1161 : ¬ Reader r1161 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1161

def r1162 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1162 : ¬ Reader r1162 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1162

def r1163 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1163 : ¬ Reader r1163 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1163

def r1164 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject1164 : ¬ Reader r1164 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1164

def r1165 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject1165 : ¬ Reader r1165 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1165

def r1166 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject1166 : ¬ Reader r1166 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1166

def r1167 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject1167 : ¬ Reader r1167 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1167

def r1170 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1170 : ¬ Reader r1170 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1170

def r1171 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1171 : ¬ Reader r1171 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1171

def r1173 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1173 : ¬ Reader r1173 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1173

def r1175 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1175 : ¬ Reader r1175 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1175

def r1177 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1177 : ¬ Reader r1177 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1177

def r1179 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1179 : ¬ Reader r1179 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1179

def r1182 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject1182 : ¬ Reader r1182 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1182

def r1183 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1183 : ¬ Reader r1183 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1183

def r1185 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1185 : ¬ Reader r1185 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1185

def r1187 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1187 : ¬ Reader r1187 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1187

def r1189 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1189 : ¬ Reader r1189 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1189

def r1191 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1191 : ¬ Reader r1191 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1191

def r1195 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 1))) (.var 2)))
theorem reject1195 : ¬ Reader r1195 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1195

def r1197 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject1197 : ¬ Reader r1197 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1197

def r1201 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 1))) (.var 2)))
theorem reject1201 : ¬ Reader r1201 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1201

def r1203 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject1203 : ¬ Reader r1203 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1203

def r1205 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1205 : ¬ Reader r1205 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1205

def r1207 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject1207 : ¬ Reader r1207 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1207

def r1210 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1210 : ¬ Reader r1210 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1210

def r1211 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject1211 : ¬ Reader r1211 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1211

def r1212 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject1212 : ¬ Reader r1212 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1212

def r1214 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject1214 : ¬ Reader r1214 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1214

def r1216 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject1216 : ¬ Reader r1216 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1216

def r1218 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1218 : ¬ Reader r1218 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1218

def r1220 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject1220 : ¬ Reader r1220 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1220

def r1223 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject1223 : ¬ Reader r1223 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1223

def r1224 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject1224 : ¬ Reader r1224 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1224

def r1225 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject1225 : ¬ Reader r1225 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 2))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1225

def r1227 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject1227 : ¬ Reader r1227 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1227

def r1229 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject1229 : ¬ Reader r1229 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.var 0)) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1229

def r1231 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1231 : ¬ Reader r1231 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1231

def r1232 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject1232 : ¬ Reader r1232 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1232

def r1234 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1234 : ¬ Reader r1234 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1234

def r1236 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1236 : ¬ Reader r1236 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1236

def r1238 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1238 : ¬ Reader r1238 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1238

def r1240 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1240 : ¬ Reader r1240 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1240

def r1242 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1242 : ¬ Reader r1242 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1242

def r1244 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1244 : ¬ Reader r1244 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1244

def r1246 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1246 : ¬ Reader r1246 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1246

def r1248 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1248 : ¬ Reader r1248 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1248

def r1250 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1250 : ¬ Reader r1250 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1250

def r1252 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1252 : ¬ Reader r1252 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1252

def r1253 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1253 : ¬ Reader r1253 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1253

def r1254 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1254 : ¬ Reader r1254 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1254

def r1255 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1255 : ¬ Reader r1255 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1255

def r1256 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1256 : ¬ Reader r1256 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1256

def r1258 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1258 : ¬ Reader r1258 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1258

def r1260 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1260 : ¬ Reader r1260 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1260

def r1262 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1262 : ¬ Reader r1262 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1262

def r1264 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1264 : ¬ Reader r1264 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1264

def r1273 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject1273 : ¬ Reader r1273 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1273

def r1274 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject1274 : ¬ Reader r1274 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1274

def r1275 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1275 : ¬ Reader r1275 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1275

def r1276 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1276 : ¬ Reader r1276 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1276

def r1277 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1277 : ¬ Reader r1277 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1277

def r1278 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1278 : ¬ Reader r1278 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1278

def r1279 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1279 : ¬ Reader r1279 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1279

def r1280 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1280 : ¬ Reader r1280 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1280

def r1282 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1282 : ¬ Reader r1282 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1282

def r1284 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1284 : ¬ Reader r1284 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1284

def r1287 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1287 : ¬ Reader r1287 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1287

def r1288 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1288 : ¬ Reader r1288 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1288

def r1291 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1291 : ¬ Reader r1291 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1291

def r1292 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1292 : ¬ Reader r1292 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1292

def r1295 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject1295 : ¬ Reader r1295 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1295

def r1296 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject1296 : ¬ Reader r1296 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1296

def r1299 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject1299 : ¬ Reader r1299 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1299

def r1300 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject1300 : ¬ Reader r1300 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1300

def r1301 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 2)))) (.var 2)))
theorem reject1301 : ¬ Reader r1301 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1301

def r1302 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject1302 : ¬ Reader r1302 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1302

def r1305 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) (.var 2)))
theorem reject1305 : ¬ Reader r1305 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1305

def r1306 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1306 : ¬ Reader r1306 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1306

def r1308 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1308 : ¬ Reader r1308 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1308

def r1310 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1310 : ¬ Reader r1310 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1310

def r1312 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1312 : ¬ Reader r1312 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1312

def r1314 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1314 : ¬ Reader r1314 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1314

def r1317 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1317 : ¬ Reader r1317 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1317

def r1318 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1318 : ¬ Reader r1318 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1318

def r1320 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1320 : ¬ Reader r1320 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1320

def r1322 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1322 : ¬ Reader r1322 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1322

def r1324 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1324 : ¬ Reader r1324 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1324

def r1326 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1326 : ¬ Reader r1326 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1326

def r1330 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 1))) (.var 2)))
theorem reject1330 : ¬ Reader r1330 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1330

def r1332 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject1332 : ¬ Reader r1332 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1332

def r1336 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 1))) (.var 2)))
theorem reject1336 : ¬ Reader r1336 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1336

def r1338 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject1338 : ¬ Reader r1338 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1338

def r1340 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1340 : ¬ Reader r1340 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1340

def r1342 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1342 : ¬ Reader r1342 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1342

def r1344 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1344 : ¬ Reader r1344 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1344

def r1346 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1346 : ¬ Reader r1346 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1346

def r1348 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1348 : ¬ Reader r1348 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1348

def r1350 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1350 : ¬ Reader r1350 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1350

def r1352 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1352 : ¬ Reader r1352 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1352

def r1354 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1354 : ¬ Reader r1354 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1354

def r1356 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1356 : ¬ Reader r1356 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1356

def r1358 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1358 : ¬ Reader r1358 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1358

def r1360 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1360 : ¬ Reader r1360 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1360

def r1361 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1361 : ¬ Reader r1361 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1361

def r1362 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.var 2)))
theorem reject1362 : ¬ Reader r1362 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1362

def r1363 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1363 : ¬ Reader r1363 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1363

def r1364 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1364 : ¬ Reader r1364 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1364

def r1369 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1369 : ¬ Reader r1369 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1369

def r1370 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1370 : ¬ Reader r1370 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1370

def r1371 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1371 : ¬ Reader r1371 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1371

def r1372 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1372 : ¬ Reader r1372 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1372

def r1373 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1373 : ¬ Reader r1373 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1373

def r1374 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1374 : ¬ Reader r1374 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1374

def r1375 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1375 : ¬ Reader r1375 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1375

def r1376 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1376 : ¬ Reader r1376 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1376

def r1378 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1378 : ¬ Reader r1378 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1378

def r1380 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject1380 : ¬ Reader r1380 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1380

def r1383 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1383 : ¬ Reader r1383 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1383

def r1384 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1384 : ¬ Reader r1384 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1384

def r1387 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1387 : ¬ Reader r1387 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1387

def r1388 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1388 : ¬ Reader r1388 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1388

def r1389 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 2)))) (.var 2)))
theorem reject1389 : ¬ Reader r1389 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1389

def r1390 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject1390 : ¬ Reader r1390 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1390

def r1393 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)))) (.var 2)))
theorem reject1393 : ¬ Reader r1393 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1393

def r1394 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1394 : ¬ Reader r1394 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1394

def r1396 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject1396 : ¬ Reader r1396 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1396

def r1398 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1398 : ¬ Reader r1398 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1398

def r1400 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1400 : ¬ Reader r1400 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1400

def r1402 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1402 : ¬ Reader r1402 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1402

def r1405 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1405 : ¬ Reader r1405 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1405

def r1406 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1406 : ¬ Reader r1406 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1406

def r1408 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1408 : ¬ Reader r1408 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1408

def r1410 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1410 : ¬ Reader r1410 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1410

def r1412 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1412 : ¬ Reader r1412 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1412

def r1414 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1414 : ¬ Reader r1414 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1414

def r1416 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1416 : ¬ Reader r1416 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1416

def r1418 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1418 : ¬ Reader r1418 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1418

def r1420 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject1420 : ¬ Reader r1420 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1420

def r1422 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1422 : ¬ Reader r1422 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1422

def r1424 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1424 : ¬ Reader r1424 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1424

def r1426 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1426 : ¬ Reader r1426 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1426

def r1428 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject1428 : ¬ Reader r1428 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1428

def r1430 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject1430 : ¬ Reader r1430 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1430

def r1431 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1431 : ¬ Reader r1431 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1431

def r1432 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1432 : ¬ Reader r1432 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1432

def r1435 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 2) (.var 0))))
theorem reject1435 : ¬ Reader r1435 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1435

def r1436 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 0) (.var 2))))
theorem reject1436 : ¬ Reader r1436 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1436

def r1437 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.app (.var 2) (.var 0))))
theorem reject1437 : ¬ Reader r1437 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1437

def r1438 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.app (.var 0) (.var 2))))
theorem reject1438 : ¬ Reader r1438 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1438

def r1443 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 2) (.var 1))))
theorem reject1443 : ¬ Reader r1443 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1443

def r1444 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 1) (.var 2))))
theorem reject1444 : ¬ Reader r1444 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1444

def r1445 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1445 : ¬ Reader r1445 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1445

def r1446 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1446 : ¬ Reader r1446 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1446

def r1452 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.var 2)))
theorem reject1452 : ¬ Reader r1452 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1452

def r1457 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1457 : ¬ Reader r1457 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1457

def r1458 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1458 : ¬ Reader r1458 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1458

def r1463 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1463 : ¬ Reader r1463 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1463

def r1464 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 0)))) (.var 2)))
theorem reject1464 : ¬ Reader r1464 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1464

def r1467 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 1)))) (.var 2)))
theorem reject1467 : ¬ Reader r1467 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1467

def r1469 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1469 : ¬ Reader r1469 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1469

def r1470 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 0))) (.var 2)))
theorem reject1470 : ¬ Reader r1470 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1470

def r1471 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))) (.var 2)))
theorem reject1471 : ¬ Reader r1471 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1471

def r1472 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)) (.var 0))) (.var 2)))
theorem reject1472 : ¬ Reader r1472 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1472

def r1473 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.var 0))))) (.var 2)))
theorem reject1473 : ¬ Reader r1473 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1473

def r1474 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.var 0) (.var 0)))) (.var 2)))
theorem reject1474 : ¬ Reader r1474 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1474

def r1481 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 2)))) (.var 2)))
theorem reject1481 : ¬ Reader r1481 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1481

def r1483 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1483 : ¬ Reader r1483 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1483

def r1484 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.var 1))))) (.var 2)))
theorem reject1484 : ¬ Reader r1484 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1484

def r1489 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1)))) (.var 2)))
theorem reject1489 : ¬ Reader r1489 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1489

def r1490 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1490 : ¬ Reader r1490 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1490

def r1492 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))) (.var 2)))
theorem reject1492 : ¬ Reader r1492 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1492

def r1494 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1494 : ¬ Reader r1494 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1494

def r1496 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1496 : ¬ Reader r1496 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1496

def r1498 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1498 : ¬ Reader r1498 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1498

def r1511 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1511 : ¬ Reader r1511 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1511

def r1512 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1512 : ¬ Reader r1512 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1512

def r1514 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1514 : ¬ Reader r1514 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1514

def r1515 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1515 : ¬ Reader r1515 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1515

def r1516 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.var 0)))) (.var 2)))
theorem reject1516 : ¬ Reader r1516 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1516

def r1517 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1517 : ¬ Reader r1517 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1517

def r1518 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1518 : ¬ Reader r1518 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1518

def r1522 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.var 2)))
theorem reject1522 : ¬ Reader r1522 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1522

def r1525 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1525 : ¬ Reader r1525 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1525

def r1526 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1526 : ¬ Reader r1526 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1526

def r1527 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1527 : ¬ Reader r1527 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1527

def r1528 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1528 : ¬ Reader r1528 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1528

def r1534 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.var 2)))
theorem reject1534 : ¬ Reader r1534 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1534

def r1536 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.var 2)))
theorem reject1536 : ¬ Reader r1536 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1536

def r1541 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1541 : ¬ Reader r1541 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1541

def r1542 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1542 : ¬ Reader r1542 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1542

def r1545 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1545 : ¬ Reader r1545 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1545

def r1546 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1546 : ¬ Reader r1546 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1546

def r1550 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1550 : ¬ Reader r1550 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1550

def r1556 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1))) (.var 2)))
theorem reject1556 : ¬ Reader r1556 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1556

def r1558 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1558 : ¬ Reader r1558 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1558

def r1559 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 2)))) (.var 2)))
theorem reject1559 : ¬ Reader r1559 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1559

def r1562 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.var 2)))) (.var 2)))
theorem reject1562 : ¬ Reader r1562 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1562

def r1563 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 2)))) (.var 2)))
theorem reject1563 : ¬ Reader r1563 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1563

def r1565 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1565 : ¬ Reader r1565 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1565

def r1569 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1569 : ¬ Reader r1569 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1569

def r1571 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))) (.var 2)))
theorem reject1571 : ¬ Reader r1571 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1571

def r1575 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1575 : ¬ Reader r1575 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1575

def r1577 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1577 : ¬ Reader r1577 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1577

def r1579 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1579 : ¬ Reader r1579 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1579

def r1581 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1581 : ¬ Reader r1581 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1581

def r1583 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1583 : ¬ Reader r1583 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1583

def r1585 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1585 : ¬ Reader r1585 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1585

def r1587 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1587 : ¬ Reader r1587 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1587

def r1589 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject1589 : ¬ Reader r1589 := by
  exact loop_reduct true 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1589

def r1591 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject1591 : ¬ Reader r1591 := by
  exact loop_reduct true 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1591

def r1593 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1593 : ¬ Reader r1593 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1593

def r1594 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.var 2)))
theorem reject1594 : ¬ Reader r1594 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1594

def r1595 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.var 0))) (.var 2)))
theorem reject1595 : ¬ Reader r1595 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1595

def r1597 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.var 1))) (.var 2)))
theorem reject1597 : ¬ Reader r1597 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1597

def r1598 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.var 2)))
theorem reject1598 : ¬ Reader r1598 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1598

def r1599 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.var 0)))) (.var 2)))
theorem reject1599 : ¬ Reader r1599 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1599

def r1601 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1601 : ¬ Reader r1601 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1)))))) [(.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1601

def r1605 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1605 : ¬ Reader r1605 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1605

def r1607 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1607 : ¬ Reader r1607 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1607

def r1609 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1609 : ¬ Reader r1609 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1609

def r1611 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1611 : ¬ Reader r1611 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1611

def r1613 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1613 : ¬ Reader r1613 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1613

def r1617 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1617 : ¬ Reader r1617 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1617

def r1619 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1619 : ¬ Reader r1619 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1619

def r1621 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1621 : ¬ Reader r1621 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1621

def r1623 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1623 : ¬ Reader r1623 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1623

def r1625 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1625 : ¬ Reader r1625 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1625

def r1627 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1627 : ¬ Reader r1627 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1627

def r1629 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.var 1))) (.var 2)))
theorem reject1629 : ¬ Reader r1629 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) [(.lam (.lam (.lam (.var 0))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1629

def r1631 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1631 : ¬ Reader r1631 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1631

def r1635 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.var 1))) (.var 2)))
theorem reject1635 : ¬ Reader r1635 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1635

def r1637 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1637 : ¬ Reader r1637 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1637

def r1639 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject1639 : ¬ Reader r1639 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1639

def r1641 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1641 : ¬ Reader r1641 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1641

def r1643 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject1643 : ¬ Reader r1643 := by
  exact loop_reduct true 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1643

def r1645 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1645 : ¬ Reader r1645 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1645

def r1647 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1647 : ¬ Reader r1647 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1647

def r1649 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1649 : ¬ Reader r1649 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1649

def r1653 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1653 : ¬ Reader r1653 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1653

def r1655 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1655 : ¬ Reader r1655 := by
  exact loop_reduct true 3 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1655

def r1657 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject1657 : ¬ Reader r1657 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1657

def r1659 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject1659 : ¬ Reader r1659 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))), (.lam (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1659

def r1661 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1661 : ¬ Reader r1661 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) [(.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1661

def r1663 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1663 : ¬ Reader r1663 := by
  exact loop_reduct true 3 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1663

def r1669 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1))) (.var 2)))
theorem reject1669 : ¬ Reader r1669 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1669

def r1671 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1671 : ¬ Reader r1671 := by
  exact loop_reduct true 5 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.app (.var 1) (.var 1))))))) [(.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1671

def r1672 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1672 : ¬ Reader r1672 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1672

def r1673 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 0))) (.var 2)))
theorem reject1673 : ¬ Reader r1673 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1673

def r1676 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 2)))
theorem reject1676 : ¬ Reader r1676 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1676

def r1677 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) (.var 2)))
theorem reject1677 : ¬ Reader r1677 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1677

def r1678 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 2)))
theorem reject1678 : ¬ Reader r1678 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1678

def r1679 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1679 : ¬ Reader r1679 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1679

def r1682 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))))) (.var 2)))
theorem reject1682 : ¬ Reader r1682 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1682

def r1683 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1683 : ¬ Reader r1683 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1683

def r1684 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1684 : ¬ Reader r1684 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1684

def r1685 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1685 : ¬ Reader r1685 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1685

def r1686 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1686 : ¬ Reader r1686 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1686

def r1687 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1687 : ¬ Reader r1687 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1687

def r1697 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))) (.var 2)))
theorem reject1697 : ¬ Reader r1697 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1697

def r1701 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 1))) (.var 2)))
theorem reject1701 : ¬ Reader r1701 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1701

def r1703 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1703 : ¬ Reader r1703 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1703

def r1707 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.var 1))) (.var 2)))
theorem reject1707 : ¬ Reader r1707 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1707

def r1709 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.var 1))) (.var 2)))
theorem reject1709 : ¬ Reader r1709 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1709

def r1711 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1711 : ¬ Reader r1711 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1711

def r1721 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1721 : ¬ Reader r1721 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1721

def r1723 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1723 : ¬ Reader r1723 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1723

def r1725 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1725 : ¬ Reader r1725 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1725

def r1727 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1727 : ¬ Reader r1727 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1727

def r1729 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1))) (.var 2)))
theorem reject1729 : ¬ Reader r1729 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1729

def r1731 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject1731 : ¬ Reader r1731 := by
  exact loop_reduct true 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1731

def r1732 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 3))))))) (.var 2)))
theorem reject1732 : ¬ Reader r1732 := by
  exact loop_reduct true 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1732

def r1733 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 3))))) (.var 0))) (.var 2)))
theorem reject1733 : ¬ Reader r1733 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1733

def r1736 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.var 2)))
theorem reject1736 : ¬ Reader r1736 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1736

def r1737 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))) (.var 2)))
theorem reject1737 : ¬ Reader r1737 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1737

def r1738 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.var 2)))
theorem reject1738 : ¬ Reader r1738 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1738

def r1739 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.var 0))) (.var 2)))
theorem reject1739 : ¬ Reader r1739 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1739

def r1740 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) (.var 2)))
theorem reject1740 : ¬ Reader r1740 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1740

def r1741 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1741 : ¬ Reader r1741 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1741

def r1742 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) (.var 2)))
theorem reject1742 : ¬ Reader r1742 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1742

def r1743 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.var 0))) (.var 2)))
theorem reject1743 : ¬ Reader r1743 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1743

def r1744 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1744 : ¬ Reader r1744 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1744

def r1745 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 0))) (.var 2)))
theorem reject1745 : ¬ Reader r1745 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1745

def r1750 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) (.var 2)))
theorem reject1750 : ¬ Reader r1750 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1750

def r1751 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.var 0))) (.var 2)))
theorem reject1751 : ¬ Reader r1751 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1751

def r1760 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1760 : ¬ Reader r1760 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1760

def r1761 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1761 : ¬ Reader r1761 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1761

def r1762 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1762 : ¬ Reader r1762 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1762

def r1763 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1763 : ¬ Reader r1763 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1763

def r1764 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1764 : ¬ Reader r1764 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1764

def r1765 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1765 : ¬ Reader r1765 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1765

def r1766 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1766 : ¬ Reader r1766 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1766

def r1767 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1767 : ¬ Reader r1767 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1767

def r1768 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1768 : ¬ Reader r1768 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1768

def r1769 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1769 : ¬ Reader r1769 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1769

def r1770 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1770 : ¬ Reader r1770 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1770

def r1771 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1771 : ¬ Reader r1771 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1771

def r1772 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1772 : ¬ Reader r1772 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1772

def r1773 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1773 : ¬ Reader r1773 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1773

def r1774 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1774 : ¬ Reader r1774 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1774

def r1775 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1775 : ¬ Reader r1775 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1775

def r1776 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1776 : ¬ Reader r1776 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1776

def r1777 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1777 : ¬ Reader r1777 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1777

def r1778 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1778 : ¬ Reader r1778 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1778

def r1779 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1779 : ¬ Reader r1779 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1779

def r1780 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1780 : ¬ Reader r1780 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1780

def r1781 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1781 : ¬ Reader r1781 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1781

def r1782 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1782 : ¬ Reader r1782 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1782

def r1783 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1783 : ¬ Reader r1783 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1783

def r1784 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1784 : ¬ Reader r1784 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1784

def r1785 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1785 : ¬ Reader r1785 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1785

def r1786 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1786 : ¬ Reader r1786 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1786

def r1787 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1787 : ¬ Reader r1787 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1787

def r1788 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1788 : ¬ Reader r1788 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1788

def r1789 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1789 : ¬ Reader r1789 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1789

def r1790 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1790 : ¬ Reader r1790 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1790

def r1791 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1791 : ¬ Reader r1791 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1791

def r1793 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1793 : ¬ Reader r1793 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1793

def r1796 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1796 : ¬ Reader r1796 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1796

def r1797 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1797 : ¬ Reader r1797 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1797

def r1800 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject1800 : ¬ Reader r1800 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1800

def r1801 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject1801 : ¬ Reader r1801 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1801

def r1804 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1804 : ¬ Reader r1804 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1804

def r1805 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1805 : ¬ Reader r1805 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1805

def r1808 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.lam (.var 1)))))
theorem reject1808 : ¬ Reader r1808 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject1808

def r1809 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.var 1)) (.var 2))))
theorem reject1809 : ¬ Reader r1809 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1809

def r1818 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.lam (.lam (.var 0))))))
theorem reject1818 : ¬ Reader r1818 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject1818

def r1819 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.app (.var 0) (.var 0)))))
theorem reject1819 : ¬ Reader r1819 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1819

def r1820 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 0)))))
theorem reject1820 : ¬ Reader r1820 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1820

def r1821 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 2)))))
theorem reject1821 : ¬ Reader r1821 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1821

def r1822 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 0))))
theorem reject1822 : ¬ Reader r1822 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1822

def r1823 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0))))
theorem reject1823 : ¬ Reader r1823 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1823

def r1824 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.lam (.var 0))) (.var 2))))
theorem reject1824 : ¬ Reader r1824 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1824

def r1825 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject1825 : ¬ Reader r1825 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1825

def r1828 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1828 : ¬ Reader r1828 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1828

def r1829 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1829 : ¬ Reader r1829 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1829

def r1830 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1830 : ¬ Reader r1830 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1830

def r1831 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1831 : ¬ Reader r1831 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1831

def r1832 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject1832 : ¬ Reader r1832 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1832

def r1833 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject1833 : ¬ Reader r1833 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1833

def r1834 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.app (.var 2) (.var 1))))
theorem reject1834 : ¬ Reader r1834 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1834

def r1835 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.app (.var 1) (.var 2))))
theorem reject1835 : ¬ Reader r1835 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1835

def r1836 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1836 : ¬ Reader r1836 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1836

def r1837 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1837 : ¬ Reader r1837 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1837

def r1838 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1838 : ¬ Reader r1838 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1838

def r1839 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1839 : ¬ Reader r1839 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1839

def r1840 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1840 : ¬ Reader r1840 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1840

def r1841 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1841 : ¬ Reader r1841 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1841

def r1842 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1842 : ¬ Reader r1842 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1842

def r1843 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1843 : ¬ Reader r1843 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1843

def r1844 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1844 : ¬ Reader r1844 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1844

def r1845 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1845 : ¬ Reader r1845 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1845

def r1846 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1846 : ¬ Reader r1846 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1846

def r1847 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1847 : ¬ Reader r1847 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1847

def r1848 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject1848 : ¬ Reader r1848 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1848

def r1849 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject1849 : ¬ Reader r1849 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1849

def r1850 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1850 : ¬ Reader r1850 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1850

def r1851 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1851 : ¬ Reader r1851 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1851

def r1852 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1852 : ¬ Reader r1852 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1852

def r1853 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1853 : ¬ Reader r1853 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1853

def r1854 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject1854 : ¬ Reader r1854 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1854

def r1855 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject1855 : ¬ Reader r1855 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1855

def r1856 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject1856 : ¬ Reader r1856 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1856

def r1857 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.app (.var 2) (.var 0))))
theorem reject1857 : ¬ Reader r1857 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1857

def r1858 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.app (.var 0) (.var 2))))
theorem reject1858 : ¬ Reader r1858 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1858

def r1859 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.app (.var 2) (.var 1))))
theorem reject1859 : ¬ Reader r1859 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1859

def r1860 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.app (.var 1) (.var 2))))
theorem reject1860 : ¬ Reader r1860 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1860

def r1863 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1863 : ¬ Reader r1863 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1863

def r1864 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1864 : ¬ Reader r1864 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1864

def r1868 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))) (.var 2)))
theorem reject1868 : ¬ Reader r1868 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1868

def r1870 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1870 : ¬ Reader r1870 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1870

def r1872 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1872 : ¬ Reader r1872 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1872

def r1874 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1874 : ¬ Reader r1874 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1874

def r1876 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1876 : ¬ Reader r1876 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1876

def r1881 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.app (.var 2) (.var 0))))
theorem reject1881 : ¬ Reader r1881 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1881

def r1882 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.app (.var 0) (.var 2))))
theorem reject1882 : ¬ Reader r1882 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1882

def r1883 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.app (.var 2) (.var 0))))
theorem reject1883 : ¬ Reader r1883 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1883

def r1884 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.app (.var 0) (.var 2))))
theorem reject1884 : ¬ Reader r1884 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1884

def r1891 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1891 : ¬ Reader r1891 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1891

def r1892 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1892 : ¬ Reader r1892 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1892

def r1895 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1895 : ¬ Reader r1895 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1895

def r1896 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1896 : ¬ Reader r1896 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1896

def r1899 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1899 : ¬ Reader r1899 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1899

def r1900 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1900 : ¬ Reader r1900 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1900

def r1903 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 0))))
theorem reject1903 : ¬ Reader r1903 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1903

def r1904 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 2))))
theorem reject1904 : ¬ Reader r1904 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1904

def r1907 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 0))))
theorem reject1907 : ¬ Reader r1907 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1907

def r1908 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 2))))
theorem reject1908 : ¬ Reader r1908 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1908

def r1911 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1911 : ¬ Reader r1911 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1911

def r1912 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.var 0))) (.var 2)))
theorem reject1912 : ¬ Reader r1912 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1912

def r1914 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1914 : ¬ Reader r1914 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1914

def r1916 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 1))) (.var 2)))
theorem reject1916 : ¬ Reader r1916 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1916

def r1920 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 1))) (.var 2)))
theorem reject1920 : ¬ Reader r1920 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1920

def r1922 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject1922 : ¬ Reader r1922 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1922

def r1924 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1924 : ¬ Reader r1924 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1924

def r1926 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))) (.var 2)))
theorem reject1926 : ¬ Reader r1926 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1926

def r1928 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1928 : ¬ Reader r1928 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1928

def r1930 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject1930 : ¬ Reader r1930 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1930

def r1934 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.var 1))) (.var 2)))
theorem reject1934 : ¬ Reader r1934 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1934

def r1937 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1937 : ¬ Reader r1937 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1937

def r1938 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject1938 : ¬ Reader r1938 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1938

def r1939 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject1939 : ¬ Reader r1939 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1939

def r1941 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject1941 : ¬ Reader r1941 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1941

def r1943 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject1943 : ¬ Reader r1943 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1943

def r1944 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2))))) (.var 2)))
theorem reject1944 : ¬ Reader r1944 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1944

def r1945 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.var 0))) (.var 2)))
theorem reject1945 : ¬ Reader r1945 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1945

def r1947 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 1))) (.var 2)))
theorem reject1947 : ¬ Reader r1947 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1947

def r1949 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))) (.var 2)))
theorem reject1949 : ¬ Reader r1949 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1949

def r1952 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1952 : ¬ Reader r1952 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1952

def r1953 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.var 0)))) (.var 2)))
theorem reject1953 : ¬ Reader r1953 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1953

def r1955 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))) (.var 2)))
theorem reject1955 : ¬ Reader r1955 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1955

def r1956 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.var 2)))) (.var 2)))
theorem reject1956 : ¬ Reader r1956 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1956

def r1957 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 2)))) (.var 2)))
theorem reject1957 : ¬ Reader r1957 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1957

def r1958 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 2)))) (.var 2)))
theorem reject1958 : ¬ Reader r1958 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1958

def r1959 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 2))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1959 : ¬ Reader r1959 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1959

def r1960 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 2))))) (.var 2)))
theorem reject1960 : ¬ Reader r1960 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1960

def r1962 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 2) (.var 0))))) (.var 2)))
theorem reject1962 : ¬ Reader r1962 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1962

def r1964 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 2))))) (.var 2)))
theorem reject1964 : ¬ Reader r1964 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1964

def r1966 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 1))))) (.var 2)))
theorem reject1966 : ¬ Reader r1966 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1966

def r1967 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 1)) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1967 : ¬ Reader r1967 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1967

def r1968 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 1)) (.var 1)))) (.var 2)))
theorem reject1968 : ¬ Reader r1968 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1968

def r1970 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 0)))) (.var 2)))
theorem reject1970 : ¬ Reader r1970 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1970

def r1971 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3)))))) (.var 2)))
theorem reject1971 : ¬ Reader r1971 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1971

def r1972 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3)))) (.var 0))) (.var 2)))
theorem reject1972 : ¬ Reader r1972 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1972

def r1977 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))))) (.var 2)))
theorem reject1977 : ¬ Reader r1977 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1977

def r1978 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 0))) (.var 2)))
theorem reject1978 : ¬ Reader r1978 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1978

def r1979 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)))) (.var 2)))
theorem reject1979 : ¬ Reader r1979 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1979

def r1980 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0))) (.var 2)))
theorem reject1980 : ¬ Reader r1980 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1980

def r1987 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1)))) (.var 2)))
theorem reject1987 : ¬ Reader r1987 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1987

def r1988 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1988 : ¬ Reader r1988 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1988

def r1991 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)))) (.var 2)))
theorem reject1991 : ¬ Reader r1991 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1991

def r1992 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1992 : ¬ Reader r1992 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1992

def r1995 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)))) (.var 2)))
theorem reject1995 : ¬ Reader r1995 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1995

def r1996 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0))) (.var 2)))
theorem reject1996 : ¬ Reader r1996 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1996

def r1999 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))))) (.var 2)))
theorem reject1999 : ¬ Reader r1999 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1999

def r2000 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))) (.var 0))) (.var 2)))
theorem reject2000 : ¬ Reader r2000 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2000

def r2003 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))))) (.var 2)))
theorem reject2003 : ¬ Reader r2003 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2003

def r2004 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))) (.var 0))) (.var 2)))
theorem reject2004 : ¬ Reader r2004 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2004

def r2012 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 1))) (.var 2)))
theorem reject2012 : ¬ Reader r2012 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2012

def r2014 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) (.var 1))) (.var 2)))
theorem reject2014 : ¬ Reader r2014 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2014

def r2016 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject2016 : ¬ Reader r2016 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2016

def r2020 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject2020 : ¬ Reader r2020 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2020

def r2022 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2022 : ¬ Reader r2022 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2022

def r2024 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2024 : ¬ Reader r2024 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2024

def r2026 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject2026 : ¬ Reader r2026 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2026

def r2028 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2028 : ¬ Reader r2028 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2028

def r2030 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2030 : ¬ Reader r2030 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2030

def r2032 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2032 : ¬ Reader r2032 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2032

def r2034 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2034 : ¬ Reader r2034 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2034

def r2036 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1))) (.var 2)))
theorem reject2036 : ¬ Reader r2036 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2036

def r2038 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1))) (.var 2)))
theorem reject2038 : ¬ Reader r2038 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2038

def r2040 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))) (.var 2)))
theorem reject2040 : ¬ Reader r2040 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2040

def r2042 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.var 1))) (.var 2)))
theorem reject2042 : ¬ Reader r2042 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2042

def r2044 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.var 1)))) (.var 2)))
theorem reject2044 : ¬ Reader r2044 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2044

def r2046 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0))))) (.var 2)))
theorem reject2046 : ¬ Reader r2046 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2046

def r2048 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))) (.var 2)))
theorem reject2048 : ¬ Reader r2048 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2048

def r2049 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 2)))) (.var 2)))
theorem reject2049 : ¬ Reader r2049 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2049

def r2050 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.var 2)))) (.var 2)))
theorem reject2050 : ¬ Reader r2050 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2050

def r2052 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 2)))) (.var 2)))
theorem reject2052 : ¬ Reader r2052 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2052

def r2056 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2056 : ¬ Reader r2056 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2056

def r2058 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2058 : ¬ Reader r2058 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2058

def r2060 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2060 : ¬ Reader r2060 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2060

def r2064 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2064 : ¬ Reader r2064 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2064

def r2066 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2066 : ¬ Reader r2066 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2066

def r2068 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2068 : ¬ Reader r2068 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2068

def r2069 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.var 2))))) (.var 2)))
theorem reject2069 : ¬ Reader r2069 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2069

def r2070 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 2) (.var 1))))) (.var 2)))
theorem reject2070 : ¬ Reader r2070 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2070

def r2072 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.var 2))))) (.var 2)))
theorem reject2072 : ¬ Reader r2072 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2072

def r2074 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 1)))) (.var 2)))
theorem reject2074 : ¬ Reader r2074 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2074

def r2076 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 2)))
theorem reject2076 : ¬ Reader r2076 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2076

def r2078 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 2)))
theorem reject2078 : ¬ Reader r2078 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2078

def r2080 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject2080 : ¬ Reader r2080 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2080

def r2082 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 2)))
theorem reject2082 : ¬ Reader r2082 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2082

def r2084 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2)))
theorem reject2084 : ¬ Reader r2084 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2084

def r2086 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 2)))
theorem reject2086 : ¬ Reader r2086 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2086

def r2088 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 2)))
theorem reject2088 : ¬ Reader r2088 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2088

def r2089 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 0))) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2089 : ¬ Reader r2089 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2089

def r2090 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 0))) (.var 1)))) (.var 2)))
theorem reject2090 : ¬ Reader r2090 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2090

def r2091 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject2091 : ¬ Reader r2091 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2091

def r2092 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject2092 : ¬ Reader r2092 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2092

def r2093 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject2093 : ¬ Reader r2093 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2093

def r2094 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject2094 : ¬ Reader r2094 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2094

def r2095 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject2095 : ¬ Reader r2095 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2095

def r2096 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject2096 : ¬ Reader r2096 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2096

def r2097 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject2097 : ¬ Reader r2097 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2097

def r2098 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject2098 : ¬ Reader r2098 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2098

def r2100 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2100 : ¬ Reader r2100 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2100

def r2102 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2102 : ¬ Reader r2102 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2102

def r2105 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject2105 : ¬ Reader r2105 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject2105

def r2106 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject2106 : ¬ Reader r2106 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2106

def r2109 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject2109 : ¬ Reader r2109 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject2109

def r2110 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject2110 : ¬ Reader r2110 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2110

def r2111 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject2111 : ¬ Reader r2111 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2111

def r2112 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject2112 : ¬ Reader r2112 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2112

def r2115 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject2115 : ¬ Reader r2115 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2115

def r2116 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject2116 : ¬ Reader r2116 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2116

def r2120 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2120 : ¬ Reader r2120 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2120

def r2122 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2122 : ¬ Reader r2122 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2122

def r2124 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2124 : ¬ Reader r2124 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2124

def r2126 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2126 : ¬ Reader r2126 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2126

def r2128 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2128 : ¬ Reader r2128 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2128

def r2131 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject2131 : ¬ Reader r2131 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2131

def r2132 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject2132 : ¬ Reader r2132 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2132

def r2136 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2136 : ¬ Reader r2136 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2136

def r2138 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2138 : ¬ Reader r2138 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2138

def r2140 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2140 : ¬ Reader r2140 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2140

def r2142 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2142 : ¬ Reader r2142 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2142

def r2144 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2144 : ¬ Reader r2144 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2144

def r2146 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2146 : ¬ Reader r2146 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2146

def r2148 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2148 : ¬ Reader r2148 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2148

def r2150 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2150 : ¬ Reader r2150 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2150

def r2152 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2152 : ¬ Reader r2152 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2152

def r2154 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2154 : ¬ Reader r2154 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2154

def r2156 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2156 : ¬ Reader r2156 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2156

def r2158 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2158 : ¬ Reader r2158 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2158

def r2160 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2160 : ¬ Reader r2160 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2160

def r2162 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2162 : ¬ Reader r2162 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2162

def r2164 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2164 : ¬ Reader r2164 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2164

def r2166 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2166 : ¬ Reader r2166 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2166

def r2200 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject2200 : ¬ Reader r2200 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2200

def r2201 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject2201 : ¬ Reader r2201 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2201

def r2202 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject2202 : ¬ Reader r2202 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2202

def r2203 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject2203 : ¬ Reader r2203 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2203

def r2204 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject2204 : ¬ Reader r2204 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2204

def r2205 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject2205 : ¬ Reader r2205 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2205

def r2206 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject2206 : ¬ Reader r2206 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2206

def r2207 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject2207 : ¬ Reader r2207 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2207

def r2209 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2209 : ¬ Reader r2209 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2209

def r2211 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2211 : ¬ Reader r2211 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2211

def r2214 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject2214 : ¬ Reader r2214 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject2214

def r2215 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject2215 : ¬ Reader r2215 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2215

def r2218 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject2218 : ¬ Reader r2218 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject2218

def r2219 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject2219 : ¬ Reader r2219 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2219

def r2220 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.var 2)))) (.var 2)))
theorem reject2220 : ¬ Reader r2220 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2220

def r2221 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject2221 : ¬ Reader r2221 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2221

def r2224 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)))) (.var 2)))
theorem reject2224 : ¬ Reader r2224 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2224

def r2225 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject2225 : ¬ Reader r2225 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2225

def r2229 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2229 : ¬ Reader r2229 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2229

def r2231 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2231 : ¬ Reader r2231 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2231

def r2233 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2233 : ¬ Reader r2233 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2233

def r2235 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2235 : ¬ Reader r2235 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2235

def r2237 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2237 : ¬ Reader r2237 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2237

def r2240 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject2240 : ¬ Reader r2240 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2240

def r2241 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject2241 : ¬ Reader r2241 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2241

def r2245 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2245 : ¬ Reader r2245 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2245

def r2247 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2247 : ¬ Reader r2247 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2247

def r2249 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2249 : ¬ Reader r2249 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2249

def r2251 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2251 : ¬ Reader r2251 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2251

def r2253 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2253 : ¬ Reader r2253 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2253

def r2255 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2255 : ¬ Reader r2255 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2255

def r2257 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2257 : ¬ Reader r2257 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2257

def r2259 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2259 : ¬ Reader r2259 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2259

def r2261 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2261 : ¬ Reader r2261 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2261

def r2263 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2263 : ¬ Reader r2263 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2263

def r2265 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2265 : ¬ Reader r2265 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2265

def r2267 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2267 : ¬ Reader r2267 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2267

def r2269 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.var 2)))
theorem reject2269 : ¬ Reader r2269 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2269

def r2272 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 2)))) (.var 2)))
theorem reject2272 : ¬ Reader r2272 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2272

def r2274 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2274 : ¬ Reader r2274 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2274

def r2276 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2276 : ¬ Reader r2276 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2276

def r2278 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2278 : ¬ Reader r2278 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2278

def r2280 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))) (.var 2)))
theorem reject2280 : ¬ Reader r2280 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2280

def r2282 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2282 : ¬ Reader r2282 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2282

def r2284 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))) (.var 2)))
theorem reject2284 : ¬ Reader r2284 := by
  exact loop_reduct true 5 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2284

def r2290 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 1))) (.var 2)))
theorem reject2290 : ¬ Reader r2290 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2290

def r2292 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2292 : ¬ Reader r2292 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2292

def r2293 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject2293 : ¬ Reader r2293 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2293

def r2294 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.var 0))) (.var 2)))
theorem reject2294 : ¬ Reader r2294 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2294

def r2298 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.var 1))) (.var 2)))
theorem reject2298 : ¬ Reader r2298 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2298

def r2301 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject2301 : ¬ Reader r2301 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2301

def r2302 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.lam (.var 0)))) (.var 2)))
theorem reject2302 : ¬ Reader r2302 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2302

def r2308 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2308 : ¬ Reader r2308 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2308

def r2310 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1))) (.var 2)))
theorem reject2310 : ¬ Reader r2310 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2310

def r2314 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2314 : ¬ Reader r2314 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.var 1)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2314

def r2316 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 1))) (.var 2)))
theorem reject2316 : ¬ Reader r2316 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2316

def r2318 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2318 : ¬ Reader r2318 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2318

def r2320 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2320 : ¬ Reader r2320 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2320

def r2322 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2322 : ¬ Reader r2322 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2322

def r2324 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2324 : ¬ Reader r2324 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2324

def r2326 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2326 : ¬ Reader r2326 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2326

def r2327 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject2327 : ¬ Reader r2327 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2327

def r2328 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject2328 : ¬ Reader r2328 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2328

def r2329 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject2329 : ¬ Reader r2329 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2329

def r2330 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject2330 : ¬ Reader r2330 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2330

def r2332 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2332 : ¬ Reader r2332 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2332

def r2335 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject2335 : ¬ Reader r2335 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject2335

def r2336 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject2336 : ¬ Reader r2336 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2336

def r2339 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject2339 : ¬ Reader r2339 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2339

def r2340 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject2340 : ¬ Reader r2340 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2340

def r2343 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject2343 : ¬ Reader r2343 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject2343

def r2344 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject2344 : ¬ Reader r2344 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2344

def r2347 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject2347 : ¬ Reader r2347 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2347

def r2348 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject2348 : ¬ Reader r2348 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2348

def r2349 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 2)))) (.var 2)))
theorem reject2349 : ¬ Reader r2349 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2349

def r2352 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)))) (.var 2)))
theorem reject2352 : ¬ Reader r2352 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2352

def r2353 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject2353 : ¬ Reader r2353 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2353

def r2357 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject2357 : ¬ Reader r2357 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2357

def r2361 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2361 : ¬ Reader r2361 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2361

def r2363 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2363 : ¬ Reader r2363 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2363

def r2365 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2365 : ¬ Reader r2365 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2365

def r2367 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2367 : ¬ Reader r2367 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2367

def r2369 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2369 : ¬ Reader r2369 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2369

def r2372 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2))))) (.var 2)))
theorem reject2372 : ¬ Reader r2372 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2372

def r2373 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2))) (.var 0))) (.var 2)))
theorem reject2373 : ¬ Reader r2373 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2373

def r2377 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1))) (.var 2)))
theorem reject2377 : ¬ Reader r2377 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2377

def r2379 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2379 : ¬ Reader r2379 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2379

def r2381 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 1))) (.var 2)))
theorem reject2381 : ¬ Reader r2381 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2381

def r2385 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 1))) (.var 2)))
theorem reject2385 : ¬ Reader r2385 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2385

def r2387 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject2387 : ¬ Reader r2387 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2387

def r2390 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3)))))) (.var 2)))
theorem reject2390 : ¬ Reader r2390 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2390

def r2391 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3)))) (.var 0))) (.var 2)))
theorem reject2391 : ¬ Reader r2391 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2391

def r2393 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2393 : ¬ Reader r2393 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2393

def r2395 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 1))) (.var 2)))
theorem reject2395 : ¬ Reader r2395 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2395

def r2397 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2397 : ¬ Reader r2397 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2397

def r2399 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 1))) (.var 2)))
theorem reject2399 : ¬ Reader r2399 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2399

def r2401 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2401 : ¬ Reader r2401 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2401

def r2403 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 1))) (.var 2)))
theorem reject2403 : ¬ Reader r2403 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2403

def r2405 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2405 : ¬ Reader r2405 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2405

def r2407 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject2407 : ¬ Reader r2407 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2407

def r2411 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2))) (.var 1))) (.var 2)))
theorem reject2411 : ¬ Reader r2411 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2411

def r2414 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)))) (.var 2)))
theorem reject2414 : ¬ Reader r2414 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2414

def r2415 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject2415 : ¬ Reader r2415 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2415

def r2416 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject2416 : ¬ Reader r2416 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2416

def r2418 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject2418 : ¬ Reader r2418 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2418

def r2420 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject2420 : ¬ Reader r2420 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2420

def r2422 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2422 : ¬ Reader r2422 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2422

def r2424 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2424 : ¬ Reader r2424 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2424

def r2426 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2426 : ¬ Reader r2426 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2426

def r2430 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2430 : ¬ Reader r2430 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2430

def r2432 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2432 : ¬ Reader r2432 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2432

def r2434 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject2434 : ¬ Reader r2434 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2434

def r2438 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))) (.var 2)))
theorem reject2438 : ¬ Reader r2438 := by
  exact loop_reduct true 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2438

def r2440 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2440 : ¬ Reader r2440 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2440

def r2442 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))) (.var 2)))
theorem reject2442 : ¬ Reader r2442 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2442

def r2445 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 2) (.var 1))))
theorem reject2445 : ¬ Reader r2445 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject2445

def r2446 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 1) (.var 2))))
theorem reject2446 : ¬ Reader r2446 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2446

def r2453 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject2453 : ¬ Reader r2453 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject2453

def r2454 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject2454 : ¬ Reader r2454 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject2454

def r2458 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1)))) (.var 2)))
theorem reject2458 : ¬ Reader r2458 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2458

def r2459 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject2459 : ¬ Reader r2459 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2459

def r2463 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 1))) (.var 2)))
theorem reject2463 : ¬ Reader r2463 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2463

def r2467 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject2467 : ¬ Reader r2467 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2467

def r2471 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2471 : ¬ Reader r2471 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2471

def r2473 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))) (.var 2)))
theorem reject2473 : ¬ Reader r2473 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2473

def r2475 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2475 : ¬ Reader r2475 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2475

end Blc.FirstopNonlinear.Q1NestedLoop
