import Tri
namespace Blc.Rootcert2.TriCases01
open Term SelfintClass Rootcert2Tri
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r442 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject442 : ¬ Reader r442 :=
 Rootcert2Tri.reject (t := .app r442 Z) [] (by decide) (Bad.replay [[1, 1, 1], [1, 1, 1], [1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.tri (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1)) (by decide)))))
#print axioms reject442

def r450 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject450 : ¬ Reader r450 :=
 Rootcert2Tri.reject (t := .app r450 Z) [] (by decide) (Bad.replay [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.app (.app (.var 1) (.var 1)) (.var 1)) (Bad.left (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (Bad.tri (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (by decide)))))))
#print axioms reject450

def r451 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject451 : ¬ Reader r451 :=
 Rootcert2Tri.reject (t := .app r451 Z) [] (by decide) (Bad.replay [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.app (.app (.var 0) (.var 0)) (.var 0)) (Bad.left (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (Bad.tri (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (by decide)))))))
#print axioms reject451

def r452 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject452 : ¬ Reader r452 :=
 Rootcert2Tri.reject (t := .app r452 Z) [] (by decide) (Bad.replay [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.tri (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (by decide))))))
#print axioms reject452

def r453 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject453 : ¬ Reader r453 :=
 Rootcert2Tri.reject (t := .app r453 Z) [] (by decide) (Bad.replay [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.tri (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (by decide))))))
#print axioms reject453
end Blc.Rootcert2.TriCases01
