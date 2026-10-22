import Certificates
namespace Blc.HandlerLet.Q4
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r0 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)) (.var 0)) (.var 1)))
theorem reject0 : ¬ Reader r0 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)) (.var 1)) (.var 0)))
theorem reject1 : ¬ Reader r1 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)) (.var 0)) (.var 0)))
theorem reject2 : ¬ Reader r2 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)) (.var 0)) (.var 1)))
theorem reject3 : ¬ Reader r3 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)) (.var 1)) (.var 0)))
theorem reject4 : ¬ Reader r4 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 2)) (.var 1)))
theorem reject5 : ¬ Reader r5 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1)) (.var 2)))
theorem reject6 : ¬ Reader r6 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 2)) (.var 0)))
theorem reject7 : ¬ Reader r7 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0)) (.var 2)))
theorem reject8 : ¬ Reader r8 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)) (.var 0)) (.var 0)))
theorem reject9 : ¬ Reader r9 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 2)) (.var 0)))
theorem reject10 : ¬ Reader r10 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0)) (.var 2)))
theorem reject11 : ¬ Reader r11 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 3), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.var 1)] (by decide) (by decide) (by decide)
#print axioms reject11

end Blc.HandlerLet.Q4
