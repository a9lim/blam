import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q4AllLoop
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r0 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.var 0)) (.var 1)))
theorem reject0 : ¬ Reader r0 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.var 1)) (.var 0)))
theorem reject1 : ¬ Reader r1 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 0)) (.var 0)))
theorem reject2 : ¬ Reader r2 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.var 0)) (.var 1)))
theorem reject3 : ¬ Reader r3 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.var 1)) (.var 0)))
theorem reject4 : ¬ Reader r4 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 2)) (.var 1)))
theorem reject5 : ¬ Reader r5 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1)) (.var 2)))
theorem reject6 : ¬ Reader r6 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 2)) (.var 0)))
theorem reject7 : ¬ Reader r7 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0)) (.var 2)))
theorem reject8 : ¬ Reader r8 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 0)) (.var 0)))
theorem reject9 : ¬ Reader r9 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 2)) (.var 0)))
theorem reject10 : ¬ Reader r10 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0)) (.var 2)))
theorem reject11 : ¬ Reader r11 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.var 1)) (.var 1)))
theorem reject12 : ¬ Reader r12 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 0)) (.var 1)))
theorem reject13 : ¬ Reader r13 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 1)) (.var 0)))
theorem reject14 : ¬ Reader r14 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.var 1)) (.var 1)))
theorem reject15 : ¬ Reader r15 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 2)) (.var 1)))
theorem reject16 : ¬ Reader r16 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 1)) (.var 2)))
theorem reject17 : ¬ Reader r17 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 0)) (.var 1)))
theorem reject18 : ¬ Reader r18 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 1)) (.var 0)))
theorem reject19 : ¬ Reader r19 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject19

def r20 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 2)) (.var 1)))
theorem reject20 : ¬ Reader r20 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject20

def r21 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 1)) (.var 2)))
theorem reject21 : ¬ Reader r21 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject21

def r22 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 1)) (.var 2)) (.var 0)))
theorem reject22 : ¬ Reader r22 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 1)) (.var 0)) (.var 2)))
theorem reject23 : ¬ Reader r23 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0))))
theorem reject24 : ¬ Reader r24 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1)))
theorem reject25 : ¬ Reader r25 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0))))
theorem reject26 : ¬ Reader r26 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0)))
theorem reject27 : ¬ Reader r27 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 1)) (.var 1)))
theorem reject28 : ¬ Reader r28 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0), (.var 0), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1)))
theorem reject29 : ¬ Reader r29 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject29

def r30 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0)))
theorem reject30 : ¬ Reader r30 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject30

def r31 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 0))))
theorem reject31 : ¬ Reader r31 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject31

def r32 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 1)))
theorem reject32 : ¬ Reader r32 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.var 0)), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject32

def r33 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0))))
theorem reject33 : ¬ Reader r33 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject33

def r34 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2)))
theorem reject34 : ¬ Reader r34 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject34

def r35 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1)))
theorem reject35 : ¬ Reader r35 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject35

def r36 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2)))
theorem reject36 : ¬ Reader r36 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject36

def r37 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0))))
theorem reject37 : ¬ Reader r37 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject37

def r38 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0)))
theorem reject38 : ¬ Reader r38 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject38

def r39 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0))))
theorem reject39 : ¬ Reader r39 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.var 0))] (by decide) (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 2)))
theorem reject40 : ¬ Reader r40 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.var 0)), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0)))
theorem reject41 : ¬ Reader r41 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject41

def r42 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 2)))
theorem reject42 : ¬ Reader r42 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject42

def r43 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)) (.var 1)) (.var 1)))
theorem reject43 : ¬ Reader r43 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1), (.var 0), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject43

def r44 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 1)) (.var 2)) (.var 1)))
theorem reject44 : ¬ Reader r44 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 0), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject44

def r45 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 1)) (.var 1)) (.var 2)))
theorem reject45 : ¬ Reader r45 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 0), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject45

def r46 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 1)))
theorem reject46 : ¬ Reader r46 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject46

def r47 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 0)))
theorem reject47 : ¬ Reader r47 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject47

def r48 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1)))
theorem reject48 : ¬ Reader r48 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject48

def r49 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2)))
theorem reject49 : ¬ Reader r49 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject49

def r50 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0)))
theorem reject50 : ¬ Reader r50 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject50

def r51 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2)))
theorem reject51 : ¬ Reader r51 := by
  exact loop_reduct true 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject51

end Blc.FirstopNonlinear.Q4AllLoop
