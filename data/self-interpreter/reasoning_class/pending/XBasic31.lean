import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic31
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r11221 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject11221 : ¬ Reader r11221 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11221

def r11222 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject11222 : ¬ Reader r11222 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11222

def r11223 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject11223 : ¬ Reader r11223 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11223

def r11224 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject11224 : ¬ Reader r11224 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11224

def r11225 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject11225 : ¬ Reader r11225 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11225

def r11226 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject11226 : ¬ Reader r11226 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11226

def r11227 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject11227 : ¬ Reader r11227 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11227

def r11228 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject11228 : ¬ Reader r11228 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11228

def r11229 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject11229 : ¬ Reader r11229 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11229

def r11230 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject11230 : ¬ Reader r11230 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11230

def r11231 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject11231 : ¬ Reader r11231 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject11231

def r11232 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject11232 : ¬ Reader r11232 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11232

def r11233 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11233 : ¬ Reader r11233 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 0)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11233

def r11234 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11234 : ¬ Reader r11234 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11234

def r11235 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11235 : ¬ Reader r11235 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11235

def r11236 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11236 : ¬ Reader r11236 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11236

def r11237 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject11237 : ¬ Reader r11237 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11237

def r11238 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject11238 : ¬ Reader r11238 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11238

def r11239 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.lam (.var 0)))))
theorem reject11239 : ¬ Reader r11239 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.var 0)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11239

def r11240 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))
theorem reject11240 : ¬ Reader r11240 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.lam (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11240

def r11241 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 0)))
theorem reject11241 : ¬ Reader r11241 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11241

def r11242 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11242 : ¬ Reader r11242 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 0)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11242

def r11243 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11243 : ¬ Reader r11243 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11243

def r11244 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11244 : ¬ Reader r11244 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11244

def r11245 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11245 : ¬ Reader r11245 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11245

def r11246 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject11246 : ¬ Reader r11246 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11246

def r11247 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject11247 : ¬ Reader r11247 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11247

def r11248 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.lam (.var 0)))))
theorem reject11248 : ¬ Reader r11248 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11248

def r11249 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))
theorem reject11249 : ¬ Reader r11249 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.lam (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11249

def r11250 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 0)))
theorem reject11250 : ¬ Reader r11250 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11250

def r11263 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject11263 : ¬ Reader r11263 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11263

def r11264 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject11264 : ¬ Reader r11264 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11264

def r11265 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject11265 : ¬ Reader r11265 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11265

def r11266 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject11266 : ¬ Reader r11266 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11266

def r11267 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 1)))
theorem reject11267 : ¬ Reader r11267 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11267

def r11268 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem reject11268 : ¬ Reader r11268 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11268

def r11269 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 1)))))
theorem reject11269 : ¬ Reader r11269 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11269

def r11270 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 0))))
theorem reject11270 : ¬ Reader r11270 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11270

def r11271 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject11271 : ¬ Reader r11271 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11271

def r11272 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject11272 : ¬ Reader r11272 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11272

def r11273 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11273 : ¬ Reader r11273 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.var 1)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11273

def r11274 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11274 : ¬ Reader r11274 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11274

def r11275 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject11275 : ¬ Reader r11275 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11275

def r11276 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject11276 : ¬ Reader r11276 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11276

def r11277 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject11277 : ¬ Reader r11277 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11277

def r11278 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject11278 : ¬ Reader r11278 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11278

def r11279 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 1)))
theorem reject11279 : ¬ Reader r11279 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11279

def r11280 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem reject11280 : ¬ Reader r11280 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11280

def r11281 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 1)))))
theorem reject11281 : ¬ Reader r11281 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11281

def r11282 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 0))))
theorem reject11282 : ¬ Reader r11282 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11282

def r11283 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject11283 : ¬ Reader r11283 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11283

def r11284 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject11284 : ¬ Reader r11284 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11284

def r11285 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11285 : ¬ Reader r11285 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11285

def r11286 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11286 : ¬ Reader r11286 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11286

def r11287 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject11287 : ¬ Reader r11287 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11287

def r11288 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject11288 : ¬ Reader r11288 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11288

def r11289 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject11289 : ¬ Reader r11289 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11289

def r11290 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject11290 : ¬ Reader r11290 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11290

def r11291 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 1)))
theorem reject11291 : ¬ Reader r11291 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11291

def r11292 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem reject11292 : ¬ Reader r11292 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11292

def r11293 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 1)))))
theorem reject11293 : ¬ Reader r11293 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11293

def r11294 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 0))))
theorem reject11294 : ¬ Reader r11294 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11294

def r11295 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject11295 : ¬ Reader r11295 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11295

def r11296 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject11296 : ¬ Reader r11296 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11296

def r11297 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11297 : ¬ Reader r11297 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 1)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11297

def r11298 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11298 : ¬ Reader r11298 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11298

def r11299 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject11299 : ¬ Reader r11299 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11299

def r11300 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject11300 : ¬ Reader r11300 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11300

def r11301 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject11301 : ¬ Reader r11301 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11301

def r11302 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject11302 : ¬ Reader r11302 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11302

def r11303 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 1)))
theorem reject11303 : ¬ Reader r11303 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11303

def r11304 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem reject11304 : ¬ Reader r11304 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11304

def r11305 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 1)))))
theorem reject11305 : ¬ Reader r11305 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11305

def r11306 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 0))))
theorem reject11306 : ¬ Reader r11306 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11306

def r11307 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject11307 : ¬ Reader r11307 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11307

def r11308 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject11308 : ¬ Reader r11308 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11308

def r11309 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11309 : ¬ Reader r11309 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11309

def r11310 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11310 : ¬ Reader r11310 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11310

def r11311 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject11311 : ¬ Reader r11311 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11311

def r11312 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject11312 : ¬ Reader r11312 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11312

def r11313 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject11313 : ¬ Reader r11313 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11313

def r11314 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
theorem reject11314 : ¬ Reader r11314 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11314

def r11315 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11315 : ¬ Reader r11315 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 0), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11315

def r11316 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11316 : ¬ Reader r11316 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 0), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11316

def r11317 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject11317 : ¬ Reader r11317 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11317

def r11318 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject11318 : ¬ Reader r11318 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11318

def r11319 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject11319 : ¬ Reader r11319 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11319

def r11320 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
theorem reject11320 : ¬ Reader r11320 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11320

def r11321 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11321 : ¬ Reader r11321 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 0), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11321

def r11322 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11322 : ¬ Reader r11322 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11322

def r11347 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject11347 : ¬ Reader r11347 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11347

def r11348 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject11348 : ¬ Reader r11348 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11348

def r11349 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject11349 : ¬ Reader r11349 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11349

def r11350 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject11350 : ¬ Reader r11350 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11350

def r11351 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11351 : ¬ Reader r11351 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11351

def r11352 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11352 : ¬ Reader r11352 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11352

def r11353 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11353 : ¬ Reader r11353 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11353

def r11354 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11354 : ¬ Reader r11354 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11354

def r11355 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject11355 : ¬ Reader r11355 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11355

def r11356 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 0))))
theorem reject11356 : ¬ Reader r11356 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11356

def r11357 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 0))
theorem reject11357 : ¬ Reader r11357 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11357

def r11358 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0))
theorem reject11358 : ¬ Reader r11358 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11358

def r11359 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 0))))))
theorem reject11359 : ¬ Reader r11359 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11359

def r11360 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 0))))))
theorem reject11360 : ¬ Reader r11360 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11360

def r11361 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 0))))
theorem reject11361 : ¬ Reader r11361 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11361

def r11362 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.var 0)))
theorem reject11362 : ¬ Reader r11362 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11362

def r11363 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject11363 : ¬ Reader r11363 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11363

def r11364 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))
theorem reject11364 : ¬ Reader r11364 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11364

def r11365 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 0))))))
theorem reject11365 : ¬ Reader r11365 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11365

def r11366 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 0))))))
theorem reject11366 : ¬ Reader r11366 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11366

def r11367 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11367 : ¬ Reader r11367 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11367

def r11368 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11368 : ¬ Reader r11368 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11368

def r11369 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject11369 : ¬ Reader r11369 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11369

def r11370 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject11370 : ¬ Reader r11370 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11370

def r11383 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject11383 : ¬ Reader r11383 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11383

def r11384 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject11384 : ¬ Reader r11384 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11384

def r11385 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject11385 : ¬ Reader r11385 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11385

def r11386 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject11386 : ¬ Reader r11386 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11386

def r11387 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject11387 : ¬ Reader r11387 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11387

def r11388 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject11388 : ¬ Reader r11388 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11388

def r11389 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject11389 : ¬ Reader r11389 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11389

def r11390 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject11390 : ¬ Reader r11390 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11390

def r11391 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject11391 : ¬ Reader r11391 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11391

def r11392 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject11392 : ¬ Reader r11392 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11392

def r11393 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject11393 : ¬ Reader r11393 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11393

def r11394 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject11394 : ¬ Reader r11394 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 0))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11394

def r11395 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject11395 : ¬ Reader r11395 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11395

def r11396 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject11396 : ¬ Reader r11396 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11396

def r11397 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject11397 : ¬ Reader r11397 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11397

def r11398 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject11398 : ¬ Reader r11398 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11398

def r11399 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject11399 : ¬ Reader r11399 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11399

def r11400 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject11400 : ¬ Reader r11400 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11400

def r11401 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject11401 : ¬ Reader r11401 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11401

def r11402 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject11402 : ¬ Reader r11402 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11402

def r11403 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject11403 : ¬ Reader r11403 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11403

def r11404 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject11404 : ¬ Reader r11404 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11404

def r11405 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject11405 : ¬ Reader r11405 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11405

def r11406 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject11406 : ¬ Reader r11406 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11406

def r11407 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject11407 : ¬ Reader r11407 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11407

def r11408 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject11408 : ¬ Reader r11408 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11408

def r11409 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject11409 : ¬ Reader r11409 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11409

def r11410 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject11410 : ¬ Reader r11410 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11410

def r11411 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject11411 : ¬ Reader r11411 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11411

def r11412 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject11412 : ¬ Reader r11412 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11412

def r11413 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject11413 : ¬ Reader r11413 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11413

def r11414 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject11414 : ¬ Reader r11414 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11414

def r11415 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject11415 : ¬ Reader r11415 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11415

def r11416 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject11416 : ¬ Reader r11416 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11416

def r11417 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject11417 : ¬ Reader r11417 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11417

def r11418 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject11418 : ¬ Reader r11418 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.lam (.var 0))), (.lam (.lam (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11418

def r11419 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject11419 : ¬ Reader r11419 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11419

def r11420 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject11420 : ¬ Reader r11420 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11420

def r11421 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject11421 : ¬ Reader r11421 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11421

def r11422 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject11422 : ¬ Reader r11422 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11422

def r11423 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject11423 : ¬ Reader r11423 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11423

def r11424 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject11424 : ¬ Reader r11424 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11424

def r11425 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject11425 : ¬ Reader r11425 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11425

def r11426 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject11426 : ¬ Reader r11426 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11426

def r11427 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject11427 : ¬ Reader r11427 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11427

def r11428 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject11428 : ¬ Reader r11428 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11428

def r11429 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject11429 : ¬ Reader r11429 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11429

def r11430 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject11430 : ¬ Reader r11430 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11430

def r11431 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11431 : ¬ Reader r11431 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11431

def r11432 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11432 : ¬ Reader r11432 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11432

def r11433 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11433 : ¬ Reader r11433 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11433

def r11434 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11434 : ¬ Reader r11434 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11434

def r11435 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11435 : ¬ Reader r11435 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11435

def r11436 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11436 : ¬ Reader r11436 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11436

def r11443 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11443 : ¬ Reader r11443 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11443

def r11444 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11444 : ¬ Reader r11444 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11444

def r11445 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11445 : ¬ Reader r11445 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11445

def r11446 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11446 : ¬ Reader r11446 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11446

def r11447 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11447 : ¬ Reader r11447 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11447

def r11448 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11448 : ¬ Reader r11448 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11448

def r11449 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11449 : ¬ Reader r11449 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11449

def r11450 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11450 : ¬ Reader r11450 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11450

def r11451 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11451 : ¬ Reader r11451 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11451

def r11452 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11452 : ¬ Reader r11452 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11452

def r11453 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11453 : ¬ Reader r11453 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11453

def r11454 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11454 : ¬ Reader r11454 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11454

def r11461 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11461 : ¬ Reader r11461 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) [(.lam (.lam (.lam (.var 1)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11461

def r11462 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11462 : ¬ Reader r11462 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) [(.lam (.lam (.lam (.var 1)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11462

def r11463 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11463 : ¬ Reader r11463 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) [(.lam (.lam (.lam (.var 1)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11463

def r11464 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11464 : ¬ Reader r11464 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) [(.lam (.lam (.lam (.var 1)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11464

def r11465 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11465 : ¬ Reader r11465 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) [(.lam (.lam (.lam (.var 1)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11465

def r11466 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11466 : ¬ Reader r11466 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) [(.lam (.lam (.lam (.var 1)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11466

def r11479 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11479 : ¬ Reader r11479 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))))), (.lam (.lam (.lam (.var 1)))), (.lam (.lam (.lam (.var 1))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11479

def r11480 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11480 : ¬ Reader r11480 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))))), (.lam (.lam (.lam (.var 1)))), (.lam (.lam (.lam (.var 1))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11480

def r11481 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11481 : ¬ Reader r11481 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))))), (.lam (.lam (.lam (.var 1)))), (.lam (.lam (.lam (.var 1))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11481

def r11482 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11482 : ¬ Reader r11482 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))))), (.lam (.lam (.lam (.var 1)))), (.lam (.lam (.lam (.var 1))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11482

def r11483 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11483 : ¬ Reader r11483 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))))), (.lam (.lam (.lam (.var 1)))), (.lam (.lam (.lam (.var 1))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11483

def r11484 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11484 : ¬ Reader r11484 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))))), (.lam (.lam (.lam (.var 1)))), (.lam (.lam (.lam (.var 1))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11484

def r11485 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11485 : ¬ Reader r11485 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11485

def r11486 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11486 : ¬ Reader r11486 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11486

def r11487 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11487 : ¬ Reader r11487 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11487

def r11488 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11488 : ¬ Reader r11488 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11488

def r11489 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11489 : ¬ Reader r11489 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11489

def r11490 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11490 : ¬ Reader r11490 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11490

def r11491 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11491 : ¬ Reader r11491 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.lam (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11491

def r11492 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11492 : ¬ Reader r11492 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.lam (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11492

def r11493 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11493 : ¬ Reader r11493 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.lam (.var 0))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11493

def r11494 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11494 : ¬ Reader r11494 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11494

def r11495 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11495 : ¬ Reader r11495 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.lam (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11495

def r11496 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11496 : ¬ Reader r11496 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11496

def r11503 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject11503 : ¬ Reader r11503 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11503

def r11504 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject11504 : ¬ Reader r11504 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11504

def r11505 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject11505 : ¬ Reader r11505 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11505

def r11506 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
theorem reject11506 : ¬ Reader r11506 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11506

def r11507 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11507 : ¬ Reader r11507 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11507

def r11508 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11508 : ¬ Reader r11508 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11508

def r11509 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject11509 : ¬ Reader r11509 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11509

def r11510 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject11510 : ¬ Reader r11510 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11510

def r11511 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject11511 : ¬ Reader r11511 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11511

def r11512 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
theorem reject11512 : ¬ Reader r11512 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11512

def r11513 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11513 : ¬ Reader r11513 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11513

def r11514 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11514 : ¬ Reader r11514 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11514

def r11521 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11521 : ¬ Reader r11521 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11521

def r11522 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11522 : ¬ Reader r11522 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11522

def r11523 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11523 : ¬ Reader r11523 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11523

def r11524 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11524 : ¬ Reader r11524 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11524

def r11525 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11525 : ¬ Reader r11525 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11525

def r11526 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11526 : ¬ Reader r11526 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11526

def r11527 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject11527 : ¬ Reader r11527 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11527

def r11528 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject11528 : ¬ Reader r11528 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11528

def r11529 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject11529 : ¬ Reader r11529 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11529

def r11530 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject11530 : ¬ Reader r11530 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11530

def r11531 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11531 : ¬ Reader r11531 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11531

def r11532 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11532 : ¬ Reader r11532 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11532

def r11533 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11533 : ¬ Reader r11533 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11533

def r11534 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11534 : ¬ Reader r11534 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11534

def r11535 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject11535 : ¬ Reader r11535 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11535

def r11536 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 0))))
theorem reject11536 : ¬ Reader r11536 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11536

def r11537 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 0))
theorem reject11537 : ¬ Reader r11537 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11537

def r11538 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0))
theorem reject11538 : ¬ Reader r11538 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11538

def r11539 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 0))))))
theorem reject11539 : ¬ Reader r11539 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11539

def r11540 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 0))))))
theorem reject11540 : ¬ Reader r11540 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11540

def r11541 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 0))))
theorem reject11541 : ¬ Reader r11541 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11541

def r11542 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.var 0)))
theorem reject11542 : ¬ Reader r11542 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11542

def r11543 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject11543 : ¬ Reader r11543 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11543

def r11544 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))
theorem reject11544 : ¬ Reader r11544 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11544

def r11545 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 0))))))
theorem reject11545 : ¬ Reader r11545 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11545

def r11546 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 0))))))
theorem reject11546 : ¬ Reader r11546 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11546

def r11547 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11547 : ¬ Reader r11547 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11547

def r11548 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11548 : ¬ Reader r11548 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11548

def r11549 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject11549 : ¬ Reader r11549 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11549

def r11550 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject11550 : ¬ Reader r11550 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11550

def r11551 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11551 : ¬ Reader r11551 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11551

def r11552 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11552 : ¬ Reader r11552 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11552

def r11553 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11553 : ¬ Reader r11553 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11553

def r11554 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11554 : ¬ Reader r11554 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11554

def r11555 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11555 : ¬ Reader r11555 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11555

def r11556 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11556 : ¬ Reader r11556 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11556

def r11557 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11557 : ¬ Reader r11557 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11557

def r11558 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11558 : ¬ Reader r11558 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11558

def r11559 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11559 : ¬ Reader r11559 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11559

def r11560 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11560 : ¬ Reader r11560 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11560

def r11561 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11561 : ¬ Reader r11561 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11561

def r11562 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11562 : ¬ Reader r11562 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11562

def r11563 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11563 : ¬ Reader r11563 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11563

def r11564 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11564 : ¬ Reader r11564 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11564

def r11565 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11565 : ¬ Reader r11565 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11565

def r11566 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11566 : ¬ Reader r11566 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11566

def r11567 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11567 : ¬ Reader r11567 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11567

def r11568 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11568 : ¬ Reader r11568 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11568

def r11569 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11569 : ¬ Reader r11569 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11569

def r11570 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11570 : ¬ Reader r11570 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11570

def r11571 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11571 : ¬ Reader r11571 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11571

def r11572 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11572 : ¬ Reader r11572 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11572

def r11573 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11573 : ¬ Reader r11573 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11573

def r11574 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11574 : ¬ Reader r11574 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11574

def r11575 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11575 : ¬ Reader r11575 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11575

def r11576 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11576 : ¬ Reader r11576 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11576

def r11577 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11577 : ¬ Reader r11577 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11577

def r11578 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11578 : ¬ Reader r11578 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11578

def r11579 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11579 : ¬ Reader r11579 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11579

def r11580 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11580 : ¬ Reader r11580 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11580

def r11581 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11581 : ¬ Reader r11581 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11581

def r11582 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11582 : ¬ Reader r11582 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11582

def r11583 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11583 : ¬ Reader r11583 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11583

def r11584 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11584 : ¬ Reader r11584 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11584

def r11585 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11585 : ¬ Reader r11585 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11585

def r11586 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11586 : ¬ Reader r11586 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11586

def r11587 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11587 : ¬ Reader r11587 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11587

def r11588 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11588 : ¬ Reader r11588 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11588

def r11589 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11589 : ¬ Reader r11589 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11589

def r11590 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11590 : ¬ Reader r11590 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11590

def r11591 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11591 : ¬ Reader r11591 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11591

def r11592 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11592 : ¬ Reader r11592 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11592

def r11593 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11593 : ¬ Reader r11593 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11593

def r11594 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11594 : ¬ Reader r11594 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11594

def r11595 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11595 : ¬ Reader r11595 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11595

def r11596 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11596 : ¬ Reader r11596 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11596

def r11597 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11597 : ¬ Reader r11597 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11597

def r11598 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11598 : ¬ Reader r11598 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11598

def r11599 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11599 : ¬ Reader r11599 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11599

def r11600 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11600 : ¬ Reader r11600 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11600

def r11601 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11601 : ¬ Reader r11601 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11601

def r11602 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11602 : ¬ Reader r11602 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11602

def r11603 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11603 : ¬ Reader r11603 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11603

def r11604 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11604 : ¬ Reader r11604 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11604
end Blc.HandlerLet.XBasic31
