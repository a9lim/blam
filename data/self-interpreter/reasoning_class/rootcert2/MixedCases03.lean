import Certificates
namespace Blc.Rootcert2.MixedCases03
open Term SelfintClass HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r438 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject438 : ¬ Reader r438 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2, 2], [1, 1, 1, 2, 2], [1, 1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject438

def r439 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject439 : ¬ Reader r439 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2, 2], [1, 1, 1, 2, 2], [1, 1, 1]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject439

def r440 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject440 : ¬ Reader r440 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject440

def r441 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject441 : ¬ Reader r441 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject441
end Blc.Rootcert2.MixedCases03
