import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic11
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r3962 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject3962 : ¬ Reader r3962 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3962

def r3963 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject3963 : ¬ Reader r3963 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3963

def r3964 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject3964 : ¬ Reader r3964 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3964

def r3965 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject3965 : ¬ Reader r3965 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3965

def r3966 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject3966 : ¬ Reader r3966 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3966

def r3967 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject3967 : ¬ Reader r3967 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3967

def r3968 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject3968 : ¬ Reader r3968 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3968

def r3969 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject3969 : ¬ Reader r3969 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3969

def r3970 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject3970 : ¬ Reader r3970 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3970

def r3971 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject3971 : ¬ Reader r3971 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3971

def r3972 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject3972 : ¬ Reader r3972 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3972

def r3973 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject3973 : ¬ Reader r3973 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3973

def r3974 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject3974 : ¬ Reader r3974 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3974

def r3975 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject3975 : ¬ Reader r3975 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3975

def r3976 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject3976 : ¬ Reader r3976 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3976

def r3989 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject3989 : ¬ Reader r3989 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3989

def r3990 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject3990 : ¬ Reader r3990 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3990

def r3991 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject3991 : ¬ Reader r3991 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3991

def r3992 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject3992 : ¬ Reader r3992 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3992

def r3993 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject3993 : ¬ Reader r3993 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3993

def r3994 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject3994 : ¬ Reader r3994 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3994

def r3995 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject3995 : ¬ Reader r3995 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3995

def r3996 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject3996 : ¬ Reader r3996 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3996

def r3997 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject3997 : ¬ Reader r3997 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3997

def r3998 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject3998 : ¬ Reader r3998 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3998

def r3999 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject3999 : ¬ Reader r3999 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3999

def r4000 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject4000 : ¬ Reader r4000 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4000

def r4013 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject4013 : ¬ Reader r4013 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4013

def r4014 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject4014 : ¬ Reader r4014 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4014

def r4015 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject4015 : ¬ Reader r4015 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4015

def r4016 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject4016 : ¬ Reader r4016 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4016

def r4017 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject4017 : ¬ Reader r4017 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4017

def r4018 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject4018 : ¬ Reader r4018 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4018

def r4019 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject4019 : ¬ Reader r4019 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4019

def r4020 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject4020 : ¬ Reader r4020 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4020

def r4021 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject4021 : ¬ Reader r4021 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4021

def r4022 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject4022 : ¬ Reader r4022 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4022

def r4023 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject4023 : ¬ Reader r4023 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4023

def r4024 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject4024 : ¬ Reader r4024 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4024

def r4025 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject4025 : ¬ Reader r4025 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4025

def r4026 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject4026 : ¬ Reader r4026 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4026

def r4027 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject4027 : ¬ Reader r4027 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4027

def r4028 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject4028 : ¬ Reader r4028 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4028

def r4029 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject4029 : ¬ Reader r4029 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4029

def r4030 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject4030 : ¬ Reader r4030 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4030

def r4031 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject4031 : ¬ Reader r4031 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4031

def r4032 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject4032 : ¬ Reader r4032 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4032

def r4033 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject4033 : ¬ Reader r4033 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4033

def r4034 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject4034 : ¬ Reader r4034 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4034

def r4035 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject4035 : ¬ Reader r4035 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4035

def r4036 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject4036 : ¬ Reader r4036 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4036

def r4037 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4037 : ¬ Reader r4037 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4037

def r4038 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4038 : ¬ Reader r4038 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4038

def r4039 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4039 : ¬ Reader r4039 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4039

def r4040 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4040 : ¬ Reader r4040 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4040

def r4041 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4041 : ¬ Reader r4041 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4041

def r4042 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4042 : ¬ Reader r4042 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4042

def r4043 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4043 : ¬ Reader r4043 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4043

def r4044 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4044 : ¬ Reader r4044 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4044

def r4045 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4045 : ¬ Reader r4045 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4045

def r4046 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4046 : ¬ Reader r4046 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4046

def r4047 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4047 : ¬ Reader r4047 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4047

def r4048 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4048 : ¬ Reader r4048 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4048

def r4049 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4049 : ¬ Reader r4049 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4049

def r4050 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4050 : ¬ Reader r4050 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4050

def r4051 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4051 : ¬ Reader r4051 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4051

def r4052 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4052 : ¬ Reader r4052 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4052

def r4053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4053 : ¬ Reader r4053 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4053

def r4054 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4054 : ¬ Reader r4054 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4054

def r4055 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4055 : ¬ Reader r4055 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4055

def r4056 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4056 : ¬ Reader r4056 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4056

def r4057 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4057 : ¬ Reader r4057 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4057

def r4058 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4058 : ¬ Reader r4058 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4058

def r4059 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4059 : ¬ Reader r4059 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4059

def r4060 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4060 : ¬ Reader r4060 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4060

def r4061 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4061 : ¬ Reader r4061 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4061

def r4062 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4062 : ¬ Reader r4062 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4062

def r4063 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4063 : ¬ Reader r4063 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4063

def r4064 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4064 : ¬ Reader r4064 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4064

def r4065 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4065 : ¬ Reader r4065 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4065

def r4066 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4066 : ¬ Reader r4066 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4066

def r4067 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4067 : ¬ Reader r4067 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4067

def r4068 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4068 : ¬ Reader r4068 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4068

def r4069 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4069 : ¬ Reader r4069 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4069

def r4070 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4070 : ¬ Reader r4070 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4070

def r4071 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4071 : ¬ Reader r4071 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4071

def r4072 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4072 : ¬ Reader r4072 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4072

def r4073 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4073 : ¬ Reader r4073 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.var 0), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4073

def r4074 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4074 : ¬ Reader r4074 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.var 0), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4074

def r4075 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4075 : ¬ Reader r4075 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4075

def r4076 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4076 : ¬ Reader r4076 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4076

def r4077 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4077 : ¬ Reader r4077 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.var 0), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4077

def r4078 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4078 : ¬ Reader r4078 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.var 0), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4078

def r4079 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject4079 : ¬ Reader r4079 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4079

def r4080 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject4080 : ¬ Reader r4080 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4080

def r4081 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))
theorem reject4081 : ¬ Reader r4081 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4081

def r4082 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))
theorem reject4082 : ¬ Reader r4082 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4082

def r4083 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))
theorem reject4083 : ¬ Reader r4083 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4083

def r4084 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))
theorem reject4084 : ¬ Reader r4084 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4084

def r4085 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))
theorem reject4085 : ¬ Reader r4085 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4085

def r4086 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject4086 : ¬ Reader r4086 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4086

def r4087 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject4087 : ¬ Reader r4087 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4087

def r4088 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject4088 : ¬ Reader r4088 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4088

def r4089 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject4089 : ¬ Reader r4089 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4089

def r4090 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject4090 : ¬ Reader r4090 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4090

def r4091 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject4091 : ¬ Reader r4091 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4091

def r4092 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject4092 : ¬ Reader r4092 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4092

def r4093 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject4093 : ¬ Reader r4093 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4093

def r4094 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
theorem reject4094 : ¬ Reader r4094 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4094

def r4095 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject4095 : ¬ Reader r4095 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4095

def r4096 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject4096 : ¬ Reader r4096 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4096

def r4097 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4097 : ¬ Reader r4097 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4097

def r4098 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4098 : ¬ Reader r4098 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4098

def r4099 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4099 : ¬ Reader r4099 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4099

def r4109 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4109 : ¬ Reader r4109 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4109

def r4110 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4110 : ¬ Reader r4110 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4110

def r4111 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4111 : ¬ Reader r4111 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4111

def r4112 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4112 : ¬ Reader r4112 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4112

def r4113 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4113 : ¬ Reader r4113 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4113

def r4114 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4114 : ¬ Reader r4114 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4114

def r4115 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4115 : ¬ Reader r4115 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.app (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4115

def r4116 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4116 : ¬ Reader r4116 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.app (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4116

def r4117 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4117 : ¬ Reader r4117 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.app (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4117

def r4118 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4118 : ¬ Reader r4118 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4118

def r4119 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4119 : ¬ Reader r4119 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4119

def r4120 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4120 : ¬ Reader r4120 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4120

def r4121 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4121 : ¬ Reader r4121 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4121

def r4122 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4122 : ¬ Reader r4122 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4122

def r4123 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4123 : ¬ Reader r4123 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4123

def r4124 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4124 : ¬ Reader r4124 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4124

def r4125 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4125 : ¬ Reader r4125 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4125

def r4126 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4126 : ¬ Reader r4126 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4126

def r4130 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4130 : ¬ Reader r4130 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4130

def r4131 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4131 : ¬ Reader r4131 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4131

def r4132 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4132 : ¬ Reader r4132 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4132

def r4139 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4139 : ¬ Reader r4139 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))] [(.lam (.var 0)), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4139

def r4140 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4140 : ¬ Reader r4140 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))] [(.lam (.var 0)), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4140

def r4141 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4141 : ¬ Reader r4141 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))] [(.lam (.var 0)), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4141

def r4145 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4145 : ¬ Reader r4145 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4145

def r4146 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4146 : ¬ Reader r4146 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4146

def r4147 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4147 : ¬ Reader r4147 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4147

def r4163 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4163 : ¬ Reader r4163 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) [(.lam (.var 0)), (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0))))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4163

def r4164 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4164 : ¬ Reader r4164 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) [(.lam (.var 0)), (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0))))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4164

def r4165 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4165 : ¬ Reader r4165 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) [(.lam (.var 0)), (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0))))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4165

def r4175 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4175 : ¬ Reader r4175 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))))) (.lam (.var 0)))), (.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4175

def r4176 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4176 : ¬ Reader r4176 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))))) (.lam (.var 0)))), (.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4176

def r4177 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4177 : ¬ Reader r4177 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))))) (.lam (.var 0)))), (.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))) (.lam (.var 0))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4177

def r4181 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4181 : ¬ Reader r4181 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.app (.var 0) (.lam (.var 0)))))) [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.lam (.var 0))))) (.lam (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4181

def r4182 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4182 : ¬ Reader r4182 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.app (.var 0) (.lam (.var 0)))))) [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.lam (.var 0))))) (.lam (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4182

def r4183 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4183 : ¬ Reader r4183 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.app (.var 0) (.lam (.var 0)))))) [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.lam (.var 0))))) (.lam (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4183

def r4193 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4193 : ¬ Reader r4193 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.var 0)))) [(.lam (.var 0)), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4193

def r4194 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4194 : ¬ Reader r4194 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.var 0)))) [(.lam (.var 0)), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4194

def r4195 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4195 : ¬ Reader r4195 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.var 0)))) [(.lam (.var 0)), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4195

def r4196 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4196 : ¬ Reader r4196 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4196

def r4197 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4197 : ¬ Reader r4197 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4197

def r4198 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4198 : ¬ Reader r4198 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4198

def r4202 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4202 : ¬ Reader r4202 := by
  exact replay_loop true [] 3 5 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4202

def r4203 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4203 : ¬ Reader r4203 := by
  exact replay_loop true [] 3 5 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4203

def r4204 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4204 : ¬ Reader r4204 := by
  exact replay_loop true [] 3 5 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4204

def r4205 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4205 : ¬ Reader r4205 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))))))) [(.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))))] [(.lam (.var 0)), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4205

def r4206 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4206 : ¬ Reader r4206 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))))))) [(.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))))] [(.lam (.var 0)), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4206

def r4207 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4207 : ¬ Reader r4207 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))))))) [(.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))))] [(.lam (.var 0)), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4207

def r4211 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4211 : ¬ Reader r4211 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))))) [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4211

def r4212 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4212 : ¬ Reader r4212 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))))) [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4212

def r4213 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4213 : ¬ Reader r4213 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))))) [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4213

def r4214 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4214 : ¬ Reader r4214 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0)))), (.lam (.var 0))] [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))), (.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4214

def r4215 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4215 : ¬ Reader r4215 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0)))), (.lam (.var 0))] [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))), (.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4215

def r4216 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4216 : ¬ Reader r4216 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) (.lam (.var 0))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0)))), (.lam (.var 0))] [(.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))), (.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4216

def r4217 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4217 : ¬ Reader r4217 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))))))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4217

def r4218 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4218 : ¬ Reader r4218 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))))))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4218

def r4219 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4219 : ¬ Reader r4219 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))))))))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4219

def r4229 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4229 : ¬ Reader r4229 := by
  exact replay_loop true [] 13 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4229

def r4230 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4230 : ¬ Reader r4230 := by
  exact replay_loop true [] 13 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4230

def r4231 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4231 : ¬ Reader r4231 := by
  exact replay_loop true [] 13 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4231

def r4232 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4232 : ¬ Reader r4232 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4232

def r4233 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4233 : ¬ Reader r4233 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4233

def r4234 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4234 : ¬ Reader r4234 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4234

def r4235 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4235 : ¬ Reader r4235 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4235

def r4236 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4236 : ¬ Reader r4236 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4236

def r4237 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4237 : ¬ Reader r4237 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4237

def r4238 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4238 : ¬ Reader r4238 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4238

def r4239 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4239 : ¬ Reader r4239 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4239

def r4240 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4240 : ¬ Reader r4240 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4240

def r4241 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4241 : ¬ Reader r4241 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4241

def r4242 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4242 : ¬ Reader r4242 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4242

def r4243 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4243 : ¬ Reader r4243 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4243

def r4244 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4244 : ¬ Reader r4244 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) [(.lam (.var 0)), (.lam (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4244

def r4245 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4245 : ¬ Reader r4245 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) [(.lam (.var 0)), (.lam (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4245

def r4246 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4246 : ¬ Reader r4246 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) [(.lam (.var 0)), (.lam (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4246

def r4256 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4256 : ¬ Reader r4256 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4256

def r4257 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4257 : ¬ Reader r4257 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4257

def r4258 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4258 : ¬ Reader r4258 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4258

def r4259 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4259 : ¬ Reader r4259 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4259

def r4260 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4260 : ¬ Reader r4260 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4260

def r4261 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4261 : ¬ Reader r4261 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4261

def r4262 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4262 : ¬ Reader r4262 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))), (.lam (.var 0))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4262

def r4263 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4263 : ¬ Reader r4263 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))), (.lam (.var 0))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4263

def r4264 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4264 : ¬ Reader r4264 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))), (.lam (.var 0))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4264

def r4268 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4268 : ¬ Reader r4268 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))))))))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))), (.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4268

def r4269 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4269 : ¬ Reader r4269 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))))))))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4269

def r4270 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4270 : ¬ Reader r4270 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))))))))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))))))), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4270

def r4274 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4274 : ¬ Reader r4274 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 0)))) (.var 0))), (.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4274

def r4275 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4275 : ¬ Reader r4275 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 0)))) (.var 0))), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4275

def r4276 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4276 : ¬ Reader r4276 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.var 0)))) (.var 0))), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4276

def r4277 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4277 : ¬ Reader r4277 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4277

def r4278 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4278 : ¬ Reader r4278 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4278

def r4279 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4279 : ¬ Reader r4279 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))))] [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4279

def r4280 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4280 : ¬ Reader r4280 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4280

def r4281 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4281 : ¬ Reader r4281 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4281

def r4282 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4282 : ¬ Reader r4282 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4282

def r4283 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject4283 : ¬ Reader r4283 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4283

def r4284 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject4284 : ¬ Reader r4284 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4284

def r4285 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject4285 : ¬ Reader r4285 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4285

def r4295 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject4295 : ¬ Reader r4295 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4295

def r4296 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject4296 : ¬ Reader r4296 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4296

def r4297 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject4297 : ¬ Reader r4297 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4297

def r4298 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject4298 : ¬ Reader r4298 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4298

def r4299 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject4299 : ¬ Reader r4299 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4299

def r4300 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject4300 : ¬ Reader r4300 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4300

def r4301 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject4301 : ¬ Reader r4301 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4301

def r4302 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject4302 : ¬ Reader r4302 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4302

def r4303 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject4303 : ¬ Reader r4303 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4303

def r4304 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject4304 : ¬ Reader r4304 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4304

def r4305 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject4305 : ¬ Reader r4305 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4305

def r4306 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject4306 : ¬ Reader r4306 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4306

def r4307 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1))))
theorem reject4307 : ¬ Reader r4307 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4307

def r4308 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0))
theorem reject4308 : ¬ Reader r4308 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4308

def r4309 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject4309 : ¬ Reader r4309 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4309

def r4310 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject4310 : ¬ Reader r4310 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4310

def r4311 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject4311 : ¬ Reader r4311 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4311

def r4312 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject4312 : ¬ Reader r4312 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4312

def r4313 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1))))
theorem reject4313 : ¬ Reader r4313 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4313

def r4314 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0))
theorem reject4314 : ¬ Reader r4314 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4314

def r4315 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject4315 : ¬ Reader r4315 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4315

def r4316 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject4316 : ¬ Reader r4316 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4316

def r4317 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject4317 : ¬ Reader r4317 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4317

def r4318 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject4318 : ¬ Reader r4318 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4318

def r4319 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4319 : ¬ Reader r4319 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4319

def r4320 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4320 : ¬ Reader r4320 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4320

def r4321 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4321 : ¬ Reader r4321 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4321

def r4322 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4322 : ¬ Reader r4322 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4322

def r4323 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4323 : ¬ Reader r4323 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4323

def r4324 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4324 : ¬ Reader r4324 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4324

def r4325 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject4325 : ¬ Reader r4325 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4325

def r4326 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject4326 : ¬ Reader r4326 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4326

def r4327 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject4327 : ¬ Reader r4327 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4327

def r4328 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject4328 : ¬ Reader r4328 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4328

def r4329 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject4329 : ¬ Reader r4329 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4329

def r4330 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject4330 : ¬ Reader r4330 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4330

def r4331 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4331 : ¬ Reader r4331 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4331

def r4332 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4332 : ¬ Reader r4332 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4332

def r4333 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4333 : ¬ Reader r4333 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4333

def r4334 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4334 : ¬ Reader r4334 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4334

def r4335 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4335 : ¬ Reader r4335 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4335

def r4336 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4336 : ¬ Reader r4336 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4336

def r4337 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4337 : ¬ Reader r4337 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4337

def r4338 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4338 : ¬ Reader r4338 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4338

def r4339 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4339 : ¬ Reader r4339 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4339

def r4340 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4340 : ¬ Reader r4340 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4340

def r4341 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4341 : ¬ Reader r4341 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4341

def r4342 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4342 : ¬ Reader r4342 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4342

def r4343 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4343 : ¬ Reader r4343 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4343

def r4344 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4344 : ¬ Reader r4344 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4344

def r4345 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4345 : ¬ Reader r4345 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4345

def r4346 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4346 : ¬ Reader r4346 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4346

def r4347 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4347 : ¬ Reader r4347 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4347

def r4348 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4348 : ¬ Reader r4348 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4348

def r4349 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4349 : ¬ Reader r4349 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4349

def r4350 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4350 : ¬ Reader r4350 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4350

def r4351 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4351 : ¬ Reader r4351 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4351

def r4352 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4352 : ¬ Reader r4352 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4352

def r4353 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4353 : ¬ Reader r4353 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4353

def r4354 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4354 : ¬ Reader r4354 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4354

def r4355 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4355 : ¬ Reader r4355 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4355

def r4356 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4356 : ¬ Reader r4356 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4356

def r4357 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4357 : ¬ Reader r4357 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4357

def r4358 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject4358 : ¬ Reader r4358 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4358

def r4359 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject4359 : ¬ Reader r4359 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4359

def r4360 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject4360 : ¬ Reader r4360 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4360

def r4361 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject4361 : ¬ Reader r4361 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4361

def r4362 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject4362 : ¬ Reader r4362 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4362

def r4363 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject4363 : ¬ Reader r4363 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4363

def r4364 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4364 : ¬ Reader r4364 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4364

def r4365 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4365 : ¬ Reader r4365 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4365

def r4366 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4366 : ¬ Reader r4366 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4366

def r4367 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4367 : ¬ Reader r4367 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)))))), (.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4367

def r4368 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4368 : ¬ Reader r4368 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)))))), (.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4368

def r4369 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4369 : ¬ Reader r4369 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)))))), (.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4369

def r4370 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4370 : ¬ Reader r4370 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4370

def r4371 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4371 : ¬ Reader r4371 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4371

def r4372 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4372 : ¬ Reader r4372 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4372

def r4373 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4373 : ¬ Reader r4373 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 0))), (.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4373

def r4374 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4374 : ¬ Reader r4374 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 0))), (.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4374

def r4375 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4375 : ¬ Reader r4375 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 0))), (.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4375

def r4376 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4376 : ¬ Reader r4376 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4376

def r4377 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4377 : ¬ Reader r4377 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4377

def r4378 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4378 : ¬ Reader r4378 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4378

def r4379 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4379 : ¬ Reader r4379 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4379

def r4380 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4380 : ¬ Reader r4380 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4380

def r4381 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4381 : ¬ Reader r4381 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4381
end Blc.HandlerLet.XBasic11
