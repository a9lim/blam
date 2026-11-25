import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice12700G1
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r48 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject48 : ¬ Reader r48 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]] [[],[],[],[],[],[],[],[8],[0],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject48
def r49 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject49 : ¬ Reader r49 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]] [[],[],[],[],[],[],[],[8],[0],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject49
def r50 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject50 : ¬ Reader r50 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject50
def r51 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject51 : ¬ Reader r51 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject51
def r52 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject52 : ¬ Reader r52 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject52
def r53 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject53 : ¬ Reader r53 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject53
def r54 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1))
theorem reject54 : ¬ Reader r54 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject54
def r55 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.lam (.var 1)))
theorem reject55 : ¬ Reader r55 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject55
def r56 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.var 1))) (.var 1))
theorem reject56 : ¬ Reader r56 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject56
def r57 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject57 : ¬ Reader r57 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject57
def r58 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject58 : ¬ Reader r58 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject58
def r59 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.var 1)))
theorem reject59 : ¬ Reader r59 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject59
def r60 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 1))) (.var 1))
theorem reject60 : ¬ Reader r60 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject60
def r61 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 1)))
theorem reject61 : ¬ Reader r61 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject61
def r62 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.var 1))
theorem reject62 : ¬ Reader r62 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject62
def r63 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.lam (.var 1)))
theorem reject63 : ¬ Reader r63 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1]] [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) (.var 1)) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject63
def r64 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 1))) (.var 1))
theorem reject64 : ¬ Reader r64 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1]] [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) (.lam (.var 1))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject64
def r65 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.var 1)) (.lam (.var 1)))
theorem reject65 : ¬ Reader r65 := by
  exact replay_loop true [] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) (.var 0))))) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject65
def r66 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.lam (.var 1))) (.var 1))
theorem reject66 : ¬ Reader r66 := by
  exact replay_loop true [] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) (.var 0))))) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject66
def r67 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.var 1)) (.lam (.var 1)))
theorem reject67 : ¬ Reader r67 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject67
def r68 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.lam (.var 1))) (.var 1))
theorem reject68 : ¬ Reader r68 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject68
def r69 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.lam (.var 1)))
theorem reject69 : ¬ Reader r69 := by
 exact Rootcert2Flow.reject [[1, 1, 1]] [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]] [[],[],[],[],[],[],[8],[],[],[6],[0],[],[13],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 1 [1]) []) (.lam 10 (.var 1 [0]) [10]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) []) (by decide) (by decide) (by decide)
#print axioms reject69
def r70 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.var 1))) (.var 1))
theorem reject70 : ¬ Reader r70 := by
 exact Rootcert2Flow.reject [[1, 1, 1]] [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]] [[],[],[],[],[],[],[8],[],[],[6],[0],[],[13],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.lam 10 (.var 1 [0]) [10]) []) (.var 1 [1]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) []) (by decide) (by decide) (by decide)
#print axioms reject70
def r71 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.var 1)) (.lam (.var 1)))
theorem reject71 : ¬ Reader r71 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2], [1, 1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2]] [] (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject71
def r72 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.var 1))) (.var 1))
theorem reject72 : ¬ Reader r72 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2], [1, 1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2]] [] (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject72
def r73 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.var 1)) (.lam (.var 1)))
theorem reject73 : ¬ Reader r73 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]] [[],[],[],[],[],[],[],[6],[0],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject73
def r74 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject74 : ¬ Reader r74 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]] [[],[],[],[],[],[],[],[6],[0],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject74
def r75 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.lam (.var 1)))
theorem reject75 : ¬ Reader r75 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject75
def r76 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject76 : ¬ Reader r76 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject76
def r77 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) (.var 1)) (.lam (.var 1)))
theorem reject77 : ¬ Reader r77 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject77
def r78 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) (.lam (.var 1))) (.var 1))
theorem reject78 : ¬ Reader r78 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject78
def r79 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 1)) (.lam (.var 1)))
theorem reject79 : ¬ Reader r79 := by
  exact replay_loop true [] 1 11 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject79
def r80 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.lam (.var 1))) (.var 1))
theorem reject80 : ¬ Reader r80 := by
  exact replay_loop true [] 1 11 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject80
def r81 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject81 : ¬ Reader r81 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject81
def r82 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject82 : ¬ Reader r82 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject82
def r83 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))))) (.var 1)) (.var 0))
theorem reject83 : ¬ Reader r83 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject83
def r84 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 1))
theorem reject84 : ¬ Reader r84 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject84
def r85 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject85 : ¬ Reader r85 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject85
def r86 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject86 : ¬ Reader r86 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject86
def r87 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject87 : ¬ Reader r87 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject87
def r88 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject88 : ¬ Reader r88 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject88
def r89 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.var 0))
theorem reject89 : ¬ Reader r89 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject89
def r90 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.var 1))
theorem reject90 : ¬ Reader r90 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.lam (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject90
def r91 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject91 : ¬ Reader r91 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject91
def r92 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject92 : ¬ Reader r92 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject92
def r93 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject93 : ¬ Reader r93 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject93
def r94 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject94 : ¬ Reader r94 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject94
def r97 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))) (.var 1)) (.var 0))
theorem reject97 : ¬ Reader r97 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))))))] [(.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject97
end Blc.HandlerLet.Slice12700G1
