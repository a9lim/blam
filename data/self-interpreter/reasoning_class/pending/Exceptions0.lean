import Certificates
namespace Blc.HandlerLet.Pending0
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r0 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject0 : ¬ Reader r0 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject1 : ¬ Reader r1 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2 : ¬ Reader r2 := by
  exact replay_loop true [] 2 3 (.app (.app (.lam (.app (.var 0) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject3 : ¬ Reader r3 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject4 : ¬ Reader r4 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject5 : ¬ Reader r5 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject6 : ¬ Reader r6 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject7 : ¬ Reader r7 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject8 : ¬ Reader r8 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject9 : ¬ Reader r9 := by
  exact replay_loop true [] 2 3 (.app (.app (.lam (.app (.var 0) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject10 : ¬ Reader r10 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 1)) (.lam (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject11 : ¬ Reader r11 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject12 : ¬ Reader r12 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject13 : ¬ Reader r13 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject14 : ¬ Reader r14 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject15 : ¬ Reader r15 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 2)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject16 : ¬ Reader r16 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject16
end Blc.HandlerLet.Pending0
