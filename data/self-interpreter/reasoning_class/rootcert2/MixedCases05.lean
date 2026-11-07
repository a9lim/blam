import Certificates
namespace Blc.Rootcert2.MixedCases05
open Term SelfintClass HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r606 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject606 : ¬ Reader r606 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2]] [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2]] (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject606

def r607 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject607 : ¬ Reader r607 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2]] [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2]] (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject607

def r610 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject610 : ¬ Reader r610 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 2, 2, 0, 2], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1]] [[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject610

def r611 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject611 : ¬ Reader r611 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 2, 2, 0, 2], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1]] [[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject611

def r612 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject612 : ¬ Reader r612 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] [[1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] (.app (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject612

def r613 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject613 : ¬ Reader r613 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] [[1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] (.app (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject613
end Blc.Rootcert2.MixedCases05
