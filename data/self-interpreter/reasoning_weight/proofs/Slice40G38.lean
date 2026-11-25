import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice40G38
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r1824 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject1824 : ¬ Reader r1824 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.var 0), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1824
def r1825 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2)) (.var 1))))
theorem reject1825 : ¬ Reader r1825 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1825
def r1826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1))) (.var 2))))
theorem reject1826 : ¬ Reader r1826 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1826
def r1827 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1)) (.var 2))))
theorem reject1827 : ¬ Reader r1827 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1827
def r1828 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))
theorem reject1828 : ¬ Reader r1828 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1828
def r1829 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))
theorem reject1829 : ¬ Reader r1829 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1829
def r1830 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.var 0))
theorem reject1830 : ¬ Reader r1830 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) [(.var 1), (.var 0)] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1830
def r1831 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.var 0))
theorem reject1831 : ¬ Reader r1831 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) [(.var 0), (.var 1)] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1831
def r1832 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.lam (.var 2)))
theorem reject1832 : ¬ Reader r1832 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[],[],[],[]] [[],[],[],[],[6],[6],[],[1],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 2 [0]) (.var 0 [0,7]) [0]) []) [6]) [5]) [6]) (.lam 7 (.var 2 [1]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject1832
def r1833 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.lam (.var 2)))
theorem reject1833 : ¬ Reader r1833 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1,7],[0],[],[],[]] [[],[],[],[],[6],[6],[],[1],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [1,7]) (.var 2 [0]) [1]) []) [6]) [5]) [6]) (.lam 7 (.var 2 [1]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject1833
def r1834 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))) (.lam (.var 2)))
theorem reject1834 : ¬ Reader r1834 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))) (.lam (.var 2))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1834
def r1835 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 2))))
theorem reject1835 : ¬ Reader r1835 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1835
def r1836 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 2)) (.var 1))))
theorem reject1836 : ¬ Reader r1836 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 2)) (.var 1))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 4)) (.var 3))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1836
def r1837 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))) (.var 2))))
theorem reject1837 : ¬ Reader r1837 := by
 exact BodyLetGrow.grow_reduct true [[1]] [(.lam (.var 1))] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1837
def r1838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))) (.var 2))))
theorem reject1838 : ¬ Reader r1838 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))) (.var 3)))) (.lam (.var 2))))) [(.lam (.var 1)), (.lam (.var 1)), (.var 1)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1838
def r1839 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 1)) (.var 2))))
theorem reject1839 : ¬ Reader r1839 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 1)) (.var 2))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))) (.var 3)) (.var 4))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1839
def r1840 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))
theorem reject1840 : ¬ Reader r1840 := by
 intro hr
 have he : betaSteps [[1]] (.app r1840 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.lam (.var 2))) (.var 1)) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject1840
def r1841 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))
theorem reject1841 : ¬ Reader r1841 := by
 intro hr
 have he : betaSteps [[1]] (.app r1841 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.lam (.var 3))) (.var 1)) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject1841
def r1842 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))))))
theorem reject1842 : ¬ Reader r1842 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1))] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1842
def r1843 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2)))))
theorem reject1843 : ¬ Reader r1843 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[1,7],[5],[],[],[],[]] [[],[],[],[],[],[6],[],[1,7],[],[10],[]] (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 2 [1]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.lam 7 (.var 2 [1,7]) [7]) [6]) (.var 0 [5]) []) (.var 2 [0]) []) [6]) [5]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject1843
def r1844 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))))
theorem reject1844 : ¬ Reader r1844 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))) (.lam (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1844
def r1845 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3))))))
theorem reject1845 : ¬ Reader r1845 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3))))) (.var 1)) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3)))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1845
def r1846 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))))
theorem reject1846 : ¬ Reader r1846 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2))))) [(.var 1), (.lam (.var 1))] [(.lam (.lam (.var 1))), (.var 3)] (by decide) (by decide) (by decide)
#print axioms reject1846
def r1847 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))))
theorem reject1847 : ¬ Reader r1847 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2)))) [(.lam (.var 1)), (.var 1)] [(.lam (.lam (.var 1))), (.var 3)] (by decide) (by decide) (by decide)
#print axioms reject1847
def r1848 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2))))
theorem reject1848 : ¬ Reader r1848 := by
 exact mixed_reduct true [[1], [1, 2, 0], [1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2)))) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3)))) (.var 3))))) (.var 1)) [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1848
def r1849 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))
theorem reject1849 : ¬ Reader r1849 := by
 exact mixed_reduct true [[1]] [[1, 2, 0], [1, 1]] (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1849
def r1850 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))
theorem reject1850 : ¬ Reader r1850 := by
 exact mixed_reduct true [[1]] [[1, 2, 0], [1, 1]] (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1850
def r1851 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))
theorem reject1851 : ¬ Reader r1851 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1851
def r1852 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))
theorem reject1852 : ¬ Reader r1852 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1852
def r1853 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject1853 : ¬ Reader r1853 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1853
def r1854 : Term := (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject1854 : ¬ Reader r1854 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) [(.var 1), (.var 0)] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject1854
def r1855 : Term := (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject1855 : ¬ Reader r1855 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) [(.var 0), (.var 1)] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))] (by decide) (by decide) (by decide)
#print axioms reject1855
def r1856 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))
theorem reject1856 : ¬ Reader r1856 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3)] (by decide) (by decide) (by decide)
#print axioms reject1856
def r1857 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))
theorem reject1857 : ¬ Reader r1857 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))) [(.var 1)] [(.lam (.lam (.var 1))), (.var 3)] (by decide) (by decide) (by decide)
#print axioms reject1857
def r1858 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject1858 : ¬ Reader r1858 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 4)) (.var 3))) (.var 1))))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1858
def r1859 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject1859 : ¬ Reader r1859 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) [(.var 1), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1859
def r1860 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject1860 : ¬ Reader r1860 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 4))) (.var 1))))) [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1860
def r1861 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject1861 : ¬ Reader r1861 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) [(.var 0), (.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1861
def r1862 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject1862 : ¬ Reader r1862 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1)), (.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1862
def r1863 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject1863 : ¬ Reader r1863 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1863
def r1864 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.app (.var 0) (.lam (.var 0))))
theorem reject1864 : ¬ Reader r1864 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1864
def r1865 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.lam (.var 0))) (.var 0))
theorem reject1865 : ¬ Reader r1865 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1865
def r1866 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 0)) (.lam (.var 0)))
theorem reject1866 : ¬ Reader r1866 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1866
def r1867 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))) (.var 0))
theorem reject1867 : ¬ Reader r1867 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1867
def r1868 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 2)))) (.var 0))
theorem reject1868 : ¬ Reader r1868 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1868
def r1869 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 2)))) (.var 0))
theorem reject1869 : ¬ Reader r1869 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1869
def r1870 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 0))))) (.var 0))
theorem reject1870 : ¬ Reader r1870 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1870
def r1871 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 0))
theorem reject1871 : ¬ Reader r1871 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1871
end Blc.HandlerLet.Slice40G38
