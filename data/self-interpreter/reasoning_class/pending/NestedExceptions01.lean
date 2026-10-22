import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.NestedExceptions01
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r300 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject300 : ¬ Reader r300 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject300

def r301 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject301 : ¬ Reader r301 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject301

def r302 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject302 : ¬ Reader r302 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject302

def r303 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject303 : ¬ Reader r303 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject303

def r304 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject304 : ¬ Reader r304 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject304

def r305 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject305 : ¬ Reader r305 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject305

def r306 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject306 : ¬ Reader r306 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject306

def r307 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject307 : ¬ Reader r307 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject307

def r308 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject308 : ¬ Reader r308 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject308

def r309 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject309 : ¬ Reader r309 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject309

def r310 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject310 : ¬ Reader r310 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject310

def r311 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject311 : ¬ Reader r311 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject311

def r312 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject312 : ¬ Reader r312 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject312

def r313 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject313 : ¬ Reader r313 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject313

def r314 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject314 : ¬ Reader r314 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject314

def r315 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject315 : ¬ Reader r315 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject315

def r316 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject316 : ¬ Reader r316 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject316

def r317 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject317 : ¬ Reader r317 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject317

def r318 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject318 : ¬ Reader r318 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject318

def r319 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject319 : ¬ Reader r319 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject319

def r320 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject320 : ¬ Reader r320 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject320

def r321 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject321 : ¬ Reader r321 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject321

def r322 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject322 : ¬ Reader r322 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject322

def r323 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject323 : ¬ Reader r323 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject323

def r324 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject324 : ¬ Reader r324 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject324

def r325 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject325 : ¬ Reader r325 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject325

def r326 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject326 : ¬ Reader r326 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject326

def r327 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject327 : ¬ Reader r327 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject327

def r328 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject328 : ¬ Reader r328 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject328

def r329 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject329 : ¬ Reader r329 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject329

def r330 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject330 : ¬ Reader r330 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject330

def r331 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject331 : ¬ Reader r331 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject331

def r332 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject332 : ¬ Reader r332 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject332

def r333 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject333 : ¬ Reader r333 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject333

def r334 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject334 : ¬ Reader r334 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject334

def r335 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject335 : ¬ Reader r335 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject335

def r336 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject336 : ¬ Reader r336 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject336

def r337 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject337 : ¬ Reader r337 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject337

def r338 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject338 : ¬ Reader r338 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject338

def r339 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject339 : ¬ Reader r339 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject339

def r340 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject340 : ¬ Reader r340 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject340

def r341 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject341 : ¬ Reader r341 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject341

def r342 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject342 : ¬ Reader r342 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject342

def r343 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject343 : ¬ Reader r343 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject343

def r344 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject344 : ¬ Reader r344 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject344

def r345 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject345 : ¬ Reader r345 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject345

def r346 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject346 : ¬ Reader r346 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject346

def r347 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject347 : ¬ Reader r347 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject347

def r348 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject348 : ¬ Reader r348 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject348

def r349 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject349 : ¬ Reader r349 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject349

def r350 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))
theorem reject350 : ¬ Reader r350 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject350

def r351 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))
theorem reject351 : ¬ Reader r351 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject351

def r352 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))
theorem reject352 : ¬ Reader r352 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject352

def r353 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject353 : ¬ Reader r353 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject353

def r354 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject354 : ¬ Reader r354 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject355 : ¬ Reader r355 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject356 : ¬ Reader r356 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject357 : ¬ Reader r357 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject357

def r358 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject358 : ¬ Reader r358 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject358

def r359 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject359 : ¬ Reader r359 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject359

def r360 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1))
theorem reject360 : ¬ Reader r360 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject360

def r361 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1))
theorem reject361 : ¬ Reader r361 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject361

def r362 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1))
theorem reject362 : ¬ Reader r362 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject362

def r363 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject363 : ¬ Reader r363 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject363

def r364 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject364 : ¬ Reader r364 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject364

def r365 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject365 : ¬ Reader r365 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject365

def r366 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject366 : ¬ Reader r366 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject366

def r367 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1))
theorem reject367 : ¬ Reader r367 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject367

def r368 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1))
theorem reject368 : ¬ Reader r368 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject368

def r369 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1))
theorem reject369 : ¬ Reader r369 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.var 0)) (.var 0))), (.lam (.app (.app (.var 1) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject369

def r370 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject370 : ¬ Reader r370 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject370

def r371 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject371 : ¬ Reader r371 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject371

def r372 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject372 : ¬ Reader r372 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.lam (.app (.var 0) (.var 0))))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject372

def r373 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject373 : ¬ Reader r373 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject373

def r374 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject374 : ¬ Reader r374 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject374

def r375 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject375 : ¬ Reader r375 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject375

def r376 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject376 : ¬ Reader r376 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject376

def r377 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject377 : ¬ Reader r377 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject377

def r378 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject378 : ¬ Reader r378 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject378

def r379 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject379 : ¬ Reader r379 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject379

def r380 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject380 : ¬ Reader r380 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject380

def r381 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject381 : ¬ Reader r381 := by
  exact replay_loop true [] 6 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject381

def r382 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject382 : ¬ Reader r382 := by
  exact replay_loop true [] 6 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject382

def r383 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject383 : ¬ Reader r383 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject383

def r384 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject384 : ¬ Reader r384 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject384

def r385 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject385 : ¬ Reader r385 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject385

def r386 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject386 : ¬ Reader r386 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject386

def r387 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject387 : ¬ Reader r387 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject387

def r388 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject388 : ¬ Reader r388 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject388

def r389 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject389 : ¬ Reader r389 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject389

def r390 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject390 : ¬ Reader r390 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject390

def r391 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject391 : ¬ Reader r391 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject391

def r392 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject392 : ¬ Reader r392 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject392

def r393 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject393 : ¬ Reader r393 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject393

def r394 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject394 : ¬ Reader r394 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject394

def r395 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject395 : ¬ Reader r395 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject395

def r396 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject396 : ¬ Reader r396 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject396

def r397 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1))
theorem reject397 : ¬ Reader r397 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject397

def r398 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1))
theorem reject398 : ¬ Reader r398 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject398

def r399 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.var 1))
theorem reject399 : ¬ Reader r399 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject399

def r400 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.var 1))
theorem reject400 : ¬ Reader r400 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject400

def r401 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.var 1))
theorem reject401 : ¬ Reader r401 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) [(.lam (.var 0)), (.var 0)] [(.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject401

def r402 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.var 1))
theorem reject402 : ¬ Reader r402 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) [(.var 0), (.lam (.var 0))] [(.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject402

def r403 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.var 1))
theorem reject403 : ¬ Reader r403 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) [(.lam (.var 0)), (.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject403

def r404 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.var 1))
theorem reject404 : ¬ Reader r404 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) [(.var 0), (.lam (.var 0))] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject404

def r405 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject405 : ¬ Reader r405 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject405

def r406 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject406 : ¬ Reader r406 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject406

def r407 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject407 : ¬ Reader r407 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject407

def r408 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject408 : ¬ Reader r408 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject408

def r409 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject409 : ¬ Reader r409 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject409

def r410 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject410 : ¬ Reader r410 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject410

def r411 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject411 : ¬ Reader r411 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject411

def r412 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject412 : ¬ Reader r412 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject412

def r413 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject413 : ¬ Reader r413 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), (.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject413

def r414 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject414 : ¬ Reader r414 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject414

def r415 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject415 : ¬ Reader r415 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) [(.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.lam (.var 0))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject415

def r416 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject416 : ¬ Reader r416 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))) [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject416

def r417 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject417 : ¬ Reader r417 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.app (.var 0) (.lam (.var 0))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject417

def r418 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject418 : ¬ Reader r418 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject418

def r419 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject419 : ¬ Reader r419 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0))))))), (.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject419

def r420 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject420 : ¬ Reader r420 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0))))), (.app (.var 0) (.lam (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject420

def r421 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject421 : ¬ Reader r421 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject421

def r422 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject422 : ¬ Reader r422 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject422

def r423 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject423 : ¬ Reader r423 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject423

def r424 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject424 : ¬ Reader r424 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject424

def r425 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject425 : ¬ Reader r425 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject425

def r426 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject426 : ¬ Reader r426 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject426

def r427 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject427 : ¬ Reader r427 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject427

def r428 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject428 : ¬ Reader r428 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject428

def r429 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject429 : ¬ Reader r429 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject429

def r430 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject430 : ¬ Reader r430 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject430

def r431 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject431 : ¬ Reader r431 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject431

def r432 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject432 : ¬ Reader r432 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject432

def r433 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject433 : ¬ Reader r433 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject433

def r434 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject434 : ¬ Reader r434 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject434

def r435 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject435 : ¬ Reader r435 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject435

def r436 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject436 : ¬ Reader r436 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject436

def r437 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject437 : ¬ Reader r437 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject437

def r438 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject438 : ¬ Reader r438 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject438

def r439 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject439 : ¬ Reader r439 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject439

def r440 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject440 : ¬ Reader r440 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject440

def r441 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject441 : ¬ Reader r441 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject441

def r442 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject442 : ¬ Reader r442 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject442

def r443 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject443 : ¬ Reader r443 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject443

def r444 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject444 : ¬ Reader r444 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject444

def r445 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject445 : ¬ Reader r445 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject445

def r446 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject446 : ¬ Reader r446 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject446

def r447 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject447 : ¬ Reader r447 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject447

def r448 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject448 : ¬ Reader r448 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject448

def r449 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject449 : ¬ Reader r449 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject449

def r450 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject450 : ¬ Reader r450 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject450

def r451 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject451 : ¬ Reader r451 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject451

def r452 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject452 : ¬ Reader r452 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject452

def r453 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem reject453 : ¬ Reader r453 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject453

def r454 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.var 1))
theorem reject454 : ¬ Reader r454 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject454

def r455 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 1))
theorem reject455 : ¬ Reader r455 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject455

def r456 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.var 1))
theorem reject456 : ¬ Reader r456 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) [(.var 0), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject456

def r457 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1))
theorem reject457 : ¬ Reader r457 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject457

def r458 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 1))
theorem reject458 : ¬ Reader r458 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))), (.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject458

def r459 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject459 : ¬ Reader r459 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject459

def r460 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject460 : ¬ Reader r460 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject460

def r461 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject461 : ¬ Reader r461 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject461

def r462 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject462 : ¬ Reader r462 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject462

def r463 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject463 : ¬ Reader r463 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject463

def r464 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject464 : ¬ Reader r464 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject464

def r465 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject465 : ¬ Reader r465 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject465

def r466 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject466 : ¬ Reader r466 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject466

def r467 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject467 : ¬ Reader r467 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject467

def r468 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject468 : ¬ Reader r468 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject468

def r469 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject469 : ¬ Reader r469 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject469

def r470 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject470 : ¬ Reader r470 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject470

def r471 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0))
theorem reject471 : ¬ Reader r471 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject471

def r472 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1))
theorem reject472 : ¬ Reader r472 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject472

def r473 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0))
theorem reject473 : ¬ Reader r473 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject473

def r474 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1))
theorem reject474 : ¬ Reader r474 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject474

def r475 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject475 : ¬ Reader r475 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject475

def r476 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject476 : ¬ Reader r476 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject476

def r477 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject477 : ¬ Reader r477 := by
  exact replay_loop true [] 1 8 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject477

def r478 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject478 : ¬ Reader r478 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject478

def r479 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject479 : ¬ Reader r479 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))))] [(.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject479

def r480 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject480 : ¬ Reader r480 := by
  exact replay_loop true [] 2 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject480

def r481 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject481 : ¬ Reader r481 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject481

def r482 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject482 : ¬ Reader r482 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject482

def r483 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject483 : ¬ Reader r483 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject483

def r484 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject484 : ¬ Reader r484 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject484

def r485 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject485 : ¬ Reader r485 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject485

def r486 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject486 : ¬ Reader r486 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject486

def r487 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject487 : ¬ Reader r487 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))] [(.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject487

def r488 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject488 : ¬ Reader r488 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))] [(.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject488

def r489 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject489 : ¬ Reader r489 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject489

def r490 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject490 : ¬ Reader r490 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject490

def r491 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject491 : ¬ Reader r491 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject491

def r492 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject492 : ¬ Reader r492 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject492

def r493 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject493 : ¬ Reader r493 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject493

def r494 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject494 : ¬ Reader r494 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject494

def r495 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject495 : ¬ Reader r495 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject495

def r496 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject496 : ¬ Reader r496 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject496

def r497 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject497 : ¬ Reader r497 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject497

def r498 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject498 : ¬ Reader r498 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject498

def r499 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject499 : ¬ Reader r499 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject499

def r500 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject500 : ¬ Reader r500 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject500

def r501 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject501 : ¬ Reader r501 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject501

def r502 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject502 : ¬ Reader r502 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject502

def r503 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject503 : ¬ Reader r503 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject503

def r504 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject504 : ¬ Reader r504 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject504

def r505 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject505 : ¬ Reader r505 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject505

def r506 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject506 : ¬ Reader r506 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject506

def r507 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject507 : ¬ Reader r507 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject507

def r508 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject508 : ¬ Reader r508 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject508

def r509 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject509 : ¬ Reader r509 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject509

def r510 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject510 : ¬ Reader r510 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject510

def r511 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject511 : ¬ Reader r511 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject511

def r512 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject512 : ¬ Reader r512 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject512

def r513 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject513 : ¬ Reader r513 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject513

def r514 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject514 : ¬ Reader r514 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject514

def r515 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject515 : ¬ Reader r515 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject515

def r516 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject516 : ¬ Reader r516 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject516

def r517 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject517 : ¬ Reader r517 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject517

def r518 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject518 : ¬ Reader r518 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject518

def r519 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject519 : ¬ Reader r519 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject519

def r520 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject520 : ¬ Reader r520 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject520

def r521 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject521 : ¬ Reader r521 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject521

def r522 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject522 : ¬ Reader r522 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject522

def r523 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject523 : ¬ Reader r523 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject523

def r524 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject524 : ¬ Reader r524 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject524

def r525 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject525 : ¬ Reader r525 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject525

def r526 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject526 : ¬ Reader r526 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject526

def r527 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject527 : ¬ Reader r527 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject527

def r528 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject528 : ¬ Reader r528 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject528

def r529 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject529 : ¬ Reader r529 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject529

def r530 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject530 : ¬ Reader r530 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject530

def r531 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject531 : ¬ Reader r531 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject531

def r532 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject532 : ¬ Reader r532 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject532

def r533 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject533 : ¬ Reader r533 := by
  exact replay_loop true [] 10 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject533

def r534 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject534 : ¬ Reader r534 := by
  exact replay_loop true [] 6 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject534

def r535 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject535 : ¬ Reader r535 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject535

def r536 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject536 : ¬ Reader r536 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject536

def r537 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject537 : ¬ Reader r537 := by
  exact replay_loop true [] 2 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject537

def r538 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject538 : ¬ Reader r538 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject538

def r539 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject539 : ¬ Reader r539 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject539

def r540 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject540 : ¬ Reader r540 := by
  exact replay_loop true [] 6 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject540

def r541 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject541 : ¬ Reader r541 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject541

def r542 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject542 : ¬ Reader r542 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject542

def r543 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject543 : ¬ Reader r543 := by
  exact replay_loop true [] 2 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject543

def r544 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject544 : ¬ Reader r544 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject544

def r545 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject545 : ¬ Reader r545 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject545

def r546 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject546 : ¬ Reader r546 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject546

def r547 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject547 : ¬ Reader r547 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject547

def r548 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject548 : ¬ Reader r548 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject548

def r549 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject549 : ¬ Reader r549 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject549

def r550 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1))
theorem reject550 : ¬ Reader r550 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) [(.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))), (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject550

def r551 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject551 : ¬ Reader r551 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject551

def r552 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1))
theorem reject552 : ¬ Reader r552 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))) [(.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))), (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject552

def r553 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1))
theorem reject553 : ¬ Reader r553 := by
  exact replay_loop true [] 2 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.app (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject553

def r554 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject554 : ¬ Reader r554 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject554

def r555 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject555 : ¬ Reader r555 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject555

def r556 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject556 : ¬ Reader r556 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject556

def r557 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1))
theorem reject557 : ¬ Reader r557 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject557

def r558 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1))
theorem reject558 : ¬ Reader r558 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject558

def r559 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1))
theorem reject559 : ¬ Reader r559 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject559

def r560 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 1))
theorem reject560 : ¬ Reader r560 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject560

def r561 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 1))
theorem reject561 : ¬ Reader r561 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject561

def r562 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 1))
theorem reject562 : ¬ Reader r562 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject562

def r563 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject563 : ¬ Reader r563 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject563

def r564 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject564 : ¬ Reader r564 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject564

def r565 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject565 : ¬ Reader r565 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject565

def r566 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject566 : ¬ Reader r566 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject566

def r567 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject567 : ¬ Reader r567 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject567

def r568 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject568 : ¬ Reader r568 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject568

def r569 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject569 : ¬ Reader r569 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject569

def r570 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject570 : ¬ Reader r570 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject570

def r571 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject571 : ¬ Reader r571 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject571

def r572 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject572 : ¬ Reader r572 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject572

def r573 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject573 : ¬ Reader r573 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject573

def r574 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject574 : ¬ Reader r574 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject574

def r575 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject575 : ¬ Reader r575 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject575

def r576 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject576 : ¬ Reader r576 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject576

def r577 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject577 : ¬ Reader r577 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject577

def r578 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject578 : ¬ Reader r578 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject578

def r579 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject579 : ¬ Reader r579 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject579

def r580 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject580 : ¬ Reader r580 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject580

def r581 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject581 : ¬ Reader r581 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject581

def r582 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject582 : ¬ Reader r582 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject582

def r583 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject583 : ¬ Reader r583 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject583

def r584 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject584 : ¬ Reader r584 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject584

def r585 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject585 : ¬ Reader r585 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject585

def r586 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject586 : ¬ Reader r586 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject586

def r587 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.var 0))
theorem reject587 : ¬ Reader r587 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject587

def r588 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)) (.var 1))
theorem reject588 : ¬ Reader r588 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject588

def r589 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject589 : ¬ Reader r589 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject589

def r590 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject590 : ¬ Reader r590 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject590

def r591 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject591 : ¬ Reader r591 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject591

def r592 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject592 : ¬ Reader r592 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject592

def r593 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject593 : ¬ Reader r593 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject593

def r594 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject594 : ¬ Reader r594 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject594

def r595 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject595 : ¬ Reader r595 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject595

def r596 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject596 : ¬ Reader r596 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject596

def r597 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))
theorem reject597 : ¬ Reader r597 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject597

def r598 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))
theorem reject598 : ¬ Reader r598 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 1)))), (.app (.var 0) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject598

def r599 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject599 : ¬ Reader r599 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) [(.app (.var 0) (.app (.var 0) (.lam (.var 0))))] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject599
end Blc.HandlerLet.NestedExceptions01
