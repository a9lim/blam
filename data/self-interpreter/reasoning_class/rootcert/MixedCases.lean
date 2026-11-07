import Certificates
namespace Blc.Rootcert.MixedCases
open Term SelfintClass SelfintLowerBound SelfintSourceCost HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r545 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0))
theorem reject545 : ¬ Reader r545 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 2, 1], [1, 1, 2, 2, 1, 1], [1, 1, 2, 2, 1, 1, 1], [1, 1, 2, 2, 1, 1], [1, 1, 2, 2, 1], [1, 1, 2, 2], [1, 1, 2], [1, 1, 2, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] [[1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject545

def r546 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0))
theorem reject546 : ¬ Reader r546 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1, 1, 1], [1, 1, 2, 1, 1, 1, 1], [1, 1, 2, 1, 1, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2], [1, 1, 2, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] [[1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject546

def r552 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject552 : ¬ Reader r552 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 1, 1, 2], [1, 1, 2, 1, 1, 2], [1, 1, 2, 1, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1], [1, 1, 2]] [] (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject552

def r568 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.var 2))) (.var 0))
theorem reject568 : ¬ Reader r568 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [1, 1, 1, 2, 0, 2, 2]] [[2], [2], [2, 0, 2, 2], [], [], [1], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))] [(.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject568

def r569 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.var 2)))
theorem reject569 : ¬ Reader r569 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [1, 1, 1, 2, 0, 2, 2]] [[2], [2], [2, 0, 2, 2], [], [], [1], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))] [(.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject569

def r570 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject570 : ¬ Reader r570 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2], [1, 1, 1], [1, 1], [1, 1, 2], [1, 1, 2], [1, 1, 2, 0, 2, 2]] [[2], [2], [2, 0, 2, 2], [], [], [1], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))] [(.app (.var 0) (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject570
end Blc.Rootcert.MixedCases
