import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic17
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r6206 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6206 : ¬ Reader r6206 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6206

def r6207 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6207 : ¬ Reader r6207 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6207

def r6208 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6208 : ¬ Reader r6208 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6208

def r6209 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6209 : ¬ Reader r6209 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6209

def r6210 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6210 : ¬ Reader r6210 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6210

def r6211 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6211 : ¬ Reader r6211 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6211

def r6218 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject6218 : ¬ Reader r6218 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) [(.app (.var 0) (.lam (.lam (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.var 0) (.lam (.lam (.var 0)))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6218

def r6219 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject6219 : ¬ Reader r6219 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) [(.app (.var 0) (.lam (.lam (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.var 0) (.lam (.lam (.var 0)))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6219

def r6220 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject6220 : ¬ Reader r6220 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) [(.app (.var 0) (.lam (.lam (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.var 0) (.lam (.lam (.var 0)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6220

def r6221 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.var 1)) (.var 0)) (.var 0))
theorem reject6221 : ¬ Reader r6221 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) [(.lam (.lam (.var 0))), (.var 0), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.lam (.var 0)))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6221

def r6222 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.var 0)) (.var 1)) (.var 0))
theorem reject6222 : ¬ Reader r6222 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) [(.lam (.lam (.var 0))), (.var 0), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.lam (.var 0)))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6222

def r6223 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.var 0)) (.var 0)) (.var 1))
theorem reject6223 : ¬ Reader r6223 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) [(.lam (.lam (.var 0))), (.var 0), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.lam (.var 0)))) (.var 0)) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6223

def r6224 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject6224 : ¬ Reader r6224 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) [(.var 0), (.lam (.lam (.var 0))), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 0))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6224

def r6225 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject6225 : ¬ Reader r6225 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) [(.var 0), (.lam (.lam (.var 0))), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 0))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6225

def r6226 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject6226 : ¬ Reader r6226 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) [(.var 0), (.lam (.lam (.var 0))), (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 0))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6226

def r6227 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject6227 : ¬ Reader r6227 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6227

def r6228 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject6228 : ¬ Reader r6228 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6228

def r6229 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject6229 : ¬ Reader r6229 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6229

def r6230 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject6230 : ¬ Reader r6230 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))))), (.app (.var 0) (.lam (.lam (.var 0)))), (.app (.var 0) (.lam (.lam (.var 0))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6230

def r6231 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject6231 : ¬ Reader r6231 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))))), (.app (.var 0) (.lam (.lam (.var 0)))), (.app (.var 0) (.lam (.lam (.var 0))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6231

def r6232 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject6232 : ¬ Reader r6232 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))))), (.app (.var 0) (.lam (.lam (.var 0)))), (.app (.var 0) (.lam (.lam (.var 0))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6232

def r6233 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
theorem reject6233 : ¬ Reader r6233 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0)))), (.var 0), (.var 0)] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6233

def r6234 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
theorem reject6234 : ¬ Reader r6234 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0)))), (.var 0), (.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6234

def r6235 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
theorem reject6235 : ¬ Reader r6235 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0)))), (.var 0), (.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6235

def r6236 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
theorem reject6236 : ¬ Reader r6236 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))))), (.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.var 0)] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6236

def r6237 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
theorem reject6237 : ¬ Reader r6237 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))))), (.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6237

def r6238 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
theorem reject6238 : ¬ Reader r6238 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))))), (.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6238

def r6239 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject6239 : ¬ Reader r6239 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))))), (.var 0), (.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6239

def r6240 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject6240 : ¬ Reader r6240 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))))), (.var 0), (.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6240

def r6241 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject6241 : ¬ Reader r6241 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))))), (.var 0), (.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6241

def r6248 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6248 : ¬ Reader r6248 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6248

def r6249 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6249 : ¬ Reader r6249 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6249

def r6250 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6250 : ¬ Reader r6250 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6250

def r6251 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6251 : ¬ Reader r6251 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6251

def r6252 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6252 : ¬ Reader r6252 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6252

def r6253 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6253 : ¬ Reader r6253 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6253

def r6254 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))
theorem reject6254 : ¬ Reader r6254 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6254

def r6255 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))
theorem reject6255 : ¬ Reader r6255 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.app (.var 0) (.var 0)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6255

def r6256 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6256 : ¬ Reader r6256 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6256

def r6257 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))
theorem reject6257 : ¬ Reader r6257 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6257

def r6258 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))
theorem reject6258 : ¬ Reader r6258 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6258

def r6259 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))
theorem reject6259 : ¬ Reader r6259 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.app (.app (.var 0) (.var 0)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6259

def r6260 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))
theorem reject6260 : ¬ Reader r6260 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6260

def r6261 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))
theorem reject6261 : ¬ Reader r6261 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6261

def r6262 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))
theorem reject6262 : ¬ Reader r6262 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6262

def r6263 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))
theorem reject6263 : ¬ Reader r6263 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6263

def r6264 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))
theorem reject6264 : ¬ Reader r6264 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6264

def r6265 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))
theorem reject6265 : ¬ Reader r6265 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6265

def r6266 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))
theorem reject6266 : ¬ Reader r6266 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6266

def r6267 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))
theorem reject6267 : ¬ Reader r6267 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6267

def r6268 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))
theorem reject6268 : ¬ Reader r6268 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6268

def r6269 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))
theorem reject6269 : ¬ Reader r6269 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.app (.var 0) (.var 0)) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6269

def r6270 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))
theorem reject6270 : ¬ Reader r6270 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6270

def r6271 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))
theorem reject6271 : ¬ Reader r6271 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6271

def r6272 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))
theorem reject6272 : ¬ Reader r6272 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6272

def r6273 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject6273 : ¬ Reader r6273 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6273

def r6274 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject6274 : ¬ Reader r6274 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6274

def r6275 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject6275 : ¬ Reader r6275 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6275

def r6276 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6276 : ¬ Reader r6276 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6276

def r6277 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6277 : ¬ Reader r6277 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6277

def r6278 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject6278 : ¬ Reader r6278 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6278

def r6279 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject6279 : ¬ Reader r6279 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6279

def r6280 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject6280 : ¬ Reader r6280 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6280

def r6281 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject6281 : ¬ Reader r6281 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6281

def r6282 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.var 0))
theorem reject6282 : ¬ Reader r6282 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6282

def r6283 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) (.var 1))
theorem reject6283 : ¬ Reader r6283 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6283

def r6284 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6284 : ¬ Reader r6284 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6284

def r6285 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6285 : ¬ Reader r6285 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6285

def r6286 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject6286 : ¬ Reader r6286 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6286

def r6287 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject6287 : ¬ Reader r6287 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.var 0) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6287

def r6288 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject6288 : ¬ Reader r6288 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.var 0)) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6288

def r6289 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject6289 : ¬ Reader r6289 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.var 0)) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6289

def r6290 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6290 : ¬ Reader r6290 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6290

def r6291 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6291 : ¬ Reader r6291 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6291

def r6292 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6292 : ¬ Reader r6292 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6292

def r6293 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6293 : ¬ Reader r6293 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6293

def r6294 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6294 : ¬ Reader r6294 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6294

def r6295 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6295 : ¬ Reader r6295 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6295

def r6296 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6296 : ¬ Reader r6296 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6296

def r6297 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6297 : ¬ Reader r6297 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6297

def r6298 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6298 : ¬ Reader r6298 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6298

def r6299 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6299 : ¬ Reader r6299 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6299

def r6300 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6300 : ¬ Reader r6300 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6300

def r6301 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6301 : ¬ Reader r6301 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6301

def r6302 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6302 : ¬ Reader r6302 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6302

def r6303 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6303 : ¬ Reader r6303 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6303

def r6304 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6304 : ¬ Reader r6304 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6304

def r6305 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6305 : ¬ Reader r6305 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6305

def r6306 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6306 : ¬ Reader r6306 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6306

def r6307 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6307 : ¬ Reader r6307 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6307

def r6308 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6308 : ¬ Reader r6308 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6308

def r6309 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6309 : ¬ Reader r6309 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6309

def r6310 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6310 : ¬ Reader r6310 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6310

def r6311 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6311 : ¬ Reader r6311 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6311

def r6312 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6312 : ¬ Reader r6312 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6312

def r6313 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6313 : ¬ Reader r6313 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6313

def r6314 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6314 : ¬ Reader r6314 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6314

def r6315 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6315 : ¬ Reader r6315 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6315

def r6316 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6316 : ¬ Reader r6316 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6316

def r6317 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6317 : ¬ Reader r6317 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6317

def r6318 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6318 : ¬ Reader r6318 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6318

def r6319 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6319 : ¬ Reader r6319 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6319

def r6320 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6320 : ¬ Reader r6320 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6320

def r6321 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6321 : ¬ Reader r6321 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6321

def r6322 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6322 : ¬ Reader r6322 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6322

def r6323 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6323 : ¬ Reader r6323 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6323

def r6324 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6324 : ¬ Reader r6324 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6324

def r6325 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6325 : ¬ Reader r6325 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6325

def r6326 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0)) (.var 0))
theorem reject6326 : ¬ Reader r6326 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6326

def r6327 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1)) (.var 0))
theorem reject6327 : ¬ Reader r6327 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6327

def r6328 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 0)) (.var 1))
theorem reject6328 : ¬ Reader r6328 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6328

def r6329 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
theorem reject6329 : ¬ Reader r6329 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6329

def r6330 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
theorem reject6330 : ¬ Reader r6330 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6330

def r6331 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
theorem reject6331 : ¬ Reader r6331 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6331

def r6332 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))
theorem reject6332 : ¬ Reader r6332 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6332

def r6333 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))
theorem reject6333 : ¬ Reader r6333 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.app (.app (.var 0) (.var 0)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6333

def r6334 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))
theorem reject6334 : ¬ Reader r6334 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6334

def r6335 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))
theorem reject6335 : ¬ Reader r6335 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6335

def r6336 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))
theorem reject6336 : ¬ Reader r6336 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.app (.app (.var 0) (.var 0)) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6336

def r6337 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))
theorem reject6337 : ¬ Reader r6337 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6337

def r6338 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))
theorem reject6338 : ¬ Reader r6338 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.app (.app (.var 0) (.var 0)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6338

def r6339 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject6339 : ¬ Reader r6339 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.app (.var 0) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6339

def r6340 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))
theorem reject6340 : ¬ Reader r6340 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.app (.app (.var 0) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6340

def r6341 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6341 : ¬ Reader r6341 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6341

def r6342 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6342 : ¬ Reader r6342 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6342

def r6343 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject6343 : ¬ Reader r6343 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6343

def r6344 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject6344 : ¬ Reader r6344 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6344

def r6345 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)) (.var 0))
theorem reject6345 : ¬ Reader r6345 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.app (.var 0) (.var 0)) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6345

def r6346 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 1))
theorem reject6346 : ¬ Reader r6346 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.app (.var 0) (.var 0)) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6346

def r6347 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6347 : ¬ Reader r6347 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6347

def r6348 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6348 : ¬ Reader r6348 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6348

def r6349 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject6349 : ¬ Reader r6349 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6349

def r6350 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject6350 : ¬ Reader r6350 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6350

def r6351 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject6351 : ¬ Reader r6351 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6351

def r6352 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6352 : ¬ Reader r6352 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6352

def r6353 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6353 : ¬ Reader r6353 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6353

def r6354 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6354 : ¬ Reader r6354 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6354

def r6355 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6355 : ¬ Reader r6355 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6355

def r6356 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6356 : ¬ Reader r6356 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6356

def r6357 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6357 : ¬ Reader r6357 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6357

def r6358 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6358 : ¬ Reader r6358 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6358

def r6365 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6365 : ¬ Reader r6365 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6365

def r6366 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6366 : ¬ Reader r6366 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6366

def r6367 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject6367 : ¬ Reader r6367 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6367

def r6368 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject6368 : ¬ Reader r6368 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6368

def r6369 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject6369 : ¬ Reader r6369 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6369

def r6370 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6370 : ¬ Reader r6370 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6370

def r6371 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6371 : ¬ Reader r6371 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6371

def r6372 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6372 : ¬ Reader r6372 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6372

def r6373 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject6373 : ¬ Reader r6373 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6373

def r6374 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject6374 : ¬ Reader r6374 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6374

def r6375 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject6375 : ¬ Reader r6375 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6375

def r6376 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6376 : ¬ Reader r6376 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6376

def r6377 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject6377 : ¬ Reader r6377 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6377

def r6378 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject6378 : ¬ Reader r6378 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6378

def r6379 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject6379 : ¬ Reader r6379 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6379

def r6380 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6380 : ¬ Reader r6380 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6380

def r6381 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6381 : ¬ Reader r6381 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6381

def r6382 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6382 : ¬ Reader r6382 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6382

def r6383 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6383 : ¬ Reader r6383 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6383

def r6384 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6384 : ¬ Reader r6384 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6384

def r6385 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6385 : ¬ Reader r6385 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6385

def r6386 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6386 : ¬ Reader r6386 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6386

def r6387 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6387 : ¬ Reader r6387 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6387

def r6388 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6388 : ¬ Reader r6388 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6388

def r6389 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6389 : ¬ Reader r6389 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6389

def r6390 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6390 : ¬ Reader r6390 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6390

def r6391 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6391 : ¬ Reader r6391 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6391

def r6392 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject6392 : ¬ Reader r6392 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6392

def r6393 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject6393 : ¬ Reader r6393 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6393

def r6394 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject6394 : ¬ Reader r6394 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6394

def r6407 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6407 : ¬ Reader r6407 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6407

def r6408 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6408 : ¬ Reader r6408 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6408

def r6409 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6409 : ¬ Reader r6409 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6409

def r6410 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6410 : ¬ Reader r6410 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6410

def r6411 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6411 : ¬ Reader r6411 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6411

def r6412 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6412 : ¬ Reader r6412 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6412

def r6413 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6413 : ¬ Reader r6413 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6413

def r6414 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6414 : ¬ Reader r6414 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6414

def r6415 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6415 : ¬ Reader r6415 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6415

def r6416 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6416 : ¬ Reader r6416 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6416

def r6417 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6417 : ¬ Reader r6417 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6417

def r6418 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6418 : ¬ Reader r6418 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6418

def r6419 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6419 : ¬ Reader r6419 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6419

def r6420 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6420 : ¬ Reader r6420 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6420

def r6421 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject6421 : ¬ Reader r6421 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6421

def r6422 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject6422 : ¬ Reader r6422 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6422

def r6423 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject6423 : ¬ Reader r6423 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6423

def r6424 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6424 : ¬ Reader r6424 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6424

def r6425 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6425 : ¬ Reader r6425 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6425

def r6426 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6426 : ¬ Reader r6426 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6426

def r6427 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6427 : ¬ Reader r6427 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6427

def r6428 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6428 : ¬ Reader r6428 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6428

def r6429 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6429 : ¬ Reader r6429 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6429

def r6430 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6430 : ¬ Reader r6430 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6430

def r6431 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6431 : ¬ Reader r6431 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6431

def r6432 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6432 : ¬ Reader r6432 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6432

def r6433 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6433 : ¬ Reader r6433 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6433

def r6434 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6434 : ¬ Reader r6434 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6434

def r6435 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6435 : ¬ Reader r6435 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6435

def r6436 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6436 : ¬ Reader r6436 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6436

def r6437 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6437 : ¬ Reader r6437 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6437

def r6438 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6438 : ¬ Reader r6438 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6438

def r6439 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6439 : ¬ Reader r6439 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6439

def r6440 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6440 : ¬ Reader r6440 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6440

def r6441 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6441 : ¬ Reader r6441 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6441

def r6442 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6442 : ¬ Reader r6442 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6442

def r6443 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6443 : ¬ Reader r6443 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6443

def r6444 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6444 : ¬ Reader r6444 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6444

def r6445 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6445 : ¬ Reader r6445 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6445

def r6446 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6446 : ¬ Reader r6446 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6446

def r6447 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6447 : ¬ Reader r6447 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6447

def r6448 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6448 : ¬ Reader r6448 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6448

def r6449 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6449 : ¬ Reader r6449 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6449

def r6450 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6450 : ¬ Reader r6450 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6450

def r6451 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject6451 : ¬ Reader r6451 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6451

def r6452 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject6452 : ¬ Reader r6452 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6452

def r6453 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject6453 : ¬ Reader r6453 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6453

def r6454 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject6454 : ¬ Reader r6454 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6454

def r6455 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject6455 : ¬ Reader r6455 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6455

def r6456 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject6456 : ¬ Reader r6456 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6456

def r6457 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject6457 : ¬ Reader r6457 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6457

def r6458 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject6458 : ¬ Reader r6458 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6458

def r6459 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject6459 : ¬ Reader r6459 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6459

def r6460 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject6460 : ¬ Reader r6460 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6460

def r6461 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject6461 : ¬ Reader r6461 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6461

def r6462 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject6462 : ¬ Reader r6462 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6462

def r6463 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject6463 : ¬ Reader r6463 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6463

def r6464 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6464 : ¬ Reader r6464 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6464

def r6465 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6465 : ¬ Reader r6465 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6465

def r6466 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6466 : ¬ Reader r6466 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6466

def r6467 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6467 : ¬ Reader r6467 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6467

def r6468 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6468 : ¬ Reader r6468 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6468

def r6469 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6469 : ¬ Reader r6469 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6469

def r6470 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6470 : ¬ Reader r6470 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6470

def r6471 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6471 : ¬ Reader r6471 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6471

def r6472 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6472 : ¬ Reader r6472 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6472

def r6473 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6473 : ¬ Reader r6473 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6473

def r6474 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6474 : ¬ Reader r6474 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6474

def r6475 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6475 : ¬ Reader r6475 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6475

def r6476 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
theorem reject6476 : ¬ Reader r6476 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6476

def r6477 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
theorem reject6477 : ¬ Reader r6477 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6477

def r6478 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
theorem reject6478 : ¬ Reader r6478 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6478

def r6479 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
theorem reject6479 : ¬ Reader r6479 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6479

def r6480 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
theorem reject6480 : ¬ Reader r6480 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6480

def r6481 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))
theorem reject6481 : ¬ Reader r6481 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6481

def r6482 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.lam (.var 1))) (.var 1))
theorem reject6482 : ¬ Reader r6482 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6482

def r6483 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
theorem reject6483 : ¬ Reader r6483 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 2))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6483

def r6484 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
theorem reject6484 : ¬ Reader r6484 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 2))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6484

def r6485 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject6485 : ¬ Reader r6485 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6485

def r6486 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject6486 : ¬ Reader r6486 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6486

def r6487 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject6487 : ¬ Reader r6487 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6487

def r6488 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject6488 : ¬ Reader r6488 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6488

def r6489 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject6489 : ¬ Reader r6489 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6489

def r6490 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject6490 : ¬ Reader r6490 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6490

def r6491 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject6491 : ¬ Reader r6491 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6491

def r6492 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject6492 : ¬ Reader r6492 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6492

def r6493 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject6493 : ¬ Reader r6493 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6493

def r6494 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject6494 : ¬ Reader r6494 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6494

def r6495 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject6495 : ¬ Reader r6495 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6495

def r6496 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject6496 : ¬ Reader r6496 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6496

def r6497 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6497 : ¬ Reader r6497 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6497

def r6498 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6498 : ¬ Reader r6498 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6498

def r6499 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6499 : ¬ Reader r6499 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6499

def r6500 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6500 : ¬ Reader r6500 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6500

def r6501 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6501 : ¬ Reader r6501 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6501

def r6502 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6502 : ¬ Reader r6502 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6502

def r6503 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6503 : ¬ Reader r6503 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6503

def r6504 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6504 : ¬ Reader r6504 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6504

def r6505 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6505 : ¬ Reader r6505 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6505

def r6506 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6506 : ¬ Reader r6506 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6506

def r6507 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6507 : ¬ Reader r6507 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6507

def r6508 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6508 : ¬ Reader r6508 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6508

def r6509 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6509 : ¬ Reader r6509 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6509

def r6510 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6510 : ¬ Reader r6510 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6510

def r6511 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6511 : ¬ Reader r6511 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6511

def r6512 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6512 : ¬ Reader r6512 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6512

def r6513 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6513 : ¬ Reader r6513 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6513

def r6514 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6514 : ¬ Reader r6514 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6514

def r6515 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6515 : ¬ Reader r6515 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6515

def r6516 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6516 : ¬ Reader r6516 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6516

def r6517 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6517 : ¬ Reader r6517 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6517

def r6518 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6518 : ¬ Reader r6518 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6518

def r6519 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6519 : ¬ Reader r6519 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6519

def r6520 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6520 : ¬ Reader r6520 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6520

def r6521 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6521 : ¬ Reader r6521 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6521

def r6522 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6522 : ¬ Reader r6522 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6522

def r6523 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6523 : ¬ Reader r6523 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6523

def r6524 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6524 : ¬ Reader r6524 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6524

def r6525 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6525 : ¬ Reader r6525 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6525

def r6526 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6526 : ¬ Reader r6526 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6526

def r6527 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6527 : ¬ Reader r6527 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6527

def r6528 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6528 : ¬ Reader r6528 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6528

def r6529 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6529 : ¬ Reader r6529 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6529

def r6530 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6530 : ¬ Reader r6530 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6530

def r6531 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6531 : ¬ Reader r6531 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6531

def r6532 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6532 : ¬ Reader r6532 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6532

def r6533 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject6533 : ¬ Reader r6533 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6533

def r6534 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject6534 : ¬ Reader r6534 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6534

def r6535 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject6535 : ¬ Reader r6535 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject6535
end Blc.HandlerLet.XBasic17
