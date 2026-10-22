import Recursor
namespace Blc.Rootcert.LowerCases
open Term SelfintClass RootcertRecursor
set_option maxRecDepth 10000

def r833 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject833 : ¬ Reader r833 := by
 exact reject [[1, 1, 1]] (.var 1) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject833

def r834 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject834 : ¬ Reader r834 := by
 exact reject [[1, 1, 1]] (.var 0) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject834

def r835 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject835 : ¬ Reader r835 := by
 exact reject [[1, 1]] (.app (.var 1) (.var 0)) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject835

def r836 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject836 : ¬ Reader r836 := by
 exact reject [[1, 1]] (.app (.var 0) (.var 1)) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject836

def r845 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject845 : ¬ Reader r845 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.var 1) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject845

def r846 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject846 : ¬ Reader r846 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.var 0) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject846

def r847 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject847 : ¬ Reader r847 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 1) (.var 0)) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject847

def r848 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject848 : ¬ Reader r848 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 1)) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject848

def r1138 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject1138 : ¬ Reader r1138 := by
 exact reject [[1, 1]] (.var 0) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1138

def r1149 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject1149 : ¬ Reader r1149 := by
 exact reject [[1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.var 0) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1149
end Blc.Rootcert.LowerCases
