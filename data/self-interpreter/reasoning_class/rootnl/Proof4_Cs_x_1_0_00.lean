import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_0_00
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r0 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject0 : ¬ Reader r0 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1 : ¬ Reader r1 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject2 : ¬ Reader r2 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject3 : ¬ Reader r3 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject4 : ¬ Reader r4 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5 : ¬ Reader r5 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject6 : ¬ Reader r6 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7 : ¬ Reader r7 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject8 : ¬ Reader r8 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject9 : ¬ Reader r9 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject10 : ¬ Reader r10 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject11 : ¬ Reader r11 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject12 : ¬ Reader r12 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject13 : ¬ Reader r13 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject14 : ¬ Reader r14 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject15 : ¬ Reader r15 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject16 : ¬ Reader r16 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject17 : ¬ Reader r17 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject18 : ¬ Reader r18 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject19 : ¬ Reader r19 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject19

def r20 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject20 : ¬ Reader r20 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject20

def r21 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject21 : ¬ Reader r21 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject21

def r22 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject22 : ¬ Reader r22 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject23 : ¬ Reader r23 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject24 : ¬ Reader r24 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject25 : ¬ Reader r25 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject26 : ¬ Reader r26 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject27 : ¬ Reader r27 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject28 : ¬ Reader r28 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject29 : ¬ Reader r29 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject29

def r30 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject30 : ¬ Reader r30 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject30

def r31 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject31 : ¬ Reader r31 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject31

def r32 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject32 : ¬ Reader r32 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject32

def r33 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject33 : ¬ Reader r33 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject33

def r34 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject34 : ¬ Reader r34 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject34

def r35 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject35 : ¬ Reader r35 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject35

def r36 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject36 : ¬ Reader r36 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject36

def r37 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject37 : ¬ Reader r37 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject37

def r38 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject38 : ¬ Reader r38 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject38

def r39 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject39 : ¬ Reader r39 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject40 : ¬ Reader r40 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject41 : ¬ Reader r41 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject41

def r42 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject42 : ¬ Reader r42 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject42

def r43 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject43 : ¬ Reader r43 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject43

def r44 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject44 : ¬ Reader r44 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject44

def r45 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject45 : ¬ Reader r45 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject45

def r46 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject46 : ¬ Reader r46 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject46

def r47 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject47 : ¬ Reader r47 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject47

def r48 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject48 : ¬ Reader r48 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject48

def r49 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject49 : ¬ Reader r49 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject49

def r50 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject50 : ¬ Reader r50 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject50

def r51 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject51 : ¬ Reader r51 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject51

def r52 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject52 : ¬ Reader r52 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject52

def r53 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject53 : ¬ Reader r53 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject53

def r54 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject54 : ¬ Reader r54 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject54

def r55 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject55 : ¬ Reader r55 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject55

def r56 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject56 : ¬ Reader r56 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject56

def r57 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject57 : ¬ Reader r57 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject57

def r58 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject58 : ¬ Reader r58 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject58

def r59 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject59 : ¬ Reader r59 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject59

def r60 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject60 : ¬ Reader r60 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject60

def r61 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject61 : ¬ Reader r61 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject61

def r62 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject62 : ¬ Reader r62 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject62

def r63 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject63 : ¬ Reader r63 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject63

def r64 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject64 : ¬ Reader r64 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject64

def r65 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject65 : ¬ Reader r65 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject65

def r66 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject66 : ¬ Reader r66 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject66

def r67 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject67 : ¬ Reader r67 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject67

def r68 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject68 : ¬ Reader r68 := by
  exact replay_loop true [] 11 5 (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject68

def r69 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject69 : ¬ Reader r69 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject69

def r70 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject70 : ¬ Reader r70 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject70

def r71 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject71 : ¬ Reader r71 := by
  exact replay_loop true [] 6 5 (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject71

def r72 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 1))
theorem reject72 : ¬ Reader r72 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject72

def r73 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 1))
theorem reject73 : ¬ Reader r73 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject73

def r74 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject74 : ¬ Reader r74 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject74

def r75 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject75 : ¬ Reader r75 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject75

def r76 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject76 : ¬ Reader r76 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject76

def r77 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 1))
theorem reject77 : ¬ Reader r77 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject77

def r78 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject78 : ¬ Reader r78 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject78

def r79 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject79 : ¬ Reader r79 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject79

def r80 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject80 : ¬ Reader r80 := by
  exact replay_loop true [] 6 5 (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject80

def r81 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 1))
theorem reject81 : ¬ Reader r81 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject81

def r82 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject82 : ¬ Reader r82 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject82

def r83 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject83 : ¬ Reader r83 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject83

def r84 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject84 : ¬ Reader r84 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject84

def r85 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 1))
theorem reject85 : ¬ Reader r85 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject85

def r86 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject86 : ¬ Reader r86 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject86

def r87 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject87 : ¬ Reader r87 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject87

def r88 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject88 : ¬ Reader r88 := by
  exact replay_head true [] 7 (0,5) (by decide) (by decide)
#print axioms reject88

def r89 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject89 : ¬ Reader r89 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject89

def r90 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject90 : ¬ Reader r90 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject90

def r91 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject91 : ¬ Reader r91 := by
  exact replay_head true [] 7 (0,5) (by decide) (by decide)
#print axioms reject91

def r92 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject92 : ¬ Reader r92 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject92

def r93 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject93 : ¬ Reader r93 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject93

def r94 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject94 : ¬ Reader r94 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject94

def r95 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject95 : ¬ Reader r95 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject95

def r96 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject96 : ¬ Reader r96 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject96

def r97 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject97 : ¬ Reader r97 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject97

def r98 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject98 : ¬ Reader r98 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject98

def r99 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject99 : ¬ Reader r99 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject99

def r100 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject100 : ¬ Reader r100 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject100

def r101 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject101 : ¬ Reader r101 := by
  exact replay_head true [] 7 (0,5) (by decide) (by decide)
#print axioms reject101

def r102 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject102 : ¬ Reader r102 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject102

def r103 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject103 : ¬ Reader r103 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject103

def r104 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject104 : ¬ Reader r104 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject104

def r105 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject105 : ¬ Reader r105 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject105

def r106 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject106 : ¬ Reader r106 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject106

def r107 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject107 : ¬ Reader r107 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject107

def r108 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject108 : ¬ Reader r108 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject108

def r109 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject109 : ¬ Reader r109 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject109

def r110 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject110 : ¬ Reader r110 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject110

def r111 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject111 : ¬ Reader r111 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject111

def r112 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject112 : ¬ Reader r112 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject112

def r113 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject113 : ¬ Reader r113 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject113

def r114 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject114 : ¬ Reader r114 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject114

def r115 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject115 : ¬ Reader r115 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject115

def r116 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject116 : ¬ Reader r116 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject116

def r117 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject117 : ¬ Reader r117 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject117

def r118 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject118 : ¬ Reader r118 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject118

def r119 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject119 : ¬ Reader r119 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject119

def r120 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject120 : ¬ Reader r120 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject120

def r121 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject121 : ¬ Reader r121 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject121

def r122 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject122 : ¬ Reader r122 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject122

def r123 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject123 : ¬ Reader r123 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject123

def r124 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject124 : ¬ Reader r124 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject124

def r125 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject125 : ¬ Reader r125 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject125

def r126 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject126 : ¬ Reader r126 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject126

def r127 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject127 : ¬ Reader r127 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject127

def r128 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject128 : ¬ Reader r128 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject128

def r129 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject129 : ¬ Reader r129 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject129

def r130 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject130 : ¬ Reader r130 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject130

def r131 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject131 : ¬ Reader r131 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject131
end Blc.HandlerLet.Proof4_Cs_x_1_0_00
