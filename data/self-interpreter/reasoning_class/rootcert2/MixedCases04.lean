import Certificates
namespace Blc.Rootcert2.MixedCases04
open Term SelfintClass HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r604 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))) (.var 1)) (.var 0))
theorem reject604 : ¬ Reader r604 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject604

def r605 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))) (.var 0)) (.var 1))
theorem reject605 : ¬ Reader r605 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject605
end Blc.Rootcert2.MixedCases04
