import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice10450G5
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r241 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 3))))))) (.var 1))
theorem reject241 : ¬ Reader r241 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.lam 7 (.var 3 [0]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject241
def r242 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3))))))) (.var 1))
theorem reject242 : ¬ Reader r242 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3)))))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4)))))))) (.lam (.var 2))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4)))))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 5)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 5)))))))) (.lam (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4)))))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 5)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 5)))))))) (.lam (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4))))))))) (.lam (.var 2)))), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 6)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 6)))))))) (.lam (.var 4)))) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 6)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 6)))))))) (.lam (.var 4)))))) (.lam (.var 3)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4))))))) (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 6)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 6)))))))) (.lam (.var 4)))) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 6)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 6)))))))) (.lam (.var 4)))))) (.lam (.var 3)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4))))))))) (.lam (.var 2)))), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject242
def r243 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))) (.var 1))
theorem reject243 : ¬ Reader r243 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 5) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 5) (.lam (.var 1)))))))) (.app (.var 3) (.lam (.var 1))))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 5) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 5) (.lam (.var 1)))))))) (.app (.var 3) (.lam (.var 1)))))) (.app (.var 2) (.lam (.var 1)))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject243
def r244 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))) (.var 1))
theorem reject244 : ¬ Reader r244 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))) [(.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 5))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 5)))))))) (.app (.var 0) (.lam (.var 3))))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 5))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 5)))))))) (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.lam (.var 2))))) (.lam (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject244
def r245 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))))) (.var 1))
theorem reject245 : ¬ Reader r245 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))))) [(.var 0), (.lam (.lam (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 5)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 5)) (.lam (.var 1))))))) (.var 3)) (.lam (.var 1)))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 5)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 5)) (.lam (.var 1))))))) (.var 3)) (.lam (.var 1))))) (.var 2)) (.lam (.var 1)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject245
def r246 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2)))))) (.var 1))
theorem reject246 : ¬ Reader r246 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2)))))) [(.lam (.lam (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 5))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 5)))))) (.lam (.var 1))) (.var 3))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 5))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 5)))))) (.lam (.var 1))) (.var 3)))) (.lam (.var 1))) (.var 2)))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject246
def r247 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))))) (.var 1))
theorem reject247 : ¬ Reader r247 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))))) [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 4))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 4))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2)))))) (.lam (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject247
def r248 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3))))))) (.var 1))
theorem reject248 : ¬ Reader r248 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3))))))) [(.app (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 4)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 4)))))))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 4)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 4)))))))) (.lam (.var 2))))), (.lam (.var 1)), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject248
def r249 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))) (.var 1))
theorem reject249 : ¬ Reader r249 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]] [[],[],[],[],[0],[0],[0],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.app (.var 1 [5,6,7]) (.var 0 [6,7]) [0]) (.app (.var 1 [5,6,7]) (.lam 7 (.var 3 [0]) [7]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0]) (by decide) (by decide) (by decide)
#print axioms reject249
def r250 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3)))))))) (.var 1))
theorem reject250 : ¬ Reader r250 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 4)))))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 4))))))) (.lam (.var 2)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 4)))))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 4))))))) (.lam (.var 2))))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3))))))) (.lam (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject250
def r251 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 1)))))) (.var 1))
theorem reject251 : ¬ Reader r251 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 3 [0]) [7]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject251
def r252 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1)))))) (.var 1))
theorem reject252 : ¬ Reader r252 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.var 1)))))) (.lam (.var 2))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.var 1)))))))) [(.lam (.var 1)), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.var 1)))))) (.lam (.var 2))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.var 1))))))), (.lam (.var 1)), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject252
def r253 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject253 : ¬ Reader r253 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3))))))) [(.lam (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 5)))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 5))))))) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 5)))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 5))))))) (.var 0)) (.lam (.var 3))))) (.var 0)) (.lam (.var 2)))), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject253
def r254 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3))))))) (.var 1))
theorem reject254 : ¬ Reader r254 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) (.lam 7 (.var 3 [0]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject254
def r255 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3))))))) (.var 1))
theorem reject255 : ¬ Reader r255 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 4))))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 4))))))) (.lam (.var 2))))) [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 4))))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 4))))))) (.lam (.var 2)))), (.lam (.var 1)), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject255
def r256 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))) (.var 0)))) (.var 1))
theorem reject256 : ¬ Reader r256 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 5))))) (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject256
def r257 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))) (.var 1)))) (.var 1))
theorem reject257 : ¬ Reader r257 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject257
def r258 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))) (.var 1)))) (.var 1))
theorem reject258 : ¬ Reader r258 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]] [[],[],[],[],[],[],[],[],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject258
def r259 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.var 1)))) (.var 1))
theorem reject259 : ¬ Reader r259 := by
  exact replay_loop true [] 2 9 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.var 2))) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.var 3)))))))) [(.var 0), (.var 0), (.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject259
def r260 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.var 1))
theorem reject260 : ¬ Reader r260 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject260
def r261 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject261 : ¬ Reader r261 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject261
def r262 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject262 : ¬ Reader r262 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject262
def r263 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject263 : ¬ Reader r263 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject263
def r264 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1)) (.lam (.var 1)))
theorem reject264 : ¬ Reader r264 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,1],[],[],[],[]] [[],[],[],[],[6],[6],[],[0],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 2 [0]) (.var 0 [0,1]) [0]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject264
def r265 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.lam (.var 1))) (.var 1))
theorem reject265 : ¬ Reader r265 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[],[],[],[]] [[],[],[],[],[6],[6],[],[0],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 2 [0]) (.var 0 [0,7]) [0]) []) [6]) [5]) [6]) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject265
def r266 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.var 1)) (.lam (.var 1)))
theorem reject266 : ¬ Reader r266 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1],[],[],[],[]] [[],[],[],[],[6],[6],[],[0],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [1]) (.var 2 [0]) [1]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject266
def r267 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.lam (.var 1))) (.var 1))
theorem reject267 : ¬ Reader r267 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[0],[],[],[]] [[],[],[],[],[6],[6],[],[0],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0,7]) (.var 2 [0]) [0]) []) [6]) [5]) [6]) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject267
def r268 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))) (.var 1)) (.lam (.var 1)))
theorem reject268 : ¬ Reader r268 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))) (.var 1)) [(.var 0)] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject268
def r269 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))) (.lam (.var 1))) (.var 1))
theorem reject269 : ¬ Reader r269 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))) (.lam (.var 1))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject269
def r270 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject270 : ¬ Reader r270 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject270
def r271 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject271 : ¬ Reader r271 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject271
def r272 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 2))))) (.var 1)) (.var 0))
theorem reject272 : ¬ Reader r272 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject272
def r273 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 2))))) (.var 0)) (.var 1))
theorem reject273 : ¬ Reader r273 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 2)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 3))))))) (.var 0)) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject273
def r274 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3))))))) (.var 1)) (.var 0))
theorem reject274 : ¬ Reader r274 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject274
def r275 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3))))))) (.var 0)) (.var 1))
theorem reject275 : ¬ Reader r275 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3))))))) (.lam (.app (.var 0) (.var 1)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject275
def r276 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.var 1)) (.var 0))
theorem reject276 : ¬ Reader r276 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,1],[],[],[],[]] [[],[],[],[],[6],[6],[],[0,1],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 2 [0]) (.lam 7 (.var 1 [0,1]) [7]) [0]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject276
def r277 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.var 0)) (.var 1))
theorem reject277 : ¬ Reader r277 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0],[],[],[],[]] [[],[],[],[],[6],[6],[],[0],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 2 [0]) (.lam 7 (.var 1 [0]) [7]) [0]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject277
def r278 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.var 1)) (.var 0))
theorem reject278 : ¬ Reader r278 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1],[],[],[],[]] [[],[],[],[],[6],[6],[],[0],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [1]) (.lam 7 (.var 3 [0]) [7]) [1]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject278
def r279 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.var 0)) (.var 1))
theorem reject279 : ¬ Reader r279 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0],[],[],[],[]] [[],[],[],[],[6],[6],[],[0],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.lam 7 (.var 3 [0]) [7]) [0]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject279
def r280 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject280 : ¬ Reader r280 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))) (.var 0)) [(.lam (.var 1))] [(.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject280
def r281 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject281 : ¬ Reader r281 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))) (.var 0)) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject281
def r282 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.var 1)) (.var 0))
theorem reject282 : ¬ Reader r282 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1,7],[],[],[],[]] [[],[],[],[],[6],[6],[],[1,7],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [1,7]) [7]) []) (.var 2 [0]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject282
def r283 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.var 0)) (.var 1))
theorem reject283 : ¬ Reader r283 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[],[],[],[]] [[],[],[],[],[6],[6],[],[0,7],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) (.var 2 [0]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject283
def r284 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))) (.var 1)) (.var 0))
theorem reject284 : ¬ Reader r284 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))) (.var 1)) [(.lam (.var 1))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject284
def r285 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))) (.var 0)) (.var 1))
theorem reject285 : ¬ Reader r285 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))) (.var 0)) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject285
def r286 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 2) (.var 2)))))) (.var 1))
theorem reject286 : ¬ Reader r286 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 2) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 3) (.var 3)))))))) [(.lam (.app (.var 1) (.var 1)))] [(.lam (.app (.var 1) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject286
def r287 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.var 2))))) (.var 1))
theorem reject287 : ¬ Reader r287 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.var 0)] [(.lam (.var 1))] [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject287
def r288 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 2))))) (.var 1))
theorem reject288 : ¬ Reader r288 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))) (.lam (.var 3))))) (.var 1)))) [(.var 0), (.var 0), (.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject288
end Blc.HandlerLet.Slice10450G5
