import Certificates
namespace Blc.Rootcert2.MixedCases02
open Term SelfintClass HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r434 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject434 : ¬ Reader r434 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2, 1, 2], [1, 1, 1, 2, 1, 2], [1, 1, 1, 2, 1, 2], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] [[1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject434

def r435 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject435 : ¬ Reader r435 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2, 1, 2], [1, 1, 1, 2, 1, 2], [1, 1, 1, 2, 1, 2], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] [[1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject435

def r436 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject436 : ¬ Reader r436 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] [[1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject436

def r437 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject437 : ¬ Reader r437 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] [[1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject437
end Blc.Rootcert2.MixedCases02
