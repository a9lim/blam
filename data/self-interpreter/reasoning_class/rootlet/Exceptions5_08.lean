import Certificates
namespace Blc.HandlerLet.Exceptions5_08
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r4836 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject4836 : ¬ Reader r4836 := by
  exact replay_head true [] 155 (0,2) (by decide) (by decide)
#print axioms reject4836

def r4841 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject4841 : ¬ Reader r4841 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4841

def r4842 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject4842 : ¬ Reader r4842 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4842

def r4843 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject4843 : ¬ Reader r4843 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4843

def r4844 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject4844 : ¬ Reader r4844 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4844

def r4845 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject4845 : ¬ Reader r4845 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject4845

def r4846 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject4846 : ¬ Reader r4846 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject4846

def r4847 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject4847 : ¬ Reader r4847 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject4847

def r4848 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject4848 : ¬ Reader r4848 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject4848

def r4849 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4849 : ¬ Reader r4849 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4849

def r4850 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4850 : ¬ Reader r4850 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4850

def r4851 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4851 : ¬ Reader r4851 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 1) (.var 0)), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4851

def r4852 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4852 : ¬ Reader r4852 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 0) (.var 1)), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4852

def r4853 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4853 : ¬ Reader r4853 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject4853

def r4854 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4854 : ¬ Reader r4854 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject4854

def r4855 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4855 : ¬ Reader r4855 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject4855

def r4856 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4856 : ¬ Reader r4856 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject4856

def r4857 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject4857 : ¬ Reader r4857 := by
  exact replay_head true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1]] 0 (1,2) (by decide) (by decide)
#print axioms reject4857

def r4858 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject4858 : ¬ Reader r4858 := by
  exact replay_head true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject4858

def r4859 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject4859 : ¬ Reader r4859 := by
  exact replay_head true [[1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], []] 0 (1,2) (by decide) (by decide)
#print axioms reject4859

def r4860 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject4860 : ¬ Reader r4860 := by
  exact replay_head true [[1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], []] 0 (0,2) (by decide) (by decide)
#print axioms reject4860

def r4865 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject4865 : ¬ Reader r4865 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4865

def r4866 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject4866 : ¬ Reader r4866 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4866

def r4867 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject4867 : ¬ Reader r4867 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4867

def r4868 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject4868 : ¬ Reader r4868 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4868

def r4869 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject4869 : ¬ Reader r4869 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4869

def r4870 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject4870 : ¬ Reader r4870 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4870

def r4871 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject4871 : ¬ Reader r4871 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4871

def r4872 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject4872 : ¬ Reader r4872 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4872

def r4873 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4873 : ¬ Reader r4873 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4873

def r4874 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4874 : ¬ Reader r4874 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4874

def r4875 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4875 : ¬ Reader r4875 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4875

def r4876 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4876 : ¬ Reader r4876 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4876

def r4877 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4877 : ¬ Reader r4877 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4877

def r4878 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4878 : ¬ Reader r4878 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4878

def r4879 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4879 : ¬ Reader r4879 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4879

def r4880 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4880 : ¬ Reader r4880 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4880

def r4881 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject4881 : ¬ Reader r4881 := by
  exact replay_head true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1]] 0 (1,2) (by decide) (by decide)
#print axioms reject4881

def r4882 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject4882 : ¬ Reader r4882 := by
  exact replay_head true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject4882

def r4883 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject4883 : ¬ Reader r4883 := by
  exact replay_head true [[1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], []] 0 (1,2) (by decide) (by decide)
#print axioms reject4883

def r4884 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject4884 : ¬ Reader r4884 := by
  exact replay_head true [[1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], [], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1], [], [1], [], [1, 1], [1], [1], [], [1], []] 0 (0,2) (by decide) (by decide)
#print axioms reject4884

def r4889 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject4889 : ¬ Reader r4889 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4889

def r4890 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject4890 : ¬ Reader r4890 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4890

def r4891 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject4891 : ¬ Reader r4891 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4891

def r4892 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject4892 : ¬ Reader r4892 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4892

def r4893 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject4893 : ¬ Reader r4893 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4893

def r4894 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject4894 : ¬ Reader r4894 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4894

def r4895 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject4895 : ¬ Reader r4895 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4895

def r4896 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject4896 : ¬ Reader r4896 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4896

def r4897 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4897 : ¬ Reader r4897 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4897

def r4898 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4898 : ¬ Reader r4898 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4898

def r4899 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4899 : ¬ Reader r4899 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4899

def r4900 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4900 : ¬ Reader r4900 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4900

def r4901 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4901 : ¬ Reader r4901 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4901

def r4902 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4902 : ¬ Reader r4902 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4902

def r4903 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4903 : ¬ Reader r4903 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4903

def r4904 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4904 : ¬ Reader r4904 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4904

def r4905 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject4905 : ¬ Reader r4905 := by
  exact replay_head true [] 139 (1,2) (by decide) (by decide)
#print axioms reject4905

def r4906 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject4906 : ¬ Reader r4906 := by
  exact replay_head true [] 139 (0,2) (by decide) (by decide)
#print axioms reject4906

def r4907 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject4907 : ¬ Reader r4907 := by
  exact replay_head true [] 139 (1,2) (by decide) (by decide)
#print axioms reject4907

def r4908 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject4908 : ¬ Reader r4908 := by
  exact replay_head true [] 139 (0,2) (by decide) (by decide)
#print axioms reject4908

def r4913 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject4913 : ¬ Reader r4913 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4913

def r4914 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject4914 : ¬ Reader r4914 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4914

def r4915 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject4915 : ¬ Reader r4915 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4915

def r4916 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject4916 : ¬ Reader r4916 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4916

def r4917 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject4917 : ¬ Reader r4917 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4917

def r4918 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject4918 : ¬ Reader r4918 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4918

def r4919 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject4919 : ¬ Reader r4919 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4919

def r4920 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject4920 : ¬ Reader r4920 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4920

def r4921 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4921 : ¬ Reader r4921 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4921

def r4922 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4922 : ¬ Reader r4922 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4922

def r4923 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4923 : ¬ Reader r4923 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4923

def r4924 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4924 : ¬ Reader r4924 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4924

def r4925 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4925 : ¬ Reader r4925 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4925

def r4926 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4926 : ¬ Reader r4926 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4926

def r4927 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4927 : ¬ Reader r4927 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4927

def r4928 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4928 : ¬ Reader r4928 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4928

def r4929 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject4929 : ¬ Reader r4929 := by
  exact replay_head true [] 141 (1,2) (by decide) (by decide)
#print axioms reject4929

def r4930 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject4930 : ¬ Reader r4930 := by
  exact replay_head true [] 141 (0,2) (by decide) (by decide)
#print axioms reject4930

def r4931 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject4931 : ¬ Reader r4931 := by
  exact replay_head true [] 141 (1,2) (by decide) (by decide)
#print axioms reject4931

def r4932 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject4932 : ¬ Reader r4932 := by
  exact replay_head true [] 141 (0,2) (by decide) (by decide)
#print axioms reject4932

def r4937 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject4937 : ¬ Reader r4937 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4937

def r4938 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject4938 : ¬ Reader r4938 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4938

def r4939 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject4939 : ¬ Reader r4939 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4939

def r4940 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject4940 : ¬ Reader r4940 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4940

def r4941 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject4941 : ¬ Reader r4941 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4941

def r4942 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject4942 : ¬ Reader r4942 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4942

def r4943 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject4943 : ¬ Reader r4943 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4943

def r4944 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject4944 : ¬ Reader r4944 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4944

def r4945 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4945 : ¬ Reader r4945 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4945

def r4946 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4946 : ¬ Reader r4946 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4946

def r4947 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4947 : ¬ Reader r4947 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4947

def r4948 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4948 : ¬ Reader r4948 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4948

def r4949 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4949 : ¬ Reader r4949 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4949

def r4950 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4950 : ¬ Reader r4950 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4950

def r4951 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4951 : ¬ Reader r4951 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4951

def r4952 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4952 : ¬ Reader r4952 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4952

def r4961 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject4961 : ¬ Reader r4961 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4961

def r4962 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject4962 : ¬ Reader r4962 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4962

def r4963 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject4963 : ¬ Reader r4963 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4963

def r4964 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject4964 : ¬ Reader r4964 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4964

def r4965 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject4965 : ¬ Reader r4965 := by
  exact replay_head true [] 5 (1,3) (by decide) (by decide)
#print axioms reject4965

def r4966 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject4966 : ¬ Reader r4966 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject4966

def r4967 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject4967 : ¬ Reader r4967 := by
  exact replay_head true [] 5 (1,3) (by decide) (by decide)
#print axioms reject4967

def r4968 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject4968 : ¬ Reader r4968 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject4968

def r4969 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4969 : ¬ Reader r4969 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4969

def r4970 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4970 : ¬ Reader r4970 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4970

def r4971 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4971 : ¬ Reader r4971 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4971

def r4972 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4972 : ¬ Reader r4972 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4972

def r4973 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4973 : ¬ Reader r4973 := by
  exact replay_loop true [] 11 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4973

def r4974 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4974 : ¬ Reader r4974 := by
  exact replay_loop true [] 11 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4974

def r4975 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4975 : ¬ Reader r4975 := by
  exact replay_loop true [] 11 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4975

def r4976 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4976 : ¬ Reader r4976 := by
  exact replay_loop true [] 11 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4976

def r4985 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject4985 : ¬ Reader r4985 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4985

def r4986 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject4986 : ¬ Reader r4986 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4986

def r4987 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject4987 : ¬ Reader r4987 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4987

def r4988 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject4988 : ¬ Reader r4988 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4988

def r4989 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject4989 : ¬ Reader r4989 := by
  exact replay_head true [] 5 (1,3) (by decide) (by decide)
#print axioms reject4989

def r4990 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject4990 : ¬ Reader r4990 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject4990

def r4991 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject4991 : ¬ Reader r4991 := by
  exact replay_head true [] 5 (1,3) (by decide) (by decide)
#print axioms reject4991

def r4992 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject4992 : ¬ Reader r4992 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject4992

def r4993 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4993 : ¬ Reader r4993 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4993

def r4994 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4994 : ¬ Reader r4994 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4994

def r4995 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4995 : ¬ Reader r4995 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4995

def r4996 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject4996 : ¬ Reader r4996 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4996

def r4997 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject4997 : ¬ Reader r4997 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4997

def r4998 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject4998 : ¬ Reader r4998 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4998

def r4999 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject4999 : ¬ Reader r4999 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4999

def r5000 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject5000 : ¬ Reader r5000 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5000

def r5009 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject5009 : ¬ Reader r5009 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5009

def r5010 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject5010 : ¬ Reader r5010 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5010

def r5011 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject5011 : ¬ Reader r5011 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5011

def r5012 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject5012 : ¬ Reader r5012 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5012

def r5013 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject5013 : ¬ Reader r5013 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5013

def r5014 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject5014 : ¬ Reader r5014 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5014

def r5015 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject5015 : ¬ Reader r5015 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5015

def r5016 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject5016 : ¬ Reader r5016 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5016

def r5017 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject5017 : ¬ Reader r5017 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5017

def r5018 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject5018 : ¬ Reader r5018 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5018

def r5019 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject5019 : ¬ Reader r5019 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5019

def r5020 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject5020 : ¬ Reader r5020 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5020

def r5021 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject5021 : ¬ Reader r5021 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5021

def r5022 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject5022 : ¬ Reader r5022 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5022

def r5023 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject5023 : ¬ Reader r5023 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5023

def r5024 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject5024 : ¬ Reader r5024 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5024

def r5033 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject5033 : ¬ Reader r5033 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5033

def r5034 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject5034 : ¬ Reader r5034 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5034

def r5035 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject5035 : ¬ Reader r5035 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5035

def r5036 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject5036 : ¬ Reader r5036 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5036

def r5037 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject5037 : ¬ Reader r5037 := by
  exact replay_head true [] 7 (1,3) (by decide) (by decide)
#print axioms reject5037

def r5038 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject5038 : ¬ Reader r5038 := by
  exact replay_head true [] 7 (0,3) (by decide) (by decide)
#print axioms reject5038

def r5039 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject5039 : ¬ Reader r5039 := by
  exact replay_head true [] 7 (1,3) (by decide) (by decide)
#print axioms reject5039

def r5040 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject5040 : ¬ Reader r5040 := by
  exact replay_head true [] 7 (0,3) (by decide) (by decide)
#print axioms reject5040

def r5041 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject5041 : ¬ Reader r5041 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5041

def r5042 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject5042 : ¬ Reader r5042 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5042

def r5043 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject5043 : ¬ Reader r5043 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5043

def r5044 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject5044 : ¬ Reader r5044 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5044

def r5045 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject5045 : ¬ Reader r5045 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5045

def r5046 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject5046 : ¬ Reader r5046 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5046

def r5047 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject5047 : ¬ Reader r5047 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5047

def r5048 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject5048 : ¬ Reader r5048 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5048

def r5057 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject5057 : ¬ Reader r5057 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5057

def r5058 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject5058 : ¬ Reader r5058 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5058

def r5059 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))
theorem reject5059 : ¬ Reader r5059 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5059

def r5060 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))
theorem reject5060 : ¬ Reader r5060 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5060

def r5061 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))
theorem reject5061 : ¬ Reader r5061 := by
  exact replay_head true [] 9 (1,3) (by decide) (by decide)
#print axioms reject5061

def r5062 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))
theorem reject5062 : ¬ Reader r5062 := by
  exact replay_head true [] 9 (0,3) (by decide) (by decide)
#print axioms reject5062

def r5063 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))
theorem reject5063 : ¬ Reader r5063 := by
  exact replay_head true [] 9 (1,3) (by decide) (by decide)
#print axioms reject5063

def r5064 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))
theorem reject5064 : ¬ Reader r5064 := by
  exact replay_head true [] 9 (0,3) (by decide) (by decide)
#print axioms reject5064

def r5065 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject5065 : ¬ Reader r5065 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5065

def r5066 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject5066 : ¬ Reader r5066 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5066

def r5067 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject5067 : ¬ Reader r5067 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5067

def r5068 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject5068 : ¬ Reader r5068 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5068

def r5069 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject5069 : ¬ Reader r5069 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5069

def r5070 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject5070 : ¬ Reader r5070 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5070

def r5071 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 1) (.var 0)))
theorem reject5071 : ¬ Reader r5071 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5071

def r5072 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.app (.var 0) (.var 1)))
theorem reject5072 : ¬ Reader r5072 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5072

def r5073 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5073 : ¬ Reader r5073 := by
  exact replay_head true [] 7 (0,6) (by decide) (by decide)
#print axioms reject5073

def r5074 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5074 : ¬ Reader r5074 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5074

def r5075 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5075 : ¬ Reader r5075 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5075

def r5076 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5076 : ¬ Reader r5076 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5076

def r5077 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.var 1))
theorem reject5077 : ¬ Reader r5077 := by
  exact replay_head true [] 10 (0,8) (by decide) (by decide)
#print axioms reject5077

def r5078 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5078 : ¬ Reader r5078 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))), (.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5078

def r5079 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5079 : ¬ Reader r5079 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))), (.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5079

def r5080 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5080 : ¬ Reader r5080 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))) (.var 0))), (.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5080

def r5081 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5081 : ¬ Reader r5081 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))))))), (.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5081

def r5082 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5082 : ¬ Reader r5082 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject5082

def r5083 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5083 : ¬ Reader r5083 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5083

def r5084 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5084 : ¬ Reader r5084 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5084

def r5085 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5085 : ¬ Reader r5085 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5085

def r5086 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5086 : ¬ Reader r5086 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5086

def r5087 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5087 : ¬ Reader r5087 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5087

def r5088 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5088 : ¬ Reader r5088 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5088

def r5089 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5089 : ¬ Reader r5089 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5089

def r5090 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5090 : ¬ Reader r5090 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject5090

def r5091 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5091 : ¬ Reader r5091 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5091

def r5092 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5092 : ¬ Reader r5092 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5092

def r5093 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5093 : ¬ Reader r5093 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5093

def r5094 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5094 : ¬ Reader r5094 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5094

def r5095 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5095 : ¬ Reader r5095 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5095

def r5096 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5096 : ¬ Reader r5096 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5096

def r5097 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5097 : ¬ Reader r5097 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5097

def r5098 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5098 : ¬ Reader r5098 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject5098

def r5099 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5099 : ¬ Reader r5099 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5099

def r5100 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5100 : ¬ Reader r5100 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5100

def r5101 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5101 : ¬ Reader r5101 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5101

def r5102 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5102 : ¬ Reader r5102 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5102

def r5103 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5103 : ¬ Reader r5103 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5103

def r5104 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5104 : ¬ Reader r5104 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5104

def r5105 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5105 : ¬ Reader r5105 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5105

def r5106 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5106 : ¬ Reader r5106 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject5106

def r5107 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5107 : ¬ Reader r5107 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5107

def r5108 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5108 : ¬ Reader r5108 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5108

def r5109 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5109 : ¬ Reader r5109 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject5109

def r5110 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5110 : ¬ Reader r5110 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5110

def r5111 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5111 : ¬ Reader r5111 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5111

def r5112 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5112 : ¬ Reader r5112 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5112

def r5113 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5113 : ¬ Reader r5113 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5113

def r5114 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5114 : ¬ Reader r5114 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject5114

def r5115 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5115 : ¬ Reader r5115 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5115

def r5116 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5116 : ¬ Reader r5116 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5116

def r5117 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5117 : ¬ Reader r5117 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5117

def r5118 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5118 : ¬ Reader r5118 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5118

def r5119 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5119 : ¬ Reader r5119 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5119

def r5120 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5120 : ¬ Reader r5120 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5120

def r5121 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5121 : ¬ Reader r5121 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5121

def r5122 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5122 : ¬ Reader r5122 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject5122

def r5123 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5123 : ¬ Reader r5123 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5123

def r5124 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5124 : ¬ Reader r5124 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5124

def r5125 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5125 : ¬ Reader r5125 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5125

def r5126 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5126 : ¬ Reader r5126 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5126

def r5127 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5127 : ¬ Reader r5127 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5127

def r5128 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5128 : ¬ Reader r5128 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5128

def r5129 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5129 : ¬ Reader r5129 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5129

def r5130 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5130 : ¬ Reader r5130 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject5130

def r5131 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5131 : ¬ Reader r5131 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5131

def r5132 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5132 : ¬ Reader r5132 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5132

def r5133 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5133 : ¬ Reader r5133 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5133

def r5134 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5134 : ¬ Reader r5134 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5134

def r5135 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5135 : ¬ Reader r5135 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5135

def r5136 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5136 : ¬ Reader r5136 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1], [1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5136

def r5137 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5137 : ¬ Reader r5137 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5137

def r5138 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5138 : ¬ Reader r5138 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject5138

def r5139 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5139 : ¬ Reader r5139 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5139

def r5140 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5140 : ¬ Reader r5140 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5140

def r5141 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5141 : ¬ Reader r5141 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5141

def r5142 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5142 : ¬ Reader r5142 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5142

def r5143 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5143 : ¬ Reader r5143 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5143

def r5144 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5144 : ¬ Reader r5144 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5144

def r5145 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5145 : ¬ Reader r5145 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5145

def r5146 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5146 : ¬ Reader r5146 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject5146

def r5147 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5147 : ¬ Reader r5147 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5147

def r5148 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5148 : ¬ Reader r5148 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5148

def r5149 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5149 : ¬ Reader r5149 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5149

def r5150 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5150 : ¬ Reader r5150 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5150

def r5151 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5151 : ¬ Reader r5151 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5151

def r5152 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5152 : ¬ Reader r5152 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5152

def r5153 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5153 : ¬ Reader r5153 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5153

def r5154 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5154 : ¬ Reader r5154 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject5154

def r5155 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5155 : ¬ Reader r5155 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5155

def r5156 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5156 : ¬ Reader r5156 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5156

def r5157 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5157 : ¬ Reader r5157 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5157

def r5158 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5158 : ¬ Reader r5158 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5158

def r5159 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5159 : ¬ Reader r5159 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5159

def r5160 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5160 : ¬ Reader r5160 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5160

def r5161 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5161 : ¬ Reader r5161 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5161

def r5162 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5162 : ¬ Reader r5162 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject5162

def r5163 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5163 : ¬ Reader r5163 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5163

def r5164 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5164 : ¬ Reader r5164 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5164

def r5165 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5165 : ¬ Reader r5165 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5165

def r5166 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5166 : ¬ Reader r5166 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5166

def r5167 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5167 : ¬ Reader r5167 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5167

def r5168 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5168 : ¬ Reader r5168 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5168

def r5169 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5169 : ¬ Reader r5169 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5169

def r5170 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5170 : ¬ Reader r5170 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject5170

def r5171 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5171 : ¬ Reader r5171 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5171

def r5172 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5172 : ¬ Reader r5172 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5172

def r5173 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5173 : ¬ Reader r5173 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5173

def r5174 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5174 : ¬ Reader r5174 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5174

def r5175 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5175 : ¬ Reader r5175 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5175

def r5176 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5176 : ¬ Reader r5176 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5176

def r5177 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5177 : ¬ Reader r5177 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5177

def r5178 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject5178 : ¬ Reader r5178 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject5178

def r5179 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject5179 : ¬ Reader r5179 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5179

def r5180 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject5180 : ¬ Reader r5180 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject5180

def r5181 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject5181 : ¬ Reader r5181 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject5181

def r5182 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject5182 : ¬ Reader r5182 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5182

def r5183 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject5183 : ¬ Reader r5183 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5183

def r5184 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1))
theorem reject5184 : ¬ Reader r5184 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1, 1, 1]] [[1, 2, 0], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5184

def r5185 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1))
theorem reject5185 : ¬ Reader r5185 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5185

def r5186 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5186 : ¬ Reader r5186 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5186

def r5187 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5187 : ¬ Reader r5187 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5187

def r5188 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5188 : ¬ Reader r5188 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5188

def r5189 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5189 : ¬ Reader r5189 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5189

def r5190 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5190 : ¬ Reader r5190 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5190

def r5191 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5191 : ¬ Reader r5191 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5191

def r5192 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5192 : ¬ Reader r5192 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5192

def r5193 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5193 : ¬ Reader r5193 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject5193

def r5194 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5194 : ¬ Reader r5194 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject5194

def r5195 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5195 : ¬ Reader r5195 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject5195

def r5196 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5196 : ¬ Reader r5196 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5196

def r5197 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5197 : ¬ Reader r5197 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5197

def r5198 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5198 : ¬ Reader r5198 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5198

def r5199 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5199 : ¬ Reader r5199 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5199

def r5200 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5200 : ¬ Reader r5200 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5200

def r5201 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5201 : ¬ Reader r5201 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject5201

def r5202 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5202 : ¬ Reader r5202 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5202

def r5203 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5203 : ¬ Reader r5203 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5203

def r5204 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5204 : ¬ Reader r5204 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5204

def r5205 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5205 : ¬ Reader r5205 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5205

def r5206 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5206 : ¬ Reader r5206 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5206

def r5207 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5207 : ¬ Reader r5207 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject5207

def r5208 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5208 : ¬ Reader r5208 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5208

def r5209 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5209 : ¬ Reader r5209 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5209

def r5210 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5210 : ¬ Reader r5210 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5210

def r5211 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5211 : ¬ Reader r5211 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5211

def r5212 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5212 : ¬ Reader r5212 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5212

def r5213 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5213 : ¬ Reader r5213 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5213

def r5214 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5214 : ¬ Reader r5214 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5214

def r5215 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5215 : ¬ Reader r5215 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject5215

def r5216 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5216 : ¬ Reader r5216 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5216

def r5217 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5217 : ¬ Reader r5217 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5217

def r5218 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5218 : ¬ Reader r5218 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5218

def r5219 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5219 : ¬ Reader r5219 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5219

def r5220 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5220 : ¬ Reader r5220 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject5220

def r5221 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5221 : ¬ Reader r5221 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject5221

def r5222 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5222 : ¬ Reader r5222 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5222

def r5223 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5223 : ¬ Reader r5223 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5223

def r5224 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5224 : ¬ Reader r5224 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5224

def r5225 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5225 : ¬ Reader r5225 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5225

def r5226 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5226 : ¬ Reader r5226 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5226

def r5227 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5227 : ¬ Reader r5227 := by
  exact replay_head true [] 7 (0,3) (by decide) (by decide)
#print axioms reject5227

def r5228 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5228 : ¬ Reader r5228 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5228

def r5229 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5229 : ¬ Reader r5229 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject5229

def r5230 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5230 : ¬ Reader r5230 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject5230

def r5231 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5231 : ¬ Reader r5231 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5231

def r5232 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5232 : ¬ Reader r5232 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5232

def r5233 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5233 : ¬ Reader r5233 := by
  exact replay_head true [] 11 (0,3) (by decide) (by decide)
#print axioms reject5233

def r5234 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5234 : ¬ Reader r5234 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5234

def r5235 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5235 : ¬ Reader r5235 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5235

def r5236 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5236 : ¬ Reader r5236 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5236

def r5237 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5237 : ¬ Reader r5237 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5237

def r5238 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5238 : ¬ Reader r5238 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5238

def r5239 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5239 : ¬ Reader r5239 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5239

def r5240 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5240 : ¬ Reader r5240 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5240

def r5241 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5241 : ¬ Reader r5241 := by
  exact replay_head true [] 9 (0,3) (by decide) (by decide)
#print axioms reject5241

def r5242 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5242 : ¬ Reader r5242 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5242

def r5243 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5243 : ¬ Reader r5243 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5243

def r5244 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5244 : ¬ Reader r5244 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5244

def r5245 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5245 : ¬ Reader r5245 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5245

def r5246 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5246 : ¬ Reader r5246 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5246

def r5247 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5247 : ¬ Reader r5247 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5247

def r5248 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5248 : ¬ Reader r5248 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5248

def r5249 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5249 : ¬ Reader r5249 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.var 1), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5249

def r5250 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5250 : ¬ Reader r5250 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5250

def r5251 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5251 : ¬ Reader r5251 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5251

def r5252 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5252 : ¬ Reader r5252 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5252

def r5253 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5253 : ¬ Reader r5253 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5253

def r5254 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5254 : ¬ Reader r5254 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5254

def r5255 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5255 : ¬ Reader r5255 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5255

def r5256 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5256 : ¬ Reader r5256 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5256

def r5257 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5257 : ¬ Reader r5257 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5257

def r5258 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5258 : ¬ Reader r5258 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5258

def r5259 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5259 : ¬ Reader r5259 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5259

def r5260 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5260 : ¬ Reader r5260 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5260

def r5261 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5261 : ¬ Reader r5261 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject5261

def r5262 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5262 : ¬ Reader r5262 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5262

def r5263 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5263 : ¬ Reader r5263 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5263

def r5264 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5264 : ¬ Reader r5264 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5264

def r5265 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5265 : ¬ Reader r5265 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject5265

def r5266 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5266 : ¬ Reader r5266 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject5266

def r5267 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5267 : ¬ Reader r5267 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5267

def r5268 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5268 : ¬ Reader r5268 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5268

def r5269 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5269 : ¬ Reader r5269 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5269

def r5270 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5270 : ¬ Reader r5270 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5270

def r5271 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5271 : ¬ Reader r5271 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5271

def r5272 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5272 : ¬ Reader r5272 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5272

def r5273 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5273 : ¬ Reader r5273 := by
  exact replay_head true [] 9 (0,4) (by decide) (by decide)
#print axioms reject5273

def r5274 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5274 : ¬ Reader r5274 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5274

def r5275 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5275 : ¬ Reader r5275 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5275

def r5276 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5276 : ¬ Reader r5276 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5276

def r5277 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5277 : ¬ Reader r5277 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5277

def r5278 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5278 : ¬ Reader r5278 := by
  exact replay_head true [] 11 (0,3) (by decide) (by decide)
#print axioms reject5278

def r5279 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5279 : ¬ Reader r5279 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject5279

def r5280 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5280 : ¬ Reader r5280 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5280

def r5281 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5281 : ¬ Reader r5281 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5281

def r5282 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5282 : ¬ Reader r5282 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5282

def r5283 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5283 : ¬ Reader r5283 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5283

def r5284 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5284 : ¬ Reader r5284 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5284

def r5285 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5285 : ¬ Reader r5285 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5285

def r5286 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5286 : ¬ Reader r5286 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5286

def r5287 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5287 : ¬ Reader r5287 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5287

def r5288 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5288 : ¬ Reader r5288 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5288

def r5289 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5289 : ¬ Reader r5289 := by
  exact replay_head true [] 11 (0,4) (by decide) (by decide)
#print axioms reject5289

def r5290 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5290 : ¬ Reader r5290 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5290

def r5291 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5291 : ¬ Reader r5291 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5291

def r5292 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5292 : ¬ Reader r5292 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5292

def r5293 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5293 : ¬ Reader r5293 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5293

def r5294 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5294 : ¬ Reader r5294 := by
  exact replay_head true [] 5 (0,4) (by decide) (by decide)
#print axioms reject5294

def r5295 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5295 : ¬ Reader r5295 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5295

def r5296 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5296 : ¬ Reader r5296 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5296

def r5297 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5297 : ¬ Reader r5297 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5297

def r5298 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5298 : ¬ Reader r5298 := by
  exact replay_head true [] 7 (0,3) (by decide) (by decide)
#print axioms reject5298

def r5299 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5299 : ¬ Reader r5299 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5299

def r5300 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5300 : ¬ Reader r5300 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5300

def r5301 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5301 : ¬ Reader r5301 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject5301

def r5302 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5302 : ¬ Reader r5302 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject5302

def r5303 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5303 : ¬ Reader r5303 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject5303

def r5304 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5304 : ¬ Reader r5304 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject5304

def r5305 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5305 : ¬ Reader r5305 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5305

def r5306 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5306 : ¬ Reader r5306 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5306

def r5307 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5307 : ¬ Reader r5307 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5307

def r5308 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5308 : ¬ Reader r5308 := by
  exact replay_head true [] 7 (0,4) (by decide) (by decide)
#print axioms reject5308

def r5309 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5309 : ¬ Reader r5309 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5309

def r5310 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5310 : ¬ Reader r5310 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5310

def r5311 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5311 : ¬ Reader r5311 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5311

def r5312 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5312 : ¬ Reader r5312 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5312

def r5313 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5313 : ¬ Reader r5313 := by
  exact replay_head true [] 11 (0,4) (by decide) (by decide)
#print axioms reject5313

def r5314 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5314 : ¬ Reader r5314 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5314

def r5315 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5315 : ¬ Reader r5315 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5315

def r5316 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5316 : ¬ Reader r5316 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5316

def r5317 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5317 : ¬ Reader r5317 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5317

def r5318 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5318 : ¬ Reader r5318 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5318

def r5319 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5319 : ¬ Reader r5319 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5319

def r5320 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5320 : ¬ Reader r5320 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5320

def r5321 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5321 : ¬ Reader r5321 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5321

def r5322 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5322 : ¬ Reader r5322 := by
  exact replay_head true [] 13 (0,4) (by decide) (by decide)
#print axioms reject5322

def r5323 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5323 : ¬ Reader r5323 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)), (.var 1), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5323

def r5324 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5324 : ¬ Reader r5324 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5324

def r5325 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5325 : ¬ Reader r5325 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5325

def r5326 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5326 : ¬ Reader r5326 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5326

def r5327 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5327 : ¬ Reader r5327 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5327

def r5328 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5328 : ¬ Reader r5328 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5328

def r5329 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5329 : ¬ Reader r5329 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5329

def r5330 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5330 : ¬ Reader r5330 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5330

def r5331 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5331 : ¬ Reader r5331 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5331

def r5332 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5332 : ¬ Reader r5332 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5332

def r5333 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5333 : ¬ Reader r5333 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5333

def r5334 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5334 : ¬ Reader r5334 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject5334

def r5335 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5335 : ¬ Reader r5335 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5335

def r5336 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5336 : ¬ Reader r5336 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5336

def r5337 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5337 : ¬ Reader r5337 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5337

def r5338 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5338 : ¬ Reader r5338 := by
  exact replay_head true [] 7 (0,4) (by decide) (by decide)
#print axioms reject5338

def r5339 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5339 : ¬ Reader r5339 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5339

def r5340 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5340 : ¬ Reader r5340 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5340

def r5341 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5341 : ¬ Reader r5341 := by
  exact replay_head true [] 9 (0,3) (by decide) (by decide)
#print axioms reject5341

def r5342 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5342 : ¬ Reader r5342 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5342

def r5343 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5343 : ¬ Reader r5343 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5343

def r5344 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5344 : ¬ Reader r5344 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5344

def r5345 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5345 : ¬ Reader r5345 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5345

def r5346 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5346 : ¬ Reader r5346 := by
  exact replay_head true [] 9 (0,4) (by decide) (by decide)
#print axioms reject5346

def r5347 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5347 : ¬ Reader r5347 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5347

def r5348 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5348 : ¬ Reader r5348 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5348

def r5349 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5349 : ¬ Reader r5349 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5349

def r5350 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5350 : ¬ Reader r5350 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject5350

def r5351 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5351 : ¬ Reader r5351 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject5351

def r5352 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5352 : ¬ Reader r5352 := by
  exact replay_head true [] 5 (0,4) (by decide) (by decide)
#print axioms reject5352

def r5353 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5353 : ¬ Reader r5353 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5353

def r5354 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5354 : ¬ Reader r5354 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5354

def r5355 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5355 : ¬ Reader r5355 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject5355

def r5356 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5356 : ¬ Reader r5356 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5356

def r5357 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5357 : ¬ Reader r5357 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5357

def r5358 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5358 : ¬ Reader r5358 := by
  exact replay_head true [] 9 (0,4) (by decide) (by decide)
#print axioms reject5358

def r5359 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5359 : ¬ Reader r5359 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5359

def r5360 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5360 : ¬ Reader r5360 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5360

def r5361 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5361 : ¬ Reader r5361 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5361

def r5362 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5362 : ¬ Reader r5362 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5362

def r5363 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5363 : ¬ Reader r5363 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject5363

def r5364 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5364 : ¬ Reader r5364 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject5364

def r5365 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5365 : ¬ Reader r5365 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5365

def r5366 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5366 : ¬ Reader r5366 := by
  exact replay_head true [] 7 (0,4) (by decide) (by decide)
#print axioms reject5366

def r5367 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5367 : ¬ Reader r5367 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5367

def r5368 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5368 : ¬ Reader r5368 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5368

def r5369 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5369 : ¬ Reader r5369 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5369

def r5370 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5370 : ¬ Reader r5370 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5370

def r5371 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5371 : ¬ Reader r5371 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5371

def r5372 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5372 : ¬ Reader r5372 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5372

def r5373 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5373 : ¬ Reader r5373 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5373

def r5374 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5374 : ¬ Reader r5374 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5374

def r5375 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5375 : ¬ Reader r5375 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5375

def r5376 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5376 : ¬ Reader r5376 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5376

def r5377 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5377 : ¬ Reader r5377 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5377

def r5378 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5378 : ¬ Reader r5378 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5378

def r5379 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5379 : ¬ Reader r5379 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5379

def r5380 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5380 : ¬ Reader r5380 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5380

def r5381 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5381 : ¬ Reader r5381 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5381

def r5382 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5382 : ¬ Reader r5382 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5382

def r5383 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5383 : ¬ Reader r5383 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5383

def r5384 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5384 : ¬ Reader r5384 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5384

def r5385 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5385 : ¬ Reader r5385 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5385

def r5386 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5386 : ¬ Reader r5386 := by
  exact ground_mixed [[1, 1], [1, 1, 2, 1, 2], [1, 1, 2, 1, 2, 0], [1, 1, 2, 1, 1], [1, 1, 2, 1, 1, 0], [1, 1], [1], [1, 2]] [[], [2]] (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject5386

def r5387 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5387 : ¬ Reader r5387 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject5387

def r5388 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5388 : ¬ Reader r5388 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject5388

def r5389 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5389 : ¬ Reader r5389 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 0), (.var 1), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5389

def r5390 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5390 : ¬ Reader r5390 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5390

def r5391 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5391 : ¬ Reader r5391 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5391

def r5392 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5392 : ¬ Reader r5392 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5392

def r5393 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5393 : ¬ Reader r5393 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5393

def r5394 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5394 : ¬ Reader r5394 := by
  exact ground_mixed [[1, 1], [1, 1, 2, 1, 1, 2], [1, 1, 2, 1, 1, 2, 0], [1, 1, 2, 1, 1], [1, 1], [1], [1, 2], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2, 0]] [[], [2]] (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject5394

def r5395 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5395 : ¬ Reader r5395 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5395

def r5396 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5396 : ¬ Reader r5396 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5396

def r5397 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5397 : ¬ Reader r5397 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5397

def r5398 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5398 : ¬ Reader r5398 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5398

def r5399 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5399 : ¬ Reader r5399 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5399

def r5400 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5400 : ¬ Reader r5400 := by
  exact ground_mixed [[1, 1], [1, 1, 2, 1, 1, 1], [1, 1, 2, 1, 1, 1, 0], [1, 1], [1], [1, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1, 0], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2, 0]] [[], [2]] (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject5400

def r5401 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5401 : ¬ Reader r5401 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5401

def r5402 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5402 : ¬ Reader r5402 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5402

def r5403 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5403 : ¬ Reader r5403 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject5403

def r5404 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5404 : ¬ Reader r5404 := by
  exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1, 1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5404

def r5405 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5405 : ¬ Reader r5405 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5405

def r5406 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5406 : ¬ Reader r5406 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject5406

def r5407 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5407 : ¬ Reader r5407 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5407

def r5408 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5408 : ¬ Reader r5408 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5408

def r5409 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5409 : ¬ Reader r5409 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5409

def r5410 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5410 : ¬ Reader r5410 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject5410

def r5411 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5411 : ¬ Reader r5411 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5411

def r5412 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5412 : ¬ Reader r5412 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject5412

def r5413 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5413 : ¬ Reader r5413 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5413

def r5414 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5414 : ¬ Reader r5414 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5414

def r5415 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5415 : ¬ Reader r5415 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5415

def r5416 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5416 : ¬ Reader r5416 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject5416

def r5417 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5417 : ¬ Reader r5417 := by
  exact tower_reduct 3 0 0 [(.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject5417

def r5418 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5418 : ¬ Reader r5418 := by
  exact replay_loop true [] 22 14 (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))] [(.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5418

def r5419 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5419 : ¬ Reader r5419 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5419

def r5420 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5420 : ¬ Reader r5420 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5420

def r5421 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5421 : ¬ Reader r5421 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5421

def r5422 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5422 : ¬ Reader r5422 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5422

def r5423 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5423 : ¬ Reader r5423 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5423

def r5424 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5424 : ¬ Reader r5424 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject5424

def r5425 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5425 : ¬ Reader r5425 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5425

def r5426 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5426 : ¬ Reader r5426 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5426

def r5427 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5427 : ¬ Reader r5427 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5427

def r5428 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5428 : ¬ Reader r5428 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5428

def r5429 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5429 : ¬ Reader r5429 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5429

def r5430 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5430 : ¬ Reader r5430 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject5430

def r5431 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5431 : ¬ Reader r5431 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject5431

def r5432 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5432 : ¬ Reader r5432 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5432

def r5433 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5433 : ¬ Reader r5433 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5433

def r5434 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5434 : ¬ Reader r5434 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5434

def r5435 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5435 : ¬ Reader r5435 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject5435

def r5436 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5436 : ¬ Reader r5436 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5436

def r5437 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5437 : ¬ Reader r5437 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5437

def r5438 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))
theorem reject5438 : ¬ Reader r5438 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject5438

def r5439 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5439 : ¬ Reader r5439 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5439

def r5440 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5440 : ¬ Reader r5440 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject5440

def r5441 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5441 : ¬ Reader r5441 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5441

def r5442 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5442 : ¬ Reader r5442 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5442

def r5443 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5443 : ¬ Reader r5443 := by
  exact replay_head true [] 7 (0,4) (by decide) (by decide)
#print axioms reject5443

def r5444 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5444 : ¬ Reader r5444 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5444

def r5445 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5445 : ¬ Reader r5445 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5445

def r5446 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5446 : ¬ Reader r5446 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5446

def r5447 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5447 : ¬ Reader r5447 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5447

def r5448 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5448 : ¬ Reader r5448 := by
  exact replay_head true [] 9 (0,4) (by decide) (by decide)
#print axioms reject5448

def r5449 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5449 : ¬ Reader r5449 := by
  exact replay_head true [] 11 (0,6) (by decide) (by decide)
#print axioms reject5449

def r5450 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5450 : ¬ Reader r5450 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5450

def r5451 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5451 : ¬ Reader r5451 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5451

def r5452 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5452 : ¬ Reader r5452 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5452

def r5453 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5453 : ¬ Reader r5453 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5453

def r5454 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5454 : ¬ Reader r5454 := by
  exact replay_head true [] 11 (0,3) (by decide) (by decide)
#print axioms reject5454

def r5455 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5455 : ¬ Reader r5455 := by
  exact replay_head true [[1, 1], [1, 1, 2, 2, 2], [1, 1, 2, 2], [1, 1, 2, 2, 0, 2], [1, 1, 1], [1, 1, 1, 0, 2], [1, 1, 2], [1, 1, 2, 0, 2], [1, 1], [1, 1, 2, 0, 2], [1, 1], [1, 1, 2, 2], [1, 1, 2], [1, 1]] 0 (0,6) (by decide) (by decide)
#print axioms reject5455

def r5456 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5456 : ¬ Reader r5456 := by
  exact replay_head true [[1, 1], [1, 1, 2, 2, 2], [1, 1, 2, 2], [1, 1, 1], [1, 1, 2], [1, 1], [1, 1, 2], [1, 1, 2, 2], [1, 1, 2], [1, 1], [1, 1, 2], [1, 1, 2, 2], [1, 1, 2, 2, 2], [1, 1, 2, 2, 2, 2], [1, 1, 2, 2, 2, 2, 2], [1, 1, 2, 2, 2, 2], [1, 1, 2, 2, 2], [1, 1, 2, 2], [1, 1, 2], [1, 1]] 0 (0,8) (by decide) (by decide)
#print axioms reject5456

def r5457 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5457 : ¬ Reader r5457 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5457

def r5458 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5458 : ¬ Reader r5458 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5458

def r5459 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5459 : ¬ Reader r5459 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5459

def r5460 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5460 : ¬ Reader r5460 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5460

def r5461 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5461 : ¬ Reader r5461 := by
  exact replay_head true [] 7 (0,5) (by decide) (by decide)
#print axioms reject5461

def r5462 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5462 : ¬ Reader r5462 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5462

def r5463 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5463 : ¬ Reader r5463 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5463

def r5464 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5464 : ¬ Reader r5464 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5464

def r5465 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5465 : ¬ Reader r5465 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5465

def r5466 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5466 : ¬ Reader r5466 := by
  exact replay_head true [] 9 (0,4) (by decide) (by decide)
#print axioms reject5466

def r5467 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5467 : ¬ Reader r5467 := by
  exact replay_head true [] 13 (0,6) (by decide) (by decide)
#print axioms reject5467

def r5468 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5468 : ¬ Reader r5468 := by
  exact replay_head true [[1, 1], [1, 1, 2, 2, 1], [1, 1, 1], [1, 1, 2], [1, 1, 2, 0, 2, 2], [1, 1, 2, 0, 2, 2, 2], [1, 1, 2, 0, 2, 2], [1, 1], [1, 1, 2], [1, 1, 2, 2], [1, 1, 2], [1, 1], [1, 1, 2], [1, 1, 2, 2], [1, 1, 2, 2, 2], [1, 1, 2, 2, 2, 2], [1, 1, 2, 2, 2, 2, 2], [1, 1, 2, 2, 2, 2], [1, 1, 2, 2, 2], [1, 1, 2, 2], [1, 1, 2], [1, 1]] 0 (0,8) (by decide) (by decide)
#print axioms reject5468

def r5469 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5469 : ¬ Reader r5469 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5469

def r5470 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5470 : ¬ Reader r5470 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5470

def r5471 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5471 : ¬ Reader r5471 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5471

def r5472 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5472 : ¬ Reader r5472 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5472

def r5473 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5473 : ¬ Reader r5473 := by
  exact replay_head true [] 11 (0,4) (by decide) (by decide)
#print axioms reject5473

def r5474 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5474 : ¬ Reader r5474 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5474

def r5475 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5475 : ¬ Reader r5475 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5475

def r5476 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5476 : ¬ Reader r5476 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5476

def r5477 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5477 : ¬ Reader r5477 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5477

def r5478 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5478 : ¬ Reader r5478 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5478

def r5479 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5479 : ¬ Reader r5479 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5479

def r5480 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5480 : ¬ Reader r5480 := by
  exact replay_head true [] 7 (0,4) (by decide) (by decide)
#print axioms reject5480

def r5481 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5481 : ¬ Reader r5481 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5481

def r5482 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5482 : ¬ Reader r5482 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5482

def r5483 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5483 : ¬ Reader r5483 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5483

def r5484 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5484 : ¬ Reader r5484 := by
  exact replay_head true [] 9 (0,5) (by decide) (by decide)
#print axioms reject5484

def r5485 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5485 : ¬ Reader r5485 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5485

def r5486 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5486 : ¬ Reader r5486 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5486

def r5487 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject5487 : ¬ Reader r5487 := by
  exact replay_head true [] 11 (0,4) (by decide) (by decide)
#print axioms reject5487

def r5488 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5488 : ¬ Reader r5488 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5488

def r5489 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject5489 : ¬ Reader r5489 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5489

def r5490 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5490 : ¬ Reader r5490 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5490

def r5491 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5491 : ¬ Reader r5491 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5491

def r5492 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5492 : ¬ Reader r5492 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5492

def r5493 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject5493 : ¬ Reader r5493 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5493

def r5494 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))
theorem reject5494 : ¬ Reader r5494 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject5494

def r5495 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject5495 : ¬ Reader r5495 := by
  exact mixed_reduct true [[1, 1], [1, 1, 1]] [[2, 0], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5495
end Blc.HandlerLet.Exceptions5_08
