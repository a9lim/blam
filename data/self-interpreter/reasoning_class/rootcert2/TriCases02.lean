import Tri
namespace Blc.Rootcert2.TriCases02
open Term SelfintClass Rootcert2Tri
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r458 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
theorem reject458 : ¬ Reader r458 :=
 Rootcert2Tri.reject (t := .app r458 Z) [] (by decide) (Bad.replay [[1, 1, 1], [1, 1, 1], [1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.tri (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (by decide)))))
#print axioms reject458

def r502 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
theorem reject502 : ¬ Reader r502 :=
 Rootcert2Tri.reject (t := .app r502 Z) [] (by decide) (Bad.replay [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.tri (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (by decide))))))
#print axioms reject502

def r503 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
theorem reject503 : ¬ Reader r503 :=
 Rootcert2Tri.reject (t := .app r503 Z) [] (by decide) (Bad.replay [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.tri (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (by decide))))))
#print axioms reject503
end Blc.Rootcert2.TriCases02
