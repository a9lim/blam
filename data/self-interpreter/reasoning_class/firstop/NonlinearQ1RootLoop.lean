import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q1RootLoop
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r0 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject0 : ¬ Reader r0 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1 : ¬ Reader r1 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject2 : ¬ Reader r2 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject3 : ¬ Reader r3 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject4 : ¬ Reader r4 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject5 : ¬ Reader r5 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject6 : ¬ Reader r6 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject7 : ¬ Reader r7 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject8 : ¬ Reader r8 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject9 : ¬ Reader r9 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject10 : ¬ Reader r10 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject11 : ¬ Reader r11 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject12 : ¬ Reader r12 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject13 : ¬ Reader r13 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject14 : ¬ Reader r14 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject15 : ¬ Reader r15 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject16 : ¬ Reader r16 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject17 : ¬ Reader r17 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject18 : ¬ Reader r18 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject19 : ¬ Reader r19 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject19

def r20 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject20 : ¬ Reader r20 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject20

def r21 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject21 : ¬ Reader r21 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject21

def r22 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject22 : ¬ Reader r22 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject23 : ¬ Reader r23 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject24 : ¬ Reader r24 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject25 : ¬ Reader r25 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject26 : ¬ Reader r26 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject27 : ¬ Reader r27 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject28 : ¬ Reader r28 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject29 : ¬ Reader r29 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject29

def r30 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject30 : ¬ Reader r30 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject30

def r31 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject31 : ¬ Reader r31 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject31

def r32 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject32 : ¬ Reader r32 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject32

def r33 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject33 : ¬ Reader r33 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject33

def r34 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject34 : ¬ Reader r34 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject34

def r35 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject35 : ¬ Reader r35 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject35

def r36 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))
theorem reject36 : ¬ Reader r36 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject36

def r37 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))
theorem reject37 : ¬ Reader r37 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject37

def r38 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))
theorem reject38 : ¬ Reader r38 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject38

def r39 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))
theorem reject39 : ¬ Reader r39 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 1)) (.var 1)))))
theorem reject40 : ¬ Reader r40 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 2)) (.var 0)))))
theorem reject41 : ¬ Reader r41 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject41

def r42 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))
theorem reject42 : ¬ Reader r42 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject42

def r43 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.var 2)) (.var 2)))))
theorem reject43 : ¬ Reader r43 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 1)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject43

def r44 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))
theorem reject44 : ¬ Reader r44 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject44

def r45 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.var 1)) (.var 2)))))
theorem reject45 : ¬ Reader r45 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject45

def r46 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))
theorem reject46 : ¬ Reader r46 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject46

def r47 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))
theorem reject47 : ¬ Reader r47 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject47

def r48 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 1)) (.app (.var 2) (.var 1)))))
theorem reject48 : ¬ Reader r48 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject48

def r49 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 1)) (.app (.var 1) (.var 2)))))
theorem reject49 : ¬ Reader r49 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject49

def r50 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))
theorem reject50 : ¬ Reader r50 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject50

def r51 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))
theorem reject51 : ¬ Reader r51 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject51

def r52 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.app (.var 2) (.var 0)))))
theorem reject52 : ¬ Reader r52 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject52

def r53 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.app (.var 0) (.var 2)))))
theorem reject53 : ¬ Reader r53 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject53

def r54 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))
theorem reject54 : ¬ Reader r54 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject54

def r55 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 1)) (.var 2)) (.var 1))))
theorem reject55 : ¬ Reader r55 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject55

def r56 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))
theorem reject56 : ¬ Reader r56 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject56

def r57 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 2)) (.var 2)) (.var 0))))
theorem reject57 : ¬ Reader r57 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 1)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject57

def r58 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 2))) (.var 2))))
theorem reject58 : ¬ Reader r58 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 0) (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject58

def r59 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 2) (.var 0))) (.var 2))))
theorem reject59 : ¬ Reader r59 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 1) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject59

def r60 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))
theorem reject60 : ¬ Reader r60 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject60

def r61 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))
theorem reject61 : ¬ Reader r61 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject61

def r62 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 1)) (.var 1)) (.var 2))))
theorem reject62 : ¬ Reader r62 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject62

def r63 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 2)) (.var 0)) (.var 2))))
theorem reject63 : ¬ Reader r63 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject63

def r64 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))
theorem reject64 : ¬ Reader r64 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject64

def r65 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))
theorem reject65 : ¬ Reader r65 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject65

def r66 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))
theorem reject66 : ¬ Reader r66 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject66

def r67 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))
theorem reject67 : ¬ Reader r67 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject67

def r68 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0)))))))
theorem reject68 : ¬ Reader r68 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject68

def r69 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))
theorem reject69 : ¬ Reader r69 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject69

def r70 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))
theorem reject70 : ¬ Reader r70 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject70

def r71 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.lam (.var 0))) (.var 1)))))
theorem reject71 : ¬ Reader r71 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.lam (.var 0))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject71

def r72 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject72 : ¬ Reader r72 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject72

def r73 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 2)) (.var 1)))))
theorem reject73 : ¬ Reader r73 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject73

def r74 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject74 : ¬ Reader r74 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject74

def r75 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject75 : ¬ Reader r75 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject75

def r76 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))
theorem reject76 : ¬ Reader r76 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject76

def r77 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))
theorem reject77 : ¬ Reader r77 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject77

def r78 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))
theorem reject78 : ¬ Reader r78 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject78

def r79 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))
theorem reject79 : ¬ Reader r79 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject79

def r80 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))
theorem reject80 : ¬ Reader r80 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject80

def r81 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))
theorem reject81 : ¬ Reader r81 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject81

def r82 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))
theorem reject82 : ¬ Reader r82 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject82

def r83 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))
theorem reject83 : ¬ Reader r83 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject83

def r84 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))
theorem reject84 : ¬ Reader r84 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject84

def r85 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))
theorem reject85 : ¬ Reader r85 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject85

def r86 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))
theorem reject86 : ¬ Reader r86 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject86

def r87 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))
theorem reject87 : ¬ Reader r87 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject87

def r88 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0)))))))
theorem reject88 : ¬ Reader r88 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject88

def r89 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))
theorem reject89 : ¬ Reader r89 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject89

def r90 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))
theorem reject90 : ¬ Reader r90 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject90

def r91 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))
theorem reject91 : ¬ Reader r91 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject91

def r92 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))
theorem reject92 : ¬ Reader r92 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject92

def r93 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))
theorem reject93 : ¬ Reader r93 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject93

def r94 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.lam (.var 0))) (.var 2)))))
theorem reject94 : ¬ Reader r94 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.lam (.var 0))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject94

def r95 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))
theorem reject95 : ¬ Reader r95 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject95

def r96 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))
theorem reject96 : ¬ Reader r96 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject96

def r97 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.var 2)) (.var 2)))))
theorem reject97 : ¬ Reader r97 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 1)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject97

def r98 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))
theorem reject98 : ¬ Reader r98 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject98

def r99 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))
theorem reject99 : ¬ Reader r99 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject99

def r100 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject100 : ¬ Reader r100 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject100

def r101 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject101 : ¬ Reader r101 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject101

def r102 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0))))))
theorem reject102 : ¬ Reader r102 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject102

def r103 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))
theorem reject103 : ¬ Reader r103 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject103

def r104 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0))))))
theorem reject104 : ¬ Reader r104 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject104

def r105 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))
theorem reject105 : ¬ Reader r105 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject105

def r106 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))
theorem reject106 : ¬ Reader r106 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject106

def r107 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))
theorem reject107 : ¬ Reader r107 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject107

def r108 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 0))) (.app (.var 2) (.var 1)))))
theorem reject108 : ¬ Reader r108 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 0))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject108

def r109 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 0))) (.app (.var 1) (.var 2)))))
theorem reject109 : ¬ Reader r109 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 0))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject109

def r110 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject110 : ¬ Reader r110 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject110

def r111 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject111 : ¬ Reader r111 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject111

def r112 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.app (.var 2) (.var 1)))))
theorem reject112 : ¬ Reader r112 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject112

def r113 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.app (.var 1) (.var 2)))))
theorem reject113 : ¬ Reader r113 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject113

def r114 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))
theorem reject114 : ¬ Reader r114 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject114

def r115 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))
theorem reject115 : ¬ Reader r115 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject115

def r116 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))
theorem reject116 : ¬ Reader r116 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject116

def r117 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))
theorem reject117 : ¬ Reader r117 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject117

def r118 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1))))
theorem reject118 : ¬ Reader r118 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject118

def r119 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))
theorem reject119 : ¬ Reader r119 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject119

def r120 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))
theorem reject120 : ¬ Reader r120 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject120

def r121 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))
theorem reject121 : ¬ Reader r121 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject121

def r122 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))
theorem reject122 : ¬ Reader r122 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject122

def r123 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))
theorem reject123 : ¬ Reader r123 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject123

def r124 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.var 0))) (.var 2)) (.var 1))))
theorem reject124 : ¬ Reader r124 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.var 0))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject124

def r125 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject125 : ¬ Reader r125 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject125

def r126 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))
theorem reject126 : ¬ Reader r126 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject126

def r127 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 2)) (.var 2)) (.var 1))))
theorem reject127 : ¬ Reader r127 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 1)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject127

def r128 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))
theorem reject128 : ¬ Reader r128 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject128

def r129 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))
theorem reject129 : ¬ Reader r129 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject129

def r130 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))
theorem reject130 : ¬ Reader r130 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject130

def r131 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))
theorem reject131 : ¬ Reader r131 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject131

def r132 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))
theorem reject132 : ¬ Reader r132 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject132

def r133 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))
theorem reject133 : ¬ Reader r133 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject133

def r134 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))
theorem reject134 : ¬ Reader r134 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject134

def r135 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))
theorem reject135 : ¬ Reader r135 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject135

def r136 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))
theorem reject136 : ¬ Reader r136 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject136

def r137 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))
theorem reject137 : ¬ Reader r137 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject137

def r138 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))
theorem reject138 : ¬ Reader r138 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject138

def r139 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))
theorem reject139 : ¬ Reader r139 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject139

def r140 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 1) (.var 2))) (.var 2))))
theorem reject140 : ¬ Reader r140 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject140

def r141 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 2) (.var 1))) (.var 2))))
theorem reject141 : ¬ Reader r141 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject141

def r142 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))
theorem reject142 : ¬ Reader r142 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject142

def r143 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))
theorem reject143 : ¬ Reader r143 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject143

def r144 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2))))
theorem reject144 : ¬ Reader r144 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject144

def r145 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))
theorem reject145 : ¬ Reader r145 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject145

def r146 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))
theorem reject146 : ¬ Reader r146 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject146

def r147 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.var 0))) (.var 1)) (.var 2))))
theorem reject147 : ¬ Reader r147 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.var 0))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject147

def r148 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject148 : ¬ Reader r148 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject148

def r149 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 2)) (.var 1)) (.var 2))))
theorem reject149 : ¬ Reader r149 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 1)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject149

def r150 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))
theorem reject150 : ¬ Reader r150 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject150

def r151 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))
theorem reject151 : ¬ Reader r151 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject151

def r152 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.lam (.var 4)))))))
theorem reject152 : ¬ Reader r152 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.lam (.var 3)))))] (by decide) (by decide) (by decide)
#print axioms reject152

def r153 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.lam (.var 0)) (.var 2))))))
theorem reject153 : ¬ Reader r153 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.lam (.var 0)) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject153

def r154 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 0)))))))
theorem reject154 : ¬ Reader r154 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject154

def r155 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 2) (.var 2))))))
theorem reject155 : ¬ Reader r155 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.var 1) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject155

def r156 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject156 : ¬ Reader r156 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject156

def r157 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 1)))))))
theorem reject157 : ¬ Reader r157 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1)))))] (by decide) (by decide) (by decide)
#print axioms reject157

def r158 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject158 : ¬ Reader r158 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject158

def r159 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject159 : ¬ Reader r159 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject159

def r160 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 0)) (.lam (.var 2))))))
theorem reject160 : ¬ Reader r160 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject160

def r161 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 2)) (.lam (.var 0))))))
theorem reject161 : ¬ Reader r161 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 1)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject161

def r162 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.lam (.var 1))) (.var 1)))))
theorem reject162 : ¬ Reader r162 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.lam (.var 1))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject162

def r163 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject163 : ¬ Reader r163 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject163

def r164 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject164 : ¬ Reader r164 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject164

def r165 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject165 : ¬ Reader r165 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject165

def r166 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))
theorem reject166 : ¬ Reader r166 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.var 0) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject166

def r167 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))
theorem reject167 : ¬ Reader r167 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject167

def r168 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))
theorem reject168 : ¬ Reader r168 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject168

def r169 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))
theorem reject169 : ¬ Reader r169 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject169

def r170 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))
theorem reject170 : ¬ Reader r170 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject170

def r171 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))
theorem reject171 : ¬ Reader r171 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject171

def r172 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 1)))))))
theorem reject172 : ¬ Reader r172 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1)))))] (by decide) (by decide) (by decide)
#print axioms reject172

def r173 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.lam (.var 1))) (.var 2)))))
theorem reject173 : ¬ Reader r173 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject173

def r174 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))
theorem reject174 : ¬ Reader r174 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject174

def r175 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))
theorem reject175 : ¬ Reader r175 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject175

def r176 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))
theorem reject176 : ¬ Reader r176 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject176

def r177 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))
theorem reject177 : ¬ Reader r177 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject177

def r178 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))
theorem reject178 : ¬ Reader r178 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject178

def r179 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))
theorem reject179 : ¬ Reader r179 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject179

def r180 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))
theorem reject180 : ¬ Reader r180 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject180

def r181 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))
theorem reject181 : ¬ Reader r181 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject181

def r182 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))
theorem reject182 : ¬ Reader r182 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject182

def r183 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))
theorem reject183 : ¬ Reader r183 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject183

def r184 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))
theorem reject184 : ¬ Reader r184 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject184

def r185 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))
theorem reject185 : ¬ Reader r185 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject185

def r186 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 2) (.lam (.var 2))))))
theorem reject186 : ¬ Reader r186 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject186

def r187 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.lam (.var 2)) (.var 2)))))
theorem reject187 : ¬ Reader r187 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.lam (.var 1)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject187

def r188 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject188 : ¬ Reader r188 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject188

def r189 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject189 : ¬ Reader r189 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject189

def r190 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 1))))))
theorem reject190 : ¬ Reader r190 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject190

def r191 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 1))))))
theorem reject191 : ¬ Reader r191 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject191

def r192 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject192 : ¬ Reader r192 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject192

def r193 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject193 : ¬ Reader r193 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject193

def r194 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject194 : ¬ Reader r194 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject194

def r195 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject195 : ¬ Reader r195 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject195

def r196 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.app (.var 2) (.lam (.var 0))))))
theorem reject196 : ¬ Reader r196 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject196

def r197 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.app (.lam (.var 0)) (.var 2)))))
theorem reject197 : ¬ Reader r197 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject197

def r198 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 2)))))
theorem reject198 : ¬ Reader r198 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject198

def r199 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 2)) (.lam (.var 2)))))
theorem reject199 : ¬ Reader r199 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject199

def r200 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 1))) (.app (.var 2) (.var 1)))))
theorem reject200 : ¬ Reader r200 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 1))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject200

def r201 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 1))) (.app (.var 1) (.var 2)))))
theorem reject201 : ¬ Reader r201 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 1))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject201

def r202 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))
theorem reject202 : ¬ Reader r202 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject202

def r203 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))
theorem reject203 : ¬ Reader r203 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject203

def r204 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject204 : ¬ Reader r204 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject204

def r205 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject205 : ¬ Reader r205 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject205

def r206 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))
theorem reject206 : ¬ Reader r206 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject206

def r207 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))
theorem reject207 : ¬ Reader r207 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject207

def r208 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 0)))))
theorem reject208 : ¬ Reader r208 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject208

def r209 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 2)) (.var 2)) (.lam (.var 0)))))
theorem reject209 : ¬ Reader r209 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 1)) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject209

def r210 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 1))))
theorem reject210 : ¬ Reader r210 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject210

def r211 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))))
theorem reject211 : ¬ Reader r211 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.var 1))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject211

def r212 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject212 : ¬ Reader r212 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject212

def r213 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject213 : ¬ Reader r213 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject213

def r214 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))
theorem reject214 : ¬ Reader r214 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject214

def r215 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))
theorem reject215 : ¬ Reader r215 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject215

def r216 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))
theorem reject216 : ¬ Reader r216 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject216

def r217 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))
theorem reject217 : ¬ Reader r217 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject217

def r218 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))
theorem reject218 : ¬ Reader r218 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject218

def r219 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))
theorem reject219 : ¬ Reader r219 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject219

def r220 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))
theorem reject220 : ¬ Reader r220 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject220

def r221 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))
theorem reject221 : ¬ Reader r221 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject221

def r222 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))
theorem reject222 : ¬ Reader r222 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject222

def r223 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))
theorem reject223 : ¬ Reader r223 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject223

def r224 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject224 : ¬ Reader r224 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject224

def r225 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))
theorem reject225 : ¬ Reader r225 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject225

def r226 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))
theorem reject226 : ¬ Reader r226 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject226

def r227 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))
theorem reject227 : ¬ Reader r227 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject227

def r228 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))
theorem reject228 : ¬ Reader r228 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject228

def r229 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))
theorem reject229 : ¬ Reader r229 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject229

def r230 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.lam (.var 4)))) (.var 2))))
theorem reject230 : ¬ Reader r230 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.lam (.var 3)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject230

def r231 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.var 0)) (.var 2))) (.var 2))))
theorem reject231 : ¬ Reader r231 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.lam (.var 0)) (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject231

def r232 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 2) (.lam (.var 0)))) (.var 2))))
theorem reject232 : ¬ Reader r232 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 1) (.lam (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject232

def r233 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 2) (.var 2))) (.var 2))))
theorem reject233 : ¬ Reader r233 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 1) (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject233

def r234 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))
theorem reject234 : ¬ Reader r234 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject234

def r235 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))))
theorem reject235 : ¬ Reader r235 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject235

def r236 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))
theorem reject236 : ¬ Reader r236 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject236

def r237 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))
theorem reject237 : ¬ Reader r237 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject237

def r238 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.lam (.var 2))) (.var 2))))
theorem reject238 : ¬ Reader r238 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject238

def r239 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 2)) (.lam (.var 0))) (.var 2))))
theorem reject239 : ¬ Reader r239 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 1)) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject239

def r240 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.var 1))) (.var 1)) (.var 2))))
theorem reject240 : ¬ Reader r240 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.var 1))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject240

def r241 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))
theorem reject241 : ¬ Reader r241 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject241

def r242 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))
theorem reject242 : ¬ Reader r242 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject242

def r243 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))
theorem reject243 : ¬ Reader r243 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject243

def r244 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 3)))))))
theorem reject244 : ¬ Reader r244 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2)))))] (by decide) (by decide) (by decide)
#print axioms reject244

def r245 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.app (.var 3) (.var 0)))))))
theorem reject245 : ¬ Reader r245 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.app (.var 2) (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject245

def r246 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 3)))))))
theorem reject246 : ¬ Reader r246 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2)))))] (by decide) (by decide) (by decide)
#print axioms reject246

def r247 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 1)))))))
theorem reject247 : ¬ Reader r247 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1)))))] (by decide) (by decide) (by decide)
#print axioms reject247

def r248 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.lam (.var 1)) (.var 2))))))
theorem reject248 : ¬ Reader r248 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.lam (.var 1)) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject248

def r249 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.app (.lam (.var 3)) (.var 0))))))
theorem reject249 : ¬ Reader r249 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.lam (.var 2)) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject249

def r250 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3)))))))
theorem reject250 : ¬ Reader r250 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))))] (by decide) (by decide) (by decide)
#print axioms reject250

def r251 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))
theorem reject251 : ¬ Reader r251 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject251

def r252 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.app (.lam (.var 0)) (.var 1))))))
theorem reject252 : ¬ Reader r252 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 0)) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject252

def r253 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2)))))))
theorem reject253 : ¬ Reader r253 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))] (by decide) (by decide) (by decide)
#print axioms reject253

def r254 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))))
theorem reject254 : ¬ Reader r254 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))] (by decide) (by decide) (by decide)
#print axioms reject254

def r255 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))
theorem reject255 : ¬ Reader r255 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject255

def r256 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))
theorem reject256 : ¬ Reader r256 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject256

def r257 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.app (.lam (.var 0)) (.var 0))))))
theorem reject257 : ¬ Reader r257 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject257

def r258 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject258 : ¬ Reader r258 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject258

def r259 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 0)) (.app (.var 0) (.var 1))))))
theorem reject259 : ¬ Reader r259 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject259

def r260 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 0)) (.app (.var 1) (.var 0))))))
theorem reject260 : ¬ Reader r260 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject260

def r261 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 1)) (.lam (.var 2))))))
theorem reject261 : ¬ Reader r261 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject261

def r262 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 2)) (.lam (.var 1))))))
theorem reject262 : ¬ Reader r262 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject262

def r263 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))
theorem reject263 : ¬ Reader r263 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject263

def r264 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))
theorem reject264 : ¬ Reader r264 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject264

def r265 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.lam (.var 2))) (.var 1)))))
theorem reject265 : ¬ Reader r265 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject265

def r266 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.lam (.lam (.var 0)))) (.var 1)))))
theorem reject266 : ¬ Reader r266 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.lam (.lam (.var 0)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject266

def r267 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))
theorem reject267 : ¬ Reader r267 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject267

def r268 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))
theorem reject268 : ¬ Reader r268 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject268

def r269 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.lam (.var 0)) (.var 0)) (.var 1)))))
theorem reject269 : ¬ Reader r269 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject269

def r270 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject270 : ¬ Reader r270 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject270

def r271 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.lam (.var 3))) (.var 0)))))
theorem reject271 : ¬ Reader r271 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.lam (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject271

def r272 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))
theorem reject272 : ¬ Reader r272 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject272

def r273 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.app (.lam (.var 0)) (.var 1)) (.var 0)))))
theorem reject273 : ¬ Reader r273 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.app (.lam (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject273

def r274 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))
theorem reject274 : ¬ Reader r274 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.lam (.var 2)))))] (by decide) (by decide) (by decide)
#print axioms reject274

def r275 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))
theorem reject275 : ¬ Reader r275 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject275

def r276 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.app (.lam (.var 0)) (.var 1))))))
theorem reject276 : ¬ Reader r276 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.lam (.var 0)) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject276

def r277 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))
theorem reject277 : ¬ Reader r277 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject277

def r278 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.var 2))))))
theorem reject278 : ¬ Reader r278 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.lam (.var 0)) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject278

def r279 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 2) (.var 1))))))
theorem reject279 : ¬ Reader r279 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 0)) (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject279

def r280 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.var 2))))))
theorem reject280 : ¬ Reader r280 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 0)) (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject280

def r281 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))
theorem reject281 : ¬ Reader r281 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject281

def r282 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))
theorem reject282 : ¬ Reader r282 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject282

def r283 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))
theorem reject283 : ¬ Reader r283 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject283

def r284 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1)))))
theorem reject284 : ¬ Reader r284 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject284

def r285 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.var 3))) (.var 2)))))
theorem reject285 : ¬ Reader r285 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.lam (.var 2))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject285

def r286 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))
theorem reject286 : ¬ Reader r286 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject286

def r287 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2)))))
theorem reject287 : ¬ Reader r287 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.var 0)) (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject287

def r288 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2)))))))
theorem reject288 : ¬ Reader r288 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))] (by decide) (by decide) (by decide)
#print axioms reject288

def r289 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))))
theorem reject289 : ¬ Reader r289 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))] (by decide) (by decide) (by decide)
#print axioms reject289

def r290 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))
theorem reject290 : ¬ Reader r290 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject290

def r291 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))
theorem reject291 : ¬ Reader r291 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject291

def r292 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.app (.lam (.var 0)) (.var 0))))))
theorem reject292 : ¬ Reader r292 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject292

def r293 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))
theorem reject293 : ¬ Reader r293 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject293

def r294 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.app (.lam (.var 0)) (.var 2))))))
theorem reject294 : ¬ Reader r294 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 0)) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject294

def r295 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.var 0)) (.app (.var 2) (.var 0))))))
theorem reject295 : ¬ Reader r295 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject295

def r296 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.var 0)) (.app (.var 0) (.var 2))))))
theorem reject296 : ¬ Reader r296 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject296

def r297 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))
theorem reject297 : ¬ Reader r297 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject297

def r298 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))
theorem reject298 : ¬ Reader r298 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject298

def r299 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))
theorem reject299 : ¬ Reader r299 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject299

def r300 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.lam (.var 0)) (.var 2)) (.var 0)))))
theorem reject300 : ¬ Reader r300 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject300

def r301 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.lam (.var 2))) (.var 2)))))
theorem reject301 : ¬ Reader r301 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject301

def r302 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.lam (.lam (.var 0)))) (.var 2)))))
theorem reject302 : ¬ Reader r302 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.lam (.lam (.var 0)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject302

def r303 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 2)))))
theorem reject303 : ¬ Reader r303 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject303

def r304 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))))
theorem reject304 : ¬ Reader r304 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject304

def r305 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.lam (.var 0)) (.var 0)) (.var 2)))))
theorem reject305 : ¬ Reader r305 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject305

def r306 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1))))))
theorem reject306 : ¬ Reader r306 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject306

def r307 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1))))))
theorem reject307 : ¬ Reader r307 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject307

def r308 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2))))))
theorem reject308 : ¬ Reader r308 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject308

def r309 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1)))))
theorem reject309 : ¬ Reader r309 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject309

def r310 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1)))))
theorem reject310 : ¬ Reader r310 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject310

def r311 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))))
theorem reject311 : ¬ Reader r311 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject311

def r312 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))))
theorem reject312 : ¬ Reader r312 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject312

def r313 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))))
theorem reject313 : ¬ Reader r313 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject313

def r314 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))))
theorem reject314 : ¬ Reader r314 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject314

def r315 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))))
theorem reject315 : ¬ Reader r315 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject315

def r316 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))))
theorem reject316 : ¬ Reader r316 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject316

def r317 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))))
theorem reject317 : ¬ Reader r317 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject317

def r318 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))))
theorem reject318 : ¬ Reader r318 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject318

def r319 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))))
theorem reject319 : ¬ Reader r319 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject319

def r320 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))))
theorem reject320 : ¬ Reader r320 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject320

def r321 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))))
theorem reject321 : ¬ Reader r321 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject321

def r322 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))))
theorem reject322 : ¬ Reader r322 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject322

def r323 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))))
theorem reject323 : ¬ Reader r323 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject323

def r324 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3))))))
theorem reject324 : ¬ Reader r324 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject324

def r325 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0))))))
theorem reject325 : ¬ Reader r325 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject325

def r326 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.app (.lam (.var 0)) (.var 1)))))
theorem reject326 : ¬ Reader r326 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject326

def r327 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3))))))
theorem reject327 : ¬ Reader r327 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject327

def r328 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem reject328 : ¬ Reader r328 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject328

def r329 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.app (.lam (.var 0)) (.var 1)))))
theorem reject329 : ¬ Reader r329 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject329

def r330 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 1)) (.app (.var 2) (.lam (.var 2))))))
theorem reject330 : ¬ Reader r330 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 1) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject330

def r331 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 1)) (.app (.lam (.var 2)) (.var 2)))))
theorem reject331 : ¬ Reader r331 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.lam (.var 1)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject331

def r332 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))
theorem reject332 : ¬ Reader r332 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject332

def r333 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.lam (.var 0)))))))
theorem reject333 : ¬ Reader r333 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject333

def r334 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0))))))
theorem reject334 : ¬ Reader r334 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject334

def r335 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))
theorem reject335 : ¬ Reader r335 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject335

def r336 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.lam (.var 0)) (.var 0)))))
theorem reject336 : ¬ Reader r336 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject336

def r337 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))
theorem reject337 : ¬ Reader r337 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))] (by decide) (by decide) (by decide)
#print axioms reject337

def r338 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.lam (.var 0)))))))
theorem reject338 : ¬ Reader r338 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject338

def r339 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0))))))
theorem reject339 : ¬ Reader r339 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject339

def r340 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))
theorem reject340 : ¬ Reader r340 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject340

def r341 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.lam (.var 0)) (.var 0)))))
theorem reject341 : ¬ Reader r341 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject341

def r342 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject342 : ¬ Reader r342 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject342

def r343 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject343 : ¬ Reader r343 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject343

def r344 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.app (.var 2) (.lam (.var 1))))))
theorem reject344 : ¬ Reader r344 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject344

def r345 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.app (.lam (.var 1)) (.var 2)))))
theorem reject345 : ¬ Reader r345 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject345

def r346 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1)))))
theorem reject346 : ¬ Reader r346 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject346

def r347 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0)))))
theorem reject347 : ¬ Reader r347 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject347

def r348 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject348 : ¬ Reader r348 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject348

def r349 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject349 : ¬ Reader r349 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject349

def r350 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0))))))
theorem reject350 : ¬ Reader r350 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject350

def r351 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.app (.lam (.var 0)) (.var 2)))))
theorem reject351 : ¬ Reader r351 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject351

def r352 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0))))))
theorem reject352 : ¬ Reader r352 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject352

def r353 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.app (.lam (.var 0)) (.var 2)))))
theorem reject353 : ¬ Reader r353 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject353

def r354 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2)))))
theorem reject354 : ¬ Reader r354 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 1)) (.var 2)) (.lam (.var 2)))))
theorem reject355 : ¬ Reader r355 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 2))) (.app (.var 2) (.var 1)))))
theorem reject356 : ¬ Reader r356 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 2))) (.app (.var 1) (.var 2)))))
theorem reject357 : ¬ Reader r357 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject357

def r358 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.lam (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject358 : ¬ Reader r358 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject358

def r359 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.lam (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject359 : ¬ Reader r359 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject359

def r360 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))
theorem reject360 : ¬ Reader r360 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject360

def r361 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))
theorem reject361 : ¬ Reader r361 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject361

def r362 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))
theorem reject362 : ¬ Reader r362 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject362

def r363 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))
theorem reject363 : ¬ Reader r363 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject363

def r364 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject364 : ¬ Reader r364 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject364

def r365 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject365 : ¬ Reader r365 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject365

def r366 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))
theorem reject366 : ¬ Reader r366 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject366

def r367 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))
theorem reject367 : ¬ Reader r367 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject367

def r368 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))
theorem reject368 : ¬ Reader r368 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject368

def r369 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 2)) (.var 2)) (.lam (.var 1)))))
theorem reject369 : ¬ Reader r369 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 1)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject369

def r370 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 3))) (.app (.var 2) (.var 0)))))
theorem reject370 : ¬ Reader r370 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject370

def r371 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 3))) (.app (.var 0) (.var 2)))))
theorem reject371 : ¬ Reader r371 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject371

def r372 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0)))))
theorem reject372 : ¬ Reader r372 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject372

def r373 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2)))))
theorem reject373 : ¬ Reader r373 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject373

def r374 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))))
theorem reject374 : ¬ Reader r374 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject374

def r375 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))
theorem reject375 : ¬ Reader r375 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject375

def r376 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0)))))
theorem reject376 : ¬ Reader r376 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject376

def r377 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0)))))
theorem reject377 : ¬ Reader r377 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject377

def r378 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))
theorem reject378 : ¬ Reader r378 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject378

def r379 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))
theorem reject379 : ¬ Reader r379 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject379

def r380 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0)))))
theorem reject380 : ¬ Reader r380 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject380

def r381 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0)))))
theorem reject381 : ¬ Reader r381 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject381

def r382 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0)))))
theorem reject382 : ¬ Reader r382 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject382

def r383 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem reject383 : ¬ Reader r383 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject383

def r384 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))
theorem reject384 : ¬ Reader r384 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject384

def r385 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))
theorem reject385 : ¬ Reader r385 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject385

def r386 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0)))))
theorem reject386 : ¬ Reader r386 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject386

def r387 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0)))))
theorem reject387 : ¬ Reader r387 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject387

def r388 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1))))
theorem reject388 : ¬ Reader r388 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject388

def r389 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 1))))
theorem reject389 : ¬ Reader r389 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject389

def r390 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1))))
theorem reject390 : ¬ Reader r390 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject390

def r391 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1))))
theorem reject391 : ¬ Reader r391 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject391

def r392 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.lam (.var 0)) (.var 0))) (.var 1))))
theorem reject392 : ¬ Reader r392 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject392

def r393 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1))))
theorem reject393 : ¬ Reader r393 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 0)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject393

def r394 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.lam (.var 0)) (.var 2))) (.var 1))))
theorem reject394 : ¬ Reader r394 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 0)) (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject394

def r395 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))
theorem reject395 : ¬ Reader r395 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject395

def r396 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.app (.var 0) (.var 2))) (.var 1))))
theorem reject396 : ¬ Reader r396 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject396

def r397 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1))))
theorem reject397 : ¬ Reader r397 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject397

def r398 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem reject398 : ¬ Reader r398 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject398

def r399 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1))))
theorem reject399 : ¬ Reader r399 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject399

def r400 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.var 0)) (.var 2)) (.var 0)) (.var 1))))
theorem reject400 : ¬ Reader r400 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject400

def r401 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.var 2))) (.var 2)) (.var 1))))
theorem reject401 : ¬ Reader r401 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject401

def r402 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.lam (.var 0)))) (.var 2)) (.var 1))))
theorem reject402 : ¬ Reader r402 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.lam (.var 0)))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject402

def r403 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 2)) (.var 1))))
theorem reject403 : ¬ Reader r403 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject403

def r404 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1))))
theorem reject404 : ¬ Reader r404 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject404

def r405 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.var 0)) (.var 0)) (.var 2)) (.var 1))))
theorem reject405 : ¬ Reader r405 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject405

def r406 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject406 : ¬ Reader r406 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject406

def r407 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1))))
theorem reject407 : ¬ Reader r407 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject407

def r408 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1))))
theorem reject408 : ¬ Reader r408 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject408

def r409 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1))))
theorem reject409 : ¬ Reader r409 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject409

def r410 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1))))
theorem reject410 : ¬ Reader r410 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject410

def r411 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))
theorem reject411 : ¬ Reader r411 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject411

def r412 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))
theorem reject412 : ¬ Reader r412 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject412

def r413 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))
theorem reject413 : ¬ Reader r413 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject413

def r414 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.app (.lam (.var 0)) (.var 1))) (.var 0))))
theorem reject414 : ¬ Reader r414 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.app (.lam (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject414

def r415 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))
theorem reject415 : ¬ Reader r415 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject415

def r416 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.lam (.var 0)) (.var 2))) (.var 0))))
theorem reject416 : ¬ Reader r416 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.lam (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject416

def r417 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.app (.var 2) (.var 1))) (.var 0))))
theorem reject417 : ¬ Reader r417 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject417

def r418 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.app (.var 1) (.var 2))) (.var 0))))
theorem reject418 : ¬ Reader r418 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject418

def r419 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))
theorem reject419 : ¬ Reader r419 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject419

def r420 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))
theorem reject420 : ¬ Reader r420 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject420

def r421 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))
theorem reject421 : ¬ Reader r421 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject421

def r422 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.var 0)) (.var 2)) (.var 1)) (.var 0))))
theorem reject422 : ¬ Reader r422 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject422

def r423 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.var 3))) (.var 2)) (.var 0))))
theorem reject423 : ¬ Reader r423 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.var 2))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject423

def r424 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))
theorem reject424 : ¬ Reader r424 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject424

def r425 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.var 0)) (.var 1)) (.var 2)) (.var 0))))
theorem reject425 : ¬ Reader r425 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject425

def r426 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 3)))) (.var 2))))
theorem reject426 : ¬ Reader r426 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.var 0) (.var 2)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject426

def r427 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 3) (.var 0)))) (.var 2))))
theorem reject427 : ¬ Reader r427 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.var 2) (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject427

def r428 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.var 3)))) (.var 2))))
theorem reject428 : ¬ Reader r428 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 0) (.lam (.var 2)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject428

def r429 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 2) (.lam (.var 1)))) (.var 2))))
theorem reject429 : ¬ Reader r429 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 1) (.lam (.var 1)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject429

def r430 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.var 1)) (.var 2))) (.var 2))))
theorem reject430 : ¬ Reader r430 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.lam (.var 1)) (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject430

def r431 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.var 3)) (.var 0))) (.var 2))))
theorem reject431 : ¬ Reader r431 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.lam (.var 2)) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject431

def r432 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2))))
theorem reject432 : ¬ Reader r432 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 2)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject432

def r433 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2))))
theorem reject433 : ¬ Reader r433 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject433

def r434 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.lam (.var 0)) (.var 1))) (.var 2))))
theorem reject434 : ¬ Reader r434 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 0)) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject434

def r435 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2))))
theorem reject435 : ¬ Reader r435 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject435

def r436 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 2))))
theorem reject436 : ¬ Reader r436 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject436

def r437 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2))))
theorem reject437 : ¬ Reader r437 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject437

def r438 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2))))
theorem reject438 : ¬ Reader r438 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject438

def r439 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.lam (.var 0)) (.var 0))) (.var 2))))
theorem reject439 : ¬ Reader r439 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject439

def r440 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))))
theorem reject440 : ¬ Reader r440 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject440

def r441 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.app (.var 0) (.var 1))) (.var 2))))
theorem reject441 : ¬ Reader r441 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject441

def r442 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))
theorem reject442 : ¬ Reader r442 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject442

def r443 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 1)) (.lam (.var 2))) (.var 2))))
theorem reject443 : ¬ Reader r443 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject443

def r444 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 2)) (.lam (.var 1))) (.var 2))))
theorem reject444 : ¬ Reader r444 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject444

def r445 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2))))
theorem reject445 : ¬ Reader r445 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject445

def r446 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2))))
theorem reject446 : ¬ Reader r446 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject446

def r447 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.var 2))) (.var 1)) (.var 2))))
theorem reject447 : ¬ Reader r447 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject447

def r448 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.lam (.var 0)))) (.var 1)) (.var 2))))
theorem reject448 : ¬ Reader r448 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.lam (.var 0)))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject448

def r449 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 2))))
theorem reject449 : ¬ Reader r449 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject449

def r450 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2))))
theorem reject450 : ¬ Reader r450 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject450

def r451 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.var 0)) (.var 0)) (.var 1)) (.var 2))))
theorem reject451 : ¬ Reader r451 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject451

def r452 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))
theorem reject452 : ¬ Reader r452 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject452

def r453 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.var 3))) (.var 0)) (.var 2))))
theorem reject453 : ¬ Reader r453 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.lam (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject453

def r454 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2))))
theorem reject454 : ¬ Reader r454 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject454

def r455 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.var 0)) (.var 1)) (.var 0)) (.var 2))))
theorem reject455 : ¬ Reader r455 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.app (.lam (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject455

def r456 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject456 : ¬ Reader r456 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject456

def r457 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject457 : ¬ Reader r457 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject457

def r458 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject458 : ¬ Reader r458 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject458

def r459 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject459 : ¬ Reader r459 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject459

def r460 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject460 : ¬ Reader r460 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject460

def r461 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject461 : ¬ Reader r461 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject461

def r462 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject462 : ¬ Reader r462 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject462

def r463 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject463 : ¬ Reader r463 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject463

def r464 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject464 : ¬ Reader r464 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject464

def r465 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject465 : ¬ Reader r465 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject465

def r466 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject466 : ¬ Reader r466 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject466

def r467 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject467 : ¬ Reader r467 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject467

def r468 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject468 : ¬ Reader r468 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject468

def r469 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject469 : ¬ Reader r469 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject469

def r470 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject470 : ¬ Reader r470 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject470

def r471 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject471 : ¬ Reader r471 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject471

def r472 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject472 : ¬ Reader r472 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject472

def r473 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject473 : ¬ Reader r473 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject473

def r474 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject474 : ¬ Reader r474 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject474

def r475 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject475 : ¬ Reader r475 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject475

def r476 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject476 : ¬ Reader r476 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject476

def r477 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject477 : ¬ Reader r477 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject477

def r478 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject478 : ¬ Reader r478 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject478

def r479 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject479 : ¬ Reader r479 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject479

def r480 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject480 : ¬ Reader r480 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject480

def r481 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject481 : ¬ Reader r481 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject481

def r482 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject482 : ¬ Reader r482 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject482

def r483 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject483 : ¬ Reader r483 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject483

def r484 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject484 : ¬ Reader r484 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject484

def r485 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject485 : ¬ Reader r485 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject485

def r486 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject486 : ¬ Reader r486 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject486

def r487 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject487 : ¬ Reader r487 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject487

def r488 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject488 : ¬ Reader r488 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject488

def r489 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject489 : ¬ Reader r489 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject489

def r490 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject490 : ¬ Reader r490 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject490

def r491 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject491 : ¬ Reader r491 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject491

def r492 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject492 : ¬ Reader r492 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject492

def r493 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject493 : ¬ Reader r493 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject493

def r494 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject494 : ¬ Reader r494 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject494

def r495 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject495 : ¬ Reader r495 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject495

def r496 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject496 : ¬ Reader r496 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject496

def r497 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject497 : ¬ Reader r497 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject497

def r498 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject498 : ¬ Reader r498 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject498

def r499 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject499 : ¬ Reader r499 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject499

def r500 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject500 : ¬ Reader r500 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject500

def r501 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject501 : ¬ Reader r501 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject501

def r502 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject502 : ¬ Reader r502 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject502

def r503 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject503 : ¬ Reader r503 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject503

def r504 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject504 : ¬ Reader r504 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject504

def r505 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject505 : ¬ Reader r505 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject505

def r506 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject506 : ¬ Reader r506 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject506

def r507 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject507 : ¬ Reader r507 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject507

def r508 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject508 : ¬ Reader r508 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject508

def r509 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject509 : ¬ Reader r509 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject509

def r510 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject510 : ¬ Reader r510 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject510

def r511 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject511 : ¬ Reader r511 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject511

def r512 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject512 : ¬ Reader r512 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject512

def r513 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject513 : ¬ Reader r513 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject513

def r514 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject514 : ¬ Reader r514 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject514

def r515 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject515 : ¬ Reader r515 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject515

def r516 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject516 : ¬ Reader r516 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject516

def r517 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject517 : ¬ Reader r517 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject517

def r518 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject518 : ¬ Reader r518 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject518

def r519 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject519 : ¬ Reader r519 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject519

def r520 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject520 : ¬ Reader r520 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject520

def r521 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject521 : ¬ Reader r521 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject521

def r522 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject522 : ¬ Reader r522 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject522

def r523 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject523 : ¬ Reader r523 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject523

def r524 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject524 : ¬ Reader r524 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject524

def r525 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject525 : ¬ Reader r525 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject525

def r526 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject526 : ¬ Reader r526 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject526

def r527 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject527 : ¬ Reader r527 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject527

def r528 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject528 : ¬ Reader r528 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject528

def r529 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject529 : ¬ Reader r529 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject529

def r530 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject530 : ¬ Reader r530 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject530

def r531 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject531 : ¬ Reader r531 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject531

def r532 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject532 : ¬ Reader r532 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject532

def r533 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject533 : ¬ Reader r533 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject533

def r534 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject534 : ¬ Reader r534 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject534

def r535 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject535 : ¬ Reader r535 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject535

def r536 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject536 : ¬ Reader r536 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject536

def r537 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject537 : ¬ Reader r537 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject537

def r538 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject538 : ¬ Reader r538 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject538

def r539 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject539 : ¬ Reader r539 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject539

def r540 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject540 : ¬ Reader r540 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject540

def r541 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject541 : ¬ Reader r541 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject541

def r542 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject542 : ¬ Reader r542 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject542

def r543 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject543 : ¬ Reader r543 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject543

def r544 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject544 : ¬ Reader r544 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject544

def r545 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject545 : ¬ Reader r545 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject545

def r546 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject546 : ¬ Reader r546 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject546

def r547 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject547 : ¬ Reader r547 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject547

def r548 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject548 : ¬ Reader r548 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject548

def r549 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject549 : ¬ Reader r549 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject549

def r550 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject550 : ¬ Reader r550 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject550

def r551 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject551 : ¬ Reader r551 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject551

def r552 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject552 : ¬ Reader r552 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject552

def r553 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject553 : ¬ Reader r553 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject553

def r554 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject554 : ¬ Reader r554 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject554

def r555 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject555 : ¬ Reader r555 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject555

def r556 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject556 : ¬ Reader r556 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject556

def r557 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject557 : ¬ Reader r557 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject557

def r558 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject558 : ¬ Reader r558 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject558

def r559 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject559 : ¬ Reader r559 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject559

def r560 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject560 : ¬ Reader r560 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject560

def r561 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject561 : ¬ Reader r561 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject561

def r562 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject562 : ¬ Reader r562 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject562

def r563 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject563 : ¬ Reader r563 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject563

def r564 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject564 : ¬ Reader r564 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject564

def r565 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject565 : ¬ Reader r565 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject565

def r566 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject566 : ¬ Reader r566 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject566

def r567 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject567 : ¬ Reader r567 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject567

def r568 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject568 : ¬ Reader r568 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject568

def r569 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject569 : ¬ Reader r569 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject569

def r570 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject570 : ¬ Reader r570 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject570

def r571 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject571 : ¬ Reader r571 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject571

def r572 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject572 : ¬ Reader r572 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject572

def r573 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject573 : ¬ Reader r573 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject573

def r574 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject574 : ¬ Reader r574 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject574

def r575 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject575 : ¬ Reader r575 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject575

def r576 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject576 : ¬ Reader r576 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject576

def r577 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject577 : ¬ Reader r577 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject577

def r578 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject578 : ¬ Reader r578 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject578

def r579 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject579 : ¬ Reader r579 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject579

def r580 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject580 : ¬ Reader r580 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject580

def r581 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject581 : ¬ Reader r581 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject581

def r582 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject582 : ¬ Reader r582 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject582

def r583 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject583 : ¬ Reader r583 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject583

def r584 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject584 : ¬ Reader r584 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject584

def r585 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject585 : ¬ Reader r585 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject585

def r586 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject586 : ¬ Reader r586 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject586

def r587 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject587 : ¬ Reader r587 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject587

def r588 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject588 : ¬ Reader r588 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject588

def r589 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject589 : ¬ Reader r589 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject589

def r590 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject590 : ¬ Reader r590 := by
  exact loop_reduct true 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject590

def r591 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject591 : ¬ Reader r591 := by
  exact loop_reduct true 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject591

def r592 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject592 : ¬ Reader r592 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject592

def r593 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject593 : ¬ Reader r593 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject593

def r594 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject594 : ¬ Reader r594 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject594

def r595 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject595 : ¬ Reader r595 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject595

def r596 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject596 : ¬ Reader r596 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject596

def r597 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject597 : ¬ Reader r597 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject597

def r598 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject598 : ¬ Reader r598 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject598

def r599 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject599 : ¬ Reader r599 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject599

def r600 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject600 : ¬ Reader r600 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject600

def r601 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject601 : ¬ Reader r601 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject601

def r602 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject602 : ¬ Reader r602 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject602

def r603 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject603 : ¬ Reader r603 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject603

def r604 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject604 : ¬ Reader r604 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject604

def r606 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject606 : ¬ Reader r606 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject606

def r607 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject607 : ¬ Reader r607 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject607

def r609 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject609 : ¬ Reader r609 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject609

def r610 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject610 : ¬ Reader r610 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject610

def r611 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject611 : ¬ Reader r611 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject611

def r612 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject612 : ¬ Reader r612 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject612

def r613 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject613 : ¬ Reader r613 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject613

def r616 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject616 : ¬ Reader r616 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject616

def r617 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject617 : ¬ Reader r617 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject617

def r618 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject618 : ¬ Reader r618 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject618

def r619 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject619 : ¬ Reader r619 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject619

def r622 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject622 : ¬ Reader r622 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject622

def r623 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject623 : ¬ Reader r623 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject623

def r624 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject624 : ¬ Reader r624 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject624

def r625 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject625 : ¬ Reader r625 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject625

def r626 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject626 : ¬ Reader r626 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject626

def r627 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject627 : ¬ Reader r627 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject627

def r628 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject628 : ¬ Reader r628 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject628

def r629 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject629 : ¬ Reader r629 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject629

def r632 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject632 : ¬ Reader r632 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject632

def r633 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject633 : ¬ Reader r633 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject633

def r634 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject634 : ¬ Reader r634 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject634

def r635 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject635 : ¬ Reader r635 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject635

def r638 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject638 : ¬ Reader r638 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject638

def r639 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject639 : ¬ Reader r639 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject639

def r640 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject640 : ¬ Reader r640 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject640

def r641 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject641 : ¬ Reader r641 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject641

def r642 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject642 : ¬ Reader r642 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject642

def r643 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject643 : ¬ Reader r643 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject643

def r644 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject644 : ¬ Reader r644 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject644

def r645 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject645 : ¬ Reader r645 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject645

def r646 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject646 : ¬ Reader r646 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject646

def r647 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject647 : ¬ Reader r647 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject647

def r648 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject648 : ¬ Reader r648 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject648

def r649 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject649 : ¬ Reader r649 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject649

def r650 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject650 : ¬ Reader r650 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject650

def r651 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject651 : ¬ Reader r651 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject651

def r652 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject652 : ¬ Reader r652 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject652

def r653 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject653 : ¬ Reader r653 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject653

def r654 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject654 : ¬ Reader r654 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject654

def r655 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject655 : ¬ Reader r655 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject655

def r656 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject656 : ¬ Reader r656 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject656

def r657 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject657 : ¬ Reader r657 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject657

def r658 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject658 : ¬ Reader r658 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject658

def r659 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject659 : ¬ Reader r659 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject659

def r660 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject660 : ¬ Reader r660 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject660

def r661 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 3))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject661 : ¬ Reader r661 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject661

def r662 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 3)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject662 : ¬ Reader r662 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject662

def r663 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 3)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject663 : ¬ Reader r663 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject663

def r665 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject665 : ¬ Reader r665 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject665

def r666 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject666 : ¬ Reader r666 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject666

def r667 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject667 : ¬ Reader r667 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject667

def r668 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject668 : ¬ Reader r668 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject668

def r669 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject669 : ¬ Reader r669 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject669

def r670 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject670 : ¬ Reader r670 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject670

def r671 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 3))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject671 : ¬ Reader r671 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject671

def r672 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject672 : ¬ Reader r672 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject672

def r673 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject673 : ¬ Reader r673 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject673

def r675 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject675 : ¬ Reader r675 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject675

def r676 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject676 : ¬ Reader r676 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject676

def r678 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject678 : ¬ Reader r678 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject678

def r679 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject679 : ¬ Reader r679 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject679

def r680 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject680 : ¬ Reader r680 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject680

def r685 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject685 : ¬ Reader r685 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject685

def r686 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject686 : ¬ Reader r686 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject686

def r687 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject687 : ¬ Reader r687 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject687

def r688 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject688 : ¬ Reader r688 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject688

def r689 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject689 : ¬ Reader r689 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject689

def r690 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject690 : ¬ Reader r690 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject690

def r693 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject693 : ¬ Reader r693 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject693

def r694 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject694 : ¬ Reader r694 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject694

def r695 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject695 : ¬ Reader r695 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject695

def r696 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject696 : ¬ Reader r696 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject696

def r699 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject699 : ¬ Reader r699 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject699

def r701 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject701 : ¬ Reader r701 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject701

def r702 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject702 : ¬ Reader r702 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject702

def r703 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject703 : ¬ Reader r703 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject703

def r704 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject704 : ¬ Reader r704 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject704

def r705 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject705 : ¬ Reader r705 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject705

def r706 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject706 : ¬ Reader r706 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject706

def r708 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject708 : ¬ Reader r708 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject708

def r709 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject709 : ¬ Reader r709 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject709

def r711 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject711 : ¬ Reader r711 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject711

def r712 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject712 : ¬ Reader r712 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject712

def r713 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject713 : ¬ Reader r713 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject713

def r716 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject716 : ¬ Reader r716 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject716

def r717 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject717 : ¬ Reader r717 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject717

def r719 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject719 : ¬ Reader r719 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject719

def r720 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject720 : ¬ Reader r720 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject720

def r721 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject721 : ¬ Reader r721 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject721

def r722 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject722 : ¬ Reader r722 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject722

def r723 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject723 : ¬ Reader r723 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject723

def r726 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject726 : ¬ Reader r726 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject726

def r727 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject727 : ¬ Reader r727 := by
  exact loop_reduct true 3 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject727

def r732 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject732 : ¬ Reader r732 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject732

def r733 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject733 : ¬ Reader r733 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject733

def r734 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject734 : ¬ Reader r734 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject734

def r735 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject735 : ¬ Reader r735 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject735

def r736 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject736 : ¬ Reader r736 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject736

def r737 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject737 : ¬ Reader r737 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject737

def r738 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject738 : ¬ Reader r738 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject738

def r739 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject739 : ¬ Reader r739 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject739

def r740 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject740 : ¬ Reader r740 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject740

def r741 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject741 : ¬ Reader r741 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject741

def r742 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject742 : ¬ Reader r742 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject742

def r743 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject743 : ¬ Reader r743 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject743

def r746 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject746 : ¬ Reader r746 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject746

def r747 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject747 : ¬ Reader r747 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject747

def r748 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject748 : ¬ Reader r748 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject748

def r749 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject749 : ¬ Reader r749 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject749

def r750 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject750 : ¬ Reader r750 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject750

def r751 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject751 : ¬ Reader r751 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject751

def r752 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject752 : ¬ Reader r752 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject752

def r753 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject753 : ¬ Reader r753 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject753

def r758 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject758 : ¬ Reader r758 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject758

def r759 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject759 : ¬ Reader r759 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject759

def r760 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject760 : ¬ Reader r760 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject760

def r761 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject761 : ¬ Reader r761 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject761

def r762 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject762 : ¬ Reader r762 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject762

def r763 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject763 : ¬ Reader r763 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject763

def r764 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject764 : ¬ Reader r764 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject764

def r765 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject765 : ¬ Reader r765 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject765

def r767 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject767 : ¬ Reader r767 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject767

def r768 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject768 : ¬ Reader r768 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject768

def r770 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject770 : ¬ Reader r770 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject770

def r771 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject771 : ¬ Reader r771 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject771

def r772 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject772 : ¬ Reader r772 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject772

def r773 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject773 : ¬ Reader r773 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject773

def r774 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject774 : ¬ Reader r774 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject774

def r775 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject775 : ¬ Reader r775 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject775

def r776 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject776 : ¬ Reader r776 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject776

def r777 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject777 : ¬ Reader r777 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject777

def r779 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject779 : ¬ Reader r779 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject779

def r780 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject780 : ¬ Reader r780 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject780

def r782 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject782 : ¬ Reader r782 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject782

def r783 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject783 : ¬ Reader r783 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject783

def r784 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject784 : ¬ Reader r784 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject784

def r789 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject789 : ¬ Reader r789 := by
  exact loop_reduct true 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject789

def r793 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject793 : ¬ Reader r793 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject793

def r794 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject794 : ¬ Reader r794 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject794

def r798 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject798 : ¬ Reader r798 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject798

def r799 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject799 : ¬ Reader r799 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject799

def r800 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject800 : ¬ Reader r800 := by
  exact loop_reduct true 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject800

def r801 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject801 : ¬ Reader r801 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject801

def r802 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject802 : ¬ Reader r802 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject802

def r805 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject805 : ¬ Reader r805 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject805

def r806 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject806 : ¬ Reader r806 := by
  exact loop_reduct true 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject806

def r807 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject807 : ¬ Reader r807 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject807

def r808 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject808 : ¬ Reader r808 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject808

def r809 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject809 : ¬ Reader r809 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject809

def r810 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject810 : ¬ Reader r810 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject810

def r811 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject811 : ¬ Reader r811 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject811

def r812 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject812 : ¬ Reader r812 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject812

def r813 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject813 : ¬ Reader r813 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject813

def r814 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject814 : ¬ Reader r814 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject814

def r815 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject815 : ¬ Reader r815 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject815

def r816 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 3))))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject816 : ¬ Reader r816 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject816

def r817 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject817 : ¬ Reader r817 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject817

def r818 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject818 : ¬ Reader r818 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject818

def r819 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject819 : ¬ Reader r819 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject819

def r887 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject887 : ¬ Reader r887 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject887

def r888 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject888 : ¬ Reader r888 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject888

def r889 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject889 : ¬ Reader r889 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject889

def r890 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject890 : ¬ Reader r890 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject890

def r891 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject891 : ¬ Reader r891 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject891

def r892 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject892 : ¬ Reader r892 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject892

def r893 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject893 : ¬ Reader r893 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject893

def r894 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject894 : ¬ Reader r894 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject894

def r895 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject895 : ¬ Reader r895 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject895

def r896 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject896 : ¬ Reader r896 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject896

def r897 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject897 : ¬ Reader r897 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject897

def r898 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject898 : ¬ Reader r898 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject898

def r899 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject899 : ¬ Reader r899 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject899

def r900 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject900 : ¬ Reader r900 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject900

def r901 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject901 : ¬ Reader r901 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject901

def r902 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject902 : ¬ Reader r902 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject902

def r903 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject903 : ¬ Reader r903 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject903

def r904 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject904 : ¬ Reader r904 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject904

def r905 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject905 : ¬ Reader r905 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject905

def r906 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject906 : ¬ Reader r906 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject906

def r907 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject907 : ¬ Reader r907 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject907

def r908 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject908 : ¬ Reader r908 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject908

def r909 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject909 : ¬ Reader r909 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject909

def r910 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject910 : ¬ Reader r910 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject910

def r911 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject911 : ¬ Reader r911 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject911

def r912 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject912 : ¬ Reader r912 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject912

def r913 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject913 : ¬ Reader r913 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject913

def r914 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject914 : ¬ Reader r914 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject914

def r915 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject915 : ¬ Reader r915 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject915

def r916 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject916 : ¬ Reader r916 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject916

def r917 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject917 : ¬ Reader r917 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject917

def r918 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject918 : ¬ Reader r918 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject918

def r919 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject919 : ¬ Reader r919 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject919

def r920 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject920 : ¬ Reader r920 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject920

def r921 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject921 : ¬ Reader r921 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject921

def r922 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject922 : ¬ Reader r922 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject922

def r923 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject923 : ¬ Reader r923 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject923

def r924 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject924 : ¬ Reader r924 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject924

def r925 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject925 : ¬ Reader r925 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject925

def r926 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject926 : ¬ Reader r926 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject926

def r927 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject927 : ¬ Reader r927 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject927

def r928 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject928 : ¬ Reader r928 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject928

def r929 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject929 : ¬ Reader r929 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject929

def r930 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject930 : ¬ Reader r930 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject930

def r931 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject931 : ¬ Reader r931 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject931

def r932 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject932 : ¬ Reader r932 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject932

def r933 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject933 : ¬ Reader r933 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject933

def r934 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject934 : ¬ Reader r934 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject934

def r935 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject935 : ¬ Reader r935 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject935

def r936 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject936 : ¬ Reader r936 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject936

def r937 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject937 : ¬ Reader r937 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject937

def r938 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject938 : ¬ Reader r938 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject938

def r939 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject939 : ¬ Reader r939 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject939

def r940 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject940 : ¬ Reader r940 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject940

def r941 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject941 : ¬ Reader r941 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject941

def r942 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject942 : ¬ Reader r942 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject942

def r943 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject943 : ¬ Reader r943 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject943

def r944 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject944 : ¬ Reader r944 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject944

def r945 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject945 : ¬ Reader r945 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject945

def r946 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject946 : ¬ Reader r946 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject946

def r947 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject947 : ¬ Reader r947 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject947

def r948 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject948 : ¬ Reader r948 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject948

def r949 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject949 : ¬ Reader r949 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject949

def r950 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject950 : ¬ Reader r950 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject950

def r951 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject951 : ¬ Reader r951 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject951

def r952 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject952 : ¬ Reader r952 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject952

def r953 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject953 : ¬ Reader r953 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject953

def r954 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject954 : ¬ Reader r954 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject954

def r955 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject955 : ¬ Reader r955 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject955

def r956 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject956 : ¬ Reader r956 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 2))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject956

def r957 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject957 : ¬ Reader r957 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject957

def r958 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject958 : ¬ Reader r958 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject958

def r959 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject959 : ¬ Reader r959 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject959

def r960 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject960 : ¬ Reader r960 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject960

def r961 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject961 : ¬ Reader r961 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject961

def r962 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject962 : ¬ Reader r962 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject962

def r963 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject963 : ¬ Reader r963 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject963

def r964 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject964 : ¬ Reader r964 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject964

def r965 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject965 : ¬ Reader r965 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject965

def r966 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject966 : ¬ Reader r966 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject966

def r967 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject967 : ¬ Reader r967 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject967

def r968 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject968 : ¬ Reader r968 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject968

def r969 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject969 : ¬ Reader r969 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject969

def r970 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject970 : ¬ Reader r970 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject970

def r971 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject971 : ¬ Reader r971 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject971

def r972 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject972 : ¬ Reader r972 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject972

def r973 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject973 : ¬ Reader r973 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject973

def r974 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject974 : ¬ Reader r974 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject974

def r975 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject975 : ¬ Reader r975 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject975

def r976 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject976 : ¬ Reader r976 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject976

def r977 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject977 : ¬ Reader r977 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject977

def r978 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject978 : ¬ Reader r978 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject978

def r979 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject979 : ¬ Reader r979 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject979

def r980 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject980 : ¬ Reader r980 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject980

def r981 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject981 : ¬ Reader r981 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject981

def r982 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject982 : ¬ Reader r982 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject982

def r983 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject983 : ¬ Reader r983 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject983

def r984 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject984 : ¬ Reader r984 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject984

def r985 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject985 : ¬ Reader r985 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject985

def r986 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject986 : ¬ Reader r986 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject986

def r987 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject987 : ¬ Reader r987 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject987

def r988 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject988 : ¬ Reader r988 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject988

def r989 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject989 : ¬ Reader r989 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject989

def r990 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject990 : ¬ Reader r990 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject990

def r991 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject991 : ¬ Reader r991 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject991

def r992 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject992 : ¬ Reader r992 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject992

def r993 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject993 : ¬ Reader r993 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject993

def r994 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject994 : ¬ Reader r994 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject994

def r995 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject995 : ¬ Reader r995 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject995

def r996 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject996 : ¬ Reader r996 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject996

def r998 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject998 : ¬ Reader r998 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject998

def r999 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject999 : ¬ Reader r999 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject999

def r1001 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1001 : ¬ Reader r1001 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1001

def r1002 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1002 : ¬ Reader r1002 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1002

def r1003 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1003 : ¬ Reader r1003 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1003

def r1004 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1004 : ¬ Reader r1004 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1004

def r1006 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1006 : ¬ Reader r1006 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1006

def r1007 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1007 : ¬ Reader r1007 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1007

def r1009 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1009 : ¬ Reader r1009 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1009

def r1010 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1010 : ¬ Reader r1010 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1010

def r1011 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1011 : ¬ Reader r1011 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1011

def r1012 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1012 : ¬ Reader r1012 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1012

def r1013 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1013 : ¬ Reader r1013 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1013

def r1014 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1014 : ¬ Reader r1014 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1014

def r1015 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1015 : ¬ Reader r1015 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1015

def r1016 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1016 : ¬ Reader r1016 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1016

def r1017 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1017 : ¬ Reader r1017 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1017

def r1018 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1018 : ¬ Reader r1018 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1018

def r1019 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1019 : ¬ Reader r1019 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1019

def r1020 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1020 : ¬ Reader r1020 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1020

def r1023 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1023 : ¬ Reader r1023 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1023

def r1024 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1024 : ¬ Reader r1024 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1024

def r1027 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1027 : ¬ Reader r1027 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1027

def r1028 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1028 : ¬ Reader r1028 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1028

def r1029 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1029 : ¬ Reader r1029 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1029

def r1030 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1030 : ¬ Reader r1030 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1030

def r1031 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1031 : ¬ Reader r1031 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1031

def r1032 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1032 : ¬ Reader r1032 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1032

def r1033 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1033 : ¬ Reader r1033 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1033

def r1034 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1034 : ¬ Reader r1034 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1034

def r1035 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1035 : ¬ Reader r1035 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1035

def r1036 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1036 : ¬ Reader r1036 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1036

def r1037 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1037 : ¬ Reader r1037 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1037

def r1038 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1038 : ¬ Reader r1038 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1038

def r1039 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1039 : ¬ Reader r1039 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1039

def r1040 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1040 : ¬ Reader r1040 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1040

def r1041 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1041 : ¬ Reader r1041 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1041

def r1042 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1042 : ¬ Reader r1042 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1042

def r1043 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1043 : ¬ Reader r1043 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1043

def r1044 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1044 : ¬ Reader r1044 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1044

def r1045 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1045 : ¬ Reader r1045 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1045

def r1046 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1046 : ¬ Reader r1046 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1046

def r1047 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1047 : ¬ Reader r1047 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1047

def r1048 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1048 : ¬ Reader r1048 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1048

def r1049 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1049 : ¬ Reader r1049 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1049

def r1050 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1050 : ¬ Reader r1050 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1050

def r1051 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1051 : ¬ Reader r1051 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1051

def r1052 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1052 : ¬ Reader r1052 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1052

def r1053 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1053 : ¬ Reader r1053 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1053

def r1054 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1054 : ¬ Reader r1054 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1054

def r1055 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1055 : ¬ Reader r1055 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1055

def r1056 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1056 : ¬ Reader r1056 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1056

def r1057 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1057 : ¬ Reader r1057 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1057

def r1058 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1058 : ¬ Reader r1058 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1058

def r1059 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1059 : ¬ Reader r1059 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1059

def r1060 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject1060 : ¬ Reader r1060 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1060

def r1061 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject1061 : ¬ Reader r1061 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1061

def r1062 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject1062 : ¬ Reader r1062 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1062

def r1063 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject1063 : ¬ Reader r1063 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1063

def r1064 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject1064 : ¬ Reader r1064 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1064

def r1065 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject1065 : ¬ Reader r1065 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1065

def r1066 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject1066 : ¬ Reader r1066 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1066

def r1067 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject1067 : ¬ Reader r1067 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1067

def r1068 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject1068 : ¬ Reader r1068 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1068

def r1069 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject1069 : ¬ Reader r1069 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1069

def r1070 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject1070 : ¬ Reader r1070 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1070

def r1071 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject1071 : ¬ Reader r1071 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1071

def r1072 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1072 : ¬ Reader r1072 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1072

def r1073 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1073 : ¬ Reader r1073 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1073

def r1074 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1074 : ¬ Reader r1074 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1074

def r1075 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1075 : ¬ Reader r1075 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1075

def r1076 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1076 : ¬ Reader r1076 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1076

def r1077 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1077 : ¬ Reader r1077 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1077

def r1078 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1078 : ¬ Reader r1078 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1078

def r1079 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1079 : ¬ Reader r1079 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1079

def r1080 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1080 : ¬ Reader r1080 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1080

def r1081 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1081 : ¬ Reader r1081 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1081

def r1082 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1082 : ¬ Reader r1082 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1082

def r1083 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1083 : ¬ Reader r1083 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1083

def r1084 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1084 : ¬ Reader r1084 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1084

def r1085 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1085 : ¬ Reader r1085 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1085

def r1086 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1086 : ¬ Reader r1086 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1086

def r1087 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1087 : ¬ Reader r1087 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1087

def r1088 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1088 : ¬ Reader r1088 := by
  exact loop_reduct true 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1088

def r1089 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1089 : ¬ Reader r1089 := by
  exact loop_reduct true 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1089

def r1090 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1090 : ¬ Reader r1090 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1090

def r1091 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1091 : ¬ Reader r1091 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1091

def r1092 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 2) (.var 0))))
theorem reject1092 : ¬ Reader r1092 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1092

def r1093 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.var 2))))
theorem reject1093 : ¬ Reader r1093 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1093

def r1094 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1094 : ¬ Reader r1094 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1094

def r1095 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1095 : ¬ Reader r1095 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1095

def r1096 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1096 : ¬ Reader r1096 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1096

def r1097 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1097 : ¬ Reader r1097 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1097

def r1098 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 2)))
theorem reject1098 : ¬ Reader r1098 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1098

def r1099 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1099 : ¬ Reader r1099 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1099

def r1101 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1101 : ¬ Reader r1101 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1101

def r1102 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1102 : ¬ Reader r1102 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1102

def r1104 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1104 : ¬ Reader r1104 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1104

def r1105 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1105 : ¬ Reader r1105 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1105

def r1106 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1106 : ¬ Reader r1106 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1106

def r1107 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1107 : ¬ Reader r1107 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1107

def r1109 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1109 : ¬ Reader r1109 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1109

def r1110 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1110 : ¬ Reader r1110 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1110

def r1112 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1112 : ¬ Reader r1112 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1112

def r1113 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1113 : ¬ Reader r1113 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1113

def r1114 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1114 : ¬ Reader r1114 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1114

def r1115 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1115 : ¬ Reader r1115 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1115

def r1116 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1116 : ¬ Reader r1116 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1116

def r1117 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1117 : ¬ Reader r1117 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1117

def r1118 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1118 : ¬ Reader r1118 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1118

def r1119 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1119 : ¬ Reader r1119 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1119

def r1120 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1120 : ¬ Reader r1120 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1120

def r1121 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1121 : ¬ Reader r1121 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1121

def r1122 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1122 : ¬ Reader r1122 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1122

def r1123 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1123 : ¬ Reader r1123 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1123

def r1124 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1124 : ¬ Reader r1124 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1124

def r1125 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1125 : ¬ Reader r1125 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1125

def r1126 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1126 : ¬ Reader r1126 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1126

def r1127 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1127 : ¬ Reader r1127 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1127

def r1128 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1128 : ¬ Reader r1128 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1128

def r1129 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1129 : ¬ Reader r1129 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1129

def r1130 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1130 : ¬ Reader r1130 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1130

def r1131 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1131 : ¬ Reader r1131 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1131

def r1132 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1132 : ¬ Reader r1132 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1132

def r1133 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1133 : ¬ Reader r1133 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1133

def r1134 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1134 : ¬ Reader r1134 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1134

def r1135 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1135 : ¬ Reader r1135 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1135

def r1136 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1136 : ¬ Reader r1136 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1136

def r1137 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1137 : ¬ Reader r1137 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1137

def r1138 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1138 : ¬ Reader r1138 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1138

def r1139 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1139 : ¬ Reader r1139 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1139

def r1140 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1140 : ¬ Reader r1140 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1140

def r1141 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1141 : ¬ Reader r1141 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1141

def r1142 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1142 : ¬ Reader r1142 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1142

def r1143 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1143 : ¬ Reader r1143 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1143

def r1144 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1144 : ¬ Reader r1144 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1144

def r1145 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1145 : ¬ Reader r1145 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1145

def r1146 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1146 : ¬ Reader r1146 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1146

def r1147 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1147 : ¬ Reader r1147 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1147

def r1148 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1148 : ¬ Reader r1148 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1148

def r1149 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1149 : ¬ Reader r1149 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1149

def r1150 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1150 : ¬ Reader r1150 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1150

def r1151 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1151 : ¬ Reader r1151 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1151

def r1152 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1152 : ¬ Reader r1152 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1152

def r1153 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1153 : ¬ Reader r1153 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1153

def r1154 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1154 : ¬ Reader r1154 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1154

def r1155 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1155 : ¬ Reader r1155 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1155

def r1156 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1156 : ¬ Reader r1156 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1156

def r1157 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1157 : ¬ Reader r1157 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1157

def r1158 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1158 : ¬ Reader r1158 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1158

def r1159 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1159 : ¬ Reader r1159 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1159

def r1160 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1160 : ¬ Reader r1160 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1160

def r1161 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 2)))
theorem reject1161 : ¬ Reader r1161 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1161

def r1162 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1162 : ¬ Reader r1162 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1162

def r1163 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1163 : ¬ Reader r1163 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1163

def r1164 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 2)))
theorem reject1164 : ¬ Reader r1164 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1164

def r1165 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 2)))
theorem reject1165 : ¬ Reader r1165 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1165

def r1166 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1166 : ¬ Reader r1166 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1166

def r1168 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1168 : ¬ Reader r1168 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1168

def r1169 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1169 : ¬ Reader r1169 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1169

def r1172 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject1172 : ¬ Reader r1172 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1172

def r1173 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject1173 : ¬ Reader r1173 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1173

def r1176 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1176 : ¬ Reader r1176 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1176

def r1177 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1177 : ¬ Reader r1177 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1177

def r1180 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.lam (.var 1)))))
theorem reject1180 : ¬ Reader r1180 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject1180

def r1181 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.var 1)) (.var 2))))
theorem reject1181 : ¬ Reader r1181 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1181

def r1184 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.lam (.lam (.var 0))))))
theorem reject1184 : ¬ Reader r1184 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject1184

def r1185 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.app (.var 0) (.var 0)))))
theorem reject1185 : ¬ Reader r1185 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1185

def r1186 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.app (.var 2) (.var 0)))))
theorem reject1186 : ¬ Reader r1186 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1186

def r1187 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.app (.var 0) (.var 2)))))
theorem reject1187 : ¬ Reader r1187 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1187

def r1188 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 2) (.var 0)) (.var 0))))
theorem reject1188 : ¬ Reader r1188 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1188

def r1189 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 0) (.var 2)) (.var 0))))
theorem reject1189 : ¬ Reader r1189 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1189

def r1190 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.var 0))) (.var 2))))
theorem reject1190 : ¬ Reader r1190 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1190

def r1191 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject1191 : ¬ Reader r1191 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1191

def r1200 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1200 : ¬ Reader r1200 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1200

def r1201 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1201 : ¬ Reader r1201 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1201

def r1204 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.lam (.lam (.var 1))))))
theorem reject1204 : ¬ Reader r1204 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject1204

def r1205 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.var 1))) (.var 2))))
theorem reject1205 : ¬ Reader r1205 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1205

def r1208 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1208 : ¬ Reader r1208 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1208

def r1209 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1209 : ¬ Reader r1209 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1209

def r1210 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1210 : ¬ Reader r1210 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1210

def r1211 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1211 : ¬ Reader r1211 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1211

def r1212 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1212 : ¬ Reader r1212 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject1212

def r1213 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1213 : ¬ Reader r1213 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1213

def r1214 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1214 : ¬ Reader r1214 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1214

def r1215 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1215 : ¬ Reader r1215 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1215

def r1216 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1216 : ¬ Reader r1216 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1216

def r1217 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1217 : ¬ Reader r1217 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1217

def r1218 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1218 : ¬ Reader r1218 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1218

def r1219 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1219 : ¬ Reader r1219 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1219

def r1232 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1232 : ¬ Reader r1232 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1232

def r1233 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject1233 : ¬ Reader r1233 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1233

def r1234 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject1234 : ¬ Reader r1234 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1234

def r1235 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1235 : ¬ Reader r1235 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1235

def r1236 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1236 : ¬ Reader r1236 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1236

def r1237 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1237 : ¬ Reader r1237 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1237

def r1238 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1238 : ¬ Reader r1238 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1238

def r1239 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1239 : ¬ Reader r1239 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1239

def r1240 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1240 : ¬ Reader r1240 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1240

def r1243 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1243 : ¬ Reader r1243 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1243

def r1244 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1244 : ¬ Reader r1244 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1244

def r1245 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1245 : ¬ Reader r1245 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1245

def r1246 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1246 : ¬ Reader r1246 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1246

def r1251 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject1251 : ¬ Reader r1251 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1251

def r1252 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject1252 : ¬ Reader r1252 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1252

def r1253 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject1253 : ¬ Reader r1253 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1253

def r1254 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject1254 : ¬ Reader r1254 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1254

def r1259 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1259 : ¬ Reader r1259 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1259

def r1261 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1261 : ¬ Reader r1261 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1261

def r1262 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1262 : ¬ Reader r1262 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1262

def r1265 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1265 : ¬ Reader r1265 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1265

def r1267 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1267 : ¬ Reader r1267 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1267

def r1268 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1268 : ¬ Reader r1268 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1268

def r1271 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1271 : ¬ Reader r1271 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1271

def r1273 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1273 : ¬ Reader r1273 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1273

def r1275 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1275 : ¬ Reader r1275 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1275

def r1276 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1276 : ¬ Reader r1276 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1276

def r1279 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1279 : ¬ Reader r1279 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1279

def r1280 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1280 : ¬ Reader r1280 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1280

def r1281 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1281 : ¬ Reader r1281 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1281

def r1283 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1283 : ¬ Reader r1283 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1283

def r1285 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1285 : ¬ Reader r1285 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1285

def r1287 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1287 : ¬ Reader r1287 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1287

def r1289 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1289 : ¬ Reader r1289 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1289

def r1290 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1290 : ¬ Reader r1290 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1290

def r1291 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1291 : ¬ Reader r1291 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1291

def r1292 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1292 : ¬ Reader r1292 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1292

def r1293 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1293 : ¬ Reader r1293 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1293

def r1299 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1299 : ¬ Reader r1299 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1299

def r1300 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1300 : ¬ Reader r1300 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1300

def r1301 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1301 : ¬ Reader r1301 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1301

def r1302 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1302 : ¬ Reader r1302 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1302

def r1304 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1304 : ¬ Reader r1304 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1304

def r1306 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1306 : ¬ Reader r1306 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1306

def r1307 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1307 : ¬ Reader r1307 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1307

def r1308 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1308 : ¬ Reader r1308 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1308

def r1309 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1309 : ¬ Reader r1309 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1309

def r1311 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1311 : ¬ Reader r1311 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1311

def r1312 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1312 : ¬ Reader r1312 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1312

def r1313 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1313 : ¬ Reader r1313 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1313

def r1322 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1322 : ¬ Reader r1322 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1322

def r1323 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1323 : ¬ Reader r1323 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1323

def r1325 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1325 : ¬ Reader r1325 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1325

def r1326 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1326 : ¬ Reader r1326 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1326

def r1327 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1327 : ¬ Reader r1327 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1327

def r1332 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1332 : ¬ Reader r1332 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1332

def r1333 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1333 : ¬ Reader r1333 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1333

def r1338 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject1338 : ¬ Reader r1338 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1338

def r1339 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject1339 : ¬ Reader r1339 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1339

def r1340 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1340 : ¬ Reader r1340 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1340

def r1341 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1341 : ¬ Reader r1341 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1341

def r1342 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1342 : ¬ Reader r1342 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1342

def r1343 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1343 : ¬ Reader r1343 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1343

def r1348 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1348 : ¬ Reader r1348 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1348

def r1349 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1349 : ¬ Reader r1349 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1349

def r1350 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1350 : ¬ Reader r1350 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject1350

def r1351 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1351 : ¬ Reader r1351 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1351

def r1352 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1352 : ¬ Reader r1352 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1352

def r1353 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1353 : ¬ Reader r1353 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1353

def r1354 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 2)))
theorem reject1354 : ¬ Reader r1354 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1354

def r1355 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 2)))
theorem reject1355 : ¬ Reader r1355 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1355

def r1358 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 2)))
theorem reject1358 : ¬ Reader r1358 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1358

def r1359 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 2)))
theorem reject1359 : ¬ Reader r1359 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1359

def r1362 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1362 : ¬ Reader r1362 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1362

def r1363 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1363 : ¬ Reader r1363 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1363

def r1364 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1364 : ¬ Reader r1364 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1364

def r1366 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 2)))
theorem reject1366 : ¬ Reader r1366 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1366

def r1367 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.app (.var 2) (.var 1))))
theorem reject1367 : ¬ Reader r1367 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1367

def r1368 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.app (.var 1) (.var 2))))
theorem reject1368 : ¬ Reader r1368 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1368

def r1369 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1369 : ¬ Reader r1369 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1369

def r1370 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 2)))
theorem reject1370 : ¬ Reader r1370 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1370

def r1373 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1373 : ¬ Reader r1373 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.var 1)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1373

def r1374 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1374 : ¬ Reader r1374 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.var 1)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1374

def r1375 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1375 : ¬ Reader r1375 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1375

def r1376 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1376 : ¬ Reader r1376 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1376

def r1378 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 2)))
theorem reject1378 : ¬ Reader r1378 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1378

def r1379 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1379 : ¬ Reader r1379 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1379

def r1380 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1380 : ¬ Reader r1380 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1380

def r1381 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1381 : ¬ Reader r1381 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1381

def r1382 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1382 : ¬ Reader r1382 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1382

def r1383 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1383 : ¬ Reader r1383 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1383

def r1384 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1384 : ¬ Reader r1384 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1384

def r1385 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1385 : ¬ Reader r1385 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1385

def r1386 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1386 : ¬ Reader r1386 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1386

def r1387 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1387 : ¬ Reader r1387 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1387

def r1388 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1388 : ¬ Reader r1388 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1388

def r1389 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1389 : ¬ Reader r1389 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1389

def r1390 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1390 : ¬ Reader r1390 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1390

def r1391 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1391 : ¬ Reader r1391 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1391

def r1392 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1392 : ¬ Reader r1392 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1392

def r1393 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1393 : ¬ Reader r1393 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1393

def r1394 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1394 : ¬ Reader r1394 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1394

def r1395 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1395 : ¬ Reader r1395 := by
  exact loop_reduct true 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1395

def r1396 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1396 : ¬ Reader r1396 := by
  exact loop_reduct true 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1396

def r1397 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1397 : ¬ Reader r1397 := by
  exact loop_reduct true 3 4 (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1397

def r1400 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1400 : ¬ Reader r1400 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1400

def r1401 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1401 : ¬ Reader r1401 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1401

def r1402 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.var 2)))
theorem reject1402 : ¬ Reader r1402 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1402

def r1403 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1403 : ¬ Reader r1403 := by
  exact loop_reduct true 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1403

def r1404 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 2)))
theorem reject1404 : ¬ Reader r1404 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1404

def r1405 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 2)))
theorem reject1405 : ¬ Reader r1405 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1405

def r1406 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 2) (.var 0))))
theorem reject1406 : ¬ Reader r1406 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1406

def r1407 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.var 2))))
theorem reject1407 : ¬ Reader r1407 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1407

def r1408 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 2) (.var 1))))
theorem reject1408 : ¬ Reader r1408 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1408

def r1409 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 1) (.var 2))))
theorem reject1409 : ¬ Reader r1409 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1409

def r1410 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1410 : ¬ Reader r1410 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject1410

def r1411 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1411 : ¬ Reader r1411 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1411

def r1412 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.var 2)))
theorem reject1412 : ¬ Reader r1412 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1412

def r1413 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject1413 : ¬ Reader r1413 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1413

def r1414 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 2)))
theorem reject1414 : ¬ Reader r1414 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1414

def r1415 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 2)))
theorem reject1415 : ¬ Reader r1415 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1415

def r1416 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject1416 : ¬ Reader r1416 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1416

def r1417 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 2)))
theorem reject1417 : ¬ Reader r1417 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1417

def r1418 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 2)))
theorem reject1418 : ¬ Reader r1418 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1418

def r1419 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject1419 : ¬ Reader r1419 := by
  exact loop_reduct true 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1419

def r1420 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 2)))
theorem reject1420 : ¬ Reader r1420 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1420

def r1421 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject1421 : ¬ Reader r1421 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1421

def r1422 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 2)))
theorem reject1422 : ¬ Reader r1422 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1422

def r1423 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1423 : ¬ Reader r1423 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1)))))) [(.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1423

def r1424 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1424 : ¬ Reader r1424 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1)))))) [(.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1424

def r1425 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1425 : ¬ Reader r1425 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1)))))) [(.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1425

def r1428 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject1428 : ¬ Reader r1428 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1428

def r1429 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject1429 : ¬ Reader r1429 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1429

def r1431 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 2)))
theorem reject1431 : ¬ Reader r1431 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1431

def r1432 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject1432 : ¬ Reader r1432 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1432

def r1433 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject1433 : ¬ Reader r1433 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1433

def r1434 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1434 : ¬ Reader r1434 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1434

def r1435 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1435 : ¬ Reader r1435 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1435

def r1436 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject1436 : ¬ Reader r1436 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1436

def r1437 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject1437 : ¬ Reader r1437 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1437

def r1438 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1438 : ¬ Reader r1438 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1438

def r1439 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1439 : ¬ Reader r1439 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1439

def r1442 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1442 : ¬ Reader r1442 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1442

def r1443 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1443 : ¬ Reader r1443 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1443

def r1444 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1444 : ¬ Reader r1444 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1444

def r1445 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1445 : ¬ Reader r1445 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1445

def r1446 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1446 : ¬ Reader r1446 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1446

def r1447 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1447 : ¬ Reader r1447 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1447

def r1448 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1448 : ¬ Reader r1448 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1448

def r1449 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1449 : ¬ Reader r1449 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1449

def r1450 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1450 : ¬ Reader r1450 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1450

def r1451 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1451 : ¬ Reader r1451 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1451

def r1452 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1452 : ¬ Reader r1452 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1452

def r1453 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1453 : ¬ Reader r1453 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1453

def r1454 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1454 : ¬ Reader r1454 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1454

def r1455 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1455 : ¬ Reader r1455 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1455

def r1456 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 2)))
theorem reject1456 : ¬ Reader r1456 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1456

def r1457 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 2)))
theorem reject1457 : ¬ Reader r1457 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1457

def r1459 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.var 2)))
theorem reject1459 : ¬ Reader r1459 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1459

def r1460 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1460 : ¬ Reader r1460 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1460

def r1461 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 2)))
theorem reject1461 : ¬ Reader r1461 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1461

def r1462 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1462 : ¬ Reader r1462 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0))))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1462

def r1463 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1463 : ¬ Reader r1463 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1463

def r1464 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1464 : ¬ Reader r1464 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1464

def r1465 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1465 : ¬ Reader r1465 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) [(.lam (.lam (.lam (.var 0))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1465

def r1466 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1466 : ¬ Reader r1466 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) [(.lam (.lam (.lam (.var 0))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1466

def r1467 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1467 : ¬ Reader r1467 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1467

def r1468 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1468 : ¬ Reader r1468 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1468

def r1471 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.app (.var 2) (.var 1))))
theorem reject1471 : ¬ Reader r1471 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1471

def r1472 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.app (.var 1) (.var 2))))
theorem reject1472 : ¬ Reader r1472 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1472

def r1473 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1473 : ¬ Reader r1473 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1473

def r1474 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1474 : ¬ Reader r1474 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1474

def r1475 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1475 : ¬ Reader r1475 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1475

def r1476 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1476 : ¬ Reader r1476 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1476

def r1477 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1477 : ¬ Reader r1477 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1477

def r1478 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1478 : ¬ Reader r1478 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1478

def r1479 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1479 : ¬ Reader r1479 := by
  exact loop_reduct true 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1479

def r1480 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1480 : ¬ Reader r1480 := by
  exact loop_reduct true 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1480

def r1481 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1481 : ¬ Reader r1481 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1481

def r1482 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1482 : ¬ Reader r1482 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1482

def r1483 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1483 : ¬ Reader r1483 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1483

def r1484 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1484 : ¬ Reader r1484 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1484

def r1485 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1485 : ¬ Reader r1485 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1485

def r1486 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1486 : ¬ Reader r1486 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1486

def r1489 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1489 : ¬ Reader r1489 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1489

def r1490 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1490 : ¬ Reader r1490 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1490

def r1491 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1491 : ¬ Reader r1491 := by
  exact loop_reduct true 3 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1491

def r1492 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1492 : ¬ Reader r1492 := by
  exact loop_reduct true 3 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1492

def r1493 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1493 : ¬ Reader r1493 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1493

def r1494 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1494 : ¬ Reader r1494 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1494

def r1495 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1495 : ¬ Reader r1495 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))), (.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1495

def r1496 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1496 : ¬ Reader r1496 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))), (.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1496

def r1497 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1497 : ¬ Reader r1497 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) [(.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1497

def r1498 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1498 : ¬ Reader r1498 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) [(.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1498

def r1499 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1499 : ¬ Reader r1499 := by
  exact loop_reduct true 3 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1499

def r1500 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1500 : ¬ Reader r1500 := by
  exact loop_reduct true 3 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1500

def r1510 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.app (.var 2) (.var 1))))
theorem reject1510 : ¬ Reader r1510 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1510

def r1511 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.app (.var 1) (.var 2))))
theorem reject1511 : ¬ Reader r1511 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1511

def r1512 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1512 : ¬ Reader r1512 := by
  exact loop_reduct true 3 3 (.app (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 1)))) [(.var 3)] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1512

def r1513 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1513 : ¬ Reader r1513 := by
  exact loop_reduct true 3 3 (.app (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 1)))) [(.var 3)] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1513

def r1514 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1514 : ¬ Reader r1514 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1514

def r1516 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1516 : ¬ Reader r1516 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1516

def r1517 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1517 : ¬ Reader r1517 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1517

def r1519 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1519 : ¬ Reader r1519 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1519

def r1520 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1520 : ¬ Reader r1520 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1520

def r1521 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1521 : ¬ Reader r1521 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1521

def r1526 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 2) (.var 0))))
theorem reject1526 : ¬ Reader r1526 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1526

def r1527 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 0) (.var 2))))
theorem reject1527 : ¬ Reader r1527 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1527

def r1530 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.app (.var 2) (.var 0))))
theorem reject1530 : ¬ Reader r1530 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1530

def r1531 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.app (.var 0) (.var 2))))
theorem reject1531 : ¬ Reader r1531 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1531

def r1532 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1532 : ¬ Reader r1532 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1532

def r1533 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1533 : ¬ Reader r1533 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1533

def r1536 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1536 : ¬ Reader r1536 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1536

def r1537 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1537 : ¬ Reader r1537 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1537

def r1538 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1538 : ¬ Reader r1538 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1538

def r1539 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1539 : ¬ Reader r1539 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1539

def r1540 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject1540 : ¬ Reader r1540 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1540

def r1541 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject1541 : ¬ Reader r1541 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1541

def r1550 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 2) (.var 1))))
theorem reject1550 : ¬ Reader r1550 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1550

def r1551 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 1) (.var 2))))
theorem reject1551 : ¬ Reader r1551 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1551

def r1554 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.app (.var 2) (.var 1))))
theorem reject1554 : ¬ Reader r1554 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1554

def r1555 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.app (.var 1) (.var 2))))
theorem reject1555 : ¬ Reader r1555 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1555

def r1556 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1556 : ¬ Reader r1556 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1556

def r1557 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1557 : ¬ Reader r1557 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1557

def r1560 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject1560 : ¬ Reader r1560 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1560

def r1561 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject1561 : ¬ Reader r1561 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1561

def r1562 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject1562 : ¬ Reader r1562 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1562

def r1563 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject1563 : ¬ Reader r1563 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1563

def r1564 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1564 : ¬ Reader r1564 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1564

def r1565 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1565 : ¬ Reader r1565 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1565

def r1574 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1574 : ¬ Reader r1574 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1574

def r1576 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1576 : ¬ Reader r1576 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1576

def r1577 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) (.var 2)))
theorem reject1577 : ¬ Reader r1577 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1577

def r1578 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1578 : ¬ Reader r1578 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1578

def r1579 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1579 : ¬ Reader r1579 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1579

def r1581 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1581 : ¬ Reader r1581 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1581

def r1582 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1582 : ¬ Reader r1582 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1582

def r1585 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1585 : ¬ Reader r1585 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1585

def r1586 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1586 : ¬ Reader r1586 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1586

def r1587 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1587 : ¬ Reader r1587 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1587

def r1588 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1588 : ¬ Reader r1588 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1588

def r1591 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1591 : ¬ Reader r1591 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1591

def r1592 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1592 : ¬ Reader r1592 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1592

def r1593 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1593 : ¬ Reader r1593 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1593

def r1594 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1594 : ¬ Reader r1594 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1594

def r1595 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1595 : ¬ Reader r1595 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.var 0), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1595

def r1596 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1596 : ¬ Reader r1596 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1596

def r1605 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1605 : ¬ Reader r1605 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1605

def r1607 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1607 : ¬ Reader r1607 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1607

def r1608 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1608 : ¬ Reader r1608 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1608

def r1610 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1610 : ¬ Reader r1610 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1610

def r1611 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1611 : ¬ Reader r1611 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1611

def r1612 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1612 : ¬ Reader r1612 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1612

def r1617 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1617 : ¬ Reader r1617 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1617

def r1619 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1619 : ¬ Reader r1619 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1619

def r1620 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1620 : ¬ Reader r1620 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1620

def r1622 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1622 : ¬ Reader r1622 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1622

def r1623 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1623 : ¬ Reader r1623 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1623

def r1624 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1624 : ¬ Reader r1624 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1624

def r1629 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject1629 : ¬ Reader r1629 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1629

def r1630 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject1630 : ¬ Reader r1630 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1630

def r1631 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1631 : ¬ Reader r1631 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1631

def r1632 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1632 : ¬ Reader r1632 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1632

def r1633 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject1633 : ¬ Reader r1633 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1633

def r1634 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject1634 : ¬ Reader r1634 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1634

def r1635 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1635 : ¬ Reader r1635 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1635

def r1636 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1636 : ¬ Reader r1636 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1636

def r1637 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject1637 : ¬ Reader r1637 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1637

def r1638 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject1638 : ¬ Reader r1638 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1638

def r1639 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1639 : ¬ Reader r1639 := by
  exact loop_reduct true 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1639

def r1640 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1640 : ¬ Reader r1640 := by
  exact loop_reduct true 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1640

def r1641 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1641 : ¬ Reader r1641 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject1641

def r1642 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1642 : ¬ Reader r1642 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1642

def r1643 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 3)))))) (.var 2)))
theorem reject1643 : ¬ Reader r1643 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1643

def r1645 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 3)))))) (.app (.var 2) (.var 0))))
theorem reject1645 : ¬ Reader r1645 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1645

def r1646 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 3)))))) (.app (.var 0) (.var 2))))
theorem reject1646 : ¬ Reader r1646 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1646

def r1650 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 3)))))) (.var 2)))
theorem reject1650 : ¬ Reader r1650 := by
  exact loop_reduct true 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1650

def r1651 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 3)))))) (.var 2)))
theorem reject1651 : ¬ Reader r1651 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1651

def r1654 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 2)))
theorem reject1654 : ¬ Reader r1654 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1654

def r1655 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 2)))
theorem reject1655 : ¬ Reader r1655 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1655

def r1656 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 2)))
theorem reject1656 : ¬ Reader r1656 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1656

def r1657 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 2)))
theorem reject1657 : ¬ Reader r1657 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1657

def r1658 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1658 : ¬ Reader r1658 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1658

def r1661 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1661 : ¬ Reader r1661 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1661

def r1666 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.var 2) (.var 0))))
theorem reject1666 : ¬ Reader r1666 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1666

def r1667 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.var 2))))
theorem reject1667 : ¬ Reader r1667 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1667

def r1668 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.var 2) (.var 0))))
theorem reject1668 : ¬ Reader r1668 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1668

def r1669 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.var 2))))
theorem reject1669 : ¬ Reader r1669 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1669

def r1670 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1670 : ¬ Reader r1670 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1670

def r1671 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1671 : ¬ Reader r1671 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1671

def r1672 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.app (.var 2) (.var 0))))
theorem reject1672 : ¬ Reader r1672 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1672

def r1673 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.app (.var 0) (.var 2))))
theorem reject1673 : ¬ Reader r1673 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1673

def r1674 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 2) (.var 0))))
theorem reject1674 : ¬ Reader r1674 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1674

def r1675 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 0) (.var 2))))
theorem reject1675 : ¬ Reader r1675 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1675

def r1680 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject1680 : ¬ Reader r1680 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject1680

def r1681 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject1681 : ¬ Reader r1681 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1681

def r1690 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1690 : ¬ Reader r1690 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1690

def r1691 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1691 : ¬ Reader r1691 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1691

def r1692 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 2)))
theorem reject1692 : ¬ Reader r1692 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.var 2))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1692

def r1693 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 2)))
theorem reject1693 : ¬ Reader r1693 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1693

def r1694 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1694 : ¬ Reader r1694 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.app (.app (.var 0) (.var 2)) (.var 0)))))) [(.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1694

def r1696 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 2)))
theorem reject1696 : ¬ Reader r1696 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1696

def r1697 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 2)))
theorem reject1697 : ¬ Reader r1697 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1697

def r1698 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 2)))
theorem reject1698 : ¬ Reader r1698 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1698

def r1699 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 2)))
theorem reject1699 : ¬ Reader r1699 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1699

def r1700 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 2)))
theorem reject1700 : ¬ Reader r1700 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1700

def r1701 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 2)))
theorem reject1701 : ¬ Reader r1701 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1701

def r1702 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 2)))
theorem reject1702 : ¬ Reader r1702 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1702

def r1703 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 2)))
theorem reject1703 : ¬ Reader r1703 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1703

def r1704 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1704 : ¬ Reader r1704 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1704

def r1705 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1705 : ¬ Reader r1705 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1705

def r1710 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1710 : ¬ Reader r1710 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1710

def r1711 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1711 : ¬ Reader r1711 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1711

def r1720 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4))))))) (.var 2)))
theorem reject1720 : ¬ Reader r1720 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1720

def r1721 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0))))) (.var 2)))
theorem reject1721 : ¬ Reader r1721 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1721

def r1722 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))))) (.var 2)))
theorem reject1722 : ¬ Reader r1722 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) [(.app (.var 0) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1722

def r1723 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))))) (.var 2)))
theorem reject1723 : ¬ Reader r1723 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1723

def r1728 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1728 : ¬ Reader r1728 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1728

def r1729 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 0))))) (.var 2)))
theorem reject1729 : ¬ Reader r1729 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1729

def r1731 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0))))))) (.var 2)))
theorem reject1731 : ¬ Reader r1731 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1731

def r1732 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0)))))) (.var 2)))
theorem reject1732 : ¬ Reader r1732 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) [(.var 0), (.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1732

def r1733 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2))))) (.var 2)))
theorem reject1733 : ¬ Reader r1733 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) [(.lam (.var 0)), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1733

def r1737 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1737 : ¬ Reader r1737 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1737

def r1739 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) (.var 2)))
theorem reject1739 : ¬ Reader r1739 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1739

def r1740 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1740 : ¬ Reader r1740 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1740

def r1741 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) (.var 2)))
theorem reject1741 : ¬ Reader r1741 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1741

def r1743 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject1743 : ¬ Reader r1743 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1743

def r1745 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 3))))))) (.var 2)))
theorem reject1745 : ¬ Reader r1745 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1745

def r1746 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 0))))))) (.var 2)))
theorem reject1746 : ¬ Reader r1746 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1746

def r1747 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.var 2)))
theorem reject1747 : ¬ Reader r1747 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1747

def r1748 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 3))))))) (.var 2)))
theorem reject1748 : ¬ Reader r1748 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1748

def r1749 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 3)))))) (.var 2)))
theorem reject1749 : ¬ Reader r1749 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1749

def r1750 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 3)))))) (.var 2)))
theorem reject1750 : ¬ Reader r1750 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2)))), (.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1750

def r1752 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 0))))) (.var 2)))
theorem reject1752 : ¬ Reader r1752 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)))) [(.lam (.var 1)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1752

def r1753 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 1))))))) (.var 2)))
theorem reject1753 : ¬ Reader r1753 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 1)))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1753

def r1756 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 1)))))) (.var 2)))
theorem reject1756 : ¬ Reader r1756 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))))) [(.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 1)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1756

def r1757 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 2))))) (.var 2)))
theorem reject1757 : ¬ Reader r1757 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 2)))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1757

def r1758 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1758 : ¬ Reader r1758 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1758

def r1763 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))))) (.var 2)))
theorem reject1763 : ¬ Reader r1763 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1763

def r1767 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 4))))))) (.var 2)))
theorem reject1767 : ¬ Reader r1767 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))) (.lam (.var 1))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1767

def r1768 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.var 2)))
theorem reject1768 : ¬ Reader r1768 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) [(.app (.var 0) (.lam (.lam (.var 0))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1768

def r1769 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))))) (.var 2)))
theorem reject1769 : ¬ Reader r1769 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) [(.var 0), (.lam (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1769

def r1770 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1770 : ¬ Reader r1770 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) [(.lam (.lam (.var 0))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1770

def r1775 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 2)))
theorem reject1775 : ¬ Reader r1775 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1775

def r1779 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 3))))))) (.var 2)))
theorem reject1779 : ¬ Reader r1779 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2)))))) [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 3))))) (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1779

def r1780 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 1))))))) (.var 2)))
theorem reject1780 : ¬ Reader r1780 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 1)))))) [(.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 1)))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1780

def r1783 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 2))))) (.var 2)))
theorem reject1783 : ¬ Reader r1783 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1783

def r1789 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1789 : ¬ Reader r1789 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1789

def r1791 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 2)))
theorem reject1791 : ¬ Reader r1791 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) [(.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1791

def r1792 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 2)))
theorem reject1792 : ¬ Reader r1792 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) [(.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1792

def r1794 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))))) (.var 2)))
theorem reject1794 : ¬ Reader r1794 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))) (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1794

def r1795 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1795 : ¬ Reader r1795 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1795

def r1796 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1796 : ¬ Reader r1796 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) [(.var 0), (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1796

def r1801 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))))) (.var 2)))
theorem reject1801 : ¬ Reader r1801 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1801

def r1802 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))))) (.var 2)))
theorem reject1802 : ¬ Reader r1802 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1802

def r1803 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1803 : ¬ Reader r1803 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1803

def r1804 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1804 : ¬ Reader r1804 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1804

def r1805 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1805 : ¬ Reader r1805 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))) [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1805

def r1806 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1806 : ¬ Reader r1806 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))))) [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1806

def r1809 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1809 : ¬ Reader r1809 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1809

def r1810 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1810 : ¬ Reader r1810 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1810

def r1811 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1811 : ¬ Reader r1811 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))), (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1811

def r1812 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1812 : ¬ Reader r1812 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1812

def r1815 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1815 : ¬ Reader r1815 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))) [(.var 0), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1815

def r1817 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1817 : ¬ Reader r1817 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1817

def r1818 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1818 : ¬ Reader r1818 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) [(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1818

def r1819 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1819 : ¬ Reader r1819 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1819

def r1820 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1820 : ¬ Reader r1820 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))), (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1820

def r1821 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1821 : ¬ Reader r1821 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1))), (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1821

def r1822 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))) (.var 2)))
theorem reject1822 : ¬ Reader r1822 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1822

def r1824 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))))) (.var 2)))
theorem reject1824 : ¬ Reader r1824 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))) [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.var 0)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1824

def r1825 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1825 : ¬ Reader r1825 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))) [(.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1825

def r1827 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1827 : ¬ Reader r1827 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))))), (.var 0), (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))), (.var 0), (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1827

def r1828 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1828 : ¬ Reader r1828 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) [(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))), (.var 0), (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1828

def r1829 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1829 : ¬ Reader r1829 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1829

def r1843 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))) (.var 2)))
theorem reject1843 : ¬ Reader r1843 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.var 2)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1843

def r1844 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))) (.var 2)))
theorem reject1844 : ¬ Reader r1844 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.var 2)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.var 2))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1844

def r1845 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1))))) (.var 2)))
theorem reject1845 : ¬ Reader r1845 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1845

def r1846 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.var 2)))
theorem reject1846 : ¬ Reader r1846 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1846

def r1847 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3)))))) (.var 2)))
theorem reject1847 : ¬ Reader r1847 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1847

def r1849 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))) (.var 2)))
theorem reject1849 : ¬ Reader r1849 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1849

def r1850 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))))) (.var 2)))
theorem reject1850 : ¬ Reader r1850 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) [(.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1850

def r1851 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))))) (.var 2)))
theorem reject1851 : ¬ Reader r1851 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))) (.var 1)))) [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1851

def r1855 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 5)))))))) (.var 2)))
theorem reject1855 : ¬ Reader r1855 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4))))))) [(.lam (.lam (.lam (.var 3))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1855

def r1857 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3)))))) (.var 2)))
theorem reject1857 : ¬ Reader r1857 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1857

def r1858 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.lam (.var 0)))))))) (.var 2)))
theorem reject1858 : ¬ Reader r1858 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))))) [(.lam (.app (.var 1) (.lam (.var 0))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1858

def r1859 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 3)))))) (.var 2)))
theorem reject1859 : ¬ Reader r1859 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2))))) [(.lam (.var 0)), (.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1859

def r1860 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.var 0)))))) (.var 2)))
theorem reject1860 : ¬ Reader r1860 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0))))) [(.lam (.var 1)), (.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1860

def r1861 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 1)))))))) (.var 2)))
theorem reject1861 : ¬ Reader r1861 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))))) [(.app (.var 0) (.lam (.lam (.var 1))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1861

def r1862 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 1))))))) (.var 2)))
theorem reject1862 : ¬ Reader r1862 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))))) [(.var 0), (.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1862

def r1863 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 2))))) (.var 2)))
theorem reject1863 : ¬ Reader r1863 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1863

def r1868 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3))))))) (.var 2)))
theorem reject1868 : ¬ Reader r1868 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))) (.var 2)))))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1868

def r1869 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2))))))) (.var 2)))
theorem reject1869 : ¬ Reader r1869 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))) [(.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1869

def r1870 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 3))))))) (.var 2)))
theorem reject1870 : ¬ Reader r1870 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 2)))))) [(.app (.var 0) (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1870

def r1871 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 3)))))) (.var 2)))
theorem reject1871 : ¬ Reader r1871 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 2)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 2))))) [(.var 0), (.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1871

def r1872 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 2))))) (.var 2)))
theorem reject1872 : ¬ Reader r1872 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 1)))) [(.lam (.var 1)), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1872

def r1878 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.var 2))))) (.var 2)))
theorem reject1878 : ¬ Reader r1878 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 3), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1878

def r1887 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject1887 : ¬ Reader r1887 := by
  exact loop_reduct true 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1887

def r1888 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject1888 : ¬ Reader r1888 := by
  exact loop_reduct true 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))) (.var 0)) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1888

def r1893 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 3))))))) (.var 2)))
theorem reject1893 : ¬ Reader r1893 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1893

def r1897 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.var 2)))
theorem reject1897 : ¬ Reader r1897 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1897

def r1898 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.var 2)))
theorem reject1898 : ¬ Reader r1898 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1898

def r1899 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) (.var 2)))
theorem reject1899 : ¬ Reader r1899 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1899

def r1900 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) (.var 2)))
theorem reject1900 : ¬ Reader r1900 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1900

def r1901 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1901 : ¬ Reader r1901 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1901

def r1904 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) (.var 2)))
theorem reject1904 : ¬ Reader r1904 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))))) [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1904

def r1910 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.var 2)))
theorem reject1910 : ¬ Reader r1910 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1910

def r1911 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.var 2)))
theorem reject1911 : ¬ Reader r1911 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1911

def r1912 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 2)))
theorem reject1912 : ¬ Reader r1912 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1912

def r1913 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.var 2)))
theorem reject1913 : ¬ Reader r1913 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1913

def r1914 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))))) (.var 2)))
theorem reject1914 : ¬ Reader r1914 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 1))))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1914

def r1915 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))))) (.var 2)))
theorem reject1915 : ¬ Reader r1915 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 1) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 1) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 1) (.var 0)))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1915

def r1916 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1916 : ¬ Reader r1916 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)) (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)) (.var 1))))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1916

def r1917 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1917 : ¬ Reader r1917 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1917

def r1918 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 2)))
theorem reject1918 : ¬ Reader r1918 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1918

def r1919 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 2)))
theorem reject1919 : ¬ Reader r1919 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))))) [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1919

def r1920 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1920 : ¬ Reader r1920 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1920

def r1921 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.var 2)))
theorem reject1921 : ¬ Reader r1921 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))))) [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1921

def r1926 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))) (.var 2)))
theorem reject1926 : ¬ Reader r1926 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1926

def r1927 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 2)))
theorem reject1927 : ¬ Reader r1927 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1927

def r1928 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))) (.var 2)))
theorem reject1928 : ¬ Reader r1928 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1928

def r1929 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 2)))
theorem reject1929 : ¬ Reader r1929 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1929

def r1930 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1930 : ¬ Reader r1930 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 0) (.var 1))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1930

def r1931 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1931 : ¬ Reader r1931 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 1) (.var 0))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1931

def r1932 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))))) (.var 2)))
theorem reject1932 : ¬ Reader r1932 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.var 0), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1932

def r1933 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))))) (.var 2)))
theorem reject1933 : ¬ Reader r1933 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))))) [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1933

def r1938 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))))) (.var 2)))
theorem reject1938 : ¬ Reader r1938 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1938

def r1939 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1939 : ¬ Reader r1939 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.var 1))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.var 1))))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1939

def r1940 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))))) (.var 2)))
theorem reject1940 : ¬ Reader r1940 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)))) [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1940

def r1941 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1941 : ¬ Reader r1941 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))) (.var 1)))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0))) (.var 1)))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1941

def r1943 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))))) (.var 2)))
theorem reject1943 : ¬ Reader r1943 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1943

def r1944 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2))))) (.var 2)))
theorem reject1944 : ¬ Reader r1944 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1944

def r1945 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1945 : ¬ Reader r1945 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1945

def r1946 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))))) (.var 2)))
theorem reject1946 : ¬ Reader r1946 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1946

def r1948 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))))) (.var 2)))
theorem reject1948 : ¬ Reader r1948 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1948

def r1949 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))) (.var 2)))
theorem reject1949 : ¬ Reader r1949 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1949

def r1951 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))))) (.var 2)))
theorem reject1951 : ¬ Reader r1951 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1951

def r1952 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1))))) (.var 2)))
theorem reject1952 : ¬ Reader r1952 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1952

def r1953 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1953 : ¬ Reader r1953 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1953

def r1954 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))))) (.var 2)))
theorem reject1954 : ¬ Reader r1954 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))) (.var 0)))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1954

def r1955 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))))) (.var 2)))
theorem reject1955 : ¬ Reader r1955 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1955

def r1956 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1956 : ¬ Reader r1956 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)) (.var 0)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1956

def r1957 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0))))) (.var 2)))
theorem reject1957 : ¬ Reader r1957 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1957

def r1958 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1958 : ¬ Reader r1958 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1958

def r1960 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 2)))
theorem reject1960 : ¬ Reader r1960 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1960

def r1961 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 2)))
theorem reject1961 : ¬ Reader r1961 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) [(.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1961

def r1963 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))))) (.var 2)))
theorem reject1963 : ¬ Reader r1963 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) [(.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1963

def r1964 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1964 : ¬ Reader r1964 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1964

def r1965 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1965 : ¬ Reader r1965 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) [(.var 0), (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1965

def r1974 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1974 : ¬ Reader r1974 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1974

def r1975 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject1975 : ¬ Reader r1975 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1975

def r1980 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1980 : ¬ Reader r1980 := by
  exact loop_reduct true 3 4 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) [(.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))), (.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1980

def r1981 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1981 : ¬ Reader r1981 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1981

def r1983 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1983 : ¬ Reader r1983 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))), (.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1983

def r1984 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))) (.var 2)))
theorem reject1984 : ¬ Reader r1984 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1984

def r1987 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1987 : ¬ Reader r1987 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject1987

def r2019 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 1)))) (.var 2)))
theorem reject2019 : ¬ Reader r2019 := by
  exact loop_reduct true 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2019

def r2020 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject2020 : ¬ Reader r2020 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject2020

end Blc.FirstopNonlinear.Q1RootLoop
