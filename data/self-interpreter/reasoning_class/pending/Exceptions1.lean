import Certificates
namespace Blc.HandlerLet.Pending1
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r0 : Term := (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 2)))
theorem reject0 : ¬ Reader r0 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.var 2)) (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject0

def r1 : Term := (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 2)))
theorem reject1 : ¬ Reader r1 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 2)), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1

def r2 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.var 0))
theorem reject2 : ¬ Reader r2 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2
end Blc.HandlerLet.Pending1
