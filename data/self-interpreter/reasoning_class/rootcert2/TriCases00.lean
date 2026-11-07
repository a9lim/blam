import Tri
namespace Blc.Rootcert2.TriCases00
open Term SelfintClass Rootcert2Tri
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r208 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject208 : ¬ Reader r208 :=
 Rootcert2Tri.reject (t := .app r208 Z) [] (by decide) (Bad.replay [[1, 1], [1, 1], [1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.var 1)) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide)))))
#print axioms reject208

def r227 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject227 : ¬ Reader r227 :=
 Rootcert2Tri.reject (t := .app r227 Z) [] (by decide) (Bad.replay [[1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (by decide)))))
#print axioms reject227

def r230 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject230 : ¬ Reader r230 :=
 Rootcert2Tri.reject (t := .app r230 Z) [] (by decide) (Bad.replay [[1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (by decide)))))
#print axioms reject230

def r242 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject242 : ¬ Reader r242 :=
 Rootcert2Tri.reject (t := .app r242 Z) [] (by decide) (Bad.replay [[1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide))))))
#print axioms reject242

def r460 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject460 : ¬ Reader r460 :=
 Rootcert2Tri.reject (t := .app r460 Z) [] (by decide) (Bad.replay [[1, 1, 1], [1, 1, 1], [1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 1)) (by decide)))))
#print axioms reject460

def r461 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject461 : ¬ Reader r461 :=
 Rootcert2Tri.reject (t := .app r461 Z) [] (by decide) (Bad.replay [[1, 1, 1], [1, 1, 1], [1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 0)) (by decide)))))
#print axioms reject461

def r494 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject494 : ¬ Reader r494 :=
 Rootcert2Tri.reject (t := .app r494 Z) [] (by decide) (Bad.replay [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.var 1)) (Bad.left (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (by decide)))))))
#print axioms reject494

def r495 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject495 : ¬ Reader r495 :=
 Rootcert2Tri.reject (t := .app r495 Z) [] (by decide) (Bad.replay [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 0)) (Bad.left (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (by decide)))))))
#print axioms reject495

def r508 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject508 : ¬ Reader r508 :=
 Rootcert2Tri.reject (t := .app r508 Z) [] (by decide) (Bad.replay [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (by decide))))))
#print axioms reject508

def r509 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject509 : ¬ Reader r509 :=
 Rootcert2Tri.reject (t := .app r509 Z) [] (by decide) (Bad.replay [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.tri (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (by decide))))))
#print axioms reject509
end Blc.Rootcert2.TriCases00
