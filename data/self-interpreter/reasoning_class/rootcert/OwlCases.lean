import Owl
namespace Blc.Rootcert.OwlCases
open Term SelfintClass RootcertOwl
set_option maxRecDepth 10000

def r0 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject0 : ¬ Reader r0 := by
 exact reject [[1, 1, 1]] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject0

def r1 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1 : ¬ Reader r1 := by
 exact reject [[1, 1, 1]] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1

def r2 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject2 : ¬ Reader r2 := by
 exact reject [[1, 1]] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject2

def r3 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject3 : ¬ Reader r3 := by
 exact reject [[1, 1]] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject3

def r102 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject102 : ¬ Reader r102 := by
 exact reject [[1, 1]] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject102
end Blc.Rootcert.OwlCases
