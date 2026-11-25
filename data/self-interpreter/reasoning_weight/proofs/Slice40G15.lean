import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice40G15
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r720 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.var 0))))) (.var 1))
theorem reject720 : ¬ Reader r720 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.var 0))))) [(.var 0), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject720
def r721 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))) (.var 0)))) (.var 1))
theorem reject721 : ¬ Reader r721 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 3 [0]) [7]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject721
def r722 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))) (.var 0)))) (.var 1))
theorem reject722 : ¬ Reader r722 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))) (.var 0)))) (.lam (.var 2))))) [(.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))) (.var 0)))) (.lam (.var 2))))] [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject722
def r723 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 1)) (.var 0)))) (.var 1))
theorem reject723 : ¬ Reader r723 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 3)) (.var 0))))))) [] [(.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject723
def r724 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.var 1))))))) (.var 1))
theorem reject724 : ¬ Reader r724 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.var 1))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.var 1)))))))), (.lam (.lam (.app (.var 2) (.var 1)))), (.lam (.lam (.app (.var 2) (.var 1))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject724
def r725 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 3))))))) (.var 1))
theorem reject725 : ¬ Reader r725 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 3)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 3))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 3)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 3))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 3)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 3)))))))), (.lam (.lam (.app (.var 1) (.var 2)))), (.lam (.lam (.app (.var 1) (.var 2))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject725
def r726 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.var 2))))) (.var 1))
theorem reject726 : ¬ Reader r726 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.lam 7 (.var 2 [0]) [7]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject726
def r727 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 2))))) (.var 1))
theorem reject727 : ¬ Reader r727 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 2)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 3)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 3)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 2)))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 3)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 4)))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 3))))) (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 3)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 4)))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 3)))))))), (.lam (.var 1)), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 5)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 5))))))) (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 5)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 5)))))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 3))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 5)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 5))))))) (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 5)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 5)))))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 3)))))))), (.lam (.var 1)), (.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject727
def r728 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 2))))) (.var 1))
theorem reject728 : ¬ Reader r728 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 2))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 3))))))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 3)))))))), (.lam (.var 1)), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject728
def r729 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.var 2))))) (.var 1))
theorem reject729 : ¬ Reader r729 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.lam 7 (.var 2 [0]) [7]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject729
def r730 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 2))))) (.var 1))
theorem reject730 : ¬ Reader r730 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 3))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 3)))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 2)))), (.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject730
def r731 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject731 : ¬ Reader r731 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject731
def r732 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.var 1)))) (.var 1))
theorem reject732 : ¬ Reader r732 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.var 1)))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.var 4)))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.var 4)))) (.lam (.var 1))))) (.lam (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject732
def r733 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))) (.var 1)))) (.var 1))
theorem reject733 : ¬ Reader r733 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject733
def r734 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))) (.var 1)))) (.var 1))
theorem reject734 : ¬ Reader r734 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[5,6],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject734
def r735 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))) (.var 1)))) (.var 1))
theorem reject735 : ¬ Reader r735 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))) (.var 3))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))) (.var 3)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))) (.var 4))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))) (.var 2)))), (.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject735
def r736 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))) (.var 1)))) (.var 1))
theorem reject736 : ¬ Reader r736 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))) (.var 2)))))) [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))) (.var 1))), (.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject736
def r737 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 0)) (.var 1)))) (.var 1))
theorem reject737 : ¬ Reader r737 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 0)) (.var 3))))))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject737
def r738 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject738 : ¬ Reader r738 := by
  exact replay_absent false [] 6 0 (by decide) (by decide)
#print axioms reject738
def r739 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2))))))) (.var 1))
theorem reject739 : ¬ Reader r739 := by
 exact mixed_reduct true [[1, 1], [1, 1, 1], [1, 1], [1, 1, 2, 0], [1, 1, 1], [1, 1], [1, 1, 2, 0], [1, 1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 3))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject739
def r740 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 0))))) (.var 1))
theorem reject740 : ¬ Reader r740 := by
 exact mixed_reduct true [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 0, 1, 2, 0]] [[1, 1, 1], [1, 1, 1, 0, 1, 2, 0]] (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject740
def r741 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.var 0))))) (.var 1))
theorem reject741 : ¬ Reader r741 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r741 Z) = some (spine (BodyLetSpecial.templateState (.lam (.app (.var 1) (.var 2))) (.var 0)) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject741
def r742 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject742 : ¬ Reader r742 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject742
def r743 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject743 : ¬ Reader r743 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject743
def r744 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.var 1))
theorem reject744 : ¬ Reader r744 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject744
def r745 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 1)))))) (.var 1))
theorem reject745 : ¬ Reader r745 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 1)))))) [(.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 1)))))))] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.var 1))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject745
def r746 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject746 : ¬ Reader r746 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2)))))) [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 3))))) (.var 1)))] [(.lam (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 4))))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject746
def r747 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.var 1))
theorem reject747 : ¬ Reader r747 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject747
def r748 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1))
theorem reject748 : ¬ Reader r748 := by
 exact mixed_reduct true [[1, 1], [1, 1], [1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[1, 1, 1], [1, 1, 1, 2, 2, 0], [1, 1, 1, 2, 1], [1, 1, 1, 1]] (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2)))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3))))))))) (.var 0)) [(.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3)))))))) (.var 0)) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3)))))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.var 4)))))))) (.var 1)))), (.var 0)] [(.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 2)))))) (.var 0)) (.lam (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 3)))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject748
def r749 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1))
theorem reject749 : ¬ Reader r749 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0)) (.var 1)))) [(.var 0), (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0)) (.var 2))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject749
def r750 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1))
theorem reject750 : ¬ Reader r750 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.var 0), (.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject750
def r751 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1))
theorem reject751 : ¬ Reader r751 := by
 exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2, 0], [1, 1, 1]] [[1, 2], [1, 1, 2, 0], [1, 1, 1]] (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1))))) [(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1))))] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject751
def r752 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1))
theorem reject752 : ¬ Reader r752 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject752
def r753 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject753 : ¬ Reader r753 := by
 exact Rootcert2Flow.reject [[1, 1, 1]] [[],[],[],[],[6],[1],[1,6],[0,7,8],[0,7,8],[],[],[]] [[],[],[],[],[5],[8],[7],[8],[0],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.app (.var 1 [6]) (.var 0 [1]) [7]) [8]) [5]) [4]) (.lam 6 (.lam 7 (.lam 8 (.app (.app (.var 1 [0,7,8]) (.var 1 [0,7,8]) [0,8]) (.app (.var 1 [0,7,8]) (.var 0 [0,7,8]) [0,8]) [0]) [8]) [7]) [6]) [5]) (.var 1 [1]) [8]) (.var 0 [0]) [0]) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [0]) (by decide) (by decide) (by decide)
#print axioms reject753
def r754 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject754 : ¬ Reader r754 := by
 exact Rootcert2Flow.reject [[1, 1, 1]] [[],[],[],[],[6],[0],[0,6],[1,7,8],[1,7,8],[],[],[]] [[],[],[],[],[5],[8],[7],[8],[1],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.app (.var 1 [6]) (.var 0 [0]) [7]) [8]) [5]) [4]) (.lam 6 (.lam 7 (.lam 8 (.app (.app (.var 1 [1,7,8]) (.var 1 [1,7,8]) [1,8]) (.app (.var 1 [1,7,8]) (.var 0 [1,7,8]) [1,8]) [1]) [8]) [7]) [6]) [5]) (.var 0 [0]) [8]) (.var 1 [1]) [1]) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [1]) (by decide) (by decide) (by decide)
#print axioms reject754
def r755 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject755 : ¬ Reader r755 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject755
def r756 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject756 : ¬ Reader r756 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject756
def r757 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject757 : ¬ Reader r757 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject757
def r758 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject758 : ¬ Reader r758 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject758
def r759 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
theorem reject759 : ¬ Reader r759 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 4)) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 4)) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.var 0)) (.lam (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 4)) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 4)) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject759
def r760 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.var 1))
theorem reject760 : ¬ Reader r760 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject760
def r761 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.var 1))
theorem reject761 : ¬ Reader r761 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject761
def r762 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.var 1))
theorem reject762 : ¬ Reader r762 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))) (.var 0))) [(.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 4))))))) (.var 1)) (.var 1))))] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 5))))))) (.var 2)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject762
def r763 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 1))
theorem reject763 : ¬ Reader r763 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0))))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject763
def r764 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0)))) (.var 1))
theorem reject764 : ¬ Reader r764 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1))))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject764
def r765 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))) (.var 1))
theorem reject765 : ¬ Reader r765 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0))))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject765
def r766 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)))) (.var 1))
theorem reject766 : ¬ Reader r766 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3))))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject766
def r767 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0)))) (.var 1))
theorem reject767 : ¬ Reader r767 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject767
end Blc.HandlerLet.Slice40G15
