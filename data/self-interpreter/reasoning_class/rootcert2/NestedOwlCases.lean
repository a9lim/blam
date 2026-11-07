import NestedOwl
namespace Blc.Rootcert2.NestedOwlCases
open Term SelfintClass Rootcert2NestedOwl
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r482 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0))
theorem reject482 : ¬ Reader r482 :=
 Rootcert2NestedOwl.reject [[1, 1, 1]] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject482

def r483 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1))
theorem reject483 : ¬ Reader r483 :=
 Rootcert2NestedOwl.reject [[1, 1, 1]] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject483
end Blc.Rootcert2.NestedOwlCases
