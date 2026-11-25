import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice40G14
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r672 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1))
theorem reject672 : ¬ Reader r672 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[5],[],[],[]] [[],[],[],[],[6],[6],[],[0],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0,7]) (.var 1 [5]) [0]) []) [6]) [5]) [6]) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject672
def r673 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject673 : ¬ Reader r673 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject673
def r674 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject674 : ¬ Reader r674 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.lam (.var 1))) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject674
def r675 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject675 : ¬ Reader r675 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject675
def r676 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject676 : ¬ Reader r676 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject676
def r677 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.var 0))) (.var 1))
theorem reject677 : ¬ Reader r677 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject677
def r678 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.var 1)) (.lam (.var 0)))
theorem reject678 : ¬ Reader r678 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) [(.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject678
def r679 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.var 0))
theorem reject679 : ¬ Reader r679 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject679
def r680 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.var 1))
theorem reject680 : ¬ Reader r680 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject680
def r681 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 2))))))) (.var 1)) (.var 0))
theorem reject681 : ¬ Reader r681 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject681
def r682 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 2))))))) (.var 0)) (.var 1))
theorem reject682 : ¬ Reader r682 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 2))))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject682
def r683 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 1))))) (.var 1)) (.var 0))
theorem reject683 : ¬ Reader r683 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject683
def r684 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 1))))) (.var 0)) (.var 1))
theorem reject684 : ¬ Reader r684 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 1))))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject684
def r685 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.var 0))
theorem reject685 : ¬ Reader r685 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[0,1,5,6,7,8],[],[],[],[]] [[],[],[],[],[6],[6],[6],[0,1,5,6,7,8],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [0,1,5,6,7,8]) [7]) [6]) [6]) [6]) [5]) [6]) (.var 1 [1]) [6]) (.var 0 [0]) [6]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [6]) (by decide) (by decide) (by decide)
#print axioms reject685
def r686 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 0)) (.var 1))
theorem reject686 : ¬ Reader r686 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[0,1,5,6,7,8],[],[],[],[]] [[],[],[],[],[6],[6],[6],[0,1,5,6,7,8],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [0,1,5,6,7,8]) [7]) [6]) [6]) [6]) [5]) [6]) (.var 0 [0]) [6]) (.var 1 [1]) [6]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [6]) (by decide) (by decide) (by decide)
#print axioms reject686
def r687 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 1))))))) (.var 1)) (.var 0))
theorem reject687 : ¬ Reader r687 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 0, 2], [1, 1, 1, 0, 2, 0, 1], [1, 1, 1, 0, 2, 0, 2], [1, 1]] [[1, 1, 1, 0, 2], [1, 1, 1, 0, 2, 0, 1], [1, 1, 1, 0, 2, 0, 2], [1, 1], [1, 1, 2, 0]] (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 2) (.var 2)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject687
def r688 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 1))))))) (.var 0)) (.var 1))
theorem reject688 : ¬ Reader r688 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 0, 2], [1, 1, 1, 0, 2, 0, 1], [1, 1, 1, 0, 2, 0, 2], [1, 1]] [[1, 1, 1, 0, 2], [1, 1, 1, 0, 2, 0, 1], [1, 1, 1, 0, 2, 0, 2], [1, 1], [1, 1, 2, 0]] (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject688
def r689 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 2))))))) (.var 1)) (.var 0))
theorem reject689 : ¬ Reader r689 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1],[],[],[],[]] [[],[],[],[],[6],[6],[],[5],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [1]) (.lam 7 (.var 2 [5]) [7]) [1]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject689
def r690 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 2))))))) (.var 0)) (.var 1))
theorem reject690 : ¬ Reader r690 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0],[],[],[],[]] [[],[],[],[],[6],[6],[],[5],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.lam 7 (.var 2 [5]) [7]) [0]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject690
def r691 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject691 : ¬ Reader r691 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))) [(.lam (.lam (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))))] [(.lam (.lam (.var 3))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject691
def r692 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject692 : ¬ Reader r692 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))) [(.lam (.lam (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))))] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject692
def r693 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject693 : ¬ Reader r693 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1))))))] [(.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject693
def r694 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject694 : ¬ Reader r694 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1))))))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject694
def r695 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject695 : ¬ Reader r695 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2)))))) (.var 1)) [(.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2))))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject695
def r696 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject696 : ¬ Reader r696 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2)))))) (.var 0)) [(.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject696
def r697 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 1))))) (.var 1)) (.var 0))
theorem reject697 : ¬ Reader r697 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1,7],[],[],[],[]] [[],[],[],[],[6],[6],[],[1,7],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [1,7]) [7]) []) (.var 1 [5]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject697
def r698 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 1))))) (.var 0)) (.var 1))
theorem reject698 : ¬ Reader r698 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[],[],[],[]] [[],[],[],[],[6],[6],[],[0,7],[],[10],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) (.var 1 [5]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject698
def r699 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))))) (.var 1)) (.var 0))
theorem reject699 : ¬ Reader r699 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject699
def r700 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))))) (.var 0)) (.var 1))
theorem reject700 : ¬ Reader r700 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject700
def r701 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.var 1)) (.var 0))
theorem reject701 : ¬ Reader r701 := by
 exact mixed_reduct true [[1, 1, 1]] [[1, 1, 1, 2, 0, 2, 0], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0]] (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject701
def r702 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)) (.var 1))
theorem reject702 : ¬ Reader r702 := by
 exact mixed_reduct true [[1, 1, 1]] [[1, 1, 1, 2, 0, 2, 0], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0]] (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject702
def r703 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))) (.var 1)) (.var 0))
theorem reject703 : ¬ Reader r703 := by
  exact replay_loop true [] 2 9 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject703
def r704 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))) (.var 0)) (.var 1))
theorem reject704 : ¬ Reader r704 := by
  exact replay_loop true [] 2 9 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject704
def r705 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 1)))) (.var 1))
theorem reject705 : ¬ Reader r705 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject705
def r706 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))) (.var 1))
theorem reject706 : ¬ Reader r706 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))) [(.app (.var 0) (.lam (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject706
def r707 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)))))) (.var 1))
theorem reject707 : ¬ Reader r707 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)))))) [(.lam (.var 0)), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject707
def r708 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))))))) (.var 1))
theorem reject708 : ¬ Reader r708 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))))))) [(.var 0), (.lam (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject708
def r709 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))) (.var 1))
theorem reject709 : ¬ Reader r709 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 3 [0]) [7]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject709
def r710 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))) (.var 1))
theorem reject710 : ¬ Reader r710 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2))))) [(.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))), (.lam (.var 1))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 5)))))))) (.lam (.var 3)))))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject710
def r711 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.var 1)))))))) (.var 1))
theorem reject711 : ¬ Reader r711 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.var 1)))))))) [(.lam (.lam (.app (.var 2) (.var 1)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.var 1)))))))) (.lam (.lam (.app (.var 2) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.var 1)))))))) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.var 2) (.var 1)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject711
def r712 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.var 3)))))))) (.var 1))
theorem reject712 : ¬ Reader r712 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.var 3))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.var 3)))))))) [(.lam (.lam (.app (.var 1) (.var 2)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.var 3))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.var 3)))))))) (.lam (.lam (.app (.var 1) (.var 2))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.var 3))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.var 3)))))))) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 1) (.var 2)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject712
def r713 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 2) (.var 1)))))) (.var 1))
theorem reject713 : ¬ Reader r713 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 3) (.var 1)))))))) [(.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 4) (.var 1)))))))))] [(.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 3) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject713
def r714 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject714 : ¬ Reader r714 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.var 3)))))))) [(.lam (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.var 4))))))) (.var 1)))] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.var 3))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject714
def r715 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.var 1))
theorem reject715 : ¬ Reader r715 := by
 exact mixed_reduct true [[1, 1], [1, 1]] [[1, 1, 1, 2, 0], [1, 1, 1, 1]] (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))) (.app (.var 1) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject715
def r716 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.var 1))
theorem reject716 : ¬ Reader r716 := by
 exact mixed_reduct true [[1, 1], [1, 1]] [[1, 1, 1, 2, 0], [1, 1, 1, 1]] (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject716
def r717 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.var 1))
theorem reject717 : ¬ Reader r717 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))) [(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 5)) (.var 1))))))))))] [(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject717
def r718 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.var 1))))) (.var 1))
theorem reject718 : ¬ Reader r718 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[5,6],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.lam 7 (.var 1 [5,6]) [7]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject718
def r719 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 1))))) (.var 1))
theorem reject719 : ¬ Reader r719 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))) (.lam (.var 1))))) (.var 1)))) [(.var 0), (.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 4)))) (.lam (.var 1))))) (.var 2))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject719
end Blc.HandlerLet.Slice40G14
