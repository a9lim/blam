import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.More03
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r300 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject300 : ¬ Reader r300 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 2, 0, 2, 1, 1], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.app (.lam (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject300

def r301 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject301 : ¬ Reader r301 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 1]] 0 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject301

def r302 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject302 : ¬ Reader r302 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 1]] 0 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject302

def r303 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject303 : ¬ Reader r303 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1]] (.var 1) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject303

def r304 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject304 : ¬ Reader r304 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1]] (.var 0) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject304

def r305 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject305 : ¬ Reader r305 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.var 0)) (.lam (.var 0))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject305

def r306 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject306 : ¬ Reader r306 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.var 0)) (.lam (.var 0))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject306

def r307 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject307 : ¬ Reader r307 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1]] (.var 1) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject307

def r308 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject308 : ¬ Reader r308 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1]] (.var 0) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject308

def r309 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject309 : ¬ Reader r309 := by
 exact RootcertLark.reject [[1, 1, 1]] (.lam (.var 0)) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject309

def r310 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject310 : ¬ Reader r310 := by
 exact RootcertLark.reject [[1, 1, 1]] (.lam (.var 0)) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject310

def r311 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject311 : ¬ Reader r311 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] 1 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject311

def r312 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject312 : ¬ Reader r312 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] 1 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject312

def r313 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject313 : ¬ Reader r313 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject313

def r314 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject314 : ¬ Reader r314 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject314

def r315 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject315 : ¬ Reader r315 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 1) (.var 1)) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject315

def r316 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject316 : ¬ Reader r316 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 0) (.var 0)) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject316

def r317 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject317 : ¬ Reader r317 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1]] (.var 1) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject317

def r318 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject318 : ¬ Reader r318 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1]] (.var 0) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject318

def r319 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject319 : ¬ Reader r319 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 1]] 0 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject319

def r320 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject320 : ¬ Reader r320 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1], [1, 1, 1, 1]] 0 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject320

def r321 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject321 : ¬ Reader r321 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject321

def r322 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject322 : ¬ Reader r322 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject322

def r323 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject323 : ¬ Reader r323 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] 1 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject323

def r324 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject324 : ¬ Reader r324 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 2]] 1 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject324

def r325 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject325 : ¬ Reader r325 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject325

def r326 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject326 : ¬ Reader r326 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject326

def r327 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject327 : ¬ Reader r327 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 1) (.var 1)) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject327

def r328 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject328 : ¬ Reader r328 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 0) (.var 0)) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject328

def r329 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject329 : ¬ Reader r329 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.var 0)) (.lam (.var 0))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject329

def r330 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject330 : ¬ Reader r330 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.var 0)) (.lam (.var 0))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject330

def r331 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject331 : ¬ Reader r331 := by
 exact RootcertLark.reject [[1, 1, 1]] (.var 1) [(.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject331

def r332 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject332 : ¬ Reader r332 := by
 exact RootcertLark.reject [[1, 1, 1]] (.lam (.lam (.var 2))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject332

def r333 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject333 : ¬ Reader r333 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 1) (.var 1)) [(.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject333

def r334 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject334 : ¬ Reader r334 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.lam (.lam (.var 2))) (.lam (.lam (.var 2)))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject334

def r335 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject335 : ¬ Reader r335 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 1) (.var 1)) [(.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject335

def r336 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject336 : ¬ Reader r336 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.lam (.lam (.var 2))) (.lam (.lam (.var 2)))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject336

def r337 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))) (.var 1)) (.lam (.var 1)))
theorem reject337 : ¬ Reader r337 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 0, 2], [1, 1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2, 0, 2], [1, 1, 1, 2, 0, 2, 0, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 0, 2]] 0 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject337

def r338 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject338 : ¬ Reader r338 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 0, 2], [1, 1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2, 0, 2], [1, 1, 1, 2, 0, 2, 0, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 2], [1, 1, 1, 1, 0, 2, 0, 2]] 0 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject338

def r339 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject339 : ¬ Reader r339 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r339 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject339

def r340 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject340 : ¬ Reader r340 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r340 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject340

def r341 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject341 : ¬ Reader r341 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r341 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject341

def r342 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject342 : ¬ Reader r342 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r342 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject342

def r343 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))))) (.var 1)) (.var 0))
theorem reject343 : ¬ Reader r343 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r343 Z) = some (spine (BodyLetSpecial.templateState (.lam (.lam (.var 3))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject343

def r344 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))))) (.var 0)) (.var 1))
theorem reject344 : ¬ Reader r344 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r344 Z) = some (spine (BodyLetSpecial.templateState (.lam (.lam (.var 3))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject344

def r345 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))))) (.var 1)) (.var 0))
theorem reject345 : ¬ Reader r345 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r345 Z) = some (spine (BodyLetSpecial.templateState (.lam (.lam (.var 3))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject345

def r346 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))))) (.var 0)) (.var 1))
theorem reject346 : ¬ Reader r346 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r346 Z) = some (spine (BodyLetSpecial.templateState (.lam (.lam (.var 3))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject346

def r347 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1)) (.var 0))
theorem reject347 : ¬ Reader r347 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r347 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject347

def r348 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 0)) (.var 1))
theorem reject348 : ¬ Reader r348 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r348 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject348

def r349 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1)) (.var 0))
theorem reject349 : ¬ Reader r349 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r349 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject349

def r350 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 0)) (.var 1))
theorem reject350 : ¬ Reader r350 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r350 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject350

def r351 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1)) (.var 0))
theorem reject351 : ¬ Reader r351 := by
 intro hr
 have he : betaSteps [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] (.app r351 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject351

def r352 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 0)) (.var 1))
theorem reject352 : ¬ Reader r352 := by
 intro hr
 have he : betaSteps [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] (.app r352 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject352

def r353 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1)) (.var 0))
theorem reject353 : ¬ Reader r353 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r353 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject353

def r354 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 0)) (.var 1))
theorem reject354 : ¬ Reader r354 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r354 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject354

def r355 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject355 : ¬ Reader r355 := by
  exact replay_loop true [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1]] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject356 : ¬ Reader r356 := by
  exact replay_loop true [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1]] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject357 : ¬ Reader r357 := by
  exact replay_loop true [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1]] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject357

def r358 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject358 : ¬ Reader r358 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.var 1) [(.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject358

def r359 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject359 : ¬ Reader r359 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.var 0) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject359

def r360 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject360 : ¬ Reader r360 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.var 0) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject360

def r361 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject361 : ¬ Reader r361 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 1) (.var 1)) [(.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject361

def r362 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject362 : ¬ Reader r362 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 0)) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject362

def r363 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject363 : ¬ Reader r363 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 0)) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject363

def r364 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject364 : ¬ Reader r364 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 1) (.var 1)) [(.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject364

def r365 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject365 : ¬ Reader r365 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 0)) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject365

def r366 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject366 : ¬ Reader r366 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 0)) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject366

def r367 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject367 : ¬ Reader r367 := by
 exact RootcertRecursor.reject [[1, 1, 1, 1]] (.var 1) [(.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject367

def r368 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject368 : ¬ Reader r368 := by
 exact RootcertRecursor.reject [[1, 1, 1, 1]] (.var 0) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject368

def r369 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject369 : ¬ Reader r369 := by
 exact RootcertRecursor.reject [[1, 1, 1, 1]] (.var 0) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject369

def r370 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject370 : ¬ Reader r370 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.lam (.var 0)) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject370

def r371 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject371 : ¬ Reader r371 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.lam (.var 0)) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject371

def r372 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject372 : ¬ Reader r372 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.var 1) [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject372

def r373 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject373 : ¬ Reader r373 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.var 1) [(.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject373

def r374 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject374 : ¬ Reader r374 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.var 0) [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject374

def r375 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject375 : ¬ Reader r375 := by
 exact RootcertLark.reject [[1, 1, 1, 1]] (.var 0) [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject375

def r376 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject376 : ¬ Reader r376 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.var 0)) (.lam (.var 0))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject376

def r377 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject377 : ¬ Reader r377 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.var 0)) (.lam (.var 0))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject377

def r378 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject378 : ¬ Reader r378 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 1) (.var 1)) [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject378

def r379 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject379 : ¬ Reader r379 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 1) (.var 1)) [(.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject379

def r380 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject380 : ¬ Reader r380 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 0)) [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject380

def r381 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject381 : ¬ Reader r381 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 0)) [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject381

def r382 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject382 : ¬ Reader r382 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.var 0)) (.lam (.var 0))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject382

def r383 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject383 : ¬ Reader r383 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.var 0)) (.lam (.var 0))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject383

def r384 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject384 : ¬ Reader r384 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 1) (.var 1)) [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject384

def r385 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject385 : ¬ Reader r385 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 1) (.var 1)) [(.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject385

def r386 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject386 : ¬ Reader r386 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 0)) [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject386

def r387 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject387 : ¬ Reader r387 := by
 exact RootcertLark.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.var 0)) [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject387

def r388 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject388 : ¬ Reader r388 := by
  exact replay_head true [] 166 (0,3) (by decide) (by decide)
#print axioms reject388

def r389 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject389 : ¬ Reader r389 := by
  exact replay_head true [] 165 (0,3) (by decide) (by decide)
#print axioms reject389

def r390 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject390 : ¬ Reader r390 := by
  exact replay_head true [] 166 (0,3) (by decide) (by decide)
#print axioms reject390

def r391 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject391 : ¬ Reader r391 := by
  exact replay_head true [] 165 (0,3) (by decide) (by decide)
#print axioms reject391

def r392 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject392 : ¬ Reader r392 := by
  exact replay_loop true [] 2 10 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject392

def r393 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject393 : ¬ Reader r393 := by
  exact replay_loop true [] 1 10 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject393

def r394 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject394 : ¬ Reader r394 := by
  exact replay_loop true [] 1 10 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject394

def r395 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject395 : ¬ Reader r395 := by
  exact replay_loop true [] 1 10 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.var 0), (.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject395

def r396 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1))
theorem reject396 : ¬ Reader r396 := by
  exact replay_loop true [] 1 19 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject396

def r397 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1))
theorem reject397 : ¬ Reader r397 := by
  exact replay_loop true [] 1 13 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject397

def r398 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject398 : ¬ Reader r398 := by
  exact replay_loop true [] 1 9 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject398

def r399 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) (.var 0)))) (.var 1))
theorem reject399 : ¬ Reader r399 := by
  exact replay_head true [] 135 (1,3) (by decide) (by decide)
#print axioms reject399
end Blc.HandlerLet.More03
