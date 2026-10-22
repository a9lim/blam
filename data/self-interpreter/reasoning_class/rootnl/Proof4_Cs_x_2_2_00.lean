import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_2_2_00
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r2 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject2 : ¬ Reader r2 := by
  exact replay_loop true [] 5 8 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.var 1), (.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject3 : ¬ Reader r3 := by
  exact replay_loop true [] 5 8 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject4 : ¬ Reader r4 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))), (.app (.var 1) (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject5 : ¬ Reader r5 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))), (.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject6 : ¬ Reader r6 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))] [(.var 1), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject7 : ¬ Reader r7 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7

def r10 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject10 : ¬ Reader r10 := by
  exact replay_loop true [] 5 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))))] [(.app (.app (.var 1) (.var 1)) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject11 : ¬ Reader r11 := by
  exact replay_loop true [] 5 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))))] [(.app (.app (.var 0) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11

def r18 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject18 : ¬ Reader r18 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))))), (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject19 : ¬ Reader r19 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))))), (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject19

def r22 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
theorem reject22 : ¬ Reader r22 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
theorem reject23 : ¬ Reader r23 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject24 : ¬ Reader r24 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject25 : ¬ Reader r25 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject26 : ¬ Reader r26 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject27 : ¬ Reader r27 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject28 : ¬ Reader r28 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject29 : ¬ Reader r29 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject29

def r30 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject30 : ¬ Reader r30 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject30

def r31 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject31 : ¬ Reader r31 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject31

def r32 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject32 : ¬ Reader r32 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject32

def r33 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject33 : ¬ Reader r33 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject33

def r38 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject38 : ¬ Reader r38 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject38

def r39 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject39 : ¬ Reader r39 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject40 : ¬ Reader r40 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject41 : ¬ Reader r41 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject41

def r42 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject42 : ¬ Reader r42 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject42

def r43 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject43 : ¬ Reader r43 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject43

def r44 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject44 : ¬ Reader r44 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject44

def r45 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject45 : ¬ Reader r45 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject45

def r46 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject46 : ¬ Reader r46 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject46

def r47 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject47 : ¬ Reader r47 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject47

def r52 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject52 : ¬ Reader r52 := by
  exact replay_loop true [] 5 8 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject52

def r53 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject53 : ¬ Reader r53 := by
  exact replay_loop true [] 5 8 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject53

def r54 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject54 : ¬ Reader r54 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject54

def r55 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject55 : ¬ Reader r55 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject55

def r56 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject56 : ¬ Reader r56 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject56

def r57 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject57 : ¬ Reader r57 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject57

def r58 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject58 : ¬ Reader r58 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject58

def r59 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject59 : ¬ Reader r59 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject59

def r60 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject60 : ¬ Reader r60 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject60

def r61 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject61 : ¬ Reader r61 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject61

def r66 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject66 : ¬ Reader r66 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject66

def r67 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject67 : ¬ Reader r67 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject67

def r68 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject68 : ¬ Reader r68 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject68

def r69 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject69 : ¬ Reader r69 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject69

def r70 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject70 : ¬ Reader r70 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject70

def r71 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject71 : ¬ Reader r71 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject71

def r72 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject72 : ¬ Reader r72 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject72

def r73 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject73 : ¬ Reader r73 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject73

def r74 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject74 : ¬ Reader r74 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject74

def r75 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject75 : ¬ Reader r75 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject75

def r80 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject80 : ¬ Reader r80 := by
  exact replay_loop true [] 3 8 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject80

def r81 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject81 : ¬ Reader r81 := by
  exact replay_loop true [] 3 8 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject81

def r82 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject82 : ¬ Reader r82 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject82

def r83 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject83 : ¬ Reader r83 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject83

def r84 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject84 : ¬ Reader r84 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject84

def r85 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject85 : ¬ Reader r85 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject85

def r86 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject86 : ¬ Reader r86 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject86

def r87 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject87 : ¬ Reader r87 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject87

def r88 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject88 : ¬ Reader r88 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject88

def r89 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject89 : ¬ Reader r89 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject89

def r94 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject94 : ¬ Reader r94 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject94

def r95 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject95 : ¬ Reader r95 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject95

def r96 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject96 : ¬ Reader r96 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject96

def r97 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject97 : ¬ Reader r97 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject97

def r98 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject98 : ¬ Reader r98 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject98

def r99 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject99 : ¬ Reader r99 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject99

def r100 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject100 : ¬ Reader r100 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject100

def r101 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject101 : ¬ Reader r101 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject101

def r102 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject102 : ¬ Reader r102 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject102

def r103 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject103 : ¬ Reader r103 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject103

def r104 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject104 : ¬ Reader r104 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject104

def r105 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject105 : ¬ Reader r105 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject105

def r112 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject112 : ¬ Reader r112 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject112

def r113 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject113 : ¬ Reader r113 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject113

def r114 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject114 : ¬ Reader r114 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject114

def r115 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject115 : ¬ Reader r115 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject115

def r116 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject116 : ¬ Reader r116 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject116

def r117 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject117 : ¬ Reader r117 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject117

def r120 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject120 : ¬ Reader r120 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject120

def r121 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject121 : ¬ Reader r121 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject121

def r122 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject122 : ¬ Reader r122 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject122

def r123 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject123 : ¬ Reader r123 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject123

def r124 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject124 : ¬ Reader r124 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject124

def r125 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject125 : ¬ Reader r125 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject125

def r128 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject128 : ¬ Reader r128 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject128

def r129 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject129 : ¬ Reader r129 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject129

def r130 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject130 : ¬ Reader r130 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject130

def r131 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject131 : ¬ Reader r131 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject131

def r132 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject132 : ¬ Reader r132 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject132

def r133 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject133 : ¬ Reader r133 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject133

def r152 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1)) (.var 0))
theorem reject152 : ¬ Reader r152 := by
  exact replay_loop true [] 5 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))] [(.app (.var 1) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject152

def r153 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.var 0)) (.var 1))
theorem reject153 : ¬ Reader r153 := by
  exact replay_loop true [] 5 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))] [(.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject153

def r154 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject154 : ¬ Reader r154 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject154

def r155 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject155 : ¬ Reader r155 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject155

def r156 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject156 : ¬ Reader r156 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))] [(.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject156

def r157 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject157 : ¬ Reader r157 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))] [(.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject157

def r158 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject158 : ¬ Reader r158 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject158

def r159 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject159 : ¬ Reader r159 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject159

def r160 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject160 : ¬ Reader r160 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))] [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.var 1) (.var 1)), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject160

def r161 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject161 : ¬ Reader r161 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))] [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.var 0) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject161

def r162 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject162 : ¬ Reader r162 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))] [(.var 1), (.var 1), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject162

def r163 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject163 : ¬ Reader r163 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))] [(.var 0), (.var 0), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject163

def r166 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
theorem reject166 : ¬ Reader r166 := by
  exact replay_loop true [] 5 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.app (.app (.var 1) (.var 1)) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject166

def r167 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
theorem reject167 : ¬ Reader r167 := by
  exact replay_loop true [] 5 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.app (.app (.var 0) (.var 0)) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject167

def r182 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
theorem reject182 : ¬ Reader r182 := by
  exact replay_loop true [] 13 6 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))), (.app (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))))) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject182

def r183 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
theorem reject183 : ¬ Reader r183 := by
  exact replay_loop true [] 13 6 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))), (.app (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))))) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject183

def r186 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject186 : ¬ Reader r186 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject186

def r187 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject187 : ¬ Reader r187 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject187

def r188 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0))
theorem reject188 : ¬ Reader r188 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject188

def r189 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1))
theorem reject189 : ¬ Reader r189 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject189

def r194 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject194 : ¬ Reader r194 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject194

def r195 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject195 : ¬ Reader r195 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject195

def r196 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject196 : ¬ Reader r196 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject196

def r197 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject197 : ¬ Reader r197 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject197

def r200 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1)) (.var 0))
theorem reject200 : ¬ Reader r200 := by
  exact replay_loop true [] 7 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject200

def r201 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.var 0)) (.var 1))
theorem reject201 : ¬ Reader r201 := by
  exact replay_loop true [] 7 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject201

def r202 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject202 : ¬ Reader r202 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject202

def r203 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject203 : ¬ Reader r203 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject203

def r204 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1)) (.var 0))
theorem reject204 : ¬ Reader r204 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject204

def r205 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 0)) (.var 1))
theorem reject205 : ¬ Reader r205 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject205

def r206 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject206 : ¬ Reader r206 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject206

def r207 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject207 : ¬ Reader r207 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject207

def r208 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject208 : ¬ Reader r208 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject208

def r209 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject209 : ¬ Reader r209 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject209

def r210 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject210 : ¬ Reader r210 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject210

def r211 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject211 : ¬ Reader r211 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject211

def r212 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject212 : ¬ Reader r212 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject212

def r213 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject213 : ¬ Reader r213 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject213

def r218 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject218 : ¬ Reader r218 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject218

def r219 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject219 : ¬ Reader r219 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject219

def r220 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject220 : ¬ Reader r220 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject220

def r221 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject221 : ¬ Reader r221 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject221

def r222 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject222 : ¬ Reader r222 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject222

def r223 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject223 : ¬ Reader r223 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject223

def r226 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
theorem reject226 : ¬ Reader r226 := by
  exact replay_loop true [] 11 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))), (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.app (.var 1) (.var 1)) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject226

def r227 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
theorem reject227 : ¬ Reader r227 := by
  exact replay_loop true [] 11 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))), (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject227

def r234 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject234 : ¬ Reader r234 := by
  exact replay_loop true [] 7 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.app (.app (.var 1) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject234

def r235 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject235 : ¬ Reader r235 := by
  exact replay_loop true [] 7 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject235

def r242 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject242 : ¬ Reader r242 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject242

def r243 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject243 : ¬ Reader r243 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject243

def r244 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject244 : ¬ Reader r244 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject244

def r245 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject245 : ¬ Reader r245 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject245

def r248 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1)) (.var 0))
theorem reject248 : ¬ Reader r248 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject248

def r249 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.var 0)) (.var 1))
theorem reject249 : ¬ Reader r249 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject249

def r250 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject250 : ¬ Reader r250 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject250

def r251 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject251 : ¬ Reader r251 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject251

def r254 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject254 : ¬ Reader r254 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject254

def r255 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject255 : ¬ Reader r255 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject255

def r256 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject256 : ¬ Reader r256 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject256

def r257 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject257 : ¬ Reader r257 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject257

def r258 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject258 : ¬ Reader r258 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject258

def r259 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject259 : ¬ Reader r259 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject259

def r260 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject260 : ¬ Reader r260 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))] [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject260

def r261 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject261 : ¬ Reader r261 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))] [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject261

def r262 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject262 : ¬ Reader r262 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject262

def r263 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject263 : ¬ Reader r263 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject263

def r266 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject266 : ¬ Reader r266 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject266

def r267 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject267 : ¬ Reader r267 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject267

def r268 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject268 : ¬ Reader r268 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject268

def r269 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject269 : ¬ Reader r269 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject269

def r270 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject270 : ¬ Reader r270 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject270

def r271 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject271 : ¬ Reader r271 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject271

def r290 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject290 : ¬ Reader r290 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject290

def r291 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject291 : ¬ Reader r291 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject291

def r292 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject292 : ¬ Reader r292 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject292

def r293 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject293 : ¬ Reader r293 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject293

def r296 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.var 1)) (.var 0))
theorem reject296 : ¬ Reader r296 := by
  exact replay_loop true [] 3 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject296

def r297 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) (.var 0)) (.var 1))
theorem reject297 : ¬ Reader r297 := by
  exact replay_loop true [] 3 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject297

def r298 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject298 : ¬ Reader r298 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject298

def r299 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject299 : ¬ Reader r299 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject299

def r302 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject302 : ¬ Reader r302 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject302

def r303 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject303 : ¬ Reader r303 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject303

def r304 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject304 : ¬ Reader r304 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject304

def r305 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject305 : ¬ Reader r305 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject305

def r306 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject306 : ¬ Reader r306 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject306

def r307 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject307 : ¬ Reader r307 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject307

def r308 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject308 : ¬ Reader r308 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))] [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject308

def r309 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject309 : ¬ Reader r309 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))] [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject309

def r310 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject310 : ¬ Reader r310 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject310

def r311 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject311 : ¬ Reader r311 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject311

def r314 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject314 : ¬ Reader r314 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject314

def r315 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject315 : ¬ Reader r315 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject315

def r316 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject316 : ¬ Reader r316 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject316

def r317 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject317 : ¬ Reader r317 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject317

def r318 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject318 : ¬ Reader r318 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject318

def r319 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject319 : ¬ Reader r319 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject319

def r320 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject320 : ¬ Reader r320 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject320

def r321 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject321 : ¬ Reader r321 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject321

def r322 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject322 : ¬ Reader r322 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject322

def r323 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject323 : ¬ Reader r323 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject323

def r324 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject324 : ¬ Reader r324 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject324

def r325 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject325 : ¬ Reader r325 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject325

def r326 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject326 : ¬ Reader r326 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject326

def r327 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject327 : ¬ Reader r327 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject327

def r330 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject330 : ¬ Reader r330 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject330

def r331 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject331 : ¬ Reader r331 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject331

def r332 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject332 : ¬ Reader r332 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject332

def r333 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject333 : ¬ Reader r333 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject333

def r336 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject336 : ¬ Reader r336 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject336

def r337 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject337 : ¬ Reader r337 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject337

def r338 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject338 : ¬ Reader r338 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject338

def r339 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject339 : ¬ Reader r339 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject339

def r340 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject340 : ¬ Reader r340 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject340

def r341 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject341 : ¬ Reader r341 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject341

def r342 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject342 : ¬ Reader r342 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject342

def r343 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject343 : ¬ Reader r343 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject343

def r344 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject344 : ¬ Reader r344 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject344

def r345 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject345 : ¬ Reader r345 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject345

def r346 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject346 : ¬ Reader r346 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject346

def r347 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject347 : ¬ Reader r347 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject347

def r348 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject348 : ¬ Reader r348 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject348

def r349 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject349 : ¬ Reader r349 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject349

def r350 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject350 : ¬ Reader r350 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject350

def r351 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject351 : ¬ Reader r351 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject351

def r352 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject352 : ¬ Reader r352 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject352

def r353 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject353 : ¬ Reader r353 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject353

def r354 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject354 : ¬ Reader r354 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject355 : ¬ Reader r355 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject356 : ¬ Reader r356 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject357 : ¬ Reader r357 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject357

def r358 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject358 : ¬ Reader r358 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject358

def r359 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject359 : ¬ Reader r359 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject359

def r360 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject360 : ¬ Reader r360 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject360

def r361 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject361 : ¬ Reader r361 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject361

def r362 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject362 : ¬ Reader r362 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject362

def r363 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject363 : ¬ Reader r363 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject363

def r364 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject364 : ¬ Reader r364 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject364

def r365 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject365 : ¬ Reader r365 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject365

def r366 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject366 : ¬ Reader r366 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject366

def r367 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject367 : ¬ Reader r367 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject367

def r368 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject368 : ¬ Reader r368 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject368

def r369 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject369 : ¬ Reader r369 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject369

def r370 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject370 : ¬ Reader r370 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject370

def r371 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject371 : ¬ Reader r371 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject371

def r372 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject372 : ¬ Reader r372 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject372

def r373 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject373 : ¬ Reader r373 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject373

def r374 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject374 : ¬ Reader r374 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject374

def r375 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject375 : ¬ Reader r375 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject375

def r376 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject376 : ¬ Reader r376 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject376

def r377 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject377 : ¬ Reader r377 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject377

def r378 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject378 : ¬ Reader r378 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject378

def r379 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject379 : ¬ Reader r379 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject379

def r380 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject380 : ¬ Reader r380 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject380

def r381 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject381 : ¬ Reader r381 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject381

def r382 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject382 : ¬ Reader r382 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject382

def r383 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject383 : ¬ Reader r383 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject383

def r384 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject384 : ¬ Reader r384 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject384

def r385 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject385 : ¬ Reader r385 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject385

def r386 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject386 : ¬ Reader r386 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject386

def r387 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject387 : ¬ Reader r387 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject387

def r388 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject388 : ¬ Reader r388 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject388

def r389 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject389 : ¬ Reader r389 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject389

def r390 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject390 : ¬ Reader r390 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject390

def r391 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject391 : ¬ Reader r391 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject391

def r392 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject392 : ¬ Reader r392 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject392

def r393 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject393 : ¬ Reader r393 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject393

def r394 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject394 : ¬ Reader r394 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject394

def r395 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject395 : ¬ Reader r395 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject395

def r396 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject396 : ¬ Reader r396 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject396

def r397 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject397 : ¬ Reader r397 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject397

def r398 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject398 : ¬ Reader r398 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject398

def r399 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject399 : ¬ Reader r399 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject399

def r400 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject400 : ¬ Reader r400 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject400

def r401 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject401 : ¬ Reader r401 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject401

def r402 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject402 : ¬ Reader r402 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject402

def r403 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject403 : ¬ Reader r403 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject403

def r404 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject404 : ¬ Reader r404 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject404

def r405 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject405 : ¬ Reader r405 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject405

def r406 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject406 : ¬ Reader r406 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject406

def r407 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject407 : ¬ Reader r407 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject407

def r408 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject408 : ¬ Reader r408 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject408

def r409 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject409 : ¬ Reader r409 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject409

def r410 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject410 : ¬ Reader r410 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject410

def r411 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject411 : ¬ Reader r411 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject411

def r412 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject412 : ¬ Reader r412 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject412

def r413 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject413 : ¬ Reader r413 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject413

def r414 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject414 : ¬ Reader r414 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject414

def r415 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject415 : ¬ Reader r415 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject415

def r434 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject434 : ¬ Reader r434 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))] [(.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject434

def r435 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject435 : ¬ Reader r435 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))] [(.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject435

def r438 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 1)) (.var 0))
theorem reject438 : ¬ Reader r438 := by
  exact replay_loop true [] 5 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))] [(.app (.var 1) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject438

def r439 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 0)) (.var 1))
theorem reject439 : ¬ Reader r439 := by
  exact replay_loop true [] 5 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))] [(.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject439

def r440 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject440 : ¬ Reader r440 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))), (.var 1), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject440

def r441 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject441 : ¬ Reader r441 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))), (.var 0), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject441

def r442 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject442 : ¬ Reader r442 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))), (.var 1), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject442

def r443 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject443 : ¬ Reader r443 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))), (.var 0), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject443

def r444 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject444 : ¬ Reader r444 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject444

def r445 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject445 : ¬ Reader r445 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject445

def r464 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 1)) (.var 0))
theorem reject464 : ¬ Reader r464 := by
  exact replay_loop true [] 5 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))), (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject464

def r465 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 0)) (.var 1))
theorem reject465 : ¬ Reader r465 := by
  exact replay_loop true [] 5 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))), (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject465

def r466 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject466 : ¬ Reader r466 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject466

def r467 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject467 : ¬ Reader r467 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject467

def r468 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject468 : ¬ Reader r468 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject468

def r469 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject469 : ¬ Reader r469 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject469

def r472 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 1)) (.var 0))
theorem reject472 : ¬ Reader r472 := by
  exact replay_loop true [] 7 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))] [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject472

def r473 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 0)) (.var 1))
theorem reject473 : ¬ Reader r473 := by
  exact replay_loop true [] 7 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))] [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject473

def r474 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject474 : ¬ Reader r474 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject474

def r475 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject475 : ¬ Reader r475 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject475

def r476 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.var 1)) (.var 0))
theorem reject476 : ¬ Reader r476 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject476

def r477 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.var 0)) (.var 1))
theorem reject477 : ¬ Reader r477 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject477

def r478 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject478 : ¬ Reader r478 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject478

def r479 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject479 : ¬ Reader r479 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject479

def r480 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject480 : ¬ Reader r480 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject480

def r481 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject481 : ¬ Reader r481 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject481

def r498 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject498 : ¬ Reader r498 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject498

def r499 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject499 : ¬ Reader r499 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject499

def r500 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject500 : ¬ Reader r500 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject500

def r501 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject501 : ¬ Reader r501 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject501

def r504 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 1)) (.var 0))
theorem reject504 : ¬ Reader r504 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject504

def r505 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 0)) (.var 1))
theorem reject505 : ¬ Reader r505 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject505

def r506 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject506 : ¬ Reader r506 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject506

def r507 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject507 : ¬ Reader r507 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject507

def r508 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.var 1)) (.var 0))
theorem reject508 : ¬ Reader r508 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject508

def r509 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.var 0)) (.var 1))
theorem reject509 : ¬ Reader r509 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject509

def r510 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject510 : ¬ Reader r510 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject510

def r511 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject511 : ¬ Reader r511 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject511

def r512 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject512 : ¬ Reader r512 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject512

def r513 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject513 : ¬ Reader r513 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject513

def r530 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject530 : ¬ Reader r530 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject530

def r531 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject531 : ¬ Reader r531 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject531

def r532 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject532 : ¬ Reader r532 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject532

def r533 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject533 : ¬ Reader r533 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject533

def r536 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 1)) (.var 0))
theorem reject536 : ¬ Reader r536 := by
  exact replay_loop true [] 3 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject536

def r537 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 0)) (.var 1))
theorem reject537 : ¬ Reader r537 := by
  exact replay_loop true [] 3 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject537

def r538 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject538 : ¬ Reader r538 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject538

def r539 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject539 : ¬ Reader r539 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject539

def r540 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.var 1)) (.var 0))
theorem reject540 : ¬ Reader r540 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject540

def r541 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.var 0)) (.var 1))
theorem reject541 : ¬ Reader r541 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject541

def r542 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject542 : ¬ Reader r542 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject542

def r543 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject543 : ¬ Reader r543 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject543

def r544 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject544 : ¬ Reader r544 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject544

def r545 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject545 : ¬ Reader r545 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject545

def r546 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1)) (.var 0))
theorem reject546 : ¬ Reader r546 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject546

def r547 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 0)) (.var 1))
theorem reject547 : ¬ Reader r547 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject547

def r548 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1)) (.var 0))
theorem reject548 : ¬ Reader r548 := by
  exact replay_loop true [] 5 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 0)) [(.app (.app (.var 0) (.var 0)) (.var 0))] [(.app (.app (.var 1) (.var 1)) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject548

def r549 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 0)) (.var 1))
theorem reject549 : ¬ Reader r549 := by
  exact replay_loop true [] 1 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 0)) [(.app (.app (.var 0) (.var 0)) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject549

def r550 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1)) (.var 0))
theorem reject550 : ¬ Reader r550 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject550

def r551 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 0)) (.var 1))
theorem reject551 : ¬ Reader r551 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject551

def r554 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 1)) (.var 0))
theorem reject554 : ¬ Reader r554 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject554

def r555 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 0)) (.var 1))
theorem reject555 : ¬ Reader r555 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject555

def r556 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1)) (.var 0))
theorem reject556 : ¬ Reader r556 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject556

def r557 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 0)) (.var 1))
theorem reject557 : ¬ Reader r557 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject557

def r558 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 1)) (.var 0))
theorem reject558 : ¬ Reader r558 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) [(.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject558

def r559 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 0)) (.var 1))
theorem reject559 : ¬ Reader r559 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) [(.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject559

def r560 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1)) (.var 0))
theorem reject560 : ¬ Reader r560 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))), (.var 0), (.var 0)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject560

def r561 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 0)) (.var 1))
theorem reject561 : ¬ Reader r561 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))), (.var 0), (.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject561

def r562 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1)) (.var 0))
theorem reject562 : ¬ Reader r562 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject562

def r563 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 0)) (.var 1))
theorem reject563 : ¬ Reader r563 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject563

def r564 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1)) (.var 0))
theorem reject564 : ¬ Reader r564 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject564

def r565 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 0)) (.var 1))
theorem reject565 : ¬ Reader r565 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject565

def r566 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1)) (.var 0))
theorem reject566 : ¬ Reader r566 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject566

def r567 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 0)) (.var 1))
theorem reject567 : ¬ Reader r567 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject567

def r572 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject572 : ¬ Reader r572 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject572

def r573 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject573 : ¬ Reader r573 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject573

def r574 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1)) (.var 0))
theorem reject574 : ¬ Reader r574 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject574

def r575 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 0)) (.var 1))
theorem reject575 : ¬ Reader r575 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject575

def r576 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1)) (.var 0))
theorem reject576 : ¬ Reader r576 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject576

def r577 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 0)) (.var 1))
theorem reject577 : ¬ Reader r577 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject577

def r578 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1)) (.var 0))
theorem reject578 : ¬ Reader r578 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject578

def r579 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 0)) (.var 1))
theorem reject579 : ¬ Reader r579 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject579

def r584 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1)) (.var 0))
theorem reject584 : ¬ Reader r584 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))) [(.app (.var 0) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject584

def r585 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 0)) (.var 1))
theorem reject585 : ¬ Reader r585 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))) [(.app (.var 0) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject585

def r586 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject586 : ¬ Reader r586 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject586

def r587 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject587 : ¬ Reader r587 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject587

def r588 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1)) (.var 0))
theorem reject588 : ¬ Reader r588 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject588

def r589 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 0)) (.var 1))
theorem reject589 : ¬ Reader r589 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject589

def r590 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1)) (.var 0))
theorem reject590 : ¬ Reader r590 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject590

def r591 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 0)) (.var 1))
theorem reject591 : ¬ Reader r591 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject591

def r592 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1)) (.var 0))
theorem reject592 : ¬ Reader r592 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject592

def r593 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 0)) (.var 1))
theorem reject593 : ¬ Reader r593 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject593

def r594 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject594 : ¬ Reader r594 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject594

def r595 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject595 : ¬ Reader r595 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject595

def r596 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject596 : ¬ Reader r596 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject596

def r597 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject597 : ¬ Reader r597 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject597

def r598 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject598 : ¬ Reader r598 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 0), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject598

def r599 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject599 : ¬ Reader r599 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject599

def r600 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject600 : ¬ Reader r600 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject600

def r601 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject601 : ¬ Reader r601 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject601

def r602 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject602 : ¬ Reader r602 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject602

def r603 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject603 : ¬ Reader r603 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject603

def r604 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject604 : ¬ Reader r604 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject604

def r605 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject605 : ¬ Reader r605 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject605

def r606 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject606 : ¬ Reader r606 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject606

def r607 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject607 : ¬ Reader r607 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject607

def r608 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject608 : ¬ Reader r608 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject608

def r609 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject609 : ¬ Reader r609 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject609

def r610 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject610 : ¬ Reader r610 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject610

def r611 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject611 : ¬ Reader r611 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject611

def r612 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject612 : ¬ Reader r612 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject612

def r613 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject613 : ¬ Reader r613 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject613

def r614 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject614 : ¬ Reader r614 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject614

def r615 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject615 : ¬ Reader r615 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject615

def r616 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject616 : ¬ Reader r616 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject616

def r617 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject617 : ¬ Reader r617 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject617

def r618 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject618 : ¬ Reader r618 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject618

def r619 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject619 : ¬ Reader r619 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject619

def r620 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject620 : ¬ Reader r620 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject620

def r621 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject621 : ¬ Reader r621 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject621

def r622 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject622 : ¬ Reader r622 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject622

def r623 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject623 : ¬ Reader r623 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject623

def r624 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject624 : ¬ Reader r624 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject624

def r625 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject625 : ¬ Reader r625 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject625

def r626 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject626 : ¬ Reader r626 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject626

def r627 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject627 : ¬ Reader r627 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject627

def r628 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject628 : ¬ Reader r628 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject628

def r629 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject629 : ¬ Reader r629 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject629

def r630 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject630 : ¬ Reader r630 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject630

def r631 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject631 : ¬ Reader r631 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject631

def r632 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject632 : ¬ Reader r632 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject632

def r633 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject633 : ¬ Reader r633 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject633

def r634 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject634 : ¬ Reader r634 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject634

def r635 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject635 : ¬ Reader r635 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject635

def r636 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject636 : ¬ Reader r636 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject636

def r637 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject637 : ¬ Reader r637 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject637

def r638 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject638 : ¬ Reader r638 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject638

def r639 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject639 : ¬ Reader r639 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject639

def r640 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject640 : ¬ Reader r640 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject640

def r641 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject641 : ¬ Reader r641 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject641

def r642 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject642 : ¬ Reader r642 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject642

def r643 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject643 : ¬ Reader r643 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject643

def r644 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject644 : ¬ Reader r644 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject644

def r645 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject645 : ¬ Reader r645 := by
  exact replay_absent true [] 9 1 (by decide) (by decide)
#print axioms reject645

def r646 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject646 : ¬ Reader r646 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject646

def r647 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject647 : ¬ Reader r647 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject647

def r648 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0))
theorem reject648 : ¬ Reader r648 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject648

def r649 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1))
theorem reject649 : ¬ Reader r649 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject649

def r650 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject650 : ¬ Reader r650 := by
  exact replay_absent true [] 7 1 (by decide) (by decide)
#print axioms reject650

def r651 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject651 : ¬ Reader r651 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject651

def r652 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject652 : ¬ Reader r652 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject652

def r653 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject653 : ¬ Reader r653 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject653

def r654 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject654 : ¬ Reader r654 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject654

def r655 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject655 : ¬ Reader r655 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject655

def r656 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject656 : ¬ Reader r656 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject656

def r657 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject657 : ¬ Reader r657 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject657

def r664 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject664 : ¬ Reader r664 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject664

def r665 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject665 : ¬ Reader r665 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject665

def r666 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject666 : ¬ Reader r666 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject666

def r667 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject667 : ¬ Reader r667 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject667

def r668 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject668 : ¬ Reader r668 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject668

def r669 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject669 : ¬ Reader r669 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject669

def r672 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject672 : ¬ Reader r672 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject672

def r673 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject673 : ¬ Reader r673 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject673

def r674 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject674 : ¬ Reader r674 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject674

def r675 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject675 : ¬ Reader r675 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject675

def r676 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject676 : ¬ Reader r676 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject676

def r677 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject677 : ¬ Reader r677 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject677

def r680 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject680 : ¬ Reader r680 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject680

def r681 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject681 : ¬ Reader r681 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject681
end Blc.HandlerLet.Proof4_Cs_x_2_2_00
