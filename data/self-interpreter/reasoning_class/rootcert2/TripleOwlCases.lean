import TripleOwl
namespace Blc.Rootcert2.TripleOwlCases
open Term SelfintClass Rootcert2TripleOwl
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r446 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0))
theorem reject446 : ¬ Reader r446 :=
 Rootcert2TripleOwl.reject [[1, 1, 1]] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject446

def r447 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1))
theorem reject447 : ¬ Reader r447 :=
 Rootcert2TripleOwl.reject [[1, 1, 1]] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject447
end Blc.Rootcert2.TripleOwlCases
