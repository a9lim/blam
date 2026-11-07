import Certificates
namespace Blc.HandlerLet.Q1
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r0 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject0 : ¬ Reader r0 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1 : ¬ Reader r1 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject2 : ¬ Reader r2 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject3 : ¬ Reader r3 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject4 : ¬ Reader r4 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject5 : ¬ Reader r5 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject6 : ¬ Reader r6 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject7 : ¬ Reader r7 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject8 : ¬ Reader r8 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject9 : ¬ Reader r9 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject10 : ¬ Reader r10 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject11 : ¬ Reader r11 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject12 : ¬ Reader r12 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject13 : ¬ Reader r13 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject14 : ¬ Reader r14 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject15 : ¬ Reader r15 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject16 : ¬ Reader r16 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.var 0) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject17 : ¬ Reader r17 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject18 : ¬ Reader r18 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject19 : ¬ Reader r19 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.var 0)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject19

def r20 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject20 : ¬ Reader r20 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject20

def r21 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject21 : ¬ Reader r21 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject21

def r22 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject22 : ¬ Reader r22 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.lam (.var 2))))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject23 : ¬ Reader r23 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject24 : ¬ Reader r24 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.var 0)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.lam (.var 3)))))
theorem reject25 : ¬ Reader r25 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.lam (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject26 : ¬ Reader r26 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject27 : ¬ Reader r27 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.lam (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject28 : ¬ Reader r28 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 0)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject29 : ¬ Reader r29 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 0)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject29

def r30 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject30 : ¬ Reader r30 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject30

def r31 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject31 : ¬ Reader r31 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject31

def r32 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 3)) (.var 1))))
theorem reject32 : ¬ Reader r32 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 2)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject32

def r33 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject33 : ¬ Reader r33 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.var 0))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject33

def r34 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject34 : ¬ Reader r34 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.var 0)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject34

def r35 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject35 : ¬ Reader r35 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.lam (.var 2))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject35

def r36 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject36 : ¬ Reader r36 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.lam (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject36

def r37 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject37 : ¬ Reader r37 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.var 0)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject37

def r38 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 2) (.var 3)))))
theorem reject38 : ¬ Reader r38 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.var 1) (.var 2)))] (by decide) (by decide) (by decide)
#print axioms reject38

def r39 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 3) (.var 2)))))
theorem reject39 : ¬ Reader r39 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.var 2) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))
theorem reject40 : ¬ Reader r40 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))
theorem reject41 : ¬ Reader r41 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject41

def r42 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))
theorem reject42 : ¬ Reader r42 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject42

def r43 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))
theorem reject43 : ¬ Reader r43 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject43

def r44 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.lam (.var 1)) (.var 1)))))
theorem reject44 : ¬ Reader r44 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject44

def r45 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.lam (.var 2)) (.var 0)))))
theorem reject45 : ¬ Reader r45 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject45

def r46 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))
theorem reject46 : ¬ Reader r46 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject46

def r47 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.lam (.var 2)) (.var 2)))))
theorem reject47 : ¬ Reader r47 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.var 1)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject47

def r48 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))
theorem reject48 : ¬ Reader r48 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject48

def r49 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.lam (.var 1)) (.var 2)))))
theorem reject49 : ¬ Reader r49 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject49

def r50 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))
theorem reject50 : ¬ Reader r50 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject50

def r51 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))
theorem reject51 : ¬ Reader r51 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject51

def r52 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 1)) (.app (.var 2) (.var 1)))))
theorem reject52 : ¬ Reader r52 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject52

def r53 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 1)) (.app (.var 1) (.var 2)))))
theorem reject53 : ¬ Reader r53 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject53

def r54 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))
theorem reject54 : ¬ Reader r54 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject54

def r55 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))
theorem reject55 : ¬ Reader r55 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject55

def r56 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.app (.var 2) (.var 0)))))
theorem reject56 : ¬ Reader r56 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 1)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject56

def r57 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.app (.var 0) (.var 2)))))
theorem reject57 : ¬ Reader r57 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject57

def r58 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))
theorem reject58 : ¬ Reader r58 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject58

def r59 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 1)) (.var 2)) (.var 1))))
theorem reject59 : ¬ Reader r59 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject59

def r60 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))
theorem reject60 : ¬ Reader r60 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject60

def r61 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 2)) (.var 2)) (.var 0))))
theorem reject61 : ¬ Reader r61 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.var 1)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject61

def r62 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 2))) (.var 2))))
theorem reject62 : ¬ Reader r62 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.var 0) (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject62

def r63 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 2) (.var 0))) (.var 2))))
theorem reject63 : ¬ Reader r63 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.var 1) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject63

def r64 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))
theorem reject64 : ¬ Reader r64 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject64

def r65 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))
theorem reject65 : ¬ Reader r65 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject65

def r66 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 1)) (.var 1)) (.var 2))))
theorem reject66 : ¬ Reader r66 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject66

def r67 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 2)) (.var 0)) (.var 2))))
theorem reject67 : ¬ Reader r67 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject67

def r68 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))
theorem reject68 : ¬ Reader r68 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject68

def r69 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))
theorem reject69 : ¬ Reader r69 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))] (by decide) (by decide) (by decide)
#print axioms reject69

def r70 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))
theorem reject70 : ¬ Reader r70 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject70

def r71 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))
theorem reject71 : ¬ Reader r71 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject71

def r72 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0)))))))
theorem reject72 : ¬ Reader r72 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject72

def r73 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))
theorem reject73 : ¬ Reader r73 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject73

def r74 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))
theorem reject74 : ¬ Reader r74 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.var 0) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject74

def r75 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.lam (.lam (.var 0))) (.var 1)))))
theorem reject75 : ¬ Reader r75 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.lam (.var 0))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject75

def r76 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject76 : ¬ Reader r76 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject76

def r77 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.lam (.var 2)) (.var 1)))))
theorem reject77 : ¬ Reader r77 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.lam (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject77

def r78 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject78 : ¬ Reader r78 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject78

def r79 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject79 : ¬ Reader r79 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject79

def r80 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))
theorem reject80 : ¬ Reader r80 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject80

def r81 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))
theorem reject81 : ¬ Reader r81 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject81

def r82 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))
theorem reject82 : ¬ Reader r82 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject82

def r83 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))
theorem reject83 : ¬ Reader r83 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject83

def r84 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))
theorem reject84 : ¬ Reader r84 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject84

def r85 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))
theorem reject85 : ¬ Reader r85 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject85

def r86 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))
theorem reject86 : ¬ Reader r86 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject86

def r87 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))
theorem reject87 : ¬ Reader r87 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject87

def r88 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))
theorem reject88 : ¬ Reader r88 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject88

def r89 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))
theorem reject89 : ¬ Reader r89 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject89

def r90 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))
theorem reject90 : ¬ Reader r90 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject90

def r91 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))
theorem reject91 : ¬ Reader r91 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject91

def r92 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0)))))))
theorem reject92 : ¬ Reader r92 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))] (by decide) (by decide) (by decide)
#print axioms reject92

def r93 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))
theorem reject93 : ¬ Reader r93 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject93

def r94 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))
theorem reject94 : ¬ Reader r94 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))] (by decide) (by decide) (by decide)
#print axioms reject94

def r95 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))
theorem reject95 : ¬ Reader r95 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject95

def r96 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))
theorem reject96 : ¬ Reader r96 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject96

def r97 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))
theorem reject97 : ¬ Reader r97 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject97

def r98 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.lam (.lam (.var 0))) (.var 2)))))
theorem reject98 : ¬ Reader r98 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.lam (.lam (.var 0))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject98

def r99 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))
theorem reject99 : ¬ Reader r99 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject99

def r100 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))
theorem reject100 : ¬ Reader r100 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.var 1) (.lam (.var 1))))] (by decide) (by decide) (by decide)
#print axioms reject100

def r101 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.lam (.var 2)) (.var 2)))))
theorem reject101 : ¬ Reader r101 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.app (.lam (.var 1)) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject101

def r102 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))
theorem reject102 : ¬ Reader r102 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject102

def r103 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))
theorem reject103 : ¬ Reader r103 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject103

def r104 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject104 : ¬ Reader r104 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject104

def r105 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject105 : ¬ Reader r105 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject105

def r106 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0))))))
theorem reject106 : ¬ Reader r106 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject106

def r107 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))
theorem reject107 : ¬ Reader r107 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject107

def r108 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0))))))
theorem reject108 : ¬ Reader r108 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))] (by decide) (by decide) (by decide)
#print axioms reject108

def r109 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))
theorem reject109 : ¬ Reader r109 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject109

def r110 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))
theorem reject110 : ¬ Reader r110 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject110

def r111 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))
theorem reject111 : ¬ Reader r111 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject111

def r112 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 0))) (.app (.var 2) (.var 1)))))
theorem reject112 : ¬ Reader r112 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.lam (.var 0))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject112

def r113 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 0))) (.app (.var 1) (.var 2)))))
theorem reject113 : ¬ Reader r113 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.lam (.var 0))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject113

def r114 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject114 : ¬ Reader r114 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject114

def r115 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject115 : ¬ Reader r115 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject115

def r116 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.app (.var 2) (.var 1)))))
theorem reject116 : ¬ Reader r116 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 1)) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject116

def r117 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.app (.var 1) (.var 2)))))
theorem reject117 : ¬ Reader r117 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.var 1)) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject117

def r118 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))
theorem reject118 : ¬ Reader r118 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject118

def r119 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))
theorem reject119 : ¬ Reader r119 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject119

def r120 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))
theorem reject120 : ¬ Reader r120 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject120

def r121 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))
theorem reject121 : ¬ Reader r121 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject121

def r122 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1))))
theorem reject122 : ¬ Reader r122 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject122

def r123 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))
theorem reject123 : ¬ Reader r123 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject123

def r124 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))
theorem reject124 : ¬ Reader r124 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject124

def r125 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))
theorem reject125 : ¬ Reader r125 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject125

def r126 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))
theorem reject126 : ¬ Reader r126 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject126

def r127 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))
theorem reject127 : ¬ Reader r127 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject127

def r128 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.var 0))) (.var 2)) (.var 1))))
theorem reject128 : ¬ Reader r128 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.lam (.var 0))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject128

def r129 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject129 : ¬ Reader r129 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject129

def r130 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))
theorem reject130 : ¬ Reader r130 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.lam (.var 1))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject130

def r131 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 2)) (.var 2)) (.var 1))))
theorem reject131 : ¬ Reader r131 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.var 1)) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject131

def r132 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))
theorem reject132 : ¬ Reader r132 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject132

def r133 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))
theorem reject133 : ¬ Reader r133 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject133

def r134 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))
theorem reject134 : ¬ Reader r134 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject134

def r135 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))
theorem reject135 : ¬ Reader r135 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject135

def r136 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))
theorem reject136 : ¬ Reader r136 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject136

def r137 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))
theorem reject137 : ¬ Reader r137 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject137

def r138 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))
theorem reject138 : ¬ Reader r138 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject138

def r139 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))
theorem reject139 : ¬ Reader r139 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject139

def r140 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))
theorem reject140 : ¬ Reader r140 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject140

def r141 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))
theorem reject141 : ¬ Reader r141 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject141

def r142 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))
theorem reject142 : ¬ Reader r142 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject142

def r143 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))
theorem reject143 : ¬ Reader r143 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject143

def r144 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 1) (.var 2))) (.var 2))))
theorem reject144 : ¬ Reader r144 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject144

def r145 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 2) (.var 1))) (.var 2))))
theorem reject145 : ¬ Reader r145 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject145

def r146 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))
theorem reject146 : ¬ Reader r146 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject146

def r147 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))
theorem reject147 : ¬ Reader r147 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject147

def r148 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2))))
theorem reject148 : ¬ Reader r148 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject148

def r149 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))
theorem reject149 : ¬ Reader r149 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject149

def r150 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))
theorem reject150 : ¬ Reader r150 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.var 0) (.lam (.var 1))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject150

def r151 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.var 0))) (.var 1)) (.var 2))))
theorem reject151 : ¬ Reader r151 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.lam (.var 0))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject151

def r152 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject152 : ¬ Reader r152 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject152

def r153 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 2)) (.var 1)) (.var 2))))
theorem reject153 : ¬ Reader r153 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.lam (.var 1)) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject153

def r154 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))
theorem reject154 : ¬ Reader r154 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject154

def r155 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))
theorem reject155 : ¬ Reader r155 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject155

def r156 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject156 : ¬ Reader r156 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject156

def r157 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject157 : ¬ Reader r157 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject157

def r158 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject158 : ¬ Reader r158 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject158

def r159 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject159 : ¬ Reader r159 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject159

def r160 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject160 : ¬ Reader r160 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject160

def r161 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject161 : ¬ Reader r161 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject161

def r162 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.lam (.var 2)))))
theorem reject162 : ¬ Reader r162 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject162

def r163 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.lam (.var 2)) (.var 2))))
theorem reject163 : ¬ Reader r163 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject163

def r164 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject164 : ¬ Reader r164 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject164

def r165 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject165 : ¬ Reader r165 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject165

def r166 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject166 : ¬ Reader r166 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject166

def r167 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject167 : ¬ Reader r167 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject167

def r168 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject168 : ¬ Reader r168 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject168

def r169 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject169 : ¬ Reader r169 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject169

def r170 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject170 : ¬ Reader r170 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject170

def r171 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject171 : ¬ Reader r171 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject171

def r172 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject172 : ¬ Reader r172 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject172

def r173 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject173 : ¬ Reader r173 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject173

def r174 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject174 : ¬ Reader r174 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject174

def r175 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject175 : ¬ Reader r175 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject175

def r176 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject176 : ¬ Reader r176 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject176

def r177 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject177 : ¬ Reader r177 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject177

def r178 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject178 : ¬ Reader r178 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject178

def r179 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject179 : ¬ Reader r179 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject179

def r180 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject180 : ¬ Reader r180 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject180

def r181 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject181 : ¬ Reader r181 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject181

def r182 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject182 : ¬ Reader r182 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject182

def r183 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject183 : ¬ Reader r183 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject183

def r184 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject184 : ¬ Reader r184 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject184

def r185 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject185 : ¬ Reader r185 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject185

def r186 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject186 : ¬ Reader r186 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject186

def r187 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject187 : ¬ Reader r187 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject187

def r188 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject188 : ¬ Reader r188 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject188

def r189 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject189 : ¬ Reader r189 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject189

def r190 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 2) (.var 1))))
theorem reject190 : ¬ Reader r190 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject190

def r191 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 1) (.var 2))))
theorem reject191 : ¬ Reader r191 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject191

def r192 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject192 : ¬ Reader r192 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject192

def r193 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject193 : ¬ Reader r193 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject193

def r194 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 2) (.lam (.var 2)))))
theorem reject194 : ¬ Reader r194 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject194

def r195 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.lam (.var 2)) (.var 2))))
theorem reject195 : ¬ Reader r195 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject195

def r196 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject196 : ¬ Reader r196 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject196

def r197 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject197 : ¬ Reader r197 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject197

def r198 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject198 : ¬ Reader r198 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject198

def r199 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject199 : ¬ Reader r199 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject199

def r200 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject200 : ¬ Reader r200 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject200

def r201 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject201 : ¬ Reader r201 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject201

def r202 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject202 : ¬ Reader r202 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject202

def r203 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject203 : ¬ Reader r203 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject203

def r204 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.var 2) (.var 0))))
theorem reject204 : ¬ Reader r204 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject204

def r205 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.var 0) (.var 2))))
theorem reject205 : ¬ Reader r205 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject205

def r206 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject206 : ¬ Reader r206 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject206

def r207 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject207 : ¬ Reader r207 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject207

def r208 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.var 2) (.var 1))))
theorem reject208 : ¬ Reader r208 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject208

def r209 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.var 1) (.var 2))))
theorem reject209 : ¬ Reader r209 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject209

def r210 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 3))))
theorem reject210 : ¬ Reader r210 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject210

def r211 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject211 : ¬ Reader r211 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject211

def r212 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject212 : ¬ Reader r212 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject212

def r213 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.lam (.var 3))))
theorem reject213 : ¬ Reader r213 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.lam (.var 2))] (by decide) (by decide) (by decide)
#print axioms reject213

def r214 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.var 2) (.lam (.var 0)))))
theorem reject214 : ¬ Reader r214 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject214

def r215 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.lam (.var 0)) (.var 2))))
theorem reject215 : ¬ Reader r215 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject215

def r216 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 1)))))
theorem reject216 : ¬ Reader r216 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject216

def r217 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 1)) (.var 2))))
theorem reject217 : ¬ Reader r217 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject217

def r218 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.var 2) (.lam (.var 1)))))
theorem reject218 : ¬ Reader r218 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))] (by decide) (by decide) (by decide)
#print axioms reject218

def r219 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.lam (.var 1)) (.var 2))))
theorem reject219 : ¬ Reader r219 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject219

def r220 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject220 : ¬ Reader r220 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject220

def r221 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject221 : ¬ Reader r221 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject221

def r222 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject222 : ¬ Reader r222 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject222

def r223 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject223 : ¬ Reader r223 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject223

def r224 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject224 : ¬ Reader r224 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject224

def r225 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject225 : ¬ Reader r225 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject225

def r226 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject226 : ¬ Reader r226 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject226

def r227 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject227 : ¬ Reader r227 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject227

def r228 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject228 : ¬ Reader r228 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject228

def r229 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject229 : ¬ Reader r229 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject229

def r230 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject230 : ¬ Reader r230 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject230

def r231 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject231 : ¬ Reader r231 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject231

def r232 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject232 : ¬ Reader r232 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject232

def r233 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject233 : ¬ Reader r233 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject233

def r234 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject234 : ¬ Reader r234 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.var 1))) (.lam (.lam (.var 1)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject234

def r235 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject235 : ¬ Reader r235 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.var 1))) (.lam (.lam (.var 1)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject235

def r236 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3))))) (.var 2)))
theorem reject236 : ¬ Reader r236 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject236

def r237 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3))))) (.app (.var 2) (.var 0))))
theorem reject237 : ¬ Reader r237 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject237

def r238 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3))))) (.app (.var 0) (.var 2))))
theorem reject238 : ¬ Reader r238 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject238

def r239 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject239 : ¬ Reader r239 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject239

def r240 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject240 : ¬ Reader r240 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject240

def r241 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject241 : ¬ Reader r241 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject241

def r242 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 0)))) (.var 2)))
theorem reject242 : ¬ Reader r242 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject242

def r243 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject243 : ¬ Reader r243 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject243

def r244 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject244 : ¬ Reader r244 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject244

def r245 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject245 : ¬ Reader r245 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject245

def r246 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 2)))) (.var 2)))
theorem reject246 : ¬ Reader r246 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject246

def r247 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2))))) (.var 2)))
theorem reject247 : ¬ Reader r247 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.var 1))) (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject247

def r248 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject248 : ¬ Reader r248 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject248

def r249 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0))))) (.var 2)))
theorem reject249 : ¬ Reader r249 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject249

def r250 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject250 : ¬ Reader r250 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject250

def r251 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject251 : ¬ Reader r251 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject251

def r252 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject252 : ¬ Reader r252 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject252

def r253 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)))) (.var 2)))
theorem reject253 : ¬ Reader r253 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject253

def r254 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject254 : ¬ Reader r254 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject254

def r255 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject255 : ¬ Reader r255 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject255

def r256 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject256 : ¬ Reader r256 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject256

def r257 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2)))) (.var 2)))
theorem reject257 : ¬ Reader r257 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject257

def r258 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject258 : ¬ Reader r258 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject258

def r259 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))))) (.var 2)))
theorem reject259 : ¬ Reader r259 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject259

def r260 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject260 : ¬ Reader r260 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject260

def r261 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))))) (.var 2)))
theorem reject261 : ¬ Reader r261 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject261

def r262 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.var 0)) (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject262 : ¬ Reader r262 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject262

def r263 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 2)))
theorem reject263 : ¬ Reader r263 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject263

def r264 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject264 : ¬ Reader r264 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject264

def r265 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 0))))) (.var 2)))
theorem reject265 : ¬ Reader r265 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject265

def r266 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject266 : ¬ Reader r266 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject266

def r267 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject267 : ¬ Reader r267 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject267

def r268 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) (.var 2)))
theorem reject268 : ¬ Reader r268 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject268

def r269 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 2)))) (.var 2)))
theorem reject269 : ¬ Reader r269 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject269

def r270 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject270 : ¬ Reader r270 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject270

def r271 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject271 : ¬ Reader r271 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject271

def r272 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject272 : ¬ Reader r272 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject272

def r273 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 2)))) (.var 2)))
theorem reject273 : ¬ Reader r273 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject273

def r274 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 4)))))) (.var 2)))
theorem reject274 : ¬ Reader r274 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject274

def r275 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 2)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject275 : ¬ Reader r275 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject275

def r276 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 2))))) (.var 2)))
theorem reject276 : ¬ Reader r276 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject276

def r277 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject277 : ¬ Reader r277 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject277

def r278 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.lam (.var 0)))))) (.var 2)))
theorem reject278 : ¬ Reader r278 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject278

def r279 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.var 0)) (.var 2)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject279 : ¬ Reader r279 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject279

def r280 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 2))))) (.var 2)))
theorem reject280 : ¬ Reader r280 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 0)) (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject280

def r281 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3)))))) (.var 2)))
theorem reject281 : ¬ Reader r281 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject281

def r282 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3))) (.var 0)))) (.var 2)))
theorem reject282 : ¬ Reader r282 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject282

def r283 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) (.var 2)))
theorem reject283 : ¬ Reader r283 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject283

def r284 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 2)))) (.var 2)))
theorem reject284 : ¬ Reader r284 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject284

def r285 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))))) (.var 2)))
theorem reject285 : ¬ Reader r285 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject285

def r286 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 1))))) (.var 2)))
theorem reject286 : ¬ Reader r286 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject286

def r287 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 3))))) (.var 2)))
theorem reject287 : ¬ Reader r287 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject287

def r288 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 3))))) (.var 2)))
theorem reject288 : ¬ Reader r288 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.var 1)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject288

def r289 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 3))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject289 : ¬ Reader r289 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject289

def r290 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 3)))))) (.var 2)))
theorem reject290 : ¬ Reader r290 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject290

def r291 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject291 : ¬ Reader r291 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject291

def r292 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 3) (.var 0)))))) (.var 2)))
theorem reject292 : ¬ Reader r292 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject292

def r293 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 3)))))) (.var 2)))
theorem reject293 : ¬ Reader r293 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.var 1))) (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject293

def r294 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject294 : ¬ Reader r294 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject294

def r295 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.lam (.var 1)))))) (.var 2)))
theorem reject295 : ¬ Reader r295 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 1))))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject295

def r296 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.var 1)) (.var 2)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject296 : ¬ Reader r296 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject296

def r297 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 1)) (.var 2))))) (.var 2)))
theorem reject297 : ¬ Reader r297 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.lam (.var 1)))) (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject297

def r298 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.var 3)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject298 : ¬ Reader r298 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject298

def r299 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 3)) (.var 0))))) (.var 2)))
theorem reject299 : ¬ Reader r299 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.lam (.lam (.var 1)))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject299

def r300 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject300 : ¬ Reader r300 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject300

def r301 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject301 : ¬ Reader r301 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject301

def r302 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject302 : ¬ Reader r302 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject302

def r303 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject303 : ¬ Reader r303 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject303

def r304 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject304 : ¬ Reader r304 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject304

def r305 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject305 : ¬ Reader r305 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject305

def r306 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject306 : ¬ Reader r306 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject306

def r307 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject307 : ¬ Reader r307 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject307

def r308 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject308 : ¬ Reader r308 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject308

def r309 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject309 : ¬ Reader r309 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject309

def r310 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject310 : ¬ Reader r310 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject310

def r311 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject311 : ¬ Reader r311 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject311

def r312 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject312 : ¬ Reader r312 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject312

def r313 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject313 : ¬ Reader r313 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject313

def r314 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject314 : ¬ Reader r314 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject314

def r315 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject315 : ¬ Reader r315 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject315

def r316 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject316 : ¬ Reader r316 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject316

def r317 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject317 : ¬ Reader r317 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject317

def r318 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject318 : ¬ Reader r318 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject318

def r319 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject319 : ¬ Reader r319 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject319

def r320 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject320 : ¬ Reader r320 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject320

def r321 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject321 : ¬ Reader r321 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject321

def r322 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject322 : ¬ Reader r322 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject322

def r323 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject323 : ¬ Reader r323 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject323

def r324 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject324 : ¬ Reader r324 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject324

def r325 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject325 : ¬ Reader r325 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject325

def r326 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject326 : ¬ Reader r326 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject326

def r327 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject327 : ¬ Reader r327 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject327

def r328 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject328 : ¬ Reader r328 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject328

def r329 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject329 : ¬ Reader r329 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject329

def r330 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject330 : ¬ Reader r330 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject330

def r331 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject331 : ¬ Reader r331 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject331

def r332 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject332 : ¬ Reader r332 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject332

def r333 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject333 : ¬ Reader r333 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject333

def r334 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject334 : ¬ Reader r334 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject334

def r335 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject335 : ¬ Reader r335 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject335

def r336 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject336 : ¬ Reader r336 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject336

def r337 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject337 : ¬ Reader r337 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject337

def r338 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject338 : ¬ Reader r338 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject338

def r339 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject339 : ¬ Reader r339 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject339

def r340 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject340 : ¬ Reader r340 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject340

def r341 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject341 : ¬ Reader r341 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject341

def r342 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject342 : ¬ Reader r342 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject342

def r343 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject343 : ¬ Reader r343 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject343

def r344 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3))))) (.var 2)))
theorem reject344 : ¬ Reader r344 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject344

def r345 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3))))) (.var 2)))
theorem reject345 : ¬ Reader r345 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject345

def r346 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject346 : ¬ Reader r346 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject346

def r347 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject347 : ¬ Reader r347 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject347

def r348 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject348 : ¬ Reader r348 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject348

def r349 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject349 : ¬ Reader r349 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject349

def r350 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject350 : ¬ Reader r350 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject350

def r351 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject351 : ¬ Reader r351 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject351

def r352 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject352 : ¬ Reader r352 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject352

def r353 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject353 : ¬ Reader r353 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject353

def r354 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject354 : ¬ Reader r354 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject355 : ¬ Reader r355 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject356 : ¬ Reader r356 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject357 : ¬ Reader r357 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject357

def r358 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject358 : ¬ Reader r358 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject358

def r359 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject359 : ¬ Reader r359 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject359

def r360 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject360 : ¬ Reader r360 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject360

def r361 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject361 : ¬ Reader r361 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject361

def r362 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject362 : ¬ Reader r362 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject362

def r363 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject363 : ¬ Reader r363 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject363

def r364 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject364 : ¬ Reader r364 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject364

def r365 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject365 : ¬ Reader r365 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject365

def r366 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject366 : ¬ Reader r366 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject366

def r367 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject367 : ¬ Reader r367 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject367

def r368 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject368 : ¬ Reader r368 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject368

def r369 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject369 : ¬ Reader r369 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject369

def r370 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject370 : ¬ Reader r370 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject370

def r371 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject371 : ¬ Reader r371 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject371

def r372 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject372 : ¬ Reader r372 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject372

def r373 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject373 : ¬ Reader r373 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject373

def r374 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject374 : ¬ Reader r374 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject374

def r375 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject375 : ¬ Reader r375 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject375

def r376 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject376 : ¬ Reader r376 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject376

def r377 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject377 : ¬ Reader r377 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject377

def r378 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject378 : ¬ Reader r378 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject378

def r379 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject379 : ¬ Reader r379 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject379

def r380 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject380 : ¬ Reader r380 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject380

def r381 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject381 : ¬ Reader r381 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject381

def r382 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject382 : ¬ Reader r382 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject382

def r383 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject383 : ¬ Reader r383 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject383

def r384 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject384 : ¬ Reader r384 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject384

def r385 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject385 : ¬ Reader r385 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject385

def r386 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject386 : ¬ Reader r386 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject386

def r387 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject387 : ¬ Reader r387 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject387

def r388 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject388 : ¬ Reader r388 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject388

def r389 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject389 : ¬ Reader r389 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject389

def r390 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject390 : ¬ Reader r390 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject390

def r391 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject391 : ¬ Reader r391 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject391

def r392 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject392 : ¬ Reader r392 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject392

def r393 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject393 : ¬ Reader r393 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject393

def r394 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject394 : ¬ Reader r394 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject394

def r395 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject395 : ¬ Reader r395 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject395

def r396 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject396 : ¬ Reader r396 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject396

def r397 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject397 : ¬ Reader r397 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject397

def r398 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject398 : ¬ Reader r398 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject398

def r399 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject399 : ¬ Reader r399 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject399

def r400 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject400 : ¬ Reader r400 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject400

def r401 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject401 : ¬ Reader r401 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject401

def r402 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject402 : ¬ Reader r402 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject402

def r403 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject403 : ¬ Reader r403 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject403

def r404 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject404 : ¬ Reader r404 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject404

def r405 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject405 : ¬ Reader r405 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject405

def r406 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject406 : ¬ Reader r406 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject406

def r407 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject407 : ¬ Reader r407 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject407

def r408 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject408 : ¬ Reader r408 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject408

def r409 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject409 : ¬ Reader r409 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject409

def r410 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3)))) (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject410 : ¬ Reader r410 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject410

def r411 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject411 : ¬ Reader r411 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject411

def r412 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject412 : ¬ Reader r412 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject412

def r413 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject413 : ¬ Reader r413 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject413

def r414 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject414 : ¬ Reader r414 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject414

def r415 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject415 : ¬ Reader r415 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject415

def r416 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject416 : ¬ Reader r416 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject416

def r417 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject417 : ¬ Reader r417 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject417

def r418 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject418 : ¬ Reader r418 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject418

def r419 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject419 : ¬ Reader r419 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject419

def r420 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject420 : ¬ Reader r420 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject420

def r421 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject421 : ¬ Reader r421 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject421

def r422 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject422 : ¬ Reader r422 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject422

def r423 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject423 : ¬ Reader r423 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject423

def r424 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject424 : ¬ Reader r424 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject424

def r425 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject425 : ¬ Reader r425 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject425

def r426 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject426 : ¬ Reader r426 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject426

def r427 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject427 : ¬ Reader r427 := by
  exact absent_reduct true 8 1 (by decide) (by decide)
#print axioms reject427

def r428 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 2) (.var 1))))
theorem reject428 : ¬ Reader r428 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject428

def r429 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 1) (.var 2))))
theorem reject429 : ¬ Reader r429 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject429

def r430 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject430 : ¬ Reader r430 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject430

def r431 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject431 : ¬ Reader r431 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject431

def r432 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject432 : ¬ Reader r432 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject432

def r433 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 2)))) (.var 2)))
theorem reject433 : ¬ Reader r433 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject433

def r434 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.var 3))))) (.var 2)))
theorem reject434 : ¬ Reader r434 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject434

def r435 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject435 : ¬ Reader r435 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject435

def r436 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject436 : ¬ Reader r436 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject436

def r437 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject437 : ¬ Reader r437 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject437

def r438 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject438 : ¬ Reader r438 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject438

def r439 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject439 : ¬ Reader r439 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject439

def r440 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject440 : ¬ Reader r440 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject440

def r441 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject441 : ¬ Reader r441 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject441

def r442 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject442 : ¬ Reader r442 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject442

def r443 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject443 : ¬ Reader r443 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject443

def r444 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject444 : ¬ Reader r444 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject444

def r445 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject445 : ¬ Reader r445 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject445

def r446 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject446 : ¬ Reader r446 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject446

def r447 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject447 : ¬ Reader r447 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject447

def r448 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject448 : ¬ Reader r448 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject448

def r449 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject449 : ¬ Reader r449 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject449

def r450 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject450 : ¬ Reader r450 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject450

def r451 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject451 : ¬ Reader r451 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject451

def r452 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject452 : ¬ Reader r452 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject452

def r453 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject453 : ¬ Reader r453 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject453

def r454 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject454 : ¬ Reader r454 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject454

def r455 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject455 : ¬ Reader r455 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject455

def r456 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject456 : ¬ Reader r456 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject456

def r457 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject457 : ¬ Reader r457 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject457

def r458 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject458 : ¬ Reader r458 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject458

def r459 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject459 : ¬ Reader r459 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject459

def r460 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject460 : ¬ Reader r460 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject460

def r461 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject461 : ¬ Reader r461 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject461

def r462 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject462 : ¬ Reader r462 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject462

def r463 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject463 : ¬ Reader r463 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject463

def r464 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject464 : ¬ Reader r464 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject464

def r465 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject465 : ¬ Reader r465 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject465

def r466 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject466 : ¬ Reader r466 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject466

def r467 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject467 : ¬ Reader r467 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject467

def r468 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject468 : ¬ Reader r468 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject468

def r469 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject469 : ¬ Reader r469 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject469

def r470 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject470 : ¬ Reader r470 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject470

def r471 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject471 : ¬ Reader r471 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject471

def r472 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject472 : ¬ Reader r472 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject472

def r473 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject473 : ¬ Reader r473 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject473

def r474 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject474 : ¬ Reader r474 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject474

def r475 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject475 : ¬ Reader r475 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject475

def r476 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject476 : ¬ Reader r476 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject476

def r477 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject477 : ¬ Reader r477 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject477

def r478 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject478 : ¬ Reader r478 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject478

def r479 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject479 : ¬ Reader r479 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject479

def r480 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject480 : ¬ Reader r480 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject480

def r481 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject481 : ¬ Reader r481 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject481

def r482 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject482 : ¬ Reader r482 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject482

def r483 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject483 : ¬ Reader r483 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject483

def r484 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject484 : ¬ Reader r484 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject484

def r485 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject485 : ¬ Reader r485 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject485

def r486 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject486 : ¬ Reader r486 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject486

def r487 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 3))))) (.var 2)))
theorem reject487 : ¬ Reader r487 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject487

def r488 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 3))))) (.var 2)))
theorem reject488 : ¬ Reader r488 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 1)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject488

def r489 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject489 : ¬ Reader r489 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject489

def r490 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject490 : ¬ Reader r490 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject490

def r491 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject491 : ¬ Reader r491 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject491

def r492 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject492 : ¬ Reader r492 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject492

def r493 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject493 : ¬ Reader r493 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject493

def r494 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject494 : ¬ Reader r494 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject494

def r495 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject495 : ¬ Reader r495 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject495

def r496 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject496 : ¬ Reader r496 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject496

def r497 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject497 : ¬ Reader r497 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject497

def r498 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject498 : ¬ Reader r498 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject498

def r499 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject499 : ¬ Reader r499 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject499

def r500 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject500 : ¬ Reader r500 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject500

def r501 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject501 : ¬ Reader r501 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject501

def r502 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject502 : ¬ Reader r502 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject502

def r503 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject503 : ¬ Reader r503 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject503

def r504 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject504 : ¬ Reader r504 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject504

def r505 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject505 : ¬ Reader r505 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject505

def r506 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject506 : ¬ Reader r506 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject506

def r507 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject507 : ¬ Reader r507 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject507

def r508 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject508 : ¬ Reader r508 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject508

def r509 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject509 : ¬ Reader r509 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject509

def r510 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject510 : ¬ Reader r510 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject510

def r511 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject511 : ¬ Reader r511 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject511

def r512 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject512 : ¬ Reader r512 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject512

def r513 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject513 : ¬ Reader r513 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject513

def r514 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject514 : ¬ Reader r514 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject514

def r515 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject515 : ¬ Reader r515 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject515

def r516 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject516 : ¬ Reader r516 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 3), (.app (.lam (.var 1)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject516

def r517 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject517 : ¬ Reader r517 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject517

def r518 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject518 : ¬ Reader r518 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject518

def r519 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject519 : ¬ Reader r519 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject519

def r520 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 2)))) (.var 2)))
theorem reject520 : ¬ Reader r520 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject520

def r521 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject521 : ¬ Reader r521 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject521

def r522 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject522 : ¬ Reader r522 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject522

def r523 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject523 : ¬ Reader r523 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject523

def r524 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject524 : ¬ Reader r524 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject524

def r525 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject525 : ¬ Reader r525 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject525

def r526 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject526 : ¬ Reader r526 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject526

def r527 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject527 : ¬ Reader r527 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject527

def r528 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject528 : ¬ Reader r528 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject528

def r529 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject529 : ¬ Reader r529 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide)
#print axioms reject529

def r530 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject530 : ¬ Reader r530 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide)
#print axioms reject530

def r531 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject531 : ¬ Reader r531 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject531

def r532 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject532 : ¬ Reader r532 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject532

def r533 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject533 : ¬ Reader r533 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject533

def r534 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject534 : ¬ Reader r534 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject534

def r535 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject535 : ¬ Reader r535 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject535

def r536 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject536 : ¬ Reader r536 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject536

def r537 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject537 : ¬ Reader r537 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject537

def r538 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject538 : ¬ Reader r538 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject538

def r539 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject539 : ¬ Reader r539 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject539

def r540 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject540 : ¬ Reader r540 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject540

def r541 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject541 : ¬ Reader r541 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject541

def r542 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject542 : ¬ Reader r542 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject542

def r543 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject543 : ¬ Reader r543 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject543

def r544 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject544 : ¬ Reader r544 := by
  exact mixed_reduct true [[], [1, 2, 0, 1, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject544

def r545 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject545 : ¬ Reader r545 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject545

def r546 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject546 : ¬ Reader r546 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject546

def r547 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 2)))
theorem reject547 : ¬ Reader r547 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject547

def r548 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 2)))) (.var 2)))
theorem reject548 : ¬ Reader r548 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject548

def r549 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))) (.var 2)))
theorem reject549 : ¬ Reader r549 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject549

def r550 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject550 : ¬ Reader r550 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject550

def r551 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject551 : ¬ Reader r551 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject551

def r552 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject552 : ¬ Reader r552 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject552

def r553 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject553 : ¬ Reader r553 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject553

def r554 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject554 : ¬ Reader r554 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject554

def r555 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject555 : ¬ Reader r555 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject555

def r556 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject556 : ¬ Reader r556 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject556

def r557 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject557 : ¬ Reader r557 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject557

def r558 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0))))))) (.var 2)))
theorem reject558 : ¬ Reader r558 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject558

def r559 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0))))))) (.var 2)))
theorem reject559 : ¬ Reader r559 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject559

def r560 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject560 : ¬ Reader r560 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject560

def r561 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject561 : ¬ Reader r561 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject561

def r562 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject562 : ¬ Reader r562 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject562

def r563 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject563 : ¬ Reader r563 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject563

def r564 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject564 : ¬ Reader r564 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject564

def r565 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject565 : ¬ Reader r565 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject565

def r566 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject566 : ¬ Reader r566 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject566

def r567 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject567 : ¬ Reader r567 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject567

def r568 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject568 : ¬ Reader r568 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject568

def r569 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject569 : ¬ Reader r569 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject569

def r570 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject570 : ¬ Reader r570 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject570

def r571 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject571 : ¬ Reader r571 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject571

def r572 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 2)))
theorem reject572 : ¬ Reader r572 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject572

def r573 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))) (.var 2)))
theorem reject573 : ¬ Reader r573 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject573

def r574 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject574 : ¬ Reader r574 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject574

def r575 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject575 : ¬ Reader r575 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject575

def r576 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject576 : ¬ Reader r576 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject576

def r577 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject577 : ¬ Reader r577 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject577

def r578 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 2) (.var 1))))
theorem reject578 : ¬ Reader r578 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject578

def r579 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 1) (.var 2))))
theorem reject579 : ¬ Reader r579 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject579

def r580 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject580 : ¬ Reader r580 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject580

def r581 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject581 : ¬ Reader r581 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject581

def r582 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject582 : ¬ Reader r582 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject582

def r583 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 2)))) (.var 2)))
theorem reject583 : ¬ Reader r583 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject583

def r584 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject584 : ¬ Reader r584 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject584

def r585 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject585 : ¬ Reader r585 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.var 1))), (.var 3)] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject585

def r586 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject586 : ¬ Reader r586 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject586

def r587 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject587 : ¬ Reader r587 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject587

def r588 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.app (.var 2) (.var 1))))
theorem reject588 : ¬ Reader r588 := by
  exact loop_reduct true 5 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject588

def r589 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.app (.var 1) (.var 2))))
theorem reject589 : ¬ Reader r589 := by
  exact loop_reduct true 5 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject589

def r590 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject590 : ¬ Reader r590 := by
  exact mixed_reduct true [[], [1], [1, 1], [1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide)
#print axioms reject590

def r591 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject591 : ¬ Reader r591 := by
  exact mixed_reduct true [[], [1], [1, 1], [1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide)
#print axioms reject591

def r592 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.var 2) (.var 1))))
theorem reject592 : ¬ Reader r592 := by
  exact mixed_reduct true [[], [1], [1, 1], [1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide)
#print axioms reject592

def r593 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.var 1) (.var 2))))
theorem reject593 : ¬ Reader r593 := by
  exact mixed_reduct true [[], [1], [1, 1], [1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide)
#print axioms reject593

def r594 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject594 : ¬ Reader r594 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide)
#print axioms reject594

def r595 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject595 : ¬ Reader r595 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide)
#print axioms reject595

def r596 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject596 : ¬ Reader r596 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject596

def r597 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject597 : ¬ Reader r597 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject597

def r598 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject598 : ¬ Reader r598 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject598

def r599 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject599 : ¬ Reader r599 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject599

def r600 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject600 : ¬ Reader r600 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject600

def r601 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject601 : ¬ Reader r601 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject601

def r602 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject602 : ¬ Reader r602 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject602

def r603 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject603 : ¬ Reader r603 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject603

def r604 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject604 : ¬ Reader r604 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject604

def r605 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject605 : ¬ Reader r605 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject605

def r606 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.var 2)))
theorem reject606 : ¬ Reader r606 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject606

def r607 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))) (.var 2)))
theorem reject607 : ¬ Reader r607 := by
  exact loop_reduct true 5 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject607

def r608 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))))) (.var 2)))
theorem reject608 : ¬ Reader r608 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject608

def r609 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject609 : ¬ Reader r609 := by
  exact mixed_reduct true [[], [1], [1, 1], [1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject609

def r610 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 2)))
theorem reject610 : ¬ Reader r610 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject610

def r611 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 2)))) (.var 2)))
theorem reject611 : ¬ Reader r611 := by
  exact mixed_reduct true [[], [1], [1, 1], [1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject611

def r612 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 0)))))))) (.var 2)))
theorem reject612 : ¬ Reader r612 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject612

def r613 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject613 : ¬ Reader r613 := by
  exact mixed_reduct true [[], [1, 2, 0, 1, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject613

def r614 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.var 2)))
theorem reject614 : ¬ Reader r614 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject614

def r615 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 2)))) (.var 2)))
theorem reject615 : ¬ Reader r615 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject615

def r616 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0))))))) (.var 2)))
theorem reject616 : ¬ Reader r616 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject616

def r617 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject617 : ¬ Reader r617 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 1))) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject617

def r618 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0))))))) (.var 2)))
theorem reject618 : ¬ Reader r618 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject618

def r619 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject619 : ¬ Reader r619 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 0))) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject619

def r620 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.var 2)))
theorem reject620 : ¬ Reader r620 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject620

def r621 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject621 : ¬ Reader r621 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject621

def r622 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject622 : ¬ Reader r622 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject622

def r623 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0)))) (.var 2)))) (.var 2)))
theorem reject623 : ¬ Reader r623 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 0)) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject623

def r624 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject624 : ¬ Reader r624 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject624

def r625 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject625 : ¬ Reader r625 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject625

def r626 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject626 : ¬ Reader r626 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject626

def r627 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject627 : ¬ Reader r627 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject627

def r628 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 2) (.var 0))))
theorem reject628 : ¬ Reader r628 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject628

def r629 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.var 2))))
theorem reject629 : ¬ Reader r629 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject629

def r630 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject630 : ¬ Reader r630 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject630

def r631 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject631 : ¬ Reader r631 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject631

def r632 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 2) (.var 1))))
theorem reject632 : ¬ Reader r632 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject632

def r633 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 1) (.var 2))))
theorem reject633 : ¬ Reader r633 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject633

def r634 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.lam (.var 3))))
theorem reject634 : ¬ Reader r634 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject634

def r635 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject635 : ¬ Reader r635 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject635

def r636 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject636 : ¬ Reader r636 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject636

def r637 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.lam (.var 3))))
theorem reject637 : ¬ Reader r637 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.lam (.var 2))] (by decide) (by decide) (by decide)
#print axioms reject637

def r638 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject638 : ¬ Reader r638 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.app (.var 1) (.lam (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject638

def r639 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject639 : ¬ Reader r639 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.app (.lam (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject639

def r640 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject640 : ¬ Reader r640 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject640

def r641 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject641 : ¬ Reader r641 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject641

def r642 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject642 : ¬ Reader r642 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject642

def r643 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.var 0)))) (.var 2)))
theorem reject643 : ¬ Reader r643 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject643

def r644 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject644 : ¬ Reader r644 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject644

def r645 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject645 : ¬ Reader r645 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject645

def r646 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject646 : ¬ Reader r646 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject646

def r647 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.var 1)))) (.var 2)))
theorem reject647 : ¬ Reader r647 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject647

def r648 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject648 : ¬ Reader r648 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject648

def r649 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 2)))
theorem reject649 : ¬ Reader r649 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject649

def r650 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject650 : ¬ Reader r650 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject650

def r651 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.var 0))))) (.var 2)))
theorem reject651 : ¬ Reader r651 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject651

def r652 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject652 : ¬ Reader r652 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject652

def r653 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject653 : ¬ Reader r653 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject653

def r654 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject654 : ¬ Reader r654 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject654

def r655 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.var 2)))) (.var 2)))
theorem reject655 : ¬ Reader r655 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject655

def r656 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject656 : ¬ Reader r656 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject656

def r657 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject657 : ¬ Reader r657 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject657

def r658 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject658 : ¬ Reader r658 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject658

def r659 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject659 : ¬ Reader r659 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject659

def r660 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject660 : ¬ Reader r660 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject660

def r661 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject661 : ¬ Reader r661 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject661

def r662 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject662 : ¬ Reader r662 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject662

def r663 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject663 : ¬ Reader r663 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject663

def r664 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject664 : ¬ Reader r664 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject664

def r665 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject665 : ¬ Reader r665 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject665

def r666 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject666 : ¬ Reader r666 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject666

def r667 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject667 : ¬ Reader r667 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.lam (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject667

def r668 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject668 : ¬ Reader r668 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject668

def r669 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject669 : ¬ Reader r669 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject669

def r670 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject670 : ¬ Reader r670 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject670

def r671 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject671 : ¬ Reader r671 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject671

def r672 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject672 : ¬ Reader r672 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject672

def r673 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject673 : ¬ Reader r673 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject673

def r674 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject674 : ¬ Reader r674 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject674

def r675 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject675 : ¬ Reader r675 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject675

def r676 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject676 : ¬ Reader r676 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject676

def r677 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject677 : ¬ Reader r677 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject677

def r678 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject678 : ¬ Reader r678 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject678

def r679 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject679 : ¬ Reader r679 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject679

def r680 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject680 : ¬ Reader r680 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject680

def r681 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject681 : ¬ Reader r681 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject681

def r682 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) (.var 2)))
theorem reject682 : ¬ Reader r682 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject682

def r683 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))) (.var 2)))
theorem reject683 : ¬ Reader r683 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject683

def r684 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2)))))))) (.app (.var 2) (.var 1))))
theorem reject684 : ¬ Reader r684 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject684

def r685 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2)))))))) (.app (.var 1) (.var 2))))
theorem reject685 : ¬ Reader r685 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject685

def r686 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject686 : ¬ Reader r686 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject686

def r687 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject687 : ¬ Reader r687 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject687

def r688 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject688 : ¬ Reader r688 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject688

def r689 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject689 : ¬ Reader r689 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject689

def r690 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject690 : ¬ Reader r690 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide)
#print axioms reject690

def r691 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject691 : ¬ Reader r691 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide)
#print axioms reject691

def r692 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.app (.var 2) (.var 1))))
theorem reject692 : ¬ Reader r692 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) [(.lam (.lam (.lam (.var 1))))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject692

def r693 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.app (.var 1) (.var 2))))
theorem reject693 : ¬ Reader r693 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) [(.lam (.lam (.lam (.var 1))))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject693

def r694 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 1)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject694 : ¬ Reader r694 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 1)) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.lam (.lam (.var 1)))) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject694

def r695 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 1)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject695 : ¬ Reader r695 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 1)) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.lam (.lam (.var 1)))) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject695

def r696 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.var 2) (.var 1))))
theorem reject696 : ¬ Reader r696 := by
  exact head_reduct true 6 (3,2) (by decide) (by decide)
#print axioms reject696

def r697 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.var 1) (.var 2))))
theorem reject697 : ¬ Reader r697 := by
  exact head_reduct true 6 (3,2) (by decide) (by decide)
#print axioms reject697

def r698 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject698 : ¬ Reader r698 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 3)) [] [(.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject698

def r699 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject699 : ¬ Reader r699 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 3)) [] [(.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject699

def r700 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 2) (.var 1))))
theorem reject700 : ¬ Reader r700 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject700

def r701 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 1) (.var 2))))
theorem reject701 : ¬ Reader r701 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject701

def r702 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject702 : ¬ Reader r702 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject702

def r703 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject703 : ¬ Reader r703 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject703

def r704 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject704 : ¬ Reader r704 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject704

def r705 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject705 : ¬ Reader r705 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject705

def r706 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject706 : ¬ Reader r706 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject706

def r707 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject707 : ¬ Reader r707 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject707

def r708 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject708 : ¬ Reader r708 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject708

def r709 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject709 : ¬ Reader r709 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject709

def r710 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject710 : ¬ Reader r710 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject710

def r711 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject711 : ¬ Reader r711 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject711

def r712 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject712 : ¬ Reader r712 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject712

def r713 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject713 : ¬ Reader r713 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject713

def r714 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject714 : ¬ Reader r714 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject714

def r715 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject715 : ¬ Reader r715 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject715

def r716 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject716 : ¬ Reader r716 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject716

def r717 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.app (.var 2) (.var 0))))
theorem reject717 : ¬ Reader r717 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject717

def r718 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.app (.var 0) (.var 2))))
theorem reject718 : ¬ Reader r718 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject718

def r719 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject719 : ¬ Reader r719 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject719

def r720 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject720 : ¬ Reader r720 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject720

def r721 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2)))))) (.var 2)))
theorem reject721 : ¬ Reader r721 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject721

def r722 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.var 0)))) (.var 2)))
theorem reject722 : ¬ Reader r722 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject722

def r723 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2)))))) (.var 2)))
theorem reject723 : ¬ Reader r723 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject723

def r724 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))) (.var 2)))
theorem reject724 : ¬ Reader r724 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject724

def r725 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject725 : ¬ Reader r725 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject725

def r726 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject726 : ¬ Reader r726 := by
  exact loop_reduct true 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject726

def r727 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject727 : ¬ Reader r727 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject727

def r728 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject728 : ¬ Reader r728 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject728

def r729 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject729 : ¬ Reader r729 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject729

def r730 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 3))))))) (.var 2)))
theorem reject730 : ¬ Reader r730 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject730

def r731 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4))))))) (.var 2)))
theorem reject731 : ¬ Reader r731 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject731

def r732 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject732 : ¬ Reader r732 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 1)) (.var 1)) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 1)) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject732

def r733 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0)))))) (.var 2)))
theorem reject733 : ¬ Reader r733 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject733

def r734 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject734 : ¬ Reader r734 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject734

def r735 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3)))))) (.var 2)))
theorem reject735 : ¬ Reader r735 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject735

def r736 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject736 : ¬ Reader r736 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject736

def r737 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 3)))))) (.var 2)))
theorem reject737 : ¬ Reader r737 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 1))) (.lam (.app (.lam (.app (.var 1) (.var 1))) (.var 1)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject737

def r738 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject738 : ¬ Reader r738 := by
  exact head_reduct true 6 (0,4) (by decide) (by decide)
#print axioms reject738

def r739 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject739 : ¬ Reader r739 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject739

def r740 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject740 : ¬ Reader r740 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject740

def r741 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject741 : ¬ Reader r741 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject741

def r742 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))))))) (.var 2)))
theorem reject742 : ¬ Reader r742 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject742

def r743 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0))))))) (.var 2)))
theorem reject743 : ¬ Reader r743 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject743

def r744 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject744 : ¬ Reader r744 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject744

def r745 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject745 : ¬ Reader r745 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject745

def r746 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))) (.var 2)))
theorem reject746 : ¬ Reader r746 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject746

def r747 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject747 : ¬ Reader r747 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject747

def r748 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject748 : ¬ Reader r748 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject748

def r749 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject749 : ¬ Reader r749 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject749

def r750 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject750 : ¬ Reader r750 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.var 1))) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject750

def r751 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0)))))) (.var 2)))
theorem reject751 : ¬ Reader r751 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1)))))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject751

def r752 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.var 2))))) (.var 2)))
theorem reject752 : ¬ Reader r752 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject752

def r753 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 4) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject753 : ¬ Reader r753 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject753

def r754 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 4))))))) (.var 2)))
theorem reject754 : ¬ Reader r754 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject754

def r755 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))))) (.var 2)))
theorem reject755 : ¬ Reader r755 := by
  exact loop_reduct true 4 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject755

def r756 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject756 : ¬ Reader r756 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject756

def r757 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject757 : ¬ Reader r757 := by
  exact mixed_reduct true [[], [1], [1, 1], [1, 1, 2, 0, 2, 1], [1, 1, 2, 0, 2]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject757

def r758 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject758 : ¬ Reader r758 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject758

def r759 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject759 : ¬ Reader r759 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject759

def r760 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject760 : ¬ Reader r760 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject760

def r761 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject761 : ¬ Reader r761 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject761

def r762 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))) (.var 2)))
theorem reject762 : ¬ Reader r762 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.lam (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.lam (.var 1))) (.var 1))))) [(.app (.lam (.lam (.var 1))) (.var 0))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject762

def r763 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))) (.var 2)))
theorem reject763 : ¬ Reader r763 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))))) [(.app (.var 0) (.lam (.lam (.var 1))))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject763

def r764 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject764 : ¬ Reader r764 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject764

def r765 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)))))) (.var 2)))
theorem reject765 : ¬ Reader r765 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.app (.lam (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 1)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject765

def r766 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3)))))) (.var 2)))
theorem reject766 : ¬ Reader r766 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject766

def r767 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 2)))
theorem reject767 : ¬ Reader r767 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject767

def r768 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1)))))) (.var 2)))
theorem reject768 : ¬ Reader r768 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))))) [(.var 0), (.lam (.lam (.var 1)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject768

def r769 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)))))) (.var 2)))
theorem reject769 : ¬ Reader r769 := by
  exact loop_reduct true 4 3 (.app (.lam (.app (.app (.app (.lam (.lam (.var 1))) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.lam (.lam (.var 1))) (.var 0)) (.var 1)) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject769

def r770 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.lam (.var 4)))))))) (.var 2)))
theorem reject770 : ¬ Reader r770 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 2], [1], [1, 1]] [] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject770

def r771 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 5)))))))) (.var 2)))
theorem reject771 : ¬ Reader r771 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject771

def r772 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.lam (.var 4))) (.var 0)))))) (.var 2)))
theorem reject772 : ¬ Reader r772 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 1)) (.lam (.var 2))) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.lam (.var 2))) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject772

def r773 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2)))))) (.var 2)))
theorem reject773 : ¬ Reader r773 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject773

def r774 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1)))))) (.var 2)))
theorem reject774 : ¬ Reader r774 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject774

def r775 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 3)))))) (.var 2)))
theorem reject775 : ¬ Reader r775 := by
  exact loop_reduct true 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject775

def r776 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject776 : ¬ Reader r776 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject776

def r777 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject777 : ¬ Reader r777 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject777

def r778 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject778 : ¬ Reader r778 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject778

def r779 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject779 : ¬ Reader r779 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject779

def r780 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))))))) (.var 2)))
theorem reject780 : ¬ Reader r780 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject780

def r781 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))))))) (.var 2)))
theorem reject781 : ¬ Reader r781 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject781

def r782 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject782 : ¬ Reader r782 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject782

def r783 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject783 : ¬ Reader r783 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject783

def r784 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 3)))))) (.var 2)))
theorem reject784 : ¬ Reader r784 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.app (.var 0) (.var 0))) (.var 1)))) [(.lam (.lam (.var 1))), (.var 3), (.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject784

def r785 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 3)))))) (.var 2)))
theorem reject785 : ¬ Reader r785 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject785

def r786 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2)))))) (.var 2)))
theorem reject786 : ¬ Reader r786 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject786

def r787 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2)))))) (.var 2)))
theorem reject787 : ¬ Reader r787 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject787

def r788 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.var 0)) (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject788 : ¬ Reader r788 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject788

def r789 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject789 : ¬ Reader r789 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.lam (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject789

def r790 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject790 : ¬ Reader r790 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject790

def r791 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject791 : ¬ Reader r791 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject791

def r792 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject792 : ¬ Reader r792 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject792

def r793 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 2)))
theorem reject793 : ¬ Reader r793 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject793

def r794 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))) (.var 2)))
theorem reject794 : ¬ Reader r794 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject794

def r795 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject795 : ¬ Reader r795 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject795

def r796 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 0)) (.var 3))))))) (.var 2)))
theorem reject796 : ¬ Reader r796 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 0)) (.var 1))))) [(.app (.lam (.var 0)) (.var 0))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject796

def r797 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.var 0)))))))) (.var 2)))
theorem reject797 : ¬ Reader r797 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject797

def r798 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 3)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject798 : ¬ Reader r798 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject798

def r799 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 3) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject799 : ¬ Reader r799 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject799

def r800 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 3)))))) (.var 2)))
theorem reject800 : ¬ Reader r800 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject800

def r801 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.var 0))) (.var 3)))))) (.var 2)))
theorem reject801 : ¬ Reader r801 := by
  exact mixed_reduct true [[], [1, 2, 0, 2, 0, 1, 2], [1], [1, 1], [1, 1]] [] (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject801

def r802 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.app (.var 0) (.var 0))) (.var 3)))))) (.var 2)))
theorem reject802 : ¬ Reader r802 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.lam (.var 0)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.lam (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject802

def r803 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 3)))))) (.var 2)))
theorem reject803 : ¬ Reader r803 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) [(.lam (.var 0)), (.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject803

def r804 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject804 : ¬ Reader r804 := by
  exact loop_reduct true 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject804

def r805 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)) (.var 3)))))) (.var 2)))
theorem reject805 : ¬ Reader r805 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.lam (.var 0)) (.var 0)) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject805

def r806 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) (.var 2)))
theorem reject806 : ¬ Reader r806 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject806

def r807 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.lam (.var 0))))))) (.var 2)))
theorem reject807 : ¬ Reader r807 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) [(.var 0), (.lam (.var 0))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject807

def r808 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject808 : ¬ Reader r808 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject808

def r809 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject809 : ¬ Reader r809 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject809

def r810 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 2))))) (.var 2)))
theorem reject810 : ¬ Reader r810 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject810

def r811 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 2))))) (.var 2)))
theorem reject811 : ¬ Reader r811 := by
  exact loop_reduct true 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject811

def r812 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject812 : ¬ Reader r812 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject812

def r813 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject813 : ¬ Reader r813 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject813

def r814 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject814 : ¬ Reader r814 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject814

def r815 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject815 : ¬ Reader r815 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject815

def r816 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject816 : ¬ Reader r816 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject816

def r817 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject817 : ¬ Reader r817 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject817

def r818 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject818 : ¬ Reader r818 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 1) (.var 0)))] (by decide) (by decide) (by decide)
#print axioms reject818

def r819 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject819 : ¬ Reader r819 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject819

def r820 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject820 : ¬ Reader r820 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))] (by decide) (by decide) (by decide)
#print axioms reject820

def r821 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject821 : ¬ Reader r821 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)))] (by decide) (by decide) (by decide)
#print axioms reject821

def r822 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject822 : ¬ Reader r822 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject822

def r823 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject823 : ¬ Reader r823 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1)) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject823

def r824 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject824 : ¬ Reader r824 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject824

def r825 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject825 : ¬ Reader r825 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject825

def r826 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject826 : ¬ Reader r826 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 0)) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject826

def r827 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject827 : ¬ Reader r827 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject827

def r828 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject828 : ¬ Reader r828 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject828

def r829 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject829 : ¬ Reader r829 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject829

def r830 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject830 : ¬ Reader r830 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject830

def r831 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject831 : ¬ Reader r831 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject831

def r832 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject832 : ¬ Reader r832 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject832

def r833 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject833 : ¬ Reader r833 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject833

def r834 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject834 : ¬ Reader r834 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject834

def r835 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject835 : ¬ Reader r835 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject835

def r836 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject836 : ¬ Reader r836 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject836

def r837 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.lam (.var 3)))))
theorem reject837 : ¬ Reader r837 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject837

def r838 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject838 : ¬ Reader r838 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject838

def r839 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject839 : ¬ Reader r839 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject839

def r840 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject840 : ¬ Reader r840 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject840

def r841 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject841 : ¬ Reader r841 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject841

def r842 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject842 : ¬ Reader r842 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject842

def r843 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject843 : ¬ Reader r843 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject843

def r844 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 3)) (.var 1))))
theorem reject844 : ¬ Reader r844 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject844

def r845 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject845 : ¬ Reader r845 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject845

def r846 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject846 : ¬ Reader r846 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject846

def r847 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject847 : ¬ Reader r847 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject847

def r848 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject848 : ¬ Reader r848 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject848

def r849 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject849 : ¬ Reader r849 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject849

def r850 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject850 : ¬ Reader r850 := by
  exact head_reduct true 4 (3,2) (by decide) (by decide)
#print axioms reject850

def r851 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject851 : ¬ Reader r851 := by
  exact head_reduct true 4 (3,2) (by decide) (by decide)
#print axioms reject851

def r852 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject852 : ¬ Reader r852 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject852

def r853 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject853 : ¬ Reader r853 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject853

def r854 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject854 : ¬ Reader r854 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject854

def r855 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject855 : ¬ Reader r855 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject855

def r856 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject856 : ¬ Reader r856 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject856

def r857 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject857 : ¬ Reader r857 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject857

def r858 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject858 : ¬ Reader r858 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject858

def r859 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject859 : ¬ Reader r859 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject859

def r860 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.app (.var 2) (.var 1))))
theorem reject860 : ¬ Reader r860 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject860

def r861 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.app (.var 1) (.var 2))))
theorem reject861 : ¬ Reader r861 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject861

def r862 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject862 : ¬ Reader r862 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject862

def r863 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject863 : ¬ Reader r863 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject863

def r864 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.app (.var 2) (.var 1))))
theorem reject864 : ¬ Reader r864 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject864

def r865 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.app (.var 1) (.var 2))))
theorem reject865 : ¬ Reader r865 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject865

def r866 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject866 : ¬ Reader r866 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject866

def r867 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject867 : ¬ Reader r867 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject867

def r868 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.app (.var 2) (.var 1))))
theorem reject868 : ¬ Reader r868 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject868

def r869 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.app (.var 1) (.var 2))))
theorem reject869 : ¬ Reader r869 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject869

def r870 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject870 : ¬ Reader r870 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject870

def r871 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject871 : ¬ Reader r871 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject871

def r872 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject872 : ¬ Reader r872 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject872

def r873 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject873 : ¬ Reader r873 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject873

def r874 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject874 : ¬ Reader r874 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject874

def r875 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject875 : ¬ Reader r875 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject875

def r876 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject876 : ¬ Reader r876 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject876

def r877 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject877 : ¬ Reader r877 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject877

def r878 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject878 : ¬ Reader r878 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject878

def r879 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject879 : ¬ Reader r879 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject879

def r880 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 0))))
theorem reject880 : ¬ Reader r880 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject880

def r881 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.var 2))))
theorem reject881 : ¬ Reader r881 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject881

def r882 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.app (.var 2) (.var 0))))
theorem reject882 : ¬ Reader r882 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject882

def r883 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.app (.var 0) (.var 2))))
theorem reject883 : ¬ Reader r883 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject883

def r884 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject884 : ¬ Reader r884 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject884

def r885 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject885 : ¬ Reader r885 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject885

def r886 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.app (.var 2) (.var 1))))
theorem reject886 : ¬ Reader r886 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject886

def r887 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.app (.var 1) (.var 2))))
theorem reject887 : ¬ Reader r887 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject887

def r888 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject888 : ¬ Reader r888 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject888

def r889 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3))))) (.var 2)))
theorem reject889 : ¬ Reader r889 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject889

def r890 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 0))))
theorem reject890 : ¬ Reader r890 := by
  exact head_reduct true 4 (0,2) (by decide) (by decide)
#print axioms reject890

def r891 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.var 2))))
theorem reject891 : ¬ Reader r891 := by
  exact head_reduct true 4 (0,2) (by decide) (by decide)
#print axioms reject891

def r892 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3))))) (.app (.var 2) (.var 0))))
theorem reject892 : ¬ Reader r892 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))] (by decide) (by decide) (by decide)
#print axioms reject892

def r893 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3))))) (.app (.var 0) (.var 2))))
theorem reject893 : ¬ Reader r893 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject893

def r894 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 3))))) (.var 2)))
theorem reject894 : ¬ Reader r894 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject894

def r895 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 4)))))) (.var 2)))
theorem reject895 : ¬ Reader r895 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject895

def r896 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject896 : ¬ Reader r896 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject896

def r897 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.var 2)))
theorem reject897 : ¬ Reader r897 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject897

def r898 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2))))) (.var 2)))
theorem reject898 : ¬ Reader r898 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject898

def r899 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)))) (.var 2)))
theorem reject899 : ¬ Reader r899 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject899

def r900 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject900 : ¬ Reader r900 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject900

def r901 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject901 : ¬ Reader r901 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject901

def r902 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 2)))
theorem reject902 : ¬ Reader r902 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject902

def r903 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))) (.var 2)))
theorem reject903 : ¬ Reader r903 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject903

def r904 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject904 : ¬ Reader r904 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject904

def r905 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject905 : ¬ Reader r905 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject905

def r906 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) (.var 2)))
theorem reject906 : ¬ Reader r906 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject906

def r907 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)))) (.var 2)))
theorem reject907 : ¬ Reader r907 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject907

def r908 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))) (.var 2)))
theorem reject908 : ¬ Reader r908 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject908

def r909 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject909 : ¬ Reader r909 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject909

def r910 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))) (.var 2)))
theorem reject910 : ¬ Reader r910 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject910

def r911 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject911 : ¬ Reader r911 := by
  exact head_reduct true 4 (3,2) (by decide) (by decide)
#print axioms reject911

def r912 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) (.var 2)))
theorem reject912 : ¬ Reader r912 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject912

def r913 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3)))))) (.var 2)))
theorem reject913 : ¬ Reader r913 := by
  exact head_reduct true 4 (3,2) (by decide) (by decide)
#print axioms reject913

def r914 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3)) (.var 0))))) (.var 2)))
theorem reject914 : ¬ Reader r914 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject914

def r915 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject915 : ¬ Reader r915 := by
  exact head_reduct true 4 (0,2) (by decide) (by decide)
#print axioms reject915

def r916 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 3))))) (.var 2)))
theorem reject916 : ¬ Reader r916 := by
  exact head_reduct true 4 (3,3) (by decide) (by decide)
#print axioms reject916

def r917 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 2)))
theorem reject917 : ¬ Reader r917 := by
  exact head_reduct true 4 (0,2) (by decide) (by decide)
#print axioms reject917

def r918 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 3))))) (.var 2)))
theorem reject918 : ¬ Reader r918 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject918

def r919 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject919 : ¬ Reader r919 := by
  exact head_reduct true 4 (3,3) (by decide) (by decide)
#print axioms reject919

def r920 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 3)))))) (.var 2)))
theorem reject920 : ¬ Reader r920 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 3) (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject920

def r921 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject921 : ¬ Reader r921 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject921

def r922 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 3) (.var 0)))))) (.var 2)))
theorem reject922 : ¬ Reader r922 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 3)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject922

def r923 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject923 : ¬ Reader r923 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject923

def r924 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.var 2)))
theorem reject924 : ¬ Reader r924 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject924

def r925 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3)))))) (.var 2)))
theorem reject925 : ¬ Reader r925 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject925

def r926 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3))) (.var 0)))) (.var 2)))
theorem reject926 : ¬ Reader r926 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject926

def r927 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject927 : ¬ Reader r927 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject927

def r928 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)))) (.var 2)))
theorem reject928 : ¬ Reader r928 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject928

def r929 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2))))) (.var 2)))
theorem reject929 : ¬ Reader r929 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject929

def r930 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)))) (.var 2)))
theorem reject930 : ¬ Reader r930 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject930

def r931 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject931 : ¬ Reader r931 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject931

def r932 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject932 : ¬ Reader r932 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject932

def r933 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) (.var 2)))
theorem reject933 : ¬ Reader r933 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject933

def r934 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))) (.var 2)))
theorem reject934 : ¬ Reader r934 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject934

def r935 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject935 : ¬ Reader r935 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject935

def r936 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject936 : ¬ Reader r936 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject936

def r937 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))))) (.var 2)))
theorem reject937 : ¬ Reader r937 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject937

def r938 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)))) (.var 2)))
theorem reject938 : ¬ Reader r938 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject938

def r939 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject939 : ¬ Reader r939 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject939

def r940 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))) (.var 2)))
theorem reject940 : ¬ Reader r940 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject940

def r941 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject941 : ¬ Reader r941 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject941

def r942 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))) (.var 2)))
theorem reject942 : ¬ Reader r942 := by
  exact loop_reduct true 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject942

def r943 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject943 : ¬ Reader r943 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject943

def r944 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject944 : ¬ Reader r944 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject944

def r945 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject945 : ¬ Reader r945 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject945

def r946 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject946 : ¬ Reader r946 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject946

def r947 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject947 : ¬ Reader r947 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject947

def r948 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject948 : ¬ Reader r948 := by
  exact loop_reduct true 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject948

def r949 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject949 : ¬ Reader r949 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject949

def r950 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject950 : ¬ Reader r950 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject950

def r951 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject951 : ¬ Reader r951 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject951

def r952 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 3))))) (.var 2)))
theorem reject952 : ¬ Reader r952 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject952

def r953 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject953 : ¬ Reader r953 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject953

def r954 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3))))) (.var 2)))
theorem reject954 : ¬ Reader r954 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject954

def r955 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject955 : ¬ Reader r955 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject955

def r956 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject956 : ¬ Reader r956 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject956

def r957 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject957 : ¬ Reader r957 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject957

def r958 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject958 : ¬ Reader r958 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject958

def r959 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject959 : ¬ Reader r959 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject959

def r960 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject960 : ¬ Reader r960 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject960

def r961 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject961 : ¬ Reader r961 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject961

def r962 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject962 : ¬ Reader r962 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject962

def r963 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 2) (.var 1))))
theorem reject963 : ¬ Reader r963 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject963

def r964 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 1) (.var 2))))
theorem reject964 : ¬ Reader r964 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject964

def r965 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject965 : ¬ Reader r965 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject965

def r966 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))) (.var 2)))
theorem reject966 : ¬ Reader r966 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject966

def r967 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject967 : ¬ Reader r967 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject967

def r968 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 3))))) (.var 2)))
theorem reject968 : ¬ Reader r968 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject968

def r969 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject969 : ¬ Reader r969 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject969

def r970 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject970 : ¬ Reader r970 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject970

def r971 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject971 : ¬ Reader r971 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject971

def r972 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject972 : ¬ Reader r972 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject972

def r973 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject973 : ¬ Reader r973 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject973

def r974 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject974 : ¬ Reader r974 := by
  exact loop_reduct true 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject974

def r975 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject975 : ¬ Reader r975 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject975

def r976 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))) (.var 2)))
theorem reject976 : ¬ Reader r976 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject976

def r977 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject977 : ¬ Reader r977 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject977

def r978 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 3))))) (.var 2)))
theorem reject978 : ¬ Reader r978 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject978

def r979 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject979 : ¬ Reader r979 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject979

def r980 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 3))))) (.var 2)))
theorem reject980 : ¬ Reader r980 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject980

def r981 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject981 : ¬ Reader r981 := by
  exact head_reduct true 6 (3,2) (by decide) (by decide)
#print axioms reject981

def r982 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject982 : ¬ Reader r982 := by
  exact head_reduct true 6 (3,2) (by decide) (by decide)
#print axioms reject982

def r983 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject983 : ¬ Reader r983 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))) [(.var 3)] [(.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject983

def r984 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject984 : ¬ Reader r984 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))) [(.var 3)] [(.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject984

def r985 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject985 : ¬ Reader r985 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject985

def r986 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject986 : ¬ Reader r986 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject986

def r987 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.var 2)))
theorem reject987 : ¬ Reader r987 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject987

def r988 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))) (.var 2)))
theorem reject988 : ¬ Reader r988 := by
  exact loop_reduct true 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 3), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject988

def r989 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject989 : ¬ Reader r989 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 3))) [] [(.app (.var 1) (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject989

def r990 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject990 : ¬ Reader r990 := by
  exact loop_reduct true 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 3))) [] [(.app (.var 0) (.var 1))] (by decide) (by decide) (by decide)
#print axioms reject990

def r991 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 2) (.var 1))))
theorem reject991 : ¬ Reader r991 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject991

def r992 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 1) (.var 2))))
theorem reject992 : ¬ Reader r992 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject992

def r993 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject993 : ¬ Reader r993 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject993

def r994 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 0)) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject994 : ¬ Reader r994 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject994

def r995 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject995 : ¬ Reader r995 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject995

def r996 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject996 : ¬ Reader r996 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject996

def r997 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject997 : ¬ Reader r997 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject997

def r998 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject998 : ¬ Reader r998 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject998

def r999 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject999 : ¬ Reader r999 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject999

def r1000 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1000 : ¬ Reader r1000 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1000

def r1001 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1001 : ¬ Reader r1001 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1001

def r1002 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 0)) (.var 0)) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1002 : ¬ Reader r1002 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1002

def r1003 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1003 : ¬ Reader r1003 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1003

def r1004 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1004 : ¬ Reader r1004 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1004

def r1005 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1005 : ¬ Reader r1005 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1005

def r1006 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1006 : ¬ Reader r1006 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1006

def r1007 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.app (.var 2) (.var 1))))
theorem reject1007 : ¬ Reader r1007 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1007

def r1008 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.app (.var 1) (.var 2))))
theorem reject1008 : ¬ Reader r1008 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1008

def r1009 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 4) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1009 : ¬ Reader r1009 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1009

def r1010 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 4))))))) (.var 2)))
theorem reject1010 : ¬ Reader r1010 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1010

def r1011 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 4)) (.var 0))))))) (.var 2)))
theorem reject1011 : ¬ Reader r1011 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1011

def r1012 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 3)))))) (.var 2)))
theorem reject1012 : ¬ Reader r1012 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1012

def r1013 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 4)))))))) (.var 2)))
theorem reject1013 : ¬ Reader r1013 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1013

def r1014 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 5)))))))) (.var 2)))
theorem reject1014 : ¬ Reader r1014 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1014

def r1015 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 4)) (.var 0))))))) (.var 2)))
theorem reject1015 : ¬ Reader r1015 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1015

def r1016 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1016 : ¬ Reader r1016 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1016

def r1017 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1017 : ¬ Reader r1017 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1017

def r1018 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1018 : ¬ Reader r1018 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1018

def r1019 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1019 : ¬ Reader r1019 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1019

def r1020 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1020 : ¬ Reader r1020 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1020

def r1021 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1021 : ¬ Reader r1021 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1021

def r1022 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1022 : ¬ Reader r1022 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1022

def r1023 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1023 : ¬ Reader r1023 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1023

def r1024 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1024 : ¬ Reader r1024 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1024

def r1025 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1025 : ¬ Reader r1025 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1025

def r1026 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1026 : ¬ Reader r1026 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1026

def r1027 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1027 : ¬ Reader r1027 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1027

def r1028 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1028 : ¬ Reader r1028 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1028

def r1029 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1029 : ¬ Reader r1029 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1029

def r1030 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1030 : ¬ Reader r1030 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1030

def r1031 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1031 : ¬ Reader r1031 := by
  exact absent_reduct true 5 1 (by decide) (by decide)
#print axioms reject1031

def r1032 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 2) (.var 1))))
theorem reject1032 : ¬ Reader r1032 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1032

def r1033 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 1) (.var 2))))
theorem reject1033 : ¬ Reader r1033 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1033

def r1034 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1034 : ¬ Reader r1034 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1034

def r1035 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1035 : ¬ Reader r1035 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1035

def r1036 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 2) (.var 1))))
theorem reject1036 : ¬ Reader r1036 := by
  exact head_reduct true 4 (3,2) (by decide) (by decide)
#print axioms reject1036

def r1037 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 1) (.var 2))))
theorem reject1037 : ¬ Reader r1037 := by
  exact head_reduct true 4 (3,2) (by decide) (by decide)
#print axioms reject1037

def r1038 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1038 : ¬ Reader r1038 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1038

def r1039 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1039 : ¬ Reader r1039 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1039

def r1040 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 2) (.var 1))))
theorem reject1040 : ¬ Reader r1040 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1040

def r1041 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 1) (.var 2))))
theorem reject1041 : ¬ Reader r1041 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1041

def r1042 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject1042 : ¬ Reader r1042 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1042

def r1043 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject1043 : ¬ Reader r1043 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1043

def r1044 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1044 : ¬ Reader r1044 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject1044

def r1045 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 2)))
theorem reject1045 : ¬ Reader r1045 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1045

def r1046 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1046 : ¬ Reader r1046 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1046

def r1047 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 3))))) (.var 2)))
theorem reject1047 : ¬ Reader r1047 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1047

def r1048 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1048 : ¬ Reader r1048 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1048

def r1049 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 4)))))) (.var 2)))
theorem reject1049 : ¬ Reader r1049 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1049

def r1050 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 3))))) (.var 2)))
theorem reject1050 : ¬ Reader r1050 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1050

def r1051 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1051 : ¬ Reader r1051 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1051

def r1052 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1052 : ¬ Reader r1052 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1052

def r1053 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1053 : ¬ Reader r1053 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1053

def r1054 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1054 : ¬ Reader r1054 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1054

def r1055 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.app (.var 2) (.var 1))))
theorem reject1055 : ¬ Reader r1055 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1055

def r1056 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.app (.var 1) (.var 2))))
theorem reject1056 : ¬ Reader r1056 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1056

def r1057 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.app (.var 2) (.var 1))))
theorem reject1057 : ¬ Reader r1057 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1057

def r1058 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.app (.var 1) (.var 2))))
theorem reject1058 : ¬ Reader r1058 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1058

def r1059 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1059 : ¬ Reader r1059 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1059

def r1060 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1060 : ¬ Reader r1060 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1060

def r1061 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 5)))))))) (.var 2)))
theorem reject1061 : ¬ Reader r1061 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1061

def r1062 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 5) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1062 : ¬ Reader r1062 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1062

def r1063 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 2) (.var 1))))
theorem reject1063 : ¬ Reader r1063 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1063

def r1064 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 1) (.var 2))))
theorem reject1064 : ¬ Reader r1064 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1064

def r1065 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject1065 : ¬ Reader r1065 := by
  exact head_reduct true 3 (0,3) (by decide) (by decide)
#print axioms reject1065

def r1066 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))) (.var 2)))
theorem reject1066 : ¬ Reader r1066 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1066

def r1067 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject1067 : ¬ Reader r1067 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1067

def r1068 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 3))))) (.var 2)))
theorem reject1068 : ¬ Reader r1068 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1068

def r1069 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.app (.var 2) (.var 1))))
theorem reject1069 : ¬ Reader r1069 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1069

def r1070 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.app (.var 1) (.var 2))))
theorem reject1070 : ¬ Reader r1070 := by
  exact absent_reduct true 4 3 (by decide) (by decide)
#print axioms reject1070

end Blc.HandlerLet.Q1
