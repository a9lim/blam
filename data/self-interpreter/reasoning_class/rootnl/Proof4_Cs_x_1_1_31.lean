import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_1_31
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r14252 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14252 : ¬ Reader r14252 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14252

def r14253 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.lam (.var 0))))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14253 : ¬ Reader r14253 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14253

def r14254 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14254 : ¬ Reader r14254 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14254

def r14255 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14255 : ¬ Reader r14255 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14255

def r14256 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14256 : ¬ Reader r14256 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14256

def r14257 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.lam (.var 0))))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14257 : ¬ Reader r14257 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14257

def r14258 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14258 : ¬ Reader r14258 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14258

def r14259 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14259 : ¬ Reader r14259 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14259

def r14260 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14260 : ¬ Reader r14260 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14260

def r14261 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14261 : ¬ Reader r14261 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14261

def r14262 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14262 : ¬ Reader r14262 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14262

def r14263 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject14263 : ¬ Reader r14263 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject14263
end Blc.HandlerLet.Proof4_Cs_x_1_1_31
