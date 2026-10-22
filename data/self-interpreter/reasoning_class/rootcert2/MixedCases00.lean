import Certificates
namespace Blc.Rootcert2.MixedCases00
open Term SelfintClass HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r322 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1))
theorem reject322 : ¬ Reader r322 :=
 mixed_reduct true [[1, 1], [1, 1, 2], [1, 1, 1]] [[1, 1, 2, 1], [1, 1, 2, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject322

def r323 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1))
theorem reject323 : ¬ Reader r323 :=
 mixed_reduct true [[1, 1], [1, 1, 2, 2], [1, 1, 2], [1, 1, 1]] [[1, 1, 2, 1], [1, 1, 2, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject323

def r324 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1))
theorem reject324 : ¬ Reader r324 :=
 mixed_reduct true [[1, 1], [1, 1, 2, 1], [1, 1, 2], [1, 1, 2], [1, 1, 1]] [[1, 1, 2, 1], [1, 1, 2, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject324

def r325 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1))
theorem reject325 : ¬ Reader r325 :=
 mixed_reduct true [[1, 1], [1, 1, 2], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1]] [[1, 1, 2, 1], [1, 1, 2, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject325

def r326 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1))
theorem reject326 : ¬ Reader r326 :=
 mixed_reduct true [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject326

def r598 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 0))
theorem reject598 : ¬ Reader r598 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject598

def r599 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 1))
theorem reject599 : ¬ Reader r599 :=
 mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] [[1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject599
end Blc.Rootcert2.MixedCases00
