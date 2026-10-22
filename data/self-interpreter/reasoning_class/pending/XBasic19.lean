import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic19
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r6872 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6872 : ¬ Reader r6872 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6872

def r6873 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject6873 : ¬ Reader r6873 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6873

def r6874 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject6874 : ¬ Reader r6874 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6874

def r6875 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 0))))
theorem reject6875 : ¬ Reader r6875 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6875

def r6876 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 0)))
theorem reject6876 : ¬ Reader r6876 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6876

def r6877 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject6877 : ¬ Reader r6877 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 0)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6877

def r6878 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6878 : ¬ Reader r6878 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6878

def r6879 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject6879 : ¬ Reader r6879 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6879

def r6880 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject6880 : ¬ Reader r6880 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6880

def r6881 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 0))))
theorem reject6881 : ¬ Reader r6881 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6881

def r6882 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 0)))
theorem reject6882 : ¬ Reader r6882 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6882

def r6895 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6895 : ¬ Reader r6895 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6895

def r6896 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6896 : ¬ Reader r6896 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6896

def r6897 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6897 : ¬ Reader r6897 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6897

def r6898 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6898 : ¬ Reader r6898 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6898

def r6899 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6899 : ¬ Reader r6899 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6899

def r6900 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6900 : ¬ Reader r6900 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6900

def r6901 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6901 : ¬ Reader r6901 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6901

def r6902 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6902 : ¬ Reader r6902 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6902

def r6903 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6903 : ¬ Reader r6903 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6903

def r6904 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6904 : ¬ Reader r6904 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6904

def r6905 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6905 : ¬ Reader r6905 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6905

def r6906 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6906 : ¬ Reader r6906 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6906

def r6907 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6907 : ¬ Reader r6907 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6907

def r6908 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6908 : ¬ Reader r6908 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6908

def r6909 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6909 : ¬ Reader r6909 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6909

def r6910 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6910 : ¬ Reader r6910 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6910

def r6911 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6911 : ¬ Reader r6911 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6911

def r6912 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6912 : ¬ Reader r6912 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6912

def r6913 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6913 : ¬ Reader r6913 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6913

def r6914 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6914 : ¬ Reader r6914 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6914

def r6915 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6915 : ¬ Reader r6915 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6915

def r6916 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6916 : ¬ Reader r6916 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6916

def r6917 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6917 : ¬ Reader r6917 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6917

def r6918 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6918 : ¬ Reader r6918 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6918

def r6919 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6919 : ¬ Reader r6919 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6919

def r6920 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6920 : ¬ Reader r6920 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6920

def r6921 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6921 : ¬ Reader r6921 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6921

def r6922 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6922 : ¬ Reader r6922 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6922

def r6923 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6923 : ¬ Reader r6923 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6923

def r6924 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6924 : ¬ Reader r6924 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6924

def r6925 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6925 : ¬ Reader r6925 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6925

def r6926 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6926 : ¬ Reader r6926 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6926

def r6927 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6927 : ¬ Reader r6927 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6927

def r6928 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6928 : ¬ Reader r6928 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6928

def r6929 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6929 : ¬ Reader r6929 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6929

def r6930 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6930 : ¬ Reader r6930 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6930

def r6931 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6931 : ¬ Reader r6931 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6931

def r6932 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6932 : ¬ Reader r6932 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6932

def r6933 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6933 : ¬ Reader r6933 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6933

def r6934 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6934 : ¬ Reader r6934 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6934

def r6935 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6935 : ¬ Reader r6935 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6935

def r6936 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6936 : ¬ Reader r6936 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6936

def r6937 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6937 : ¬ Reader r6937 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6937

def r6938 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6938 : ¬ Reader r6938 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6938

def r6939 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6939 : ¬ Reader r6939 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6939

def r6940 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6940 : ¬ Reader r6940 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6940

def r6941 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6941 : ¬ Reader r6941 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6941

def r6942 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6942 : ¬ Reader r6942 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6942

def r6943 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6943 : ¬ Reader r6943 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6943

def r6944 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6944 : ¬ Reader r6944 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6944

def r6945 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject6945 : ¬ Reader r6945 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6945

def r6946 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject6946 : ¬ Reader r6946 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6946

def r6947 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject6947 : ¬ Reader r6947 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6947

def r6948 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6948 : ¬ Reader r6948 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6948

def r6949 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6949 : ¬ Reader r6949 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6949

def r6950 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6950 : ¬ Reader r6950 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6950

def r6951 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject6951 : ¬ Reader r6951 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6951

def r6952 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject6952 : ¬ Reader r6952 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6952

def r6953 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject6953 : ¬ Reader r6953 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6953

def r6954 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6954 : ¬ Reader r6954 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6954

def r6967 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject6967 : ¬ Reader r6967 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6967

def r6968 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject6968 : ¬ Reader r6968 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6968

def r6969 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject6969 : ¬ Reader r6969 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6969

def r6970 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject6970 : ¬ Reader r6970 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6970

def r6971 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0))))
theorem reject6971 : ¬ Reader r6971 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6971

def r6972 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))
theorem reject6972 : ¬ Reader r6972 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6972

def r6973 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 0)))))
theorem reject6973 : ¬ Reader r6973 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6973

def r6974 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 0)))
theorem reject6974 : ¬ Reader r6974 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6974

def r6975 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject6975 : ¬ Reader r6975 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6975

def r6976 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0)))))
theorem reject6976 : ¬ Reader r6976 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6976

def r6977 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject6977 : ¬ Reader r6977 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6977

def r6978 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject6978 : ¬ Reader r6978 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6978

def r6979 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6979 : ¬ Reader r6979 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6979

def r6980 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6980 : ¬ Reader r6980 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6980

def r6981 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6981 : ¬ Reader r6981 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6981

def r6982 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6982 : ¬ Reader r6982 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6982

def r6983 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6983 : ¬ Reader r6983 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6983

def r6984 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6984 : ¬ Reader r6984 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6984

def r6991 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6991 : ¬ Reader r6991 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6991

def r6992 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6992 : ¬ Reader r6992 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6992

def r6993 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6993 : ¬ Reader r6993 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6993

def r6994 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6994 : ¬ Reader r6994 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6994

def r6995 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6995 : ¬ Reader r6995 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6995

def r6996 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6996 : ¬ Reader r6996 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6996

def r6997 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6997 : ¬ Reader r6997 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6997

def r6998 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6998 : ¬ Reader r6998 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6998

def r6999 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6999 : ¬ Reader r6999 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6999

def r7000 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7000 : ¬ Reader r7000 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7000

def r7001 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7001 : ¬ Reader r7001 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7001

def r7002 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7002 : ¬ Reader r7002 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7002

def r7009 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7009 : ¬ Reader r7009 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7009

def r7010 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7010 : ¬ Reader r7010 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7010

def r7011 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7011 : ¬ Reader r7011 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7011

def r7012 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7012 : ¬ Reader r7012 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7012

def r7013 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7013 : ¬ Reader r7013 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7013

def r7014 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7014 : ¬ Reader r7014 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7014

def r7015 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7015 : ¬ Reader r7015 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7015

def r7016 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7016 : ¬ Reader r7016 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7016

def r7017 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7017 : ¬ Reader r7017 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7017

def r7018 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7018 : ¬ Reader r7018 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7018

def r7019 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7019 : ¬ Reader r7019 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7019

def r7020 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7020 : ¬ Reader r7020 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7020

def r7027 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7027 : ¬ Reader r7027 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7027

def r7028 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7028 : ¬ Reader r7028 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7028

def r7029 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7029 : ¬ Reader r7029 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7029

def r7030 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7030 : ¬ Reader r7030 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7030

def r7031 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7031 : ¬ Reader r7031 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7031

def r7032 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7032 : ¬ Reader r7032 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7032

def r7033 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject7033 : ¬ Reader r7033 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7033

def r7034 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject7034 : ¬ Reader r7034 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7034

def r7035 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject7035 : ¬ Reader r7035 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7035

def r7036 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject7036 : ¬ Reader r7036 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7036

def r7037 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0))))
theorem reject7037 : ¬ Reader r7037 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7037

def r7038 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))
theorem reject7038 : ¬ Reader r7038 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7038

def r7039 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 0)))))
theorem reject7039 : ¬ Reader r7039 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7039

def r7040 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 0)))
theorem reject7040 : ¬ Reader r7040 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7040

def r7041 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject7041 : ¬ Reader r7041 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7041

def r7042 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0)))))
theorem reject7042 : ¬ Reader r7042 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7042

def r7043 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject7043 : ¬ Reader r7043 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7043

def r7044 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject7044 : ¬ Reader r7044 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7044

def r7045 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7045 : ¬ Reader r7045 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7045

def r7046 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7046 : ¬ Reader r7046 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7046

def r7047 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7047 : ¬ Reader r7047 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7047

def r7048 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7048 : ¬ Reader r7048 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7048

def r7049 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7049 : ¬ Reader r7049 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7049

def r7050 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7050 : ¬ Reader r7050 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7050

def r7051 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7051 : ¬ Reader r7051 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7051

def r7052 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7052 : ¬ Reader r7052 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7052

def r7053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7053 : ¬ Reader r7053 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7053

def r7054 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7054 : ¬ Reader r7054 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7054

def r7055 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7055 : ¬ Reader r7055 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7055

def r7056 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7056 : ¬ Reader r7056 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7056

def r7057 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7057 : ¬ Reader r7057 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7057

def r7058 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7058 : ¬ Reader r7058 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7058

def r7059 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7059 : ¬ Reader r7059 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7059

def r7060 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7060 : ¬ Reader r7060 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7060

def r7061 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7061 : ¬ Reader r7061 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7061

def r7062 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7062 : ¬ Reader r7062 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7062

def r7063 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7063 : ¬ Reader r7063 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7063

def r7064 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7064 : ¬ Reader r7064 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7064

def r7065 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7065 : ¬ Reader r7065 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7065

def r7066 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7066 : ¬ Reader r7066 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7066

def r7067 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7067 : ¬ Reader r7067 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7067

def r7068 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7068 : ¬ Reader r7068 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7068

def r7069 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7069 : ¬ Reader r7069 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7069

def r7070 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7070 : ¬ Reader r7070 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7070

def r7071 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7071 : ¬ Reader r7071 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7071

def r7072 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7072 : ¬ Reader r7072 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7072

def r7073 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7073 : ¬ Reader r7073 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7073

def r7074 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7074 : ¬ Reader r7074 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7074

def r7075 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7075 : ¬ Reader r7075 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7075

def r7076 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7076 : ¬ Reader r7076 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7076

def r7077 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7077 : ¬ Reader r7077 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7077

def r7078 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7078 : ¬ Reader r7078 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7078

def r7079 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7079 : ¬ Reader r7079 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7079

def r7080 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7080 : ¬ Reader r7080 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7080

def r7087 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject7087 : ¬ Reader r7087 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7087

def r7088 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject7088 : ¬ Reader r7088 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7088

def r7089 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))
theorem reject7089 : ¬ Reader r7089 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7089

def r7090 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))
theorem reject7090 : ¬ Reader r7090 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7090

def r7091 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject7091 : ¬ Reader r7091 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7091

def r7092 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0)))))
theorem reject7092 : ¬ Reader r7092 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7092

def r7093 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject7093 : ¬ Reader r7093 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7093

def r7094 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject7094 : ¬ Reader r7094 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7094

def r7095 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))
theorem reject7095 : ¬ Reader r7095 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7095

def r7096 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))
theorem reject7096 : ¬ Reader r7096 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7096

def r7097 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject7097 : ¬ Reader r7097 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7097

def r7098 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0)))))
theorem reject7098 : ¬ Reader r7098 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7098

def r7105 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7105 : ¬ Reader r7105 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7105

def r7106 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7106 : ¬ Reader r7106 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7106

def r7107 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7107 : ¬ Reader r7107 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7107

def r7108 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7108 : ¬ Reader r7108 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7108

def r7109 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7109 : ¬ Reader r7109 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7109

def r7110 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7110 : ¬ Reader r7110 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7110

def r7111 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7111 : ¬ Reader r7111 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7111

def r7112 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7112 : ¬ Reader r7112 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7112

def r7113 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7113 : ¬ Reader r7113 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7113

def r7114 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7114 : ¬ Reader r7114 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7114

def r7115 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7115 : ¬ Reader r7115 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7115

def r7116 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7116 : ¬ Reader r7116 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7116

def r7123 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7123 : ¬ Reader r7123 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7123

def r7124 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7124 : ¬ Reader r7124 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7124

def r7125 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7125 : ¬ Reader r7125 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7125

def r7126 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7126 : ¬ Reader r7126 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7126

def r7127 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7127 : ¬ Reader r7127 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7127

def r7128 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7128 : ¬ Reader r7128 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7128

def r7129 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7129 : ¬ Reader r7129 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7129

def r7130 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7130 : ¬ Reader r7130 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7130

def r7131 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7131 : ¬ Reader r7131 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7131

def r7132 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7132 : ¬ Reader r7132 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7132

def r7133 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7133 : ¬ Reader r7133 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7133

def r7134 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7134 : ¬ Reader r7134 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7134

def r7135 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7135 : ¬ Reader r7135 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7135

def r7136 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7136 : ¬ Reader r7136 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7136

def r7137 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7137 : ¬ Reader r7137 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7137

def r7138 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7138 : ¬ Reader r7138 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7138

def r7139 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7139 : ¬ Reader r7139 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7139

def r7140 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7140 : ¬ Reader r7140 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7140

def r7141 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7141 : ¬ Reader r7141 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7141

def r7142 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7142 : ¬ Reader r7142 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7142

def r7143 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7143 : ¬ Reader r7143 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7143

def r7144 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7144 : ¬ Reader r7144 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7144

def r7145 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7145 : ¬ Reader r7145 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7145

def r7146 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7146 : ¬ Reader r7146 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7146

def r7147 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7147 : ¬ Reader r7147 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7147

def r7148 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7148 : ¬ Reader r7148 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7148

def r7149 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7149 : ¬ Reader r7149 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7149

def r7150 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7150 : ¬ Reader r7150 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7150

def r7151 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7151 : ¬ Reader r7151 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7151

def r7152 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7152 : ¬ Reader r7152 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7152

def r7153 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7153 : ¬ Reader r7153 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7153

def r7154 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7154 : ¬ Reader r7154 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7154

def r7155 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7155 : ¬ Reader r7155 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7155

def r7156 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7156 : ¬ Reader r7156 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7156

def r7157 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7157 : ¬ Reader r7157 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7157

def r7158 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7158 : ¬ Reader r7158 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7158

def r7159 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject7159 : ¬ Reader r7159 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7159

def r7160 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject7160 : ¬ Reader r7160 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7160

def r7161 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))
theorem reject7161 : ¬ Reader r7161 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.var 0))), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7161

def r7162 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject7162 : ¬ Reader r7162 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7162

def r7163 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))
theorem reject7163 : ¬ Reader r7163 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7163

def r7164 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))
theorem reject7164 : ¬ Reader r7164 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7164

def r7165 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject7165 : ¬ Reader r7165 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7165

def r7166 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject7166 : ¬ Reader r7166 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7166

def r7167 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject7167 : ¬ Reader r7167 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7167

def r7168 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject7168 : ¬ Reader r7168 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7168

def r7169 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7169 : ¬ Reader r7169 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7169

def r7170 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7170 : ¬ Reader r7170 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7170

def r7171 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7171 : ¬ Reader r7171 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7171

def r7172 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7172 : ¬ Reader r7172 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7172

def r7173 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7173 : ¬ Reader r7173 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7173

def r7174 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7174 : ¬ Reader r7174 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7174

def r7175 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7175 : ¬ Reader r7175 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7175

def r7176 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7176 : ¬ Reader r7176 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7176

def r7177 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject7177 : ¬ Reader r7177 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7177

def r7178 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject7178 : ¬ Reader r7178 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7178

def r7179 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject7179 : ¬ Reader r7179 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7179

def r7180 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject7180 : ¬ Reader r7180 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7180

def r7181 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject7181 : ¬ Reader r7181 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7181

def r7182 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject7182 : ¬ Reader r7182 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7182

def r7183 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject7183 : ¬ Reader r7183 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7183

def r7184 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject7184 : ¬ Reader r7184 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7184

def r7185 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject7185 : ¬ Reader r7185 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7185

def r7186 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject7186 : ¬ Reader r7186 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7186

def r7187 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject7187 : ¬ Reader r7187 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7187

def r7188 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject7188 : ¬ Reader r7188 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7188

def r7189 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject7189 : ¬ Reader r7189 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7189

def r7190 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject7190 : ¬ Reader r7190 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7190

def r7191 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject7191 : ¬ Reader r7191 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7191

def r7195 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject7195 : ¬ Reader r7195 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7195

def r7196 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject7196 : ¬ Reader r7196 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7196

def r7197 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject7197 : ¬ Reader r7197 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7197

def r7198 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject7198 : ¬ Reader r7198 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7198

def r7199 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject7199 : ¬ Reader r7199 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7199

def r7200 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject7200 : ¬ Reader r7200 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7200

def r7201 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject7201 : ¬ Reader r7201 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7201

def r7202 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject7202 : ¬ Reader r7202 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7202

def r7203 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject7203 : ¬ Reader r7203 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7203

def r7204 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject7204 : ¬ Reader r7204 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7204

def r7205 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject7205 : ¬ Reader r7205 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7205

def r7206 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject7206 : ¬ Reader r7206 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7206

def r7207 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject7207 : ¬ Reader r7207 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7207

def r7208 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject7208 : ¬ Reader r7208 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7208

def r7209 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject7209 : ¬ Reader r7209 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7209

def r7210 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject7210 : ¬ Reader r7210 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7210

def r7211 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject7211 : ¬ Reader r7211 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7211

def r7212 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject7212 : ¬ Reader r7212 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7212

def r7213 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject7213 : ¬ Reader r7213 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7213

def r7214 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject7214 : ¬ Reader r7214 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7214

def r7215 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject7215 : ¬ Reader r7215 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7215

def r7216 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject7216 : ¬ Reader r7216 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7216

def r7217 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject7217 : ¬ Reader r7217 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7217

def r7218 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject7218 : ¬ Reader r7218 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7218

def r7219 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject7219 : ¬ Reader r7219 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7219

def r7220 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject7220 : ¬ Reader r7220 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7220

def r7221 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject7221 : ¬ Reader r7221 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7221

def r7222 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject7222 : ¬ Reader r7222 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7222

def r7223 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject7223 : ¬ Reader r7223 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7223

def r7224 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject7224 : ¬ Reader r7224 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7224

def r7225 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject7225 : ¬ Reader r7225 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7225

def r7226 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject7226 : ¬ Reader r7226 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7226

def r7227 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject7227 : ¬ Reader r7227 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7227

def r7228 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject7228 : ¬ Reader r7228 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7228

def r7229 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject7229 : ¬ Reader r7229 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7229

def r7230 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7230 : ¬ Reader r7230 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7230

def r7231 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7231 : ¬ Reader r7231 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7231

def r7232 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7232 : ¬ Reader r7232 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7232

def r7233 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7233 : ¬ Reader r7233 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7233

def r7234 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject7234 : ¬ Reader r7234 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7234
end Blc.HandlerLet.XBasic19
