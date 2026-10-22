import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.NestedExceptions08
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r2400 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2400 : ¬ Reader r2400 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2400

def r2401 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2401 : ¬ Reader r2401 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2401

def r2402 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2402 : ¬ Reader r2402 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2402

def r2403 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2403 : ¬ Reader r2403 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2403

def r2404 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2404 : ¬ Reader r2404 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2404

def r2405 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2405 : ¬ Reader r2405 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2405

def r2406 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2406 : ¬ Reader r2406 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2406

def r2407 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2407 : ¬ Reader r2407 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2407

def r2408 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2408 : ¬ Reader r2408 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2408

def r2409 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2409 : ¬ Reader r2409 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2409

def r2410 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2410 : ¬ Reader r2410 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2410

def r2411 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2411 : ¬ Reader r2411 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2411

def r2412 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2412 : ¬ Reader r2412 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2412

def r2413 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2413 : ¬ Reader r2413 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2413

def r2414 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2414 : ¬ Reader r2414 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2414

def r2415 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2415 : ¬ Reader r2415 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2415

def r2416 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2416 : ¬ Reader r2416 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2416

def r2417 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2417 : ¬ Reader r2417 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2417

def r2418 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2418 : ¬ Reader r2418 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2418

def r2419 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2419 : ¬ Reader r2419 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2419

def r2420 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2420 : ¬ Reader r2420 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2420

def r2421 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2421 : ¬ Reader r2421 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2421

def r2422 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2422 : ¬ Reader r2422 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2422

def r2423 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2423 : ¬ Reader r2423 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2423

def r2424 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2424 : ¬ Reader r2424 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2424

def r2425 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2425 : ¬ Reader r2425 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2425

def r2426 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2426 : ¬ Reader r2426 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2426

def r2427 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2427 : ¬ Reader r2427 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2427

def r2428 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2428 : ¬ Reader r2428 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2428

def r2429 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2429 : ¬ Reader r2429 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2429

def r2430 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2430 : ¬ Reader r2430 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2430

def r2431 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject2431 : ¬ Reader r2431 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2431

def r2432 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2432 : ¬ Reader r2432 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2432

def r2433 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject2433 : ¬ Reader r2433 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2433

def r2434 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2434 : ¬ Reader r2434 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2434

def r2435 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject2435 : ¬ Reader r2435 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2435

def r2436 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2436 : ¬ Reader r2436 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2436

def r2437 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject2437 : ¬ Reader r2437 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2437

def r2438 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2438 : ¬ Reader r2438 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2438

def r2439 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject2439 : ¬ Reader r2439 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2439

def r2440 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2440 : ¬ Reader r2440 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2440

def r2441 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject2441 : ¬ Reader r2441 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2441

def r2442 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2442 : ¬ Reader r2442 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2442

def r2443 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2443 : ¬ Reader r2443 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2443

def r2444 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2444 : ¬ Reader r2444 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2444

def r2445 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2445 : ¬ Reader r2445 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2445

def r2446 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2446 : ¬ Reader r2446 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2446

def r2447 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2447 : ¬ Reader r2447 := by
  exact replay_loop true [] 4 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2447

def r2448 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2448 : ¬ Reader r2448 := by
  exact replay_loop true [] 4 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2448

def r2449 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2449 : ¬ Reader r2449 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2449

def r2450 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2450 : ¬ Reader r2450 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2450

def r2451 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2451 : ¬ Reader r2451 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2451

def r2452 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2452 : ¬ Reader r2452 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2452

def r2453 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2453 : ¬ Reader r2453 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2453

def r2454 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2454 : ¬ Reader r2454 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2454

def r2455 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2455 : ¬ Reader r2455 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2455

def r2456 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2456 : ¬ Reader r2456 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2456

def r2457 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2457 : ¬ Reader r2457 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2457

def r2458 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2458 : ¬ Reader r2458 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2458

def r2459 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2459 : ¬ Reader r2459 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2459

def r2460 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2460 : ¬ Reader r2460 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2460

def r2461 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2461 : ¬ Reader r2461 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2461

def r2462 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2462 : ¬ Reader r2462 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2462

def r2463 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2463 : ¬ Reader r2463 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2463

def r2464 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2464 : ¬ Reader r2464 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2464

def r2465 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2465 : ¬ Reader r2465 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2465

def r2466 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2466 : ¬ Reader r2466 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2466

def r2467 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2467 : ¬ Reader r2467 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2467

def r2468 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2468 : ¬ Reader r2468 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2468

def r2469 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2469 : ¬ Reader r2469 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2469

def r2470 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2470 : ¬ Reader r2470 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2470

def r2471 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2471 : ¬ Reader r2471 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2471

def r2472 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2472 : ¬ Reader r2472 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2472

def r2473 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2473 : ¬ Reader r2473 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2473

def r2474 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2474 : ¬ Reader r2474 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2474

def r2475 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2475 : ¬ Reader r2475 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2475

def r2476 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2476 : ¬ Reader r2476 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2476

def r2477 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2477 : ¬ Reader r2477 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2477

def r2478 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2478 : ¬ Reader r2478 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2478

def r2479 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2479 : ¬ Reader r2479 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2479

def r2480 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2480 : ¬ Reader r2480 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2480

def r2481 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2481 : ¬ Reader r2481 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2481

def r2482 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2482 : ¬ Reader r2482 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2482

def r2483 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2483 : ¬ Reader r2483 := by
  exact replay_loop true [] 6 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2483

def r2484 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2484 : ¬ Reader r2484 := by
  exact replay_loop true [] 6 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2484

def r2485 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2485 : ¬ Reader r2485 := by
  exact replay_loop true [] 8 6 (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2485

def r2486 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2486 : ¬ Reader r2486 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2486

def r2487 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2487 : ¬ Reader r2487 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2487

def r2488 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2488 : ¬ Reader r2488 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2488

def r2489 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2489 : ¬ Reader r2489 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2489

def r2490 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2490 : ¬ Reader r2490 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2490

def r2491 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2491 : ¬ Reader r2491 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2491

def r2492 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2492 : ¬ Reader r2492 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2492

def r2493 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2493 : ¬ Reader r2493 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2493

def r2494 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2494 : ¬ Reader r2494 := by
  exact replay_loop true [] 2 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2494

def r2495 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2495 : ¬ Reader r2495 := by
  exact replay_loop true [] 2 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2495

def r2496 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2496 : ¬ Reader r2496 := by
  exact replay_loop true [] 2 6 (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2496

def r2497 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2497 : ¬ Reader r2497 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2497

def r2498 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2498 : ¬ Reader r2498 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2498

def r2499 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2499 : ¬ Reader r2499 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2499

def r2500 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2500 : ¬ Reader r2500 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2500

def r2501 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2501 : ¬ Reader r2501 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2501

def r2502 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2502 : ¬ Reader r2502 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2502

def r2503 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2503 : ¬ Reader r2503 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2503

def r2504 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2504 : ¬ Reader r2504 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2504

def r2505 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2505 : ¬ Reader r2505 := by
  exact replay_loop true [] 6 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2505

def r2506 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2506 : ¬ Reader r2506 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2506

def r2507 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2507 : ¬ Reader r2507 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2507

def r2508 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2508 : ¬ Reader r2508 := by
  exact replay_loop true [] 2 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2508

def r2509 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2509 : ¬ Reader r2509 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2509

def r2510 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2510 : ¬ Reader r2510 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2510

def r2511 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2511 : ¬ Reader r2511 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2511

def r2512 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject2512 : ¬ Reader r2512 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2512

def r2513 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject2513 : ¬ Reader r2513 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2513

def r2514 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject2514 : ¬ Reader r2514 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2514

def r2515 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject2515 : ¬ Reader r2515 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2515

def r2516 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject2516 : ¬ Reader r2516 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2516

def r2517 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject2517 : ¬ Reader r2517 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2517

def r2518 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2518 : ¬ Reader r2518 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2518

def r2519 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject2519 : ¬ Reader r2519 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2519

def r2520 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2520 : ¬ Reader r2520 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2520

def r2521 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject2521 : ¬ Reader r2521 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2521

def r2522 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject2522 : ¬ Reader r2522 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2522

def r2523 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject2523 : ¬ Reader r2523 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2523

def r2524 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject2524 : ¬ Reader r2524 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2524

def r2525 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0))
theorem reject2525 : ¬ Reader r2525 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2525

def r2526 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1))
theorem reject2526 : ¬ Reader r2526 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2526

def r2527 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0))
theorem reject2527 : ¬ Reader r2527 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2527

def r2528 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1))
theorem reject2528 : ¬ Reader r2528 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2528

def r2529 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2529 : ¬ Reader r2529 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2529

def r2530 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2530 : ¬ Reader r2530 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2530

def r2531 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2531 : ¬ Reader r2531 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2531

def r2532 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2532 : ¬ Reader r2532 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2532

def r2533 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2533 : ¬ Reader r2533 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2533

def r2534 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2534 : ¬ Reader r2534 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2534

def r2535 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2535 : ¬ Reader r2535 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2535

def r2536 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2536 : ¬ Reader r2536 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2536

def r2537 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2537 : ¬ Reader r2537 := by
  exact replay_loop true [] 2 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2537

def r2538 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2538 : ¬ Reader r2538 := by
  exact replay_loop true [] 2 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2538

def r2539 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2539 : ¬ Reader r2539 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2539

def r2540 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2540 : ¬ Reader r2540 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2540

def r2541 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2541 : ¬ Reader r2541 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2541

def r2542 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2542 : ¬ Reader r2542 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2542

def r2543 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2543 : ¬ Reader r2543 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2543

def r2544 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2544 : ¬ Reader r2544 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2544

def r2545 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2545 : ¬ Reader r2545 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2545

def r2546 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2546 : ¬ Reader r2546 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2546

def r2547 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2547 : ¬ Reader r2547 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2547

def r2548 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2548 : ¬ Reader r2548 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2548

def r2549 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2549 : ¬ Reader r2549 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2549

def r2550 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2550 : ¬ Reader r2550 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2550

def r2551 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2551 : ¬ Reader r2551 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))))] [(.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2551

def r2552 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2552 : ¬ Reader r2552 := by
  exact replay_loop true [] 2 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2552

def r2553 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2553 : ¬ Reader r2553 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2553

def r2554 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2554 : ¬ Reader r2554 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2554

def r2555 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject2555 : ¬ Reader r2555 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2555

def r2556 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject2556 : ¬ Reader r2556 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.var 1)) (.app (.lam (.var 1)) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2556

def r2557 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject2557 : ¬ Reader r2557 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.var 1)) (.app (.lam (.var 1)) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2557

def r2558 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject2558 : ¬ Reader r2558 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.var 1)) (.app (.lam (.var 1)) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2558

def r2559 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject2559 : ¬ Reader r2559 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.var 1)) (.app (.lam (.var 1)) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2559

def r2560 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2560 : ¬ Reader r2560 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.var 1)) (.lam (.var 1))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2560

def r2561 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2561 : ¬ Reader r2561 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.var 1)) (.lam (.var 1))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2561

def r2562 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2562 : ¬ Reader r2562 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.var 1)) (.lam (.var 1))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2562

def r2563 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2563 : ¬ Reader r2563 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.app (.lam (.var 1)) (.lam (.var 1))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2563

def r2564 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2564 : ¬ Reader r2564 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.lam (.var 1)) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2564

def r2565 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2565 : ¬ Reader r2565 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.app (.lam (.var 1)) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2565

def r2566 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2566 : ¬ Reader r2566 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.app (.lam (.var 1)) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2566

def r2567 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject2567 : ¬ Reader r2567 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 1)), (.app (.lam (.var 1)) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2567

def r2568 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2568 : ¬ Reader r2568 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.var 1)) (.lam (.var 1))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2568

def r2569 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2569 : ¬ Reader r2569 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.var 1)) (.lam (.var 1))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2569

def r2570 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2570 : ¬ Reader r2570 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.var 1)) (.lam (.var 1))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2570

def r2571 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2571 : ¬ Reader r2571 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.var 1)) (.lam (.var 1))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2571

def r2572 : Term := (.app (.app (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2572 : ¬ Reader r2572 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2572

def r2573 : Term := (.app (.app (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2573 : ¬ Reader r2573 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2573

def r2574 : Term := (.app (.app (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2574 : ¬ Reader r2574 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.var 1)), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2574

def r2575 : Term := (.app (.app (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2575 : ¬ Reader r2575 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 1)), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2575

def r2576 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2576 : ¬ Reader r2576 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2576

def r2577 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2577 : ¬ Reader r2577 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2577

def r2578 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2578 : ¬ Reader r2578 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2578

def r2579 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2579 : ¬ Reader r2579 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2579

def r2580 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2580 : ¬ Reader r2580 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2580

def r2581 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2581 : ¬ Reader r2581 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2581

def r2582 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2582 : ¬ Reader r2582 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2582

def r2583 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2583 : ¬ Reader r2583 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2583

def r2584 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2584 : ¬ Reader r2584 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2584

def r2585 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2585 : ¬ Reader r2585 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2585

def r2586 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2586 : ¬ Reader r2586 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2586

def r2587 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2587 : ¬ Reader r2587 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2587

def r2588 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2588 : ¬ Reader r2588 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2588

def r2589 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2589 : ¬ Reader r2589 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2589

def r2590 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2590 : ¬ Reader r2590 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2590

def r2591 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2591 : ¬ Reader r2591 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2591

def r2592 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2592 : ¬ Reader r2592 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2592

def r2593 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2593 : ¬ Reader r2593 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2593

def r2594 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2594 : ¬ Reader r2594 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2594

def r2595 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2595 : ¬ Reader r2595 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2595

def r2596 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2596 : ¬ Reader r2596 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2596

def r2597 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2597 : ¬ Reader r2597 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2597

def r2598 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2598 : ¬ Reader r2598 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2598

def r2599 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2599 : ¬ Reader r2599 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2599

def r2600 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2600 : ¬ Reader r2600 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2600

def r2601 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2601 : ¬ Reader r2601 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2601

def r2602 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2602 : ¬ Reader r2602 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2602

def r2603 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2603 : ¬ Reader r2603 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2603

def r2604 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2604 : ¬ Reader r2604 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2604

def r2605 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2605 : ¬ Reader r2605 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2605

def r2606 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2606 : ¬ Reader r2606 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2606

def r2607 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2607 : ¬ Reader r2607 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2607

def r2608 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2608 : ¬ Reader r2608 := by
  exact replay_loop true [] 5 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2608

def r2609 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2609 : ¬ Reader r2609 := by
  exact replay_loop true [] 5 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2609

def r2610 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2610 : ¬ Reader r2610 := by
  exact replay_loop true [] 2 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2610

def r2611 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2611 : ¬ Reader r2611 := by
  exact replay_loop true [] 2 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2611

def r2612 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2612 : ¬ Reader r2612 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2612

def r2613 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2613 : ¬ Reader r2613 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2613

def r2614 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2614 : ¬ Reader r2614 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2614

def r2615 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2615 : ¬ Reader r2615 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2615

def r2616 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2616 : ¬ Reader r2616 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2616

def r2617 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2617 : ¬ Reader r2617 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2617

def r2618 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2618 : ¬ Reader r2618 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2618

def r2619 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2619 : ¬ Reader r2619 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2619

def r2620 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2620 : ¬ Reader r2620 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2620

def r2621 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2621 : ¬ Reader r2621 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2621

def r2622 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2622 : ¬ Reader r2622 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2622

def r2623 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2623 : ¬ Reader r2623 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2623

def r2624 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2624 : ¬ Reader r2624 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2624

def r2625 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2625 : ¬ Reader r2625 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2625

def r2626 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2626 : ¬ Reader r2626 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2626

def r2627 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2627 : ¬ Reader r2627 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2627

def r2628 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject2628 : ¬ Reader r2628 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2628

def r2629 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject2629 : ¬ Reader r2629 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2629

def r2630 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject2630 : ¬ Reader r2630 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2630

def r2631 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject2631 : ¬ Reader r2631 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2631

def r2632 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject2632 : ¬ Reader r2632 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2632

def r2633 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject2633 : ¬ Reader r2633 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2633

def r2634 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2634 : ¬ Reader r2634 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2634

def r2635 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2635 : ¬ Reader r2635 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2635

def r2636 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2636 : ¬ Reader r2636 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2636

def r2637 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2637 : ¬ Reader r2637 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2637

def r2638 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject2638 : ¬ Reader r2638 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2638

def r2639 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject2639 : ¬ Reader r2639 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2639

def r2640 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject2640 : ¬ Reader r2640 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2640

def r2641 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject2641 : ¬ Reader r2641 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2641

def r2642 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2642 : ¬ Reader r2642 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2642

def r2643 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2643 : ¬ Reader r2643 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2643

def r2644 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject2644 : ¬ Reader r2644 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2644

def r2645 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject2645 : ¬ Reader r2645 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2645

def r2646 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 1))))
theorem reject2646 : ¬ Reader r2646 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2646

def r2647 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject2647 : ¬ Reader r2647 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2647

def r2648 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 1))))
theorem reject2648 : ¬ Reader r2648 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2648

def r2649 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject2649 : ¬ Reader r2649 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2649

def r2650 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject2650 : ¬ Reader r2650 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2650

def r2651 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject2651 : ¬ Reader r2651 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2651

def r2652 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject2652 : ¬ Reader r2652 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2652

def r2653 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject2653 : ¬ Reader r2653 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2653

def r2654 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2654 : ¬ Reader r2654 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2654

def r2655 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2655 : ¬ Reader r2655 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2655

def r2656 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject2656 : ¬ Reader r2656 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2656

def r2657 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject2657 : ¬ Reader r2657 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2657

def r2658 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject2658 : ¬ Reader r2658 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2658

def r2659 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject2659 : ¬ Reader r2659 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2659

def r2660 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2660 : ¬ Reader r2660 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2660

def r2661 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2661 : ¬ Reader r2661 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2661

def r2662 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2662 : ¬ Reader r2662 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2662

def r2663 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2663 : ¬ Reader r2663 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2663

def r2664 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2664 : ¬ Reader r2664 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2664

def r2665 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2665 : ¬ Reader r2665 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2665

def r2666 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2666 : ¬ Reader r2666 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2666

def r2667 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2667 : ¬ Reader r2667 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2667

def r2668 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2668 : ¬ Reader r2668 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2668

def r2669 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2669 : ¬ Reader r2669 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2669

def r2670 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2670 : ¬ Reader r2670 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2670

def r2671 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2671 : ¬ Reader r2671 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2671

def r2672 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2672 : ¬ Reader r2672 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2672

def r2673 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2673 : ¬ Reader r2673 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2673

def r2674 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2674 : ¬ Reader r2674 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2674

def r2675 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2675 : ¬ Reader r2675 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2675

def r2676 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2676 : ¬ Reader r2676 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2676

def r2677 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2677 : ¬ Reader r2677 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2677

def r2678 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2678 : ¬ Reader r2678 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2678

def r2679 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2679 : ¬ Reader r2679 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2679

def r2680 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2680 : ¬ Reader r2680 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2680

def r2681 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2681 : ¬ Reader r2681 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2681

def r2682 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2682 : ¬ Reader r2682 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2682

def r2683 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2683 : ¬ Reader r2683 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2683

def r2684 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2684 : ¬ Reader r2684 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2684

def r2685 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2685 : ¬ Reader r2685 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2685

def r2686 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2686 : ¬ Reader r2686 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2686

def r2687 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2687 : ¬ Reader r2687 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2687

def r2688 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2688 : ¬ Reader r2688 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2688

def r2689 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2689 : ¬ Reader r2689 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2689

def r2690 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2690 : ¬ Reader r2690 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.app (.lam (.var 1)) (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2690

def r2691 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2691 : ¬ Reader r2691 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.app (.lam (.var 1)) (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2691

def r2692 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2692 : ¬ Reader r2692 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.var 1)) (.lam (.var 1))) (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2692

def r2693 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2693 : ¬ Reader r2693 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.var 1)) (.lam (.var 1))) (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2693

def r2694 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2694 : ¬ Reader r2694 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.lam (.var 1)) (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2694

def r2695 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2695 : ¬ Reader r2695 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.lam (.var 1)) (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2695

def r2696 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2696 : ¬ Reader r2696 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.lam (.var 1))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2696

def r2697 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2697 : ¬ Reader r2697 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.var 1)) (.lam (.var 1))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2697

def r2698 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2698 : ¬ Reader r2698 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2698

def r2699 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2699 : ¬ Reader r2699 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2699
end Blc.HandlerLet.NestedExceptions08
