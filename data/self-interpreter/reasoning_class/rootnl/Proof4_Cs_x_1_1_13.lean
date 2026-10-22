import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_1_13
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r6035 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6035 : ¬ Reader r6035 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6035

def r6036 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6036 : ¬ Reader r6036 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6036

def r6037 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6037 : ¬ Reader r6037 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6037

def r6038 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6038 : ¬ Reader r6038 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6038

def r6039 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6039 : ¬ Reader r6039 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6039

def r6040 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6040 : ¬ Reader r6040 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6040

def r6041 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6041 : ¬ Reader r6041 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6041

def r6042 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6042 : ¬ Reader r6042 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6042

def r6043 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6043 : ¬ Reader r6043 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6043

def r6044 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6044 : ¬ Reader r6044 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6044

def r6045 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6045 : ¬ Reader r6045 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6045

def r6046 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6046 : ¬ Reader r6046 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6046

def r6047 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6047 : ¬ Reader r6047 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6047

def r6048 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6048 : ¬ Reader r6048 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6048

def r6049 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6049 : ¬ Reader r6049 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6049

def r6050 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6050 : ¬ Reader r6050 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6050

def r6051 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6051 : ¬ Reader r6051 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6051

def r6052 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6052 : ¬ Reader r6052 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6052

def r6053 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6053 : ¬ Reader r6053 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6053

def r6054 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6054 : ¬ Reader r6054 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6054

def r6055 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6055 : ¬ Reader r6055 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6055

def r6056 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6056 : ¬ Reader r6056 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6056

def r6057 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6057 : ¬ Reader r6057 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6057

def r6058 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6058 : ¬ Reader r6058 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6058

def r6059 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6059 : ¬ Reader r6059 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6059

def r6060 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6060 : ¬ Reader r6060 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6060

def r6061 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6061 : ¬ Reader r6061 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6061

def r6062 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6062 : ¬ Reader r6062 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6062

def r6063 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6063 : ¬ Reader r6063 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6063

def r6064 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6064 : ¬ Reader r6064 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6064

def r6065 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6065 : ¬ Reader r6065 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6065

def r6066 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6066 : ¬ Reader r6066 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 1)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6066

def r6067 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6067 : ¬ Reader r6067 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6067

def r6068 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6068 : ¬ Reader r6068 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6068

def r6069 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6069 : ¬ Reader r6069 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6069

def r6070 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6070 : ¬ Reader r6070 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6070

def r6071 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6071 : ¬ Reader r6071 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6071

def r6072 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6072 : ¬ Reader r6072 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6072

def r6073 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6073 : ¬ Reader r6073 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6073

def r6074 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6074 : ¬ Reader r6074 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6074

def r6075 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6075 : ¬ Reader r6075 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6075

def r6076 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6076 : ¬ Reader r6076 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6076

def r6077 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6077 : ¬ Reader r6077 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 1)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.var 1))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6077

def r6078 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6078 : ¬ Reader r6078 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6078

def r6079 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6079 : ¬ Reader r6079 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6079

def r6080 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6080 : ¬ Reader r6080 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6080

def r6081 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6081 : ¬ Reader r6081 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6081

def r6082 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6082 : ¬ Reader r6082 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6082

def r6083 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6083 : ¬ Reader r6083 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6083

def r6084 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6084 : ¬ Reader r6084 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6084

def r6085 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6085 : ¬ Reader r6085 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6085

def r6086 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6086 : ¬ Reader r6086 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6086

def r6087 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6087 : ¬ Reader r6087 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6087

def r6088 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6088 : ¬ Reader r6088 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6088

def r6089 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6089 : ¬ Reader r6089 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6089

def r6090 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6090 : ¬ Reader r6090 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6090

def r6091 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6091 : ¬ Reader r6091 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6091

def r6092 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6092 : ¬ Reader r6092 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6092

def r6093 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6093 : ¬ Reader r6093 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6093

def r6094 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6094 : ¬ Reader r6094 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6094

def r6095 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject6095 : ¬ Reader r6095 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6095

def r6096 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6096 : ¬ Reader r6096 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6096

def r6097 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6097 : ¬ Reader r6097 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6097

def r6098 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject6098 : ¬ Reader r6098 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6098

def r6099 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject6099 : ¬ Reader r6099 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6099

def r6100 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6100 : ¬ Reader r6100 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.var 0))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6100

def r6101 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6101 : ¬ Reader r6101 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6101

def r6102 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6102 : ¬ Reader r6102 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.lam (.var 0)), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6102

def r6103 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6103 : ¬ Reader r6103 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6103

def r6104 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6104 : ¬ Reader r6104 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6104

def r6105 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6105 : ¬ Reader r6105 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6105

def r6106 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6106 : ¬ Reader r6106 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6106

def r6107 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6107 : ¬ Reader r6107 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6107

def r6108 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6108 : ¬ Reader r6108 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6108

def r6109 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6109 : ¬ Reader r6109 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6109

def r6110 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6110 : ¬ Reader r6110 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6110

def r6111 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6111 : ¬ Reader r6111 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6111

def r6112 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6112 : ¬ Reader r6112 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6112

def r6113 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6113 : ¬ Reader r6113 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6113

def r6114 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6114 : ¬ Reader r6114 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6114

def r6115 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6115 : ¬ Reader r6115 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6115

def r6116 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6116 : ¬ Reader r6116 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6116

def r6117 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6117 : ¬ Reader r6117 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6117

def r6118 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6118 : ¬ Reader r6118 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6118

def r6119 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6119 : ¬ Reader r6119 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6119

def r6120 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6120 : ¬ Reader r6120 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6120

def r6121 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6121 : ¬ Reader r6121 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6121

def r6122 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6122 : ¬ Reader r6122 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6122

def r6123 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6123 : ¬ Reader r6123 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6123

def r6124 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6124 : ¬ Reader r6124 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject6124

def r6125 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6125 : ¬ Reader r6125 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject6125

def r6126 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6126 : ¬ Reader r6126 := by
  exact replay_absent true [] 12 1 (by decide) (by decide)
#print axioms reject6126

def r6127 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6127 : ¬ Reader r6127 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6127

def r6128 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6128 : ¬ Reader r6128 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6128

def r6129 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6129 : ¬ Reader r6129 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6129

def r6130 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6130 : ¬ Reader r6130 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6130

def r6131 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6131 : ¬ Reader r6131 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6131

def r6132 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6132 : ¬ Reader r6132 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6132

def r6133 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6133 : ¬ Reader r6133 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6133

def r6134 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6134 : ¬ Reader r6134 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6134

def r6135 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6135 : ¬ Reader r6135 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6135

def r6136 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6136 : ¬ Reader r6136 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6136

def r6137 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6137 : ¬ Reader r6137 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6137

def r6138 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6138 : ¬ Reader r6138 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6138

def r6139 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6139 : ¬ Reader r6139 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6139

def r6140 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6140 : ¬ Reader r6140 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6140

def r6141 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6141 : ¬ Reader r6141 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6141

def r6142 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6142 : ¬ Reader r6142 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6142

def r6143 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6143 : ¬ Reader r6143 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6143

def r6144 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6144 : ¬ Reader r6144 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6144

def r6145 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6145 : ¬ Reader r6145 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6145

def r6146 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6146 : ¬ Reader r6146 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6146

def r6147 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6147 : ¬ Reader r6147 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6147

def r6148 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6148 : ¬ Reader r6148 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6148

def r6149 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6149 : ¬ Reader r6149 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6149

def r6150 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6150 : ¬ Reader r6150 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6150

def r6151 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6151 : ¬ Reader r6151 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6151

def r6152 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6152 : ¬ Reader r6152 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6152

def r6153 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6153 : ¬ Reader r6153 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6153

def r6154 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6154 : ¬ Reader r6154 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6154

def r6155 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6155 : ¬ Reader r6155 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6155

def r6156 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6156 : ¬ Reader r6156 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6156

def r6157 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6157 : ¬ Reader r6157 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6157

def r6158 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6158 : ¬ Reader r6158 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6158

def r6159 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6159 : ¬ Reader r6159 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6159

def r6160 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6160 : ¬ Reader r6160 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6160

def r6161 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6161 : ¬ Reader r6161 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6161

def r6162 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6162 : ¬ Reader r6162 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6162

def r6163 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6163 : ¬ Reader r6163 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6163

def r6164 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6164 : ¬ Reader r6164 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6164

def r6165 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6165 : ¬ Reader r6165 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6165

def r6166 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6166 : ¬ Reader r6166 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6166

def r6167 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject6167 : ¬ Reader r6167 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6167

def r6168 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6168 : ¬ Reader r6168 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6168

def r6169 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6169 : ¬ Reader r6169 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6169

def r6170 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6170 : ¬ Reader r6170 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6170

def r6171 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject6171 : ¬ Reader r6171 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6171

def r6172 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6172 : ¬ Reader r6172 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6172

def r6173 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6173 : ¬ Reader r6173 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6173

def r6174 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6174 : ¬ Reader r6174 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6174

def r6175 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6175 : ¬ Reader r6175 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6175

def r6176 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6176 : ¬ Reader r6176 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6176

def r6177 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6177 : ¬ Reader r6177 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6177

def r6178 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6178 : ¬ Reader r6178 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6178

def r6179 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6179 : ¬ Reader r6179 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6179

def r6180 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6180 : ¬ Reader r6180 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6180

def r6181 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6181 : ¬ Reader r6181 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6181

def r6182 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6182 : ¬ Reader r6182 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6182

def r6183 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6183 : ¬ Reader r6183 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6183

def r6184 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6184 : ¬ Reader r6184 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6184

def r6185 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6185 : ¬ Reader r6185 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6185

def r6186 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6186 : ¬ Reader r6186 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6186

def r6187 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6187 : ¬ Reader r6187 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6187

def r6188 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6188 : ¬ Reader r6188 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6188

def r6189 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6189 : ¬ Reader r6189 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6189

def r6191 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6191 : ¬ Reader r6191 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6191

def r6192 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6192 : ¬ Reader r6192 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6192

def r6193 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6193 : ¬ Reader r6193 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6193

def r6194 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6194 : ¬ Reader r6194 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6194

def r6195 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6195 : ¬ Reader r6195 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6195

def r6196 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6196 : ¬ Reader r6196 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6196

def r6197 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6197 : ¬ Reader r6197 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6197

def r6198 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6198 : ¬ Reader r6198 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6198

def r6199 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6199 : ¬ Reader r6199 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6199

def r6200 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6200 : ¬ Reader r6200 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6200

def r6201 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6201 : ¬ Reader r6201 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6201

def r6202 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6202 : ¬ Reader r6202 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6202

def r6203 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6203 : ¬ Reader r6203 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6203

def r6204 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6204 : ¬ Reader r6204 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6204

def r6205 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6205 : ¬ Reader r6205 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6205

def r6206 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6206 : ¬ Reader r6206 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6206

def r6207 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6207 : ¬ Reader r6207 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6207

def r6208 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6208 : ¬ Reader r6208 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6208

def r6209 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6209 : ¬ Reader r6209 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6209

def r6210 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6210 : ¬ Reader r6210 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6210

def r6211 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6211 : ¬ Reader r6211 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6211

def r6212 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6212 : ¬ Reader r6212 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6212

def r6213 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6213 : ¬ Reader r6213 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6213

def r6214 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6214 : ¬ Reader r6214 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6214

def r6215 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6215 : ¬ Reader r6215 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6215

def r6216 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6216 : ¬ Reader r6216 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6216

def r6217 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6217 : ¬ Reader r6217 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6217

def r6218 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6218 : ¬ Reader r6218 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6218

def r6219 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6219 : ¬ Reader r6219 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6219

def r6220 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6220 : ¬ Reader r6220 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6220

def r6221 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6221 : ¬ Reader r6221 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6221

def r6222 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6222 : ¬ Reader r6222 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6222

def r6223 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6223 : ¬ Reader r6223 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6223

def r6224 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6224 : ¬ Reader r6224 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6224

def r6225 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6225 : ¬ Reader r6225 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6225

def r6226 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6226 : ¬ Reader r6226 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6226

def r6227 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6227 : ¬ Reader r6227 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6227

def r6228 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6228 : ¬ Reader r6228 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6228

def r6229 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6229 : ¬ Reader r6229 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6229

def r6230 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6230 : ¬ Reader r6230 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6230

def r6231 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6231 : ¬ Reader r6231 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6231

def r6232 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6232 : ¬ Reader r6232 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6232

def r6233 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6233 : ¬ Reader r6233 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6233

def r6234 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6234 : ¬ Reader r6234 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6234

def r6235 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6235 : ¬ Reader r6235 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6235

def r6236 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6236 : ¬ Reader r6236 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6236

def r6237 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6237 : ¬ Reader r6237 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6237

def r6238 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6238 : ¬ Reader r6238 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6238

def r6239 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6239 : ¬ Reader r6239 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.lam (.var 1)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6239

def r6240 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6240 : ¬ Reader r6240 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6240

def r6241 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6241 : ¬ Reader r6241 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6241

def r6242 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6242 : ¬ Reader r6242 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6242

def r6243 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6243 : ¬ Reader r6243 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6243

def r6244 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6244 : ¬ Reader r6244 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6244

def r6245 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6245 : ¬ Reader r6245 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6245

def r6246 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6246 : ¬ Reader r6246 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6246

def r6247 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6247 : ¬ Reader r6247 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6247

def r6248 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6248 : ¬ Reader r6248 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6248

def r6249 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6249 : ¬ Reader r6249 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6249

def r6250 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6250 : ¬ Reader r6250 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6250

def r6251 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6251 : ¬ Reader r6251 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6251

def r6252 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6252 : ¬ Reader r6252 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6252

def r6253 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6253 : ¬ Reader r6253 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6253

def r6254 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6254 : ¬ Reader r6254 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6254

def r6255 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6255 : ¬ Reader r6255 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6255

def r6256 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6256 : ¬ Reader r6256 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6256

def r6257 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6257 : ¬ Reader r6257 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6257

def r6258 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6258 : ¬ Reader r6258 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6258

def r6259 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6259 : ¬ Reader r6259 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6259

def r6260 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6260 : ¬ Reader r6260 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6260

def r6261 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6261 : ¬ Reader r6261 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6261

def r6262 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6262 : ¬ Reader r6262 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6262

def r6263 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6263 : ¬ Reader r6263 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6263

def r6264 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6264 : ¬ Reader r6264 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6264

def r6265 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6265 : ¬ Reader r6265 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6265

def r6266 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6266 : ¬ Reader r6266 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6266

def r6267 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6267 : ¬ Reader r6267 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6267

def r6268 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6268 : ¬ Reader r6268 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6268

def r6269 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6269 : ¬ Reader r6269 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6269

def r6270 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6270 : ¬ Reader r6270 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6270

def r6271 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6271 : ¬ Reader r6271 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6271

def r6272 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6272 : ¬ Reader r6272 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6272

def r6273 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6273 : ¬ Reader r6273 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6273

def r6274 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6274 : ¬ Reader r6274 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6274

def r6275 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6275 : ¬ Reader r6275 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6275

def r6276 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6276 : ¬ Reader r6276 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6276

def r6277 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6277 : ¬ Reader r6277 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6277

def r6278 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6278 : ¬ Reader r6278 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6278

def r6279 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6279 : ¬ Reader r6279 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6279

def r6280 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6280 : ¬ Reader r6280 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6280

def r6281 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6281 : ¬ Reader r6281 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6281

def r6282 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6282 : ¬ Reader r6282 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6282

def r6283 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6283 : ¬ Reader r6283 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6283

def r6284 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6284 : ¬ Reader r6284 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6284

def r6285 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6285 : ¬ Reader r6285 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6285

def r6286 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6286 : ¬ Reader r6286 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6286

def r6287 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6287 : ¬ Reader r6287 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6287

def r6288 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6288 : ¬ Reader r6288 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6288

def r6289 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6289 : ¬ Reader r6289 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6289

def r6290 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6290 : ¬ Reader r6290 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6290

def r6291 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6291 : ¬ Reader r6291 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6291

def r6292 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6292 : ¬ Reader r6292 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6292

def r6293 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6293 : ¬ Reader r6293 := by
  exact replay_absent true [] 7 1 (by decide) (by decide)
#print axioms reject6293

def r6294 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6294 : ¬ Reader r6294 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6294

def r6295 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6295 : ¬ Reader r6295 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6295

def r6296 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6296 : ¬ Reader r6296 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6296

def r6297 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6297 : ¬ Reader r6297 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6297

def r6298 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6298 : ¬ Reader r6298 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6298

def r6299 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6299 : ¬ Reader r6299 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6299

def r6300 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6300 : ¬ Reader r6300 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6300

def r6301 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6301 : ¬ Reader r6301 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6301

def r6302 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6302 : ¬ Reader r6302 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6302

def r6303 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6303 : ¬ Reader r6303 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6303

def r6304 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6304 : ¬ Reader r6304 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6304

def r6305 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6305 : ¬ Reader r6305 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6305

def r6306 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6306 : ¬ Reader r6306 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6306

def r6307 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6307 : ¬ Reader r6307 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6307

def r6308 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6308 : ¬ Reader r6308 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6308

def r6309 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6309 : ¬ Reader r6309 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6309

def r6310 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6310 : ¬ Reader r6310 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6310

def r6311 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6311 : ¬ Reader r6311 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6311

def r6312 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6312 : ¬ Reader r6312 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6312

def r6313 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6313 : ¬ Reader r6313 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6313

def r6314 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6314 : ¬ Reader r6314 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6314

def r6315 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6315 : ¬ Reader r6315 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6315

def r6316 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6316 : ¬ Reader r6316 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6316

def r6317 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6317 : ¬ Reader r6317 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6317

def r6318 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6318 : ¬ Reader r6318 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6318

def r6319 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6319 : ¬ Reader r6319 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6319

def r6320 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6320 : ¬ Reader r6320 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6320

def r6321 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6321 : ¬ Reader r6321 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6321

def r6322 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6322 : ¬ Reader r6322 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6322

def r6323 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6323 : ¬ Reader r6323 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6323

def r6324 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6324 : ¬ Reader r6324 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6324

def r6325 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6325 : ¬ Reader r6325 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6325

def r6326 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6326 : ¬ Reader r6326 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6326

def r6327 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6327 : ¬ Reader r6327 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6327

def r6328 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6328 : ¬ Reader r6328 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6328

def r6329 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6329 : ¬ Reader r6329 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6329

def r6330 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6330 : ¬ Reader r6330 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6330

def r6331 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6331 : ¬ Reader r6331 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6331

def r6332 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6332 : ¬ Reader r6332 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6332

def r6333 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6333 : ¬ Reader r6333 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6333

def r6334 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6334 : ¬ Reader r6334 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6334

def r6335 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6335 : ¬ Reader r6335 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6335

def r6336 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6336 : ¬ Reader r6336 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6336

def r6337 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6337 : ¬ Reader r6337 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject6337

def r6338 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6338 : ¬ Reader r6338 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject6338

def r6339 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6339 : ¬ Reader r6339 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject6339

def r6340 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6340 : ¬ Reader r6340 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject6340

def r6341 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6341 : ¬ Reader r6341 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6341

def r6342 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6342 : ¬ Reader r6342 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6342

def r6343 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6343 : ¬ Reader r6343 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6343

def r6344 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6344 : ¬ Reader r6344 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6344

def r6345 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6345 : ¬ Reader r6345 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6345

def r6346 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6346 : ¬ Reader r6346 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6346

def r6347 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6347 : ¬ Reader r6347 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6347

def r6348 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6348 : ¬ Reader r6348 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6348

def r6349 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6349 : ¬ Reader r6349 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6349

def r6350 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6350 : ¬ Reader r6350 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6350

def r6351 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6351 : ¬ Reader r6351 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6351

def r6352 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6352 : ¬ Reader r6352 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6352

def r6353 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6353 : ¬ Reader r6353 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6353

def r6354 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6354 : ¬ Reader r6354 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6354

def r6355 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6355 : ¬ Reader r6355 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6355

def r6356 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6356 : ¬ Reader r6356 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6356

def r6357 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6357 : ¬ Reader r6357 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6357

def r6358 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6358 : ¬ Reader r6358 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6358

def r6359 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6359 : ¬ Reader r6359 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6359

def r6360 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6360 : ¬ Reader r6360 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6360

def r6361 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6361 : ¬ Reader r6361 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6361

def r6362 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6362 : ¬ Reader r6362 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6362

def r6363 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6363 : ¬ Reader r6363 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6363

def r6364 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6364 : ¬ Reader r6364 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6364

def r6365 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6365 : ¬ Reader r6365 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6365

def r6366 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6366 : ¬ Reader r6366 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6366

def r6367 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6367 : ¬ Reader r6367 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6367

def r6368 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6368 : ¬ Reader r6368 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6368

def r6369 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6369 : ¬ Reader r6369 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6369

def r6370 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6370 : ¬ Reader r6370 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6370

def r6371 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6371 : ¬ Reader r6371 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6371

def r6372 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6372 : ¬ Reader r6372 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6372

def r6373 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6373 : ¬ Reader r6373 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6373

def r6374 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6374 : ¬ Reader r6374 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6374

def r6375 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6375 : ¬ Reader r6375 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6375

def r6376 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6376 : ¬ Reader r6376 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6376

def r6377 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6377 : ¬ Reader r6377 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6377

def r6378 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6378 : ¬ Reader r6378 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6378

def r6379 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6379 : ¬ Reader r6379 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6379

def r6380 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6380 : ¬ Reader r6380 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6380

def r6381 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6381 : ¬ Reader r6381 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6381

def r6382 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6382 : ¬ Reader r6382 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6382

def r6383 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6383 : ¬ Reader r6383 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6383

def r6384 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6384 : ¬ Reader r6384 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6384

def r6385 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6385 : ¬ Reader r6385 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6385

def r6386 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6386 : ¬ Reader r6386 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6386

def r6387 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6387 : ¬ Reader r6387 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6387

def r6388 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6388 : ¬ Reader r6388 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6388

def r6389 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6389 : ¬ Reader r6389 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6389

def r6390 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6390 : ¬ Reader r6390 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6390

def r6391 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6391 : ¬ Reader r6391 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6391

def r6392 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6392 : ¬ Reader r6392 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6392

def r6393 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6393 : ¬ Reader r6393 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6393

def r6394 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6394 : ¬ Reader r6394 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6394

def r6395 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6395 : ¬ Reader r6395 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6395

def r6396 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6396 : ¬ Reader r6396 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6396

def r6397 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6397 : ¬ Reader r6397 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6397

def r6398 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6398 : ¬ Reader r6398 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6398

def r6399 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6399 : ¬ Reader r6399 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6399

def r6400 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6400 : ¬ Reader r6400 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6400

def r6401 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6401 : ¬ Reader r6401 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6401

def r6402 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6402 : ¬ Reader r6402 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6402

def r6403 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6403 : ¬ Reader r6403 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6403

def r6404 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6404 : ¬ Reader r6404 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6404

def r6405 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6405 : ¬ Reader r6405 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6405

def r6406 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6406 : ¬ Reader r6406 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6406

def r6407 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6407 : ¬ Reader r6407 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6407

def r6408 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6408 : ¬ Reader r6408 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6408

def r6409 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6409 : ¬ Reader r6409 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6409

def r6410 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6410 : ¬ Reader r6410 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6410

def r6411 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6411 : ¬ Reader r6411 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6411

def r6412 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6412 : ¬ Reader r6412 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6412

def r6413 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6413 : ¬ Reader r6413 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6413

def r6414 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6414 : ¬ Reader r6414 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6414

def r6415 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6415 : ¬ Reader r6415 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6415

def r6416 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6416 : ¬ Reader r6416 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6416

def r6417 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6417 : ¬ Reader r6417 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6417

def r6418 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6418 : ¬ Reader r6418 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6418

def r6419 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6419 : ¬ Reader r6419 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6419

def r6420 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6420 : ¬ Reader r6420 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6420

def r6421 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6421 : ¬ Reader r6421 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6421

def r6422 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6422 : ¬ Reader r6422 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6422

def r6423 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6423 : ¬ Reader r6423 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6423

def r6424 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6424 : ¬ Reader r6424 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6424

def r6425 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6425 : ¬ Reader r6425 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6425

def r6426 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6426 : ¬ Reader r6426 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6426

def r6427 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6427 : ¬ Reader r6427 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6427

def r6428 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6428 : ¬ Reader r6428 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6428

def r6429 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6429 : ¬ Reader r6429 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6429

def r6430 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6430 : ¬ Reader r6430 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6430

def r6431 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6431 : ¬ Reader r6431 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6431

def r6432 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6432 : ¬ Reader r6432 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject6432

def r6433 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6433 : ¬ Reader r6433 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6433

def r6434 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6434 : ¬ Reader r6434 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6434

def r6435 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6435 : ¬ Reader r6435 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6435

def r6436 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6436 : ¬ Reader r6436 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6436

def r6437 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6437 : ¬ Reader r6437 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6437

def r6438 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6438 : ¬ Reader r6438 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6438

def r6439 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6439 : ¬ Reader r6439 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6439

def r6440 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6440 : ¬ Reader r6440 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6440

def r6441 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6441 : ¬ Reader r6441 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6441

def r6442 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6442 : ¬ Reader r6442 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6442

def r6443 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6443 : ¬ Reader r6443 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6443

def r6444 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6444 : ¬ Reader r6444 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6444

def r6445 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6445 : ¬ Reader r6445 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6445

def r6446 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6446 : ¬ Reader r6446 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6446

def r6447 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6447 : ¬ Reader r6447 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6447

def r6448 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6448 : ¬ Reader r6448 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6448

def r6449 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6449 : ¬ Reader r6449 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6449

def r6450 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6450 : ¬ Reader r6450 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6450

def r6451 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6451 : ¬ Reader r6451 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6451

def r6452 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6452 : ¬ Reader r6452 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6452

def r6453 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6453 : ¬ Reader r6453 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6453

def r6454 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6454 : ¬ Reader r6454 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6454

def r6455 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6455 : ¬ Reader r6455 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6455

def r6456 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6456 : ¬ Reader r6456 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6456

def r6457 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6457 : ¬ Reader r6457 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6457

def r6458 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6458 : ¬ Reader r6458 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6458

def r6459 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6459 : ¬ Reader r6459 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6459

def r6460 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6460 : ¬ Reader r6460 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6460

def r6461 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6461 : ¬ Reader r6461 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6461

def r6462 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6462 : ¬ Reader r6462 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6462

def r6463 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6463 : ¬ Reader r6463 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6463

def r6464 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6464 : ¬ Reader r6464 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6464

def r6465 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6465 : ¬ Reader r6465 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6465

def r6466 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6466 : ¬ Reader r6466 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6466

def r6467 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6467 : ¬ Reader r6467 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6467

def r6468 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6468 : ¬ Reader r6468 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6468

def r6469 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6469 : ¬ Reader r6469 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6469

def r6470 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6470 : ¬ Reader r6470 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6470

def r6471 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6471 : ¬ Reader r6471 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6471

def r6472 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6472 : ¬ Reader r6472 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6472

def r6473 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6473 : ¬ Reader r6473 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6473

def r6474 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6474 : ¬ Reader r6474 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6474

def r6475 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6475 : ¬ Reader r6475 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6475

def r6476 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6476 : ¬ Reader r6476 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6476

def r6477 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6477 : ¬ Reader r6477 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6477

def r6478 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6478 : ¬ Reader r6478 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6478

def r6479 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6479 : ¬ Reader r6479 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6479

def r6480 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6480 : ¬ Reader r6480 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6480

def r6481 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6481 : ¬ Reader r6481 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6481

def r6482 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6482 : ¬ Reader r6482 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6482

def r6483 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6483 : ¬ Reader r6483 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6483

def r6484 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6484 : ¬ Reader r6484 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6484

def r6485 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6485 : ¬ Reader r6485 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6485
end Blc.HandlerLet.Proof4_Cs_x_1_1_13
