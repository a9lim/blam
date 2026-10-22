import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_2_1_29
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r13437 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13437 : ¬ Reader r13437 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13437

def r13438 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13438 : ¬ Reader r13438 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13438

def r13439 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13439 : ¬ Reader r13439 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13439

def r13440 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13440 : ¬ Reader r13440 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13440

def r13441 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13441 : ¬ Reader r13441 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13441

def r13442 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13442 : ¬ Reader r13442 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13442

def r13443 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13443 : ¬ Reader r13443 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13443

def r13444 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13444 : ¬ Reader r13444 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13444

def r13445 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13445 : ¬ Reader r13445 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13445

def r13446 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13446 : ¬ Reader r13446 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13446

def r13447 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13447 : ¬ Reader r13447 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13447

def r13448 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13448 : ¬ Reader r13448 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13448

def r13449 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13449 : ¬ Reader r13449 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13449

def r13450 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13450 : ¬ Reader r13450 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13450

def r13451 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13451 : ¬ Reader r13451 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13451

def r13452 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13452 : ¬ Reader r13452 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13452

def r13453 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13453 : ¬ Reader r13453 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13453

def r13454 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13454 : ¬ Reader r13454 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13454

def r13455 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13455 : ¬ Reader r13455 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13455

def r13456 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13456 : ¬ Reader r13456 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13456

def r13457 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13457 : ¬ Reader r13457 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13457

def r13458 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13458 : ¬ Reader r13458 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13458

def r13459 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13459 : ¬ Reader r13459 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13459

def r13460 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13460 : ¬ Reader r13460 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13460

def r13461 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13461 : ¬ Reader r13461 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13461

def r13462 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13462 : ¬ Reader r13462 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13462

def r13463 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13463 : ¬ Reader r13463 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13463

def r13464 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13464 : ¬ Reader r13464 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13464

def r13465 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13465 : ¬ Reader r13465 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13465

def r13466 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13466 : ¬ Reader r13466 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13466

def r13467 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13467 : ¬ Reader r13467 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13467

def r13468 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13468 : ¬ Reader r13468 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13468

def r13469 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13469 : ¬ Reader r13469 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13469

def r13470 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13470 : ¬ Reader r13470 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13470

def r13471 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13471 : ¬ Reader r13471 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13471

def r13472 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13472 : ¬ Reader r13472 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13472

def r13473 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13473 : ¬ Reader r13473 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13473

def r13474 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13474 : ¬ Reader r13474 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13474

def r13475 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13475 : ¬ Reader r13475 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13475

def r13476 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13476 : ¬ Reader r13476 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13476

def r13477 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13477 : ¬ Reader r13477 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13477

def r13478 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13478 : ¬ Reader r13478 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13478

def r13479 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13479 : ¬ Reader r13479 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13479

def r13480 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13480 : ¬ Reader r13480 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13480

def r13481 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13481 : ¬ Reader r13481 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13481

def r13482 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13482 : ¬ Reader r13482 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13482

def r13483 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13483 : ¬ Reader r13483 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13483

def r13484 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13484 : ¬ Reader r13484 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13484

def r13485 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13485 : ¬ Reader r13485 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13485

def r13486 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13486 : ¬ Reader r13486 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13486

def r13487 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13487 : ¬ Reader r13487 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13487

def r13488 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13488 : ¬ Reader r13488 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13488

def r13489 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13489 : ¬ Reader r13489 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13489

def r13490 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13490 : ¬ Reader r13490 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13490

def r13491 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13491 : ¬ Reader r13491 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13491

def r13492 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13492 : ¬ Reader r13492 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13492

def r13493 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13493 : ¬ Reader r13493 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13493

def r13494 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13494 : ¬ Reader r13494 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13494

def r13495 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13495 : ¬ Reader r13495 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13495

def r13496 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13496 : ¬ Reader r13496 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13496

def r13497 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13497 : ¬ Reader r13497 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13497

def r13498 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13498 : ¬ Reader r13498 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13498

def r13499 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13499 : ¬ Reader r13499 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13499

def r13500 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13500 : ¬ Reader r13500 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13500

def r13501 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13501 : ¬ Reader r13501 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13501

def r13502 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13502 : ¬ Reader r13502 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13502

def r13503 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13503 : ¬ Reader r13503 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13503

def r13504 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13504 : ¬ Reader r13504 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13504

def r13505 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13505 : ¬ Reader r13505 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13505

def r13506 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13506 : ¬ Reader r13506 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13506

def r13507 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13507 : ¬ Reader r13507 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13507

def r13508 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13508 : ¬ Reader r13508 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13508

def r13509 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13509 : ¬ Reader r13509 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13509

def r13510 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13510 : ¬ Reader r13510 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13510

def r13511 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13511 : ¬ Reader r13511 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13511

def r13512 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13512 : ¬ Reader r13512 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13512

def r13513 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13513 : ¬ Reader r13513 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13513

def r13514 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13514 : ¬ Reader r13514 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13514

def r13515 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13515 : ¬ Reader r13515 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13515

def r13516 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13516 : ¬ Reader r13516 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13516

def r13517 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13517 : ¬ Reader r13517 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13517

def r13518 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13518 : ¬ Reader r13518 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13518

def r13519 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13519 : ¬ Reader r13519 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13519

def r13520 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13520 : ¬ Reader r13520 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13520

def r13521 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13521 : ¬ Reader r13521 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13521

def r13522 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13522 : ¬ Reader r13522 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13522

def r13523 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13523 : ¬ Reader r13523 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13523

def r13524 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13524 : ¬ Reader r13524 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13524

def r13525 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13525 : ¬ Reader r13525 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13525

def r13526 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13526 : ¬ Reader r13526 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13526

def r13527 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13527 : ¬ Reader r13527 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13527

def r13528 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13528 : ¬ Reader r13528 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13528

def r13529 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13529 : ¬ Reader r13529 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13529

def r13530 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13530 : ¬ Reader r13530 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13530

def r13531 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13531 : ¬ Reader r13531 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13531

def r13532 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13532 : ¬ Reader r13532 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13532

def r13533 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13533 : ¬ Reader r13533 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13533

def r13534 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13534 : ¬ Reader r13534 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13534

def r13535 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13535 : ¬ Reader r13535 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13535

def r13536 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13536 : ¬ Reader r13536 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13536

def r13537 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13537 : ¬ Reader r13537 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13537

def r13538 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13538 : ¬ Reader r13538 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13538

def r13539 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13539 : ¬ Reader r13539 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13539

def r13540 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13540 : ¬ Reader r13540 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13540

def r13541 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13541 : ¬ Reader r13541 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13541

def r13542 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13542 : ¬ Reader r13542 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13542

def r13543 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13543 : ¬ Reader r13543 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13543

def r13544 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13544 : ¬ Reader r13544 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13544

def r13545 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13545 : ¬ Reader r13545 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13545

def r13546 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13546 : ¬ Reader r13546 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13546

def r13547 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13547 : ¬ Reader r13547 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13547

def r13548 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13548 : ¬ Reader r13548 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13548

def r13549 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13549 : ¬ Reader r13549 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13549

def r13550 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13550 : ¬ Reader r13550 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13550

def r13551 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13551 : ¬ Reader r13551 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13551

def r13552 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13552 : ¬ Reader r13552 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13552

def r13553 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13553 : ¬ Reader r13553 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13553

def r13554 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13554 : ¬ Reader r13554 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13554

def r13555 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13555 : ¬ Reader r13555 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13555

def r13556 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13556 : ¬ Reader r13556 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13556

def r13557 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13557 : ¬ Reader r13557 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13557

def r13558 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13558 : ¬ Reader r13558 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13558

def r13559 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13559 : ¬ Reader r13559 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13559

def r13560 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13560 : ¬ Reader r13560 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13560

def r13561 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13561 : ¬ Reader r13561 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13561

def r13562 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13562 : ¬ Reader r13562 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13562

def r13563 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13563 : ¬ Reader r13563 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13563

def r13564 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13564 : ¬ Reader r13564 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13564

def r13565 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13565 : ¬ Reader r13565 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13565

def r13566 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13566 : ¬ Reader r13566 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13566

def r13567 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13567 : ¬ Reader r13567 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13567

def r13568 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13568 : ¬ Reader r13568 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13568

def r13569 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13569 : ¬ Reader r13569 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13569

def r13570 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13570 : ¬ Reader r13570 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13570

def r13571 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13571 : ¬ Reader r13571 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13571

def r13572 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13572 : ¬ Reader r13572 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13572

def r13573 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13573 : ¬ Reader r13573 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13573

def r13574 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13574 : ¬ Reader r13574 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13574

def r13575 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13575 : ¬ Reader r13575 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13575

def r13576 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13576 : ¬ Reader r13576 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13576

def r13577 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13577 : ¬ Reader r13577 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13577

def r13578 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13578 : ¬ Reader r13578 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13578

def r13579 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13579 : ¬ Reader r13579 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13579

def r13580 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13580 : ¬ Reader r13580 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13580

def r13581 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13581 : ¬ Reader r13581 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13581

def r13582 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13582 : ¬ Reader r13582 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13582

def r13583 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13583 : ¬ Reader r13583 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13583

def r13584 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13584 : ¬ Reader r13584 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13584

def r13585 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13585 : ¬ Reader r13585 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13585

def r13586 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13586 : ¬ Reader r13586 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13586

def r13587 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13587 : ¬ Reader r13587 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13587

def r13588 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13588 : ¬ Reader r13588 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13588

def r13589 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13589 : ¬ Reader r13589 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13589

def r13590 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13590 : ¬ Reader r13590 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13590

def r13591 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13591 : ¬ Reader r13591 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13591

def r13592 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13592 : ¬ Reader r13592 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13592

def r13593 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13593 : ¬ Reader r13593 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13593

def r13594 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13594 : ¬ Reader r13594 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13594

def r13595 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13595 : ¬ Reader r13595 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13595

def r13596 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13596 : ¬ Reader r13596 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13596

def r13597 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13597 : ¬ Reader r13597 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13597

def r13598 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13598 : ¬ Reader r13598 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13598

def r13599 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13599 : ¬ Reader r13599 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13599

def r13600 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13600 : ¬ Reader r13600 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13600

def r13601 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13601 : ¬ Reader r13601 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13601

def r13602 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13602 : ¬ Reader r13602 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13602

def r13603 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13603 : ¬ Reader r13603 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13603

def r13604 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13604 : ¬ Reader r13604 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13604

def r13605 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13605 : ¬ Reader r13605 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13605

def r13606 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13606 : ¬ Reader r13606 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13606

def r13607 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13607 : ¬ Reader r13607 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13607

def r13608 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13608 : ¬ Reader r13608 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13608

def r13609 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13609 : ¬ Reader r13609 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13609

def r13610 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13610 : ¬ Reader r13610 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13610

def r13611 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13611 : ¬ Reader r13611 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13611

def r13612 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13612 : ¬ Reader r13612 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13612

def r13613 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13613 : ¬ Reader r13613 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13613

def r13614 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13614 : ¬ Reader r13614 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13614

def r13615 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13615 : ¬ Reader r13615 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13615

def r13616 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13616 : ¬ Reader r13616 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13616

def r13617 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13617 : ¬ Reader r13617 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13617

def r13618 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13618 : ¬ Reader r13618 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13618

def r13619 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13619 : ¬ Reader r13619 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13619

def r13620 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13620 : ¬ Reader r13620 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13620

def r13621 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13621 : ¬ Reader r13621 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13621

def r13622 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13622 : ¬ Reader r13622 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13622

def r13623 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13623 : ¬ Reader r13623 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13623

def r13624 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13624 : ¬ Reader r13624 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13624

def r13625 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13625 : ¬ Reader r13625 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13625

def r13626 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13626 : ¬ Reader r13626 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13626

def r13627 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13627 : ¬ Reader r13627 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13627

def r13628 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13628 : ¬ Reader r13628 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13628

def r13629 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13629 : ¬ Reader r13629 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13629

def r13630 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13630 : ¬ Reader r13630 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13630

def r13631 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13631 : ¬ Reader r13631 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13631

def r13632 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject13632 : ¬ Reader r13632 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13632

def r13633 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject13633 : ¬ Reader r13633 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13633

def r13634 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 3))))))
theorem reject13634 : ¬ Reader r13634 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13634

def r13635 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 2) (.lam (.var 1))))))
theorem reject13635 : ¬ Reader r13635 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13635

def r13636 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 3))))))
theorem reject13636 : ¬ Reader r13636 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13636

def r13637 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 2))))))
theorem reject13637 : ¬ Reader r13637 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13637

def r13638 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))
theorem reject13638 : ¬ Reader r13638 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13638

def r13639 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 1))
theorem reject13639 : ¬ Reader r13639 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13639

def r13640 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 1))
theorem reject13640 : ¬ Reader r13640 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13640

def r13641 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 1))
theorem reject13641 : ¬ Reader r13641 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13641

def r13642 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 2)))))) (.var 1))
theorem reject13642 : ¬ Reader r13642 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13642

def r13643 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.var 1))
theorem reject13643 : ¬ Reader r13643 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13643

def r13644 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 3))))))
theorem reject13644 : ¬ Reader r13644 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13644

def r13645 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 2) (.lam (.var 1))))))
theorem reject13645 : ¬ Reader r13645 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13645

def r13646 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 3))))))
theorem reject13646 : ¬ Reader r13646 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13646

def r13647 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 2))))))
theorem reject13647 : ¬ Reader r13647 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13647

def r13648 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))
theorem reject13648 : ¬ Reader r13648 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13648

def r13649 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 1))
theorem reject13649 : ¬ Reader r13649 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13649

def r13650 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 1))
theorem reject13650 : ¬ Reader r13650 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13650

def r13651 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 1))
theorem reject13651 : ¬ Reader r13651 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13651

def r13652 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 2)))))) (.var 1))
theorem reject13652 : ¬ Reader r13652 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13652

def r13653 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.var 1))
theorem reject13653 : ¬ Reader r13653 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13653

def r13654 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 3))))))
theorem reject13654 : ¬ Reader r13654 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13654

def r13655 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 2) (.lam (.var 1))))))
theorem reject13655 : ¬ Reader r13655 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13655

def r13656 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 3))))))
theorem reject13656 : ¬ Reader r13656 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13656

def r13657 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 2))))))
theorem reject13657 : ¬ Reader r13657 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13657

def r13658 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))
theorem reject13658 : ¬ Reader r13658 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13658

def r13659 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 1))
theorem reject13659 : ¬ Reader r13659 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13659

def r13660 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 1))
theorem reject13660 : ¬ Reader r13660 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13660

def r13661 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 1))
theorem reject13661 : ¬ Reader r13661 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13661

def r13662 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 2)))))) (.var 1))
theorem reject13662 : ¬ Reader r13662 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13662

def r13663 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.var 1))
theorem reject13663 : ¬ Reader r13663 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13663

def r13664 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 3))))))
theorem reject13664 : ¬ Reader r13664 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13664

def r13665 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 2) (.lam (.var 1))))))
theorem reject13665 : ¬ Reader r13665 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13665

def r13666 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 3))))))
theorem reject13666 : ¬ Reader r13666 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13666

def r13667 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 2))))))
theorem reject13667 : ¬ Reader r13667 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13667

def r13668 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))
theorem reject13668 : ¬ Reader r13668 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13668

def r13669 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 1))
theorem reject13669 : ¬ Reader r13669 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13669

def r13670 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 1))
theorem reject13670 : ¬ Reader r13670 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13670

def r13671 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 1))
theorem reject13671 : ¬ Reader r13671 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13671

def r13672 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 2)))))) (.var 1))
theorem reject13672 : ¬ Reader r13672 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13672

def r13673 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.var 1))
theorem reject13673 : ¬ Reader r13673 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13673

def r13674 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 3))))))
theorem reject13674 : ¬ Reader r13674 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13674

def r13675 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 2) (.lam (.var 1))))))
theorem reject13675 : ¬ Reader r13675 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13675

def r13676 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 3))))))
theorem reject13676 : ¬ Reader r13676 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13676

def r13677 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 2))))))
theorem reject13677 : ¬ Reader r13677 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13677

def r13678 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))
theorem reject13678 : ¬ Reader r13678 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13678

def r13679 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 1))
theorem reject13679 : ¬ Reader r13679 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13679

def r13680 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 1))
theorem reject13680 : ¬ Reader r13680 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 2) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13680

def r13681 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 1))
theorem reject13681 : ¬ Reader r13681 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13681

def r13682 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 2)))))) (.var 1))
theorem reject13682 : ¬ Reader r13682 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13682

def r13683 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.var 1))
theorem reject13683 : ¬ Reader r13683 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.lam (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13683

def r13684 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13684 : ¬ Reader r13684 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject13684

def r13685 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13685 : ¬ Reader r13685 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject13685

def r13686 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13686 : ¬ Reader r13686 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject13686

def r13687 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13687 : ¬ Reader r13687 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject13687

def r13688 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13688 : ¬ Reader r13688 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13688

def r13689 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13689 : ¬ Reader r13689 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13689

def r13690 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13690 : ¬ Reader r13690 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13690

def r13691 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13691 : ¬ Reader r13691 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13691

def r13692 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13692 : ¬ Reader r13692 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13692

def r13693 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13693 : ¬ Reader r13693 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13693

def r13694 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13694 : ¬ Reader r13694 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13694

def r13695 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13695 : ¬ Reader r13695 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13695

def r13696 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13696 : ¬ Reader r13696 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13696

def r13697 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13697 : ¬ Reader r13697 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13697

def r13698 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13698 : ¬ Reader r13698 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13698

def r13699 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13699 : ¬ Reader r13699 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13699

def r13700 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13700 : ¬ Reader r13700 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13700

def r13701 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13701 : ¬ Reader r13701 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13701

def r13702 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13702 : ¬ Reader r13702 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13702

def r13703 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13703 : ¬ Reader r13703 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13703

def r13704 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13704 : ¬ Reader r13704 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13704

def r13705 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13705 : ¬ Reader r13705 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13705

def r13706 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13706 : ¬ Reader r13706 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13706

def r13707 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13707 : ¬ Reader r13707 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13707

def r13708 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13708 : ¬ Reader r13708 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject13708

def r13709 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13709 : ¬ Reader r13709 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject13709

def r13710 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13710 : ¬ Reader r13710 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13710

def r13711 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13711 : ¬ Reader r13711 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13711

def r13712 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13712 : ¬ Reader r13712 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13712

def r13713 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13713 : ¬ Reader r13713 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13713

def r13714 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13714 : ¬ Reader r13714 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject13714

def r13715 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13715 : ¬ Reader r13715 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject13715

def r13716 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13716 : ¬ Reader r13716 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13716

def r13717 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13717 : ¬ Reader r13717 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13717

def r13718 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13718 : ¬ Reader r13718 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13718

def r13719 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13719 : ¬ Reader r13719 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13719

def r13720 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13720 : ¬ Reader r13720 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13720

def r13721 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13721 : ¬ Reader r13721 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13721

def r13722 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13722 : ¬ Reader r13722 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13722

def r13723 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13723 : ¬ Reader r13723 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13723

def r13724 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13724 : ¬ Reader r13724 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13724

def r13725 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13725 : ¬ Reader r13725 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13725

def r13726 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13726 : ¬ Reader r13726 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13726

def r13727 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13727 : ¬ Reader r13727 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13727

def r13728 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13728 : ¬ Reader r13728 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13728

def r13729 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13729 : ¬ Reader r13729 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13729

def r13730 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13730 : ¬ Reader r13730 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13730

def r13731 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13731 : ¬ Reader r13731 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13731

def r13732 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13732 : ¬ Reader r13732 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13732

def r13733 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13733 : ¬ Reader r13733 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13733

def r13734 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13734 : ¬ Reader r13734 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject13734

def r13735 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13735 : ¬ Reader r13735 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject13735

def r13736 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13736 : ¬ Reader r13736 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13736

def r13737 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13737 : ¬ Reader r13737 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13737

def r13738 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13738 : ¬ Reader r13738 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13738

def r13739 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13739 : ¬ Reader r13739 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13739

def r13740 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13740 : ¬ Reader r13740 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13740

def r13741 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13741 : ¬ Reader r13741 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13741

def r13742 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13742 : ¬ Reader r13742 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13742

def r13743 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13743 : ¬ Reader r13743 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13743

def r13744 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13744 : ¬ Reader r13744 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13744

def r13745 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13745 : ¬ Reader r13745 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13745

def r13746 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13746 : ¬ Reader r13746 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13746

def r13747 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13747 : ¬ Reader r13747 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13747

def r13748 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13748 : ¬ Reader r13748 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13748

def r13749 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13749 : ¬ Reader r13749 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13749

def r13750 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13750 : ¬ Reader r13750 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13750

def r13751 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13751 : ¬ Reader r13751 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13751

def r13752 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13752 : ¬ Reader r13752 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13752

def r13753 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13753 : ¬ Reader r13753 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13753

def r13754 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13754 : ¬ Reader r13754 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13754

def r13755 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13755 : ¬ Reader r13755 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13755

def r13756 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13756 : ¬ Reader r13756 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13756

def r13757 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13757 : ¬ Reader r13757 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13757

def r13758 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13758 : ¬ Reader r13758 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13758

def r13759 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13759 : ¬ Reader r13759 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13759

def r13760 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13760 : ¬ Reader r13760 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13760

def r13761 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13761 : ¬ Reader r13761 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13761

def r13762 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13762 : ¬ Reader r13762 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13762

def r13763 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13763 : ¬ Reader r13763 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13763

def r13764 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13764 : ¬ Reader r13764 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13764

def r13765 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13765 : ¬ Reader r13765 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13765

def r13766 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13766 : ¬ Reader r13766 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13766

def r13767 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13767 : ¬ Reader r13767 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13767

def r13768 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13768 : ¬ Reader r13768 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13768

def r13769 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13769 : ¬ Reader r13769 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13769

def r13770 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13770 : ¬ Reader r13770 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13770

def r13771 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13771 : ¬ Reader r13771 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13771

def r13772 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13772 : ¬ Reader r13772 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13772

def r13773 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13773 : ¬ Reader r13773 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13773

def r13774 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject13774 : ¬ Reader r13774 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13774

def r13775 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject13775 : ¬ Reader r13775 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13775

def r13776 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13776 : ¬ Reader r13776 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13776

def r13777 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13777 : ¬ Reader r13777 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13777

def r13778 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13778 : ¬ Reader r13778 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13778

def r13779 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13779 : ¬ Reader r13779 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13779

def r13780 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13780 : ¬ Reader r13780 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13780

def r13781 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13781 : ¬ Reader r13781 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13781

def r13782 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13782 : ¬ Reader r13782 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13782

def r13783 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13783 : ¬ Reader r13783 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13783

def r13784 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13784 : ¬ Reader r13784 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13784

def r13785 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13785 : ¬ Reader r13785 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13785

def r13786 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject13786 : ¬ Reader r13786 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13786

def r13787 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject13787 : ¬ Reader r13787 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))), (.lam (.var 1)), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13787

def r13788 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject13788 : ¬ Reader r13788 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13788

def r13789 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject13789 : ¬ Reader r13789 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13789

def r13790 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject13790 : ¬ Reader r13790 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13790

def r13791 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject13791 : ¬ Reader r13791 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13791

def r13792 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject13792 : ¬ Reader r13792 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13792

def r13793 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject13793 : ¬ Reader r13793 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13793

def r13794 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject13794 : ¬ Reader r13794 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13794

def r13795 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject13795 : ¬ Reader r13795 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13795

def r13796 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject13796 : ¬ Reader r13796 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject13796

def r13797 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject13797 : ¬ Reader r13797 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject13797

def r13798 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject13798 : ¬ Reader r13798 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject13798

def r13799 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject13799 : ¬ Reader r13799 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject13799

def r13800 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject13800 : ¬ Reader r13800 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13800

def r13801 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject13801 : ¬ Reader r13801 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13801

def r13802 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject13802 : ¬ Reader r13802 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13802

def r13803 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject13803 : ¬ Reader r13803 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject13803

def r13804 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject13804 : ¬ Reader r13804 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13804

def r13805 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject13805 : ¬ Reader r13805 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject13805

def r13806 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 1)))
theorem reject13806 : ¬ Reader r13806 := by
  exact replay_absent true [] 11 1 (by decide) (by decide)
#print axioms reject13806

def r13807 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject13807 : ¬ Reader r13807 := by
  exact replay_absent true [] 13 1 (by decide) (by decide)
#print axioms reject13807

def r13808 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 1)))
theorem reject13808 : ¬ Reader r13808 := by
  exact replay_absent true [] 10 1 (by decide) (by decide)
#print axioms reject13808

def r13809 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject13809 : ¬ Reader r13809 := by
  exact replay_absent true [] 12 1 (by decide) (by decide)
#print axioms reject13809

def r13810 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 1)))
theorem reject13810 : ¬ Reader r13810 := by
  exact replay_absent true [] 7 1 (by decide) (by decide)
#print axioms reject13810

def r13811 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject13811 : ¬ Reader r13811 := by
  exact replay_absent true [] 9 1 (by decide) (by decide)
#print axioms reject13811

def r13812 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 1)))
theorem reject13812 : ¬ Reader r13812 := by
  exact replay_absent true [] 10 1 (by decide) (by decide)
#print axioms reject13812

def r13813 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject13813 : ¬ Reader r13813 := by
  exact replay_absent true [] 12 1 (by decide) (by decide)
#print axioms reject13813

def r13814 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 1)))
theorem reject13814 : ¬ Reader r13814 := by
  exact replay_absent true [] 9 1 (by decide) (by decide)
#print axioms reject13814

def r13815 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject13815 : ¬ Reader r13815 := by
  exact replay_absent true [] 11 1 (by decide) (by decide)
#print axioms reject13815

def r13816 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.var 0))) (.var 1))
theorem reject13816 : ¬ Reader r13816 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))), (.lam (.lam (.var 2))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))), (.lam (.lam (.var 2))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13816

def r13817 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.var 1)) (.lam (.var 0)))
theorem reject13817 : ¬ Reader r13817 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))), (.lam (.lam (.var 2))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13817

def r13818 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.var 0))) (.var 1))
theorem reject13818 : ¬ Reader r13818 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))), (.lam (.lam (.var 2))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13818

def r13819 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.var 1)) (.lam (.var 0)))
theorem reject13819 : ¬ Reader r13819 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13819

def r13820 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.var 0))) (.var 1))
theorem reject13820 : ¬ Reader r13820 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13820

def r13821 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.var 1)) (.lam (.var 0)))
theorem reject13821 : ¬ Reader r13821 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13821

def r13822 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.var 0))) (.var 1))
theorem reject13822 : ¬ Reader r13822 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13822

def r13823 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.var 1)) (.lam (.var 0)))
theorem reject13823 : ¬ Reader r13823 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13823

def r13824 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.var 0))) (.var 1))
theorem reject13824 : ¬ Reader r13824 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13824

def r13825 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.var 1)) (.lam (.var 0)))
theorem reject13825 : ¬ Reader r13825 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13825

def r13826 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13826 : ¬ Reader r13826 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13826

def r13827 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13827 : ¬ Reader r13827 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13827

def r13828 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13828 : ¬ Reader r13828 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13828

def r13829 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13829 : ¬ Reader r13829 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13829

def r13830 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13830 : ¬ Reader r13830 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13830

def r13831 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13831 : ¬ Reader r13831 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13831

def r13832 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13832 : ¬ Reader r13832 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13832

def r13833 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13833 : ¬ Reader r13833 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13833

def r13834 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13834 : ¬ Reader r13834 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13834

def r13835 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13835 : ¬ Reader r13835 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13835

def r13836 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13836 : ¬ Reader r13836 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13836

def r13837 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13837 : ¬ Reader r13837 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13837

def r13838 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13838 : ¬ Reader r13838 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13838

def r13839 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13839 : ¬ Reader r13839 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13839

def r13840 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13840 : ¬ Reader r13840 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13840

def r13841 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13841 : ¬ Reader r13841 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13841

def r13842 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13842 : ¬ Reader r13842 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13842

def r13843 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13843 : ¬ Reader r13843 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13843

def r13844 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject13844 : ¬ Reader r13844 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13844

def r13845 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject13845 : ¬ Reader r13845 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13845

def r13846 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject13846 : ¬ Reader r13846 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13846

def r13847 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject13847 : ¬ Reader r13847 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13847

def r13848 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject13848 : ¬ Reader r13848 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13848

def r13849 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))
theorem reject13849 : ¬ Reader r13849 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13849

def r13850 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))
theorem reject13850 : ¬ Reader r13850 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13850

def r13851 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1))
theorem reject13851 : ¬ Reader r13851 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13851

def r13852 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject13852 : ¬ Reader r13852 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13852

def r13853 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject13853 : ¬ Reader r13853 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13853

def r13854 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject13854 : ¬ Reader r13854 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13854

def r13855 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))
theorem reject13855 : ¬ Reader r13855 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13855

def r13856 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))
theorem reject13856 : ¬ Reader r13856 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13856

def r13857 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1))
theorem reject13857 : ¬ Reader r13857 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13857

def r13858 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject13858 : ¬ Reader r13858 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13858

def r13859 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject13859 : ¬ Reader r13859 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13859

def r13860 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject13860 : ¬ Reader r13860 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13860

def r13861 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))
theorem reject13861 : ¬ Reader r13861 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13861

def r13862 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))
theorem reject13862 : ¬ Reader r13862 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13862

def r13863 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1))
theorem reject13863 : ¬ Reader r13863 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13863

def r13864 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject13864 : ¬ Reader r13864 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13864

def r13865 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject13865 : ¬ Reader r13865 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13865

def r13866 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject13866 : ¬ Reader r13866 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13866

def r13867 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))
theorem reject13867 : ¬ Reader r13867 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13867

def r13868 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))
theorem reject13868 : ¬ Reader r13868 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13868

def r13869 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1))
theorem reject13869 : ¬ Reader r13869 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13869

def r13870 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject13870 : ¬ Reader r13870 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13870

def r13871 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject13871 : ¬ Reader r13871 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13871

def r13872 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject13872 : ¬ Reader r13872 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13872

def r13873 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))
theorem reject13873 : ¬ Reader r13873 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13873

def r13874 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))
theorem reject13874 : ¬ Reader r13874 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13874

def r13875 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1))
theorem reject13875 : ¬ Reader r13875 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13875

def r13876 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject13876 : ¬ Reader r13876 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13876

def r13877 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject13877 : ¬ Reader r13877 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13877

def r13878 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject13878 : ¬ Reader r13878 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13878

def r13879 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))
theorem reject13879 : ¬ Reader r13879 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13879

def r13880 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))
theorem reject13880 : ¬ Reader r13880 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13880

def r13881 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1))
theorem reject13881 : ¬ Reader r13881 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13881

def r13882 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject13882 : ¬ Reader r13882 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13882

def r13883 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject13883 : ¬ Reader r13883 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13883

def r13884 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject13884 : ¬ Reader r13884 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13884

def r13885 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))
theorem reject13885 : ¬ Reader r13885 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13885

def r13886 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))
theorem reject13886 : ¬ Reader r13886 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13886
end Blc.HandlerLet.Proof4_Cs_x_2_1_29
