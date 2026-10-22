import Certificates
namespace Blc.HandlerLet.Proof4_Cs_nested_2_2_00
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r0 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject0 : ¬ Reader r0 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1 : ¬ Reader r1 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2 : ¬ Reader r2 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject3 : ¬ Reader r3 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject4 : ¬ Reader r4 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject5 : ¬ Reader r5 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject6 : ¬ Reader r6 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject7 : ¬ Reader r7 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject8 : ¬ Reader r8 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject9 : ¬ Reader r9 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject10 : ¬ Reader r10 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11 : ¬ Reader r11 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject12 : ¬ Reader r12 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject13 : ¬ Reader r13 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject14 : ¬ Reader r14 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject15 : ¬ Reader r15 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject16 : ¬ Reader r16 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject17 : ¬ Reader r17 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject18 : ¬ Reader r18 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject19 : ¬ Reader r19 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject19

def r20 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject20 : ¬ Reader r20 := by
  exact replay_loop true [] 2 6 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject20

def r21 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject21 : ¬ Reader r21 := by
  exact replay_loop true [] 2 6 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject21

def r22 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject22 : ¬ Reader r22 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject23 : ¬ Reader r23 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject24 : ¬ Reader r24 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject25 : ¬ Reader r25 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject26 : ¬ Reader r26 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject27 : ¬ Reader r27 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject28 : ¬ Reader r28 := by
  exact replay_loop true [] 4 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject29 : ¬ Reader r29 := by
  exact replay_loop true [] 4 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject29
end Blc.HandlerLet.Proof4_Cs_nested_2_2_00
