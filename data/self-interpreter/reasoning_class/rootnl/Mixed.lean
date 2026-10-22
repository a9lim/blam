import Certificates
namespace Blc.HandlerLet.RootNLMixed
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r0 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject0 : ¬ Reader r0 := by
 exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1]] [[1, 1, 2, 1], [1, 1, 2, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject1 : ¬ Reader r1 := by
 exact mixed_reduct true [[1, 1], [1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject2 : ¬ Reader r2 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 2], [1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject2

def r3 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject3 : ¬ Reader r3 := by
 exact mixed_reduct true [[1, 1], [1, 1]] [[1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject3

def r4 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject4 : ¬ Reader r4 := by
 exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [[1, 1, 2, 1], [1, 1, 2, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 0)) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4

def r5 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject5 : ¬ Reader r5 := by
 exact mixed_reduct true [[1, 1], [1, 1]] [[1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.lam (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject5

def r6 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject6 : ¬ Reader r6 := by
 exact mixed_reduct true [[1, 1], [1, 1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject6

def r7 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject7 : ¬ Reader r7 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2], [1, 1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject7

def r8 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject8 : ¬ Reader r8 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject8

def r9 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject9 : ¬ Reader r9 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject9

def r10 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject10 : ¬ Reader r10 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 2]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject10

def r11 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject11 : ¬ Reader r11 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject11

def r12 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject12 : ¬ Reader r12 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject12

def r13 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject13 : ¬ Reader r13 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject13

def r14 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject14 : ¬ Reader r14 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject14

def r15 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject15 : ¬ Reader r15 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject15

def r16 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject16 : ¬ Reader r16 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject16

def r17 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject17 : ¬ Reader r17 := by
 exact mixed_reduct true [[1, 1], [1, 1, 1]] [[1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject17

def r18 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject18 : ¬ Reader r18 := by
 exact mixed_reduct true [[1, 1], [1, 1, 1, 1]] [[1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject18

def r19 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject19 : ¬ Reader r19 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject19

def r20 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject20 : ¬ Reader r20 := by
 exact mixed_reduct true [[1, 1], [1, 1, 1, 2]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject20

def r21 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject21 : ¬ Reader r21 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject21

def r22 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject22 : ¬ Reader r22 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject22

def r23 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject23 : ¬ Reader r23 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) [] [(.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject23

def r24 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject24 : ¬ Reader r24 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) [] [(.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject24

def r25 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject25 : ¬ Reader r25 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1]] [[1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject25

def r26 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject26 : ¬ Reader r26 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1]] [[1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject26

def r27 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject27 : ¬ Reader r27 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))) (.lam (.var 0))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject27

def r28 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject28 : ¬ Reader r28 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))) (.lam (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject28

def r29 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject29 : ¬ Reader r29 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject29

def r30 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject30 : ¬ Reader r30 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))) (.var 1)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject30

def r31 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject31 : ¬ Reader r31 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))) (.var 0)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject31

def r32 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject32 : ¬ Reader r32 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))) (.var 0)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject32

def r33 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject33 : ¬ Reader r33 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.var 0))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject33

def r34 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject34 : ¬ Reader r34 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject34

def r35 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject35 : ¬ Reader r35 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject35

def r36 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject36 : ¬ Reader r36 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 1)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject36

def r37 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject37 : ¬ Reader r37 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 0)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject37

def r38 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject38 : ¬ Reader r38 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 0)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject38

def r39 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject39 : ¬ Reader r39 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 0))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject40 : ¬ Reader r40 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject41 : ¬ Reader r41 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject41

def r42 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject42 : ¬ Reader r42 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject42

def r43 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject43 : ¬ Reader r43 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject43

def r44 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject44 : ¬ Reader r44 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject44

def r45 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject45 : ¬ Reader r45 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject45

def r46 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject46 : ¬ Reader r46 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject46

def r47 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject47 : ¬ Reader r47 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject47

def r48 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject48 : ¬ Reader r48 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject48

def r49 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject49 : ¬ Reader r49 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject49

def r50 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject50 : ¬ Reader r50 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject50

def r51 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject51 : ¬ Reader r51 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject51

def r52 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject52 : ¬ Reader r52 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject52

def r53 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject53 : ¬ Reader r53 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject53

def r54 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject54 : ¬ Reader r54 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject54

def r55 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject55 : ¬ Reader r55 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject55

def r56 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject56 : ¬ Reader r56 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject56
end Blc.HandlerLet.RootNLMixed
