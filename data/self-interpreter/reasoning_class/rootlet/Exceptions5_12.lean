import Certificates
namespace Blc.HandlerLet.Exceptions5_12
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r7310 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7310 : ¬ Reader r7310 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7310

def r7311 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7311 : ¬ Reader r7311 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7311

def r7312 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7312 : ¬ Reader r7312 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7312

def r7313 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7313 : ¬ Reader r7313 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7313

def r7314 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7314 : ¬ Reader r7314 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7314

def r7315 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7315 : ¬ Reader r7315 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7315

def r7316 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7316 : ¬ Reader r7316 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7316

def r7317 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7317 : ¬ Reader r7317 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7317

def r7318 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7318 : ¬ Reader r7318 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7318

def r7319 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7319 : ¬ Reader r7319 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7319

def r7320 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7320 : ¬ Reader r7320 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7320

def r7321 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7321 : ¬ Reader r7321 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7321

def r7322 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7322 : ¬ Reader r7322 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7322

def r7323 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7323 : ¬ Reader r7323 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7323

def r7324 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7324 : ¬ Reader r7324 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7324

def r7325 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7325 : ¬ Reader r7325 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7325

def r7326 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7326 : ¬ Reader r7326 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7326

def r7327 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7327 : ¬ Reader r7327 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7327

def r7328 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7328 : ¬ Reader r7328 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7328

def r7329 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7329 : ¬ Reader r7329 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7329

def r7330 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7330 : ¬ Reader r7330 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7330

def r7331 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7331 : ¬ Reader r7331 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7331

def r7332 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7332 : ¬ Reader r7332 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7332

def r7333 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7333 : ¬ Reader r7333 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7333

def r7334 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7334 : ¬ Reader r7334 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7334

def r7335 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7335 : ¬ Reader r7335 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7335

def r7336 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7336 : ¬ Reader r7336 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7336

def r7337 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7337 : ¬ Reader r7337 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7337

def r7338 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7338 : ¬ Reader r7338 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7338

def r7339 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7339 : ¬ Reader r7339 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7339

def r7340 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7340 : ¬ Reader r7340 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7340

def r7341 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7341 : ¬ Reader r7341 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7341

def r7342 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7342 : ¬ Reader r7342 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7342

def r7343 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7343 : ¬ Reader r7343 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7343

def r7344 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7344 : ¬ Reader r7344 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7344

def r7345 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7345 : ¬ Reader r7345 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7345

def r7346 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7346 : ¬ Reader r7346 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7346

def r7347 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7347 : ¬ Reader r7347 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7347

def r7348 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7348 : ¬ Reader r7348 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7348

def r7349 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7349 : ¬ Reader r7349 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7349

def r7350 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7350 : ¬ Reader r7350 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7350

def r7351 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7351 : ¬ Reader r7351 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7351

def r7352 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7352 : ¬ Reader r7352 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7352

def r7353 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7353 : ¬ Reader r7353 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7353

def r7354 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7354 : ¬ Reader r7354 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7354

def r7355 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7355 : ¬ Reader r7355 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7355

def r7356 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7356 : ¬ Reader r7356 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7356

def r7357 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7357 : ¬ Reader r7357 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7357

def r7358 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7358 : ¬ Reader r7358 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7358

def r7359 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7359 : ¬ Reader r7359 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7359

def r7360 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7360 : ¬ Reader r7360 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7360

def r7361 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7361 : ¬ Reader r7361 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7361

def r7362 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7362 : ¬ Reader r7362 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7362

def r7363 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7363 : ¬ Reader r7363 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7363

def r7364 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7364 : ¬ Reader r7364 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7364

def r7365 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7365 : ¬ Reader r7365 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7365

def r7366 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7366 : ¬ Reader r7366 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7366

def r7367 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7367 : ¬ Reader r7367 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7367

def r7368 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7368 : ¬ Reader r7368 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7368

def r7369 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7369 : ¬ Reader r7369 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7369

def r7370 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7370 : ¬ Reader r7370 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7370

def r7371 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7371 : ¬ Reader r7371 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7371

def r7372 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7372 : ¬ Reader r7372 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7372

def r7373 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7373 : ¬ Reader r7373 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7373

def r7374 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7374 : ¬ Reader r7374 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7374

def r7375 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7375 : ¬ Reader r7375 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7375

def r7376 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7376 : ¬ Reader r7376 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7376

def r7377 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7377 : ¬ Reader r7377 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7377

def r7378 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7378 : ¬ Reader r7378 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7378

def r7379 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7379 : ¬ Reader r7379 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7379

def r7380 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7380 : ¬ Reader r7380 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject7380

def r7381 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7381 : ¬ Reader r7381 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7381

def r7382 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7382 : ¬ Reader r7382 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7382

def r7383 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7383 : ¬ Reader r7383 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7383

def r7384 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7384 : ¬ Reader r7384 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7384

def r7385 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7385 : ¬ Reader r7385 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7385

def r7386 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7386 : ¬ Reader r7386 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7386

def r7387 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7387 : ¬ Reader r7387 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7387

def r7388 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7388 : ¬ Reader r7388 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7388

def r7389 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7389 : ¬ Reader r7389 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7389

def r7390 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7390 : ¬ Reader r7390 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7390

def r7391 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7391 : ¬ Reader r7391 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject7391

def r7392 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7392 : ¬ Reader r7392 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7392

def r7393 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7393 : ¬ Reader r7393 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7393

def r7394 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7394 : ¬ Reader r7394 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7394

def r7395 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7395 : ¬ Reader r7395 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7395

def r7396 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7396 : ¬ Reader r7396 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7396

def r7397 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7397 : ¬ Reader r7397 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7397

def r7398 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7398 : ¬ Reader r7398 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7398

def r7399 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7399 : ¬ Reader r7399 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7399

def r7400 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7400 : ¬ Reader r7400 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7400

def r7401 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7401 : ¬ Reader r7401 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7401

def r7402 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7402 : ¬ Reader r7402 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7402

def r7403 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7403 : ¬ Reader r7403 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7403

def r7404 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7404 : ¬ Reader r7404 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7404

def r7405 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7405 : ¬ Reader r7405 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7405

def r7406 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7406 : ¬ Reader r7406 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7406

def r7407 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7407 : ¬ Reader r7407 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7407

def r7408 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7408 : ¬ Reader r7408 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7408

def r7409 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7409 : ¬ Reader r7409 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7409

def r7410 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7410 : ¬ Reader r7410 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7410

def r7411 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7411 : ¬ Reader r7411 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7411

def r7412 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7412 : ¬ Reader r7412 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7412

def r7413 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7413 : ¬ Reader r7413 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7413

def r7414 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7414 : ¬ Reader r7414 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7414

def r7415 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7415 : ¬ Reader r7415 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7415

def r7416 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7416 : ¬ Reader r7416 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7416

def r7417 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7417 : ¬ Reader r7417 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7417

def r7418 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7418 : ¬ Reader r7418 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7418

def r7419 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7419 : ¬ Reader r7419 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7419

def r7420 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7420 : ¬ Reader r7420 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7420

def r7421 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7421 : ¬ Reader r7421 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7421

def r7422 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7422 : ¬ Reader r7422 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7422

def r7423 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7423 : ¬ Reader r7423 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7423

def r7424 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7424 : ¬ Reader r7424 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7424

def r7425 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7425 : ¬ Reader r7425 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7425

def r7426 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7426 : ¬ Reader r7426 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7426

def r7427 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7427 : ¬ Reader r7427 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7427

def r7428 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7428 : ¬ Reader r7428 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7428

def r7429 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7429 : ¬ Reader r7429 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7429

def r7430 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7430 : ¬ Reader r7430 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7430

def r7431 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7431 : ¬ Reader r7431 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7431

def r7432 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7432 : ¬ Reader r7432 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7432

def r7433 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7433 : ¬ Reader r7433 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject7433

def r7434 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7434 : ¬ Reader r7434 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7434

def r7435 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7435 : ¬ Reader r7435 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7435

def r7436 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7436 : ¬ Reader r7436 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7436

def r7437 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7437 : ¬ Reader r7437 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7437

def r7438 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7438 : ¬ Reader r7438 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7438

def r7439 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7439 : ¬ Reader r7439 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7439

def r7440 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7440 : ¬ Reader r7440 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7440

def r7441 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7441 : ¬ Reader r7441 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7441

def r7442 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7442 : ¬ Reader r7442 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7442

def r7443 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7443 : ¬ Reader r7443 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject7443

def r7444 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7444 : ¬ Reader r7444 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7444

def r7445 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7445 : ¬ Reader r7445 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7445

def r7446 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7446 : ¬ Reader r7446 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7446

def r7447 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7447 : ¬ Reader r7447 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7447

def r7448 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7448 : ¬ Reader r7448 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7448

def r7449 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7449 : ¬ Reader r7449 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7449

def r7450 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7450 : ¬ Reader r7450 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7450

def r7451 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7451 : ¬ Reader r7451 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7451

def r7452 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7452 : ¬ Reader r7452 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7452

def r7453 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7453 : ¬ Reader r7453 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7453

def r7454 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7454 : ¬ Reader r7454 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7454

def r7455 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7455 : ¬ Reader r7455 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7455

def r7456 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7456 : ¬ Reader r7456 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7456

def r7457 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7457 : ¬ Reader r7457 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7457

def r7458 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7458 : ¬ Reader r7458 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7458

def r7459 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7459 : ¬ Reader r7459 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7459

def r7460 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7460 : ¬ Reader r7460 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7460

def r7461 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7461 : ¬ Reader r7461 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7461

def r7462 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7462 : ¬ Reader r7462 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7462

def r7463 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7463 : ¬ Reader r7463 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7463

def r7464 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7464 : ¬ Reader r7464 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7464

def r7465 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7465 : ¬ Reader r7465 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7465

def r7466 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7466 : ¬ Reader r7466 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7466

def r7467 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7467 : ¬ Reader r7467 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7467

def r7468 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7468 : ¬ Reader r7468 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7468

def r7469 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7469 : ¬ Reader r7469 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7469

def r7470 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7470 : ¬ Reader r7470 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7470

def r7471 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7471 : ¬ Reader r7471 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7471

def r7472 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7472 : ¬ Reader r7472 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7472

def r7473 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7473 : ¬ Reader r7473 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7473

def r7474 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7474 : ¬ Reader r7474 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7474

def r7475 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7475 : ¬ Reader r7475 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7475

def r7476 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7476 : ¬ Reader r7476 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7476

def r7477 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7477 : ¬ Reader r7477 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7477

def r7478 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7478 : ¬ Reader r7478 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7478

def r7479 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7479 : ¬ Reader r7479 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7479

def r7480 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7480 : ¬ Reader r7480 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7480

def r7481 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7481 : ¬ Reader r7481 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7481

def r7482 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7482 : ¬ Reader r7482 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7482

def r7483 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7483 : ¬ Reader r7483 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7483

def r7484 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7484 : ¬ Reader r7484 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7484

def r7485 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7485 : ¬ Reader r7485 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7485

def r7486 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7486 : ¬ Reader r7486 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7486

def r7487 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7487 : ¬ Reader r7487 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7487

def r7488 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7488 : ¬ Reader r7488 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7488

def r7489 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7489 : ¬ Reader r7489 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7489

def r7490 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7490 : ¬ Reader r7490 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7490

def r7491 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7491 : ¬ Reader r7491 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7491

def r7492 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7492 : ¬ Reader r7492 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7492

def r7493 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7493 : ¬ Reader r7493 := by
  exact replay_head true [] 7 (0,6) (by decide) (by decide)
#print axioms reject7493

def r7494 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7494 : ¬ Reader r7494 := by
  exact replay_head true [] 7 (0,6) (by decide) (by decide)
#print axioms reject7494

def r7495 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.var 1))
theorem reject7495 : ¬ Reader r7495 := by
  exact replay_head true [] 11 (0,9) (by decide) (by decide)
#print axioms reject7495

def r7497 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7497 : ¬ Reader r7497 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))) (.var 1))), (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7497

def r7498 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7498 : ¬ Reader r7498 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7498

def r7499 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7499 : ¬ Reader r7499 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7499

def r7500 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7500 : ¬ Reader r7500 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7500

def r7501 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7501 : ¬ Reader r7501 := by
  exact replay_head true [] 11 (0,3) (by decide) (by decide)
#print axioms reject7501

def r7502 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7502 : ¬ Reader r7502 := by
  exact replay_head true [] 9 (0,6) (by decide) (by decide)
#print axioms reject7502

def r7503 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7503 : ¬ Reader r7503 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7503

def r7504 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject7504 : ¬ Reader r7504 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7504

def r7505 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7505 : ¬ Reader r7505 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7505

def r7506 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7506 : ¬ Reader r7506 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7506

def r7507 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7507 : ¬ Reader r7507 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.var 1), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7507

def r7508 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7508 : ¬ Reader r7508 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7508

def r7509 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7509 : ¬ Reader r7509 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7509

def r7510 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7510 : ¬ Reader r7510 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7510

def r7511 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7511 : ¬ Reader r7511 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7511

def r7512 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7512 : ¬ Reader r7512 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject7512

def r7513 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7513 : ¬ Reader r7513 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject7513

def r7515 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7515 : ¬ Reader r7515 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7515

def r7516 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7516 : ¬ Reader r7516 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7516

def r7517 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7517 : ¬ Reader r7517 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7517

def r7518 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7518 : ¬ Reader r7518 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7518

def r7519 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7519 : ¬ Reader r7519 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7519

def r7520 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7520 : ¬ Reader r7520 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7520

def r7521 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7521 : ¬ Reader r7521 := by
  exact replay_head true [] 7 (0,3) (by decide) (by decide)
#print axioms reject7521

def r7522 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7522 : ¬ Reader r7522 := by
  exact replay_head true [] 11 (0,5) (by decide) (by decide)
#print axioms reject7522

def r7523 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7523 : ¬ Reader r7523 := by
  exact replay_loop true [] 7 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 0)) [(.app (.app (.var 0) (.var 0)) (.var 0))] [(.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7523

def r7524 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7524 : ¬ Reader r7524 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7524

def r7525 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7525 : ¬ Reader r7525 := by
  exact replay_head true [] 7 (0,5) (by decide) (by decide)
#print axioms reject7525

def r7526 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 1))
theorem reject7526 : ¬ Reader r7526 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7526

def r7527 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7527 : ¬ Reader r7527 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7527

def r7528 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1))
theorem reject7528 : ¬ Reader r7528 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7528

def r7529 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 1))
theorem reject7529 : ¬ Reader r7529 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7529

def r7530 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1))
theorem reject7530 : ¬ Reader r7530 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7530

def r7531 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))) (.var 1))
theorem reject7531 : ¬ Reader r7531 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7531

def r7532 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7532 : ¬ Reader r7532 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))), (.var 0), (.var 0)] [(.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7532

def r7533 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7533 : ¬ Reader r7533 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7533

def r7534 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7534 : ¬ Reader r7534 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7534

def r7535 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7535 : ¬ Reader r7535 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7535

def r7536 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7536 : ¬ Reader r7536 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7536

def r7537 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7537 : ¬ Reader r7537 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7537

def r7538 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7538 : ¬ Reader r7538 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7538

def r7540 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7540 : ¬ Reader r7540 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))), (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7540

def r7541 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7541 : ¬ Reader r7541 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7541

def r7542 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7542 : ¬ Reader r7542 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7542

def r7543 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7543 : ¬ Reader r7543 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7543

def r7544 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7544 : ¬ Reader r7544 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7544

def r7545 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7545 : ¬ Reader r7545 := by
  exact replay_head true [] 11 (0,5) (by decide) (by decide)
#print axioms reject7545

def r7546 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7546 : ¬ Reader r7546 := by
  exact replay_head true [] 13 (0,6) (by decide) (by decide)
#print axioms reject7546

def r7547 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7547 : ¬ Reader r7547 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7547

def r7548 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject7548 : ¬ Reader r7548 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7548

def r7549 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7549 : ¬ Reader r7549 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7549

def r7550 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1))
theorem reject7550 : ¬ Reader r7550 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.var 0), (.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7550

def r7551 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7551 : ¬ Reader r7551 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7551

def r7552 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7552 : ¬ Reader r7552 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7552

def r7553 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7553 : ¬ Reader r7553 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7553

def r7554 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7554 : ¬ Reader r7554 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7554

def r7555 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7555 : ¬ Reader r7555 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7555

def r7556 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7556 : ¬ Reader r7556 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject7556

def r7557 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7557 : ¬ Reader r7557 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject7557

def r7559 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7559 : ¬ Reader r7559 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7559

def r7560 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7560 : ¬ Reader r7560 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7560

def r7561 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7561 : ¬ Reader r7561 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7561

def r7562 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7562 : ¬ Reader r7562 := by
  exact replay_head true [] 3 (0,2) (by decide) (by decide)
#print axioms reject7562

def r7563 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7563 : ¬ Reader r7563 := by
  exact replay_head true [] 9 (0,4) (by decide) (by decide)
#print axioms reject7563

def r7564 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7564 : ¬ Reader r7564 := by
  exact replay_head true [] 11 (0,5) (by decide) (by decide)
#print axioms reject7564

def r7565 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7565 : ¬ Reader r7565 := by
  exact replay_head true [] 7 (0,6) (by decide) (by decide)
#print axioms reject7565

def r7566 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7566 : ¬ Reader r7566 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7566

def r7567 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject7567 : ¬ Reader r7567 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7567

def r7568 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7568 : ¬ Reader r7568 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7568

def r7569 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7569 : ¬ Reader r7569 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7569

def r7570 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7570 : ¬ Reader r7570 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7570

def r7571 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7571 : ¬ Reader r7571 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7571

def r7572 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7572 : ¬ Reader r7572 := by
  exact replay_head true [] 3 (1,4) (by decide) (by decide)
#print axioms reject7572

def r7573 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7573 : ¬ Reader r7573 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7573

def r7574 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7574 : ¬ Reader r7574 := by
  exact replay_head true [] 2 (0,3) (by decide) (by decide)
#print axioms reject7574

def r7575 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7575 : ¬ Reader r7575 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7575

def r7576 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7576 : ¬ Reader r7576 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7576

def r7578 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7578 : ¬ Reader r7578 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7578

def r7579 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7579 : ¬ Reader r7579 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7579

def r7580 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7580 : ¬ Reader r7580 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7580

def r7581 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7581 : ¬ Reader r7581 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7581

def r7582 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7582 : ¬ Reader r7582 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7582

def r7583 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7583 : ¬ Reader r7583 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7583

def r7584 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7584 : ¬ Reader r7584 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject7584

def r7585 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7585 : ¬ Reader r7585 := by
  exact replay_head true [] 11 (0,7) (by decide) (by decide)
#print axioms reject7585

def r7586 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7586 : ¬ Reader r7586 := by
  exact replay_loop true [] 5 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))) (.var 0)) [(.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))) (.var 0)), (.var 0), (.app (.app (.var 0) (.var 0)) (.var 0))] [(.app (.app (.var 1) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7586

def r7587 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7587 : ¬ Reader r7587 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7587

def r7588 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7588 : ¬ Reader r7588 := by
  exact replay_head true [] 5 (0,4) (by decide) (by decide)
#print axioms reject7588

def r7589 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 1))
theorem reject7589 : ¬ Reader r7589 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7589

def r7590 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7590 : ¬ Reader r7590 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7590

def r7591 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1))
theorem reject7591 : ¬ Reader r7591 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7591

def r7592 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 1))
theorem reject7592 : ¬ Reader r7592 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))) [(.var 0), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))] [(.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7592

def r7593 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1))
theorem reject7593 : ¬ Reader r7593 := by
  exact replay_loop true [] 5 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))), (.app (.var 0) (.var 0)), (.var 0), (.var 0)] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7593

def r7595 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7595 : ¬ Reader r7595 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))), (.var 0), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))), (.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7595

def r7596 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7596 : ¬ Reader r7596 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7596

def r7597 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7597 : ¬ Reader r7597 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))), (.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7597

def r7598 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7598 : ¬ Reader r7598 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7598

def r7599 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7599 : ¬ Reader r7599 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7599

def r7600 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7600 : ¬ Reader r7600 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7600

def r7601 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7601 : ¬ Reader r7601 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7601

def r7603 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7603 : ¬ Reader r7603 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7603

def r7604 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7604 : ¬ Reader r7604 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7604

def r7605 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7605 : ¬ Reader r7605 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7605

def r7606 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7606 : ¬ Reader r7606 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7606

def r7607 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7607 : ¬ Reader r7607 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject7607

def r7608 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7608 : ¬ Reader r7608 := by
  exact replay_head true [] 11 (0,5) (by decide) (by decide)
#print axioms reject7608

def r7609 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7609 : ¬ Reader r7609 := by
  exact replay_head true [] 13 (0,6) (by decide) (by decide)
#print axioms reject7609

def r7610 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7610 : ¬ Reader r7610 := by
  exact replay_head true [] 5 (0,4) (by decide) (by decide)
#print axioms reject7610

def r7611 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))) (.var 1))
theorem reject7611 : ¬ Reader r7611 := by
  exact replay_head true [] 13 (0,5) (by decide) (by decide)
#print axioms reject7611

def r7612 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7612 : ¬ Reader r7612 := by
  exact ground_mixed [[1, 1, 2, 0, 0, 1, 2], [1, 1], [1, 1, 2, 1], [1, 1, 1], [1, 1]] [[1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject7612

def r7614 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7614 : ¬ Reader r7614 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))) [(.app (.var 0) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7614

def r7615 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7615 : ¬ Reader r7615 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7615

def r7616 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7616 : ¬ Reader r7616 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))), (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7616

def r7617 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7617 : ¬ Reader r7617 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))), (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7617

def r7618 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7618 : ¬ Reader r7618 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) [(.var 0)] [(.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7618

def r7619 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7619 : ¬ Reader r7619 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7619

def r7620 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7620 : ¬ Reader r7620 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7620

def r7621 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7621 : ¬ Reader r7621 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7621

def r7622 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7622 : ¬ Reader r7622 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject7622

def r7624 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7624 : ¬ Reader r7624 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7624

def r7625 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7625 : ¬ Reader r7625 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7625

def r7626 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7626 : ¬ Reader r7626 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7626

def r7627 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7627 : ¬ Reader r7627 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7627

def r7628 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7628 : ¬ Reader r7628 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7628

def r7629 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7629 : ¬ Reader r7629 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7629

def r7630 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7630 : ¬ Reader r7630 := by
  exact replay_head true [] 7 (0,3) (by decide) (by decide)
#print axioms reject7630

def r7631 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7631 : ¬ Reader r7631 := by
  exact replay_head true [] 11 (0,7) (by decide) (by decide)
#print axioms reject7631

def r7632 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7632 : ¬ Reader r7632 := by
  exact replay_loop true [] 7 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 0)) [(.app (.app (.var 0) (.var 0)) (.var 0))] [(.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 0)), (.var 0), (.app (.app (.var 1) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7632

def r7633 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7633 : ¬ Reader r7633 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7633

def r7634 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7634 : ¬ Reader r7634 := by
  exact replay_head true [] 7 (0,5) (by decide) (by decide)
#print axioms reject7634

def r7635 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 1))
theorem reject7635 : ¬ Reader r7635 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))] [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7635

def r7636 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7636 : ¬ Reader r7636 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7636

def r7637 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1))
theorem reject7637 : ¬ Reader r7637 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7637

def r7638 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 1))
theorem reject7638 : ¬ Reader r7638 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) [(.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))] [(.var 0), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7638

def r7639 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1))
theorem reject7639 : ¬ Reader r7639 := by
  exact replay_loop true [] 7 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))), (.app (.var 0) (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7639

def r7641 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7641 : ¬ Reader r7641 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) [(.var 0), (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7641

def r7642 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7642 : ¬ Reader r7642 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))), (.var 0), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7642

def r7643 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7643 : ¬ Reader r7643 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7643

def r7644 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7644 : ¬ Reader r7644 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7644

def r7645 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7645 : ¬ Reader r7645 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7645

def r7646 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7646 : ¬ Reader r7646 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7646

def r7647 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7647 : ¬ Reader r7647 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7647

def r7649 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7649 : ¬ Reader r7649 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7649

def r7650 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7650 : ¬ Reader r7650 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7650

def r7651 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7651 : ¬ Reader r7651 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7651

def r7652 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7652 : ¬ Reader r7652 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7652

def r7653 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7653 : ¬ Reader r7653 := by
  exact replay_head true [] 5 (0,4) (by decide) (by decide)
#print axioms reject7653

def r7654 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))) (.var 1))
theorem reject7654 : ¬ Reader r7654 := by
  exact replay_head true [] 9 (0,3) (by decide) (by decide)
#print axioms reject7654

def r7655 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7655 : ¬ Reader r7655 := by
  exact replay_head true [] 7 (0,4) (by decide) (by decide)
#print axioms reject7655

def r7656 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7656 : ¬ Reader r7656 := by
  exact replay_head true [] 9 (0,5) (by decide) (by decide)
#print axioms reject7656

def r7657 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7657 : ¬ Reader r7657 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7657

def r7658 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7658 : ¬ Reader r7658 := by
  exact ground_mixed [[1, 1, 2, 0, 0, 1, 2], [1, 1], [1, 1, 2], [1, 1, 1, 1]] [[1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject7658

def r7660 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7660 : ¬ Reader r7660 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))) [(.app (.var 0) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7660

def r7661 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7661 : ¬ Reader r7661 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7661

def r7662 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7662 : ¬ Reader r7662 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7662

def r7663 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7663 : ¬ Reader r7663 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7663

def r7664 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7664 : ¬ Reader r7664 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7664

def r7665 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7665 : ¬ Reader r7665 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject7665

def r7666 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7666 : ¬ Reader r7666 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject7666

def r7667 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7667 : ¬ Reader r7667 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7667

def r7668 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7668 : ¬ Reader r7668 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7668

def r7670 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7670 : ¬ Reader r7670 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7670

def r7671 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7671 : ¬ Reader r7671 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7671

def r7672 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7672 : ¬ Reader r7672 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7672

def r7673 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7673 : ¬ Reader r7673 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7673

def r7674 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7674 : ¬ Reader r7674 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7674

def r7675 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7675 : ¬ Reader r7675 := by
  exact replay_head true [] 11 (0,7) (by decide) (by decide)
#print axioms reject7675

def r7676 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7676 : ¬ Reader r7676 := by
  exact replay_head true [] 13 (0,8) (by decide) (by decide)
#print axioms reject7676

def r7677 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7677 : ¬ Reader r7677 := by
  exact ground_mixed [[1, 1, 2, 0, 0, 1, 2], [1, 1], [1, 1, 1, 2, 2], [1, 1, 1, 2], [1, 1, 1]] [[1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)))) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject7677

def r7679 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7679 : ¬ Reader r7679 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7679

def r7680 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1))
theorem reject7680 : ¬ Reader r7680 := by
  exact replay_loop true [] 9 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))), (.app (.var 0) (.var 0)), (.var 0), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7680

def r7681 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7681 : ¬ Reader r7681 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 0), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7681

def r7682 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7682 : ¬ Reader r7682 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7682

def r7683 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7683 : ¬ Reader r7683 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))), (.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7683

def r7684 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7684 : ¬ Reader r7684 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7684

def r7685 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7685 : ¬ Reader r7685 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7685

def r7686 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7686 : ¬ Reader r7686 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject7686

def r7687 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7687 : ¬ Reader r7687 := by
  exact replay_head true [] 6 (0,6) (by decide) (by decide)
#print axioms reject7687

def r7689 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7689 : ¬ Reader r7689 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7689

def r7690 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7690 : ¬ Reader r7690 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7690

def r7691 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7691 : ¬ Reader r7691 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7691

def r7692 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7692 : ¬ Reader r7692 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7692

def r7693 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))) (.var 1))
theorem reject7693 : ¬ Reader r7693 := by
  exact replay_head true [] 11 (0,3) (by decide) (by decide)
#print axioms reject7693

def r7694 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7694 : ¬ Reader r7694 := by
  exact replay_head true [] 9 (0,4) (by decide) (by decide)
#print axioms reject7694

def r7695 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7695 : ¬ Reader r7695 := by
  exact replay_head true [] 11 (0,5) (by decide) (by decide)
#print axioms reject7695

def r7696 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7696 : ¬ Reader r7696 := by
  exact replay_head true [] 7 (0,6) (by decide) (by decide)
#print axioms reject7696

def r7697 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7697 : ¬ Reader r7697 := by
  exact ground_mixed [[1, 1, 2, 0, 0, 1, 2], [1, 1], [1, 1, 1, 2, 1], [1, 1, 1]] [[1]] (.app (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject7697

def r7699 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7699 : ¬ Reader r7699 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))) [(.app (.var 0) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7699

def r7700 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7700 : ¬ Reader r7700 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7700

def r7701 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7701 : ¬ Reader r7701 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7701

def r7702 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7702 : ¬ Reader r7702 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7702

def r7703 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7703 : ¬ Reader r7703 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) [(.var 0)] [(.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7703

def r7704 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7704 : ¬ Reader r7704 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7704

def r7705 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7705 : ¬ Reader r7705 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject7705

def r7706 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7706 : ¬ Reader r7706 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7706

def r7707 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7707 : ¬ Reader r7707 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7707

def r7709 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7709 : ¬ Reader r7709 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7709

def r7710 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7710 : ¬ Reader r7710 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7710

def r7711 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7711 : ¬ Reader r7711 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7711

def r7712 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7712 : ¬ Reader r7712 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7712

def r7713 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7713 : ¬ Reader r7713 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7713

def r7714 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7714 : ¬ Reader r7714 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7714

def r7715 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7715 : ¬ Reader r7715 := by
  exact replay_head true [] 5 (0,4) (by decide) (by decide)
#print axioms reject7715

def r7716 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7716 : ¬ Reader r7716 := by
  exact replay_head true [] 9 (0,6) (by decide) (by decide)
#print axioms reject7716

def r7717 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7717 : ¬ Reader r7717 := by
  exact replay_loop true [] 5 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 0)) [(.app (.app (.var 0) (.var 0)) (.var 0))] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7717

def r7718 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7718 : ¬ Reader r7718 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7718

def r7719 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7719 : ¬ Reader r7719 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7719

def r7720 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.var 1))
theorem reject7720 : ¬ Reader r7720 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7720

def r7721 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7721 : ¬ Reader r7721 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7721

def r7722 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 1))
theorem reject7722 : ¬ Reader r7722 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7722

def r7723 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.var 1))
theorem reject7723 : ¬ Reader r7723 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) [(.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7723

def r7724 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1))
theorem reject7724 : ¬ Reader r7724 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7724

def r7726 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7726 : ¬ Reader r7726 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))), (.var 0), (.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7726

def r7727 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7727 : ¬ Reader r7727 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))), (.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7727

def r7728 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7728 : ¬ Reader r7728 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7728

def r7729 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7729 : ¬ Reader r7729 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject7729

def r7730 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7730 : ¬ Reader r7730 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject7730

def r7731 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7731 : ¬ Reader r7731 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7731

def r7732 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7732 : ¬ Reader r7732 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject7732

def r7734 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7734 : ¬ Reader r7734 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7734

def r7735 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject7735 : ¬ Reader r7735 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7735

def r7736 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7736 : ¬ Reader r7736 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7736

def r7737 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7737 : ¬ Reader r7737 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7737

def r7738 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7738 : ¬ Reader r7738 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7738

def r7739 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7739 : ¬ Reader r7739 := by
  exact replay_head true [] 9 (0,6) (by decide) (by decide)
#print axioms reject7739

def r7740 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7740 : ¬ Reader r7740 := by
  exact replay_head true [] 11 (0,7) (by decide) (by decide)
#print axioms reject7740

def r7741 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7741 : ¬ Reader r7741 := by
  exact ground_mixed [[1, 1, 2, 0, 0, 1, 2], [1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1]] [[1]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject7741

def r7743 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7743 : ¬ Reader r7743 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7743

def r7744 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1))
theorem reject7744 : ¬ Reader r7744 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) [(.app (.var 0) (.var 0)), (.var 0)] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7744

def r7745 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7745 : ¬ Reader r7745 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 0), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7745

def r7746 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7746 : ¬ Reader r7746 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7746

def r7747 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7747 : ¬ Reader r7747 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 0)] [(.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7747

def r7748 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7748 : ¬ Reader r7748 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject7748

def r7749 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7749 : ¬ Reader r7749 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject7749

def r7750 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7750 : ¬ Reader r7750 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7750

def r7751 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7751 : ¬ Reader r7751 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7751

def r7753 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7753 : ¬ Reader r7753 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7753

def r7754 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
theorem reject7754 : ¬ Reader r7754 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7754

def r7755 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7755 : ¬ Reader r7755 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7755

def r7756 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject7756 : ¬ Reader r7756 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7756

def r7757 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
theorem reject7757 : ¬ Reader r7757 := by
  exact replay_head true [] 7 (0,5) (by decide) (by decide)
#print axioms reject7757

def r7758 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject7758 : ¬ Reader r7758 := by
  exact replay_head true [] 9 (0,6) (by decide) (by decide)
#print axioms reject7758

def r7759 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject7759 : ¬ Reader r7759 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7759

def r7760 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject7760 : ¬ Reader r7760 := by
  exact ground_mixed [[1, 1, 2, 0, 0, 1, 2], [1, 1], [1, 1, 1, 1, 1]] [[1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 0))))] (by decide) (by decide)
#print axioms reject7760

def r7762 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.var 1))
theorem reject7762 : ¬ Reader r7762 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0))) [(.app (.var 0) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7762

def r7763 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.var 1))
theorem reject7763 : ¬ Reader r7763 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7763

def r7764 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7764 : ¬ Reader r7764 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7764

def r7765 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.var 1))
theorem reject7765 : ¬ Reader r7765 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7765

def r7766 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.var 1))
theorem reject7766 : ¬ Reader r7766 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7766

def r7767 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1))
theorem reject7767 : ¬ Reader r7767 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject7767

def r7768 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject7768 : ¬ Reader r7768 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject7768

def r7769 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 1))
theorem reject7769 : ¬ Reader r7769 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7769

def r7770 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject7770 : ¬ Reader r7770 := by
  exact replay_head true [] 4 (0,6) (by decide) (by decide)
#print axioms reject7770

def r7772 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject7772 : ¬ Reader r7772 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7772

def r7773 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7773 : ¬ Reader r7773 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7773

def r7774 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7774 : ¬ Reader r7774 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7774

def r7775 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7775 : ¬ Reader r7775 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7775

def r7776 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7776 : ¬ Reader r7776 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7776

def r7777 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7777 : ¬ Reader r7777 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7777

def r7778 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7778 : ¬ Reader r7778 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7778

def r7779 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7779 : ¬ Reader r7779 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7779

def r7780 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7780 : ¬ Reader r7780 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7780

def r7781 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7781 : ¬ Reader r7781 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7781

def r7782 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7782 : ¬ Reader r7782 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7782

def r7783 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7783 : ¬ Reader r7783 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7783

def r7784 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7784 : ¬ Reader r7784 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7784

def r7785 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7785 : ¬ Reader r7785 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7785

def r7786 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7786 : ¬ Reader r7786 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7786

def r7787 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject7787 : ¬ Reader r7787 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7787

def r7788 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7788 : ¬ Reader r7788 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7788

def r7789 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7789 : ¬ Reader r7789 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7789

def r7790 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7790 : ¬ Reader r7790 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7790

def r7791 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7791 : ¬ Reader r7791 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7791

def r7792 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7792 : ¬ Reader r7792 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7792

def r7793 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1))
theorem reject7793 : ¬ Reader r7793 := by
  exact replay_head true [] 3 (0,3) (by decide) (by decide)
#print axioms reject7793

def r7794 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7794 : ¬ Reader r7794 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7794

def r7795 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7795 : ¬ Reader r7795 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7795

def r7796 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7796 : ¬ Reader r7796 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7796

def r7797 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7797 : ¬ Reader r7797 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7797

def r7798 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7798 : ¬ Reader r7798 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject7798

def r7799 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7799 : ¬ Reader r7799 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7799

def r7800 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7800 : ¬ Reader r7800 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7800

def r7801 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7801 : ¬ Reader r7801 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject7801

def r7802 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7802 : ¬ Reader r7802 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7802

def r7803 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7803 : ¬ Reader r7803 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7803

def r7804 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7804 : ¬ Reader r7804 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7804

def r7805 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7805 : ¬ Reader r7805 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7805

def r7806 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7806 : ¬ Reader r7806 := by
  exact replay_head true [] 7 (0,6) (by decide) (by decide)
#print axioms reject7806

def r7807 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7807 : ¬ Reader r7807 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7807

def r7808 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7808 : ¬ Reader r7808 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0))), (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7808

def r7809 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7809 : ¬ Reader r7809 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7809

def r7810 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7810 : ¬ Reader r7810 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7810

def r7811 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7811 : ¬ Reader r7811 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7811

def r7812 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7812 : ¬ Reader r7812 := by
  exact replay_head true [] 7 (0,6) (by decide) (by decide)
#print axioms reject7812

def r7813 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7813 : ¬ Reader r7813 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7813

def r7814 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7814 : ¬ Reader r7814 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7814

def r7815 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7815 : ¬ Reader r7815 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7815

def r7816 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7816 : ¬ Reader r7816 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0))), (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7816

def r7817 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7817 : ¬ Reader r7817 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7817

def r7818 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7818 : ¬ Reader r7818 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7818

def r7819 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7819 : ¬ Reader r7819 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7819

def r7820 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7820 : ¬ Reader r7820 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7820

def r7821 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7821 : ¬ Reader r7821 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7821

def r7822 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7822 : ¬ Reader r7822 := by
  exact replay_head true [[1, 1], [1, 1, 2, 2, 1, 2], [1, 1, 2, 2, 1, 2, 0, 2], [1, 1, 2, 2, 1, 2, 0], [1, 1, 2, 2, 1, 2, 0, 0, 2], [1, 1, 2, 2, 1, 2, 0, 0], [1, 1, 2, 2, 1], [1, 1, 2, 2, 1, 0, 2], [1, 1, 2, 2], [1, 1, 2, 2], [1, 1, 2, 2, 0, 2, 2, 2], [1, 1, 2, 2, 0, 2, 2], [1, 1, 2, 2, 0, 2], [1, 1, 2, 2, 0], [1, 1, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7822

def r7823 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7823 : ¬ Reader r7823 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7823

def r7824 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7824 : ¬ Reader r7824 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7824

def r7825 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7825 : ¬ Reader r7825 := by
  exact replay_head true [[1, 1], [1, 1, 2, 2, 1, 1], [1, 1, 2, 2, 1, 1, 0, 2], [1, 1, 2, 2, 1, 1, 0], [1, 1, 2, 2, 1, 1, 0, 0, 2], [1, 1, 2, 2, 1, 1, 0, 0], [1, 1, 2, 2, 1], [1, 1, 2, 2, 1, 0, 2, 2, 2], [1, 1, 2, 2], [1, 1, 2, 2, 2, 2], [1, 1, 2, 2, 2, 2, 0, 2], [1, 1, 2, 2, 2, 2, 0], [1, 1, 2, 2, 2], [1, 1, 2, 2, 2, 0, 2], [1, 1, 2, 2, 2, 0], [1, 1, 2, 2], [1, 1, 2, 2, 0, 2], [1, 1, 2, 2, 0], [1, 1, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7825

def r7826 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7826 : ¬ Reader r7826 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7826

def r7827 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7827 : ¬ Reader r7827 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7827

def r7828 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7828 : ¬ Reader r7828 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7828

def r7829 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7829 : ¬ Reader r7829 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7829

def r7830 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7830 : ¬ Reader r7830 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7830

def r7831 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7831 : ¬ Reader r7831 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7831

def r7832 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7832 : ¬ Reader r7832 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7832

def r7833 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7833 : ¬ Reader r7833 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7833

def r7834 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7834 : ¬ Reader r7834 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7834

def r7835 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7835 : ¬ Reader r7835 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7835

def r7836 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7836 : ¬ Reader r7836 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7836

def r7837 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7837 : ¬ Reader r7837 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7837

def r7838 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7838 : ¬ Reader r7838 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject7838

def r7839 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7839 : ¬ Reader r7839 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7839

def r7840 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7840 : ¬ Reader r7840 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7840

def r7841 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7841 : ¬ Reader r7841 := by
  exact replay_head true [] 5 (0,3) (by decide) (by decide)
#print axioms reject7841

def r7842 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7842 : ¬ Reader r7842 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7842

def r7843 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7843 : ¬ Reader r7843 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7843

def r7844 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7844 : ¬ Reader r7844 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject7844

def r7845 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7845 : ¬ Reader r7845 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7845

def r7846 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7846 : ¬ Reader r7846 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7846

def r7847 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7847 : ¬ Reader r7847 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7847

def r7848 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7848 : ¬ Reader r7848 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7848

def r7849 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7849 : ¬ Reader r7849 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7849

def r7850 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7850 : ¬ Reader r7850 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7850

def r7851 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7851 : ¬ Reader r7851 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7851

def r7852 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7852 : ¬ Reader r7852 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7852

def r7853 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7853 : ¬ Reader r7853 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7853

def r7854 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7854 : ¬ Reader r7854 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7854

def r7855 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7855 : ¬ Reader r7855 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7855

def r7856 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7856 : ¬ Reader r7856 := by
  exact replay_head true [[1, 1], [1, 1, 2, 2, 1], [1, 1, 2, 2, 1, 0, 2], [1, 1, 2, 2], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2], [1, 1, 2, 1, 0], [1, 1, 2, 1, 0, 0, 2], [1, 1, 2, 1, 0, 0], [1, 1, 2, 2], [1, 1, 2, 2, 0, 2], [1, 1, 2, 2, 0], [1, 1, 2], [1, 1, 2, 0, 2, 2, 2], [1, 1, 2, 0, 2, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7856

def r7857 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7857 : ¬ Reader r7857 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7857

def r7858 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7858 : ¬ Reader r7858 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7858

def r7859 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7859 : ¬ Reader r7859 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7859

def r7860 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7860 : ¬ Reader r7860 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7860

def r7861 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7861 : ¬ Reader r7861 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7861

def r7862 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7862 : ¬ Reader r7862 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7862

def r7863 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7863 : ¬ Reader r7863 := by
  exact replay_head true [] 7 (0,6) (by decide) (by decide)
#print axioms reject7863

def r7864 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7864 : ¬ Reader r7864 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7864

def r7865 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7865 : ¬ Reader r7865 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject7865

def r7866 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7866 : ¬ Reader r7866 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7866

def r7867 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7867 : ¬ Reader r7867 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7867

def r7868 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7868 : ¬ Reader r7868 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7868

def r7869 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7869 : ¬ Reader r7869 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7869

def r7870 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7870 : ¬ Reader r7870 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7870

def r7871 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7871 : ¬ Reader r7871 := by
  exact replay_head true [[1, 1], [1, 1, 2, 1, 2], [1, 1, 2, 1, 2, 0, 2], [1, 1, 2, 1, 2, 0], [1, 1, 2, 1, 2, 0, 0, 2], [1, 1, 2, 1, 2, 0, 0], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2], [1, 1, 2, 1, 0], [1, 1, 2, 1, 0, 0, 2, 2, 2], [1, 1, 2, 1, 0, 0, 2, 2], [1, 1, 2, 1, 0, 0, 2], [1, 1, 2, 1, 0, 0], [1, 1, 2], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,3) (by decide) (by decide)
#print axioms reject7871

def r7872 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7872 : ¬ Reader r7872 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7872

def r7873 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7873 : ¬ Reader r7873 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7873

def r7874 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7874 : ¬ Reader r7874 := by
  exact replay_head true [[1, 1], [1, 1, 2, 2], [1, 1, 2, 1, 2], [1, 1, 2, 1, 2, 0, 2], [1, 1, 2, 1, 2, 0], [1, 1, 2, 1, 2, 0, 0, 2], [1, 1, 2, 1, 2, 0, 0], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2], [1, 1, 2, 1, 0], [1, 1, 2, 1, 0, 0, 2, 2, 2], [1, 1, 2, 1, 0, 0, 2, 2], [1, 1, 2, 1, 0, 0, 2], [1, 1, 2, 1, 0, 0], [1, 1, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2], [1, 1, 2, 0, 2, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7874

def r7875 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7875 : ¬ Reader r7875 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7875

def r7876 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7876 : ¬ Reader r7876 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7876

def r7877 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7877 : ¬ Reader r7877 := by
  exact replay_head true [[1, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1, 1, 0, 2], [1, 1, 2, 1, 1, 0], [1, 1, 2, 1, 1, 0, 0, 2], [1, 1, 2, 1, 1, 0, 0], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2, 2, 2], [1, 1, 2, 1, 0, 2, 2], [1, 1, 2, 1, 0, 2, 2, 0, 2], [1, 1, 2, 1, 0, 2, 2, 0], [1, 1, 2, 1, 0, 2], [1, 1, 2, 1, 0, 2, 0, 2], [1, 1, 2, 1, 0, 2, 0], [1, 1, 2, 1, 0], [1, 1, 2, 1, 0, 0, 2], [1, 1, 2, 1, 0, 0], [1, 1, 2], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,3) (by decide) (by decide)
#print axioms reject7877

def r7878 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7878 : ¬ Reader r7878 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7878

def r7879 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7879 : ¬ Reader r7879 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7879

def r7880 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7880 : ¬ Reader r7880 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7880

def r7881 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7881 : ¬ Reader r7881 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7881

def r7882 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7882 : ¬ Reader r7882 := by
  exact replay_head true [[1, 1], [1, 1, 2, 2], [1, 1, 2, 1, 1], [1, 1, 2, 1, 1, 0, 2], [1, 1, 2, 1, 1, 0], [1, 1, 2, 1, 1, 0, 0, 2], [1, 1, 2, 1, 1, 0, 0], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2, 2, 2], [1, 1, 2, 1, 0, 2, 2], [1, 1, 2, 1, 0, 2, 2, 0, 2], [1, 1, 2, 1, 0, 2, 2, 0], [1, 1, 2, 1, 0, 2], [1, 1, 2, 1, 0, 2, 0, 2], [1, 1, 2, 1, 0, 2, 0], [1, 1, 2, 1, 0], [1, 1, 2, 1, 0, 0, 2], [1, 1, 2, 1, 0, 0], [1, 1, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2], [1, 1, 2, 0, 2, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7882

def r7883 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7883 : ¬ Reader r7883 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0)), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7883

def r7884 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7884 : ¬ Reader r7884 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7884

def r7885 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7885 : ¬ Reader r7885 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0)), (.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7885

def r7886 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7886 : ¬ Reader r7886 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7886

def r7887 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7887 : ¬ Reader r7887 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7887

def r7888 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7888 : ¬ Reader r7888 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7888

def r7889 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7889 : ¬ Reader r7889 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7889

def r7890 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7890 : ¬ Reader r7890 := by
  exact replay_head true [] 3 (0,4) (by decide) (by decide)
#print axioms reject7890

def r7891 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7891 : ¬ Reader r7891 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7891

def r7892 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7892 : ¬ Reader r7892 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7892

def r7893 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7893 : ¬ Reader r7893 := by
  exact replay_head true [] 3 (0,5) (by decide) (by decide)
#print axioms reject7893

def r7894 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7894 : ¬ Reader r7894 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7894

def r7895 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7895 : ¬ Reader r7895 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7895

def r7896 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7896 : ¬ Reader r7896 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7896

def r7897 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7897 : ¬ Reader r7897 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7897

def r7898 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7898 : ¬ Reader r7898 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7898

def r7899 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7899 : ¬ Reader r7899 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject7899

def r7900 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7900 : ¬ Reader r7900 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7900

def r7901 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7901 : ¬ Reader r7901 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject7901

def r7902 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7902 : ¬ Reader r7902 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7902

def r7903 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7903 : ¬ Reader r7903 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7903

def r7904 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7904 : ¬ Reader r7904 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7904

def r7905 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7905 : ¬ Reader r7905 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7905

def r7906 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7906 : ¬ Reader r7906 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7906

def r7907 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7907 : ¬ Reader r7907 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject7907

def r7908 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7908 : ¬ Reader r7908 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7908

def r7909 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7909 : ¬ Reader r7909 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7909

def r7910 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7910 : ¬ Reader r7910 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7910

def r7911 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7911 : ¬ Reader r7911 := by
  exact replay_head true [[1, 1], [1, 1, 2, 1, 1, 2], [1, 1, 2, 1, 1, 2, 0, 2], [1, 1, 2, 1, 1, 2, 0], [1, 1, 2, 1, 1, 2, 0, 0, 2], [1, 1, 2, 1, 1, 2, 0, 0], [1, 1, 2, 1, 1], [1, 1, 2, 1, 1, 0, 2], [1, 1, 2, 1], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2, 2, 2], [1, 1, 2, 1, 0, 2, 2], [1, 1, 2, 1, 0, 2], [1, 1, 2, 1, 0], [1, 1, 2], [1, 1], [1]] 0 (0,3) (by decide) (by decide)
#print axioms reject7911

def r7912 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7912 : ¬ Reader r7912 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7912

def r7913 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7913 : ¬ Reader r7913 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7913

def r7914 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7914 : ¬ Reader r7914 := by
  exact replay_head true [[1, 1], [1, 1, 2, 1, 1, 1], [1, 1, 2, 1, 1, 1, 0, 2], [1, 1, 2, 1, 1, 1, 0], [1, 1, 2, 1, 1, 1, 0, 0, 2], [1, 1, 2, 1, 1, 1, 0, 0], [1, 1, 2, 1, 1], [1, 1, 2, 1, 1, 0, 2, 2, 2], [1, 1, 2, 1], [1, 1, 2, 1, 2, 2], [1, 1, 2, 1, 2, 2, 0, 2], [1, 1, 2, 1, 2, 2, 0], [1, 1, 2, 1, 2], [1, 1, 2, 1, 2, 0, 2], [1, 1, 2, 1, 2, 0], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2], [1, 1, 2, 1, 0], [1, 1, 2], [1, 1], [1]] 0 (0,3) (by decide) (by decide)
#print axioms reject7914

def r7915 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7915 : ¬ Reader r7915 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7915

def r7916 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7916 : ¬ Reader r7916 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7916

def r7917 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7917 : ¬ Reader r7917 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 1), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7917

def r7918 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7918 : ¬ Reader r7918 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7918

def r7919 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7919 : ¬ Reader r7919 := by
  exact replay_head true [[1, 1], [1, 1, 2, 1, 2, 2], [1, 1, 2, 1, 2, 2, 0, 2], [1, 1, 2, 1, 2, 2, 0], [1, 1, 2, 1, 2, 2, 0, 0, 2], [1, 1, 2, 1, 2, 2, 0, 0], [1, 1, 2, 1, 2], [1, 1, 2, 1, 2, 0, 2], [1, 1, 2, 1, 2, 0], [1, 1, 2, 1, 2, 0, 0, 2, 2, 2], [1, 1, 2, 1, 2, 0, 0, 2, 2], [1, 1, 2, 1, 2, 0, 0, 2], [1, 1, 2, 1, 2, 0, 0], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2], [1, 1, 2], [1, 1, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2], [1, 1, 2, 0, 2, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7919

def r7920 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7920 : ¬ Reader r7920 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))), (.var 0), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7920

def r7921 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7921 : ¬ Reader r7921 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7921

def r7922 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7922 : ¬ Reader r7922 := by
  exact replay_head true [[1, 1], [1, 1, 2, 1, 2, 1], [1, 1, 2, 1, 2, 1, 0, 2], [1, 1, 2, 1, 2, 1, 0], [1, 1, 2, 1, 2, 1, 0, 0, 2], [1, 1, 2, 1, 2, 1, 0, 0], [1, 1, 2, 1, 2], [1, 1, 2, 1, 2, 0, 2, 2, 2], [1, 1, 2, 1, 2, 0, 2, 2], [1, 1, 2, 1, 2, 0, 2, 2, 0, 2], [1, 1, 2, 1, 2, 0, 2, 2, 0], [1, 1, 2, 1, 2, 0, 2], [1, 1, 2, 1, 2, 0, 2, 0, 2], [1, 1, 2, 1, 2, 0, 2, 0], [1, 1, 2, 1, 2, 0], [1, 1, 2, 1, 2, 0, 0, 2], [1, 1, 2, 1, 2, 0, 0], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2], [1, 1, 2], [1, 1, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2, 2], [1, 1, 2, 0, 2, 2, 2], [1, 1, 2, 0, 2, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7922

def r7923 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7923 : ¬ Reader r7923 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))), (.var 0), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7923

def r7924 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7924 : ¬ Reader r7924 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7924

def r7925 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7925 : ¬ Reader r7925 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7925

def r7926 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7926 : ¬ Reader r7926 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7926

def r7927 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7927 : ¬ Reader r7927 := by
  exact replay_head true [[1, 1], [1, 1, 2, 1, 1], [1, 1, 2, 1, 1, 0, 2], [1, 1, 2, 1, 1, 0], [1, 1, 2, 1, 1, 0, 0, 2], [1, 1, 2, 1, 1, 0, 0], [1, 1, 2, 1, 2], [1, 1, 2, 1, 2, 0, 2], [1, 1, 2, 1, 2, 0], [1, 1, 2, 1, 2, 0, 0, 2], [1, 1, 2, 1, 2, 0, 0], [1, 1, 2, 1], [1, 1, 2, 1, 0, 2, 2, 2], [1, 1, 2], [1, 1, 2, 2, 2], [1, 1, 2, 2, 2, 0, 2, 2, 2], [1, 1, 2, 2, 2, 0, 2, 2], [1, 1, 2, 2, 2, 0, 2], [1, 1, 2, 2, 2, 0], [1, 1, 2, 2], [1, 1, 2, 2, 0, 2, 2, 2], [1, 1, 2, 2, 0, 2, 2], [1, 1, 2, 2, 0, 2], [1, 1, 2, 2, 0], [1, 1, 2], [1, 1, 2, 0, 2, 2, 2], [1, 1, 2, 0, 2, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0], [1, 1], [1, 1, 0, 2], [1, 1, 0], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7927

def r7928 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))
theorem reject7928 : ¬ Reader r7928 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) [] [(.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7928

def r7929 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))
theorem reject7929 : ¬ Reader r7929 := by
  exact replay_head true [] 3 (1,2) (by decide) (by decide)
#print axioms reject7929

def r7930 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1))
theorem reject7930 : ¬ Reader r7930 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7930

def r7931 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1))
theorem reject7931 : ¬ Reader r7931 := by
  exact replay_head true [] 3 (1,3) (by decide) (by decide)
#print axioms reject7931

def r7932 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject7932 : ¬ Reader r7932 := by
  exact replay_head true [[1, 1], [1, 1], [1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1], [1, 1, 1], [1, 1], [1, 1], [1], [1, 1], [1]] 0 (0,2) (by decide) (by decide)
#print axioms reject7932
end Blc.HandlerLet.Exceptions5_12
