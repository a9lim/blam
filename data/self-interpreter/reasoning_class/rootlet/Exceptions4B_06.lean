import Certificates
namespace Blc.HandlerLet.Exceptions4B_06
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r3633 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3633 : ¬ Reader r3633 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))) (.var 1)), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3633

def r3634 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3634 : ¬ Reader r3634 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))) (.var 1)), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3634

def r3635 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3635 : ¬ Reader r3635 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.var 1), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1)), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3635

def r3636 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3636 : ¬ Reader r3636 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.var 1), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1)), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3636

def r3637 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3637 : ¬ Reader r3637 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3637

def r3638 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3638 : ¬ Reader r3638 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3638

def r3639 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3639 : ¬ Reader r3639 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3639

def r3640 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3640 : ¬ Reader r3640 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3640

def r3641 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3641 : ¬ Reader r3641 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.var 1), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1)), (.lam (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3641

def r3642 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3642 : ¬ Reader r3642 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.var 1), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1)), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3642

def r3643 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3643 : ¬ Reader r3643 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.var 1) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3643

def r3644 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3644 : ¬ Reader r3644 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3644

def r3645 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3645 : ¬ Reader r3645 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3645

def r3646 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3646 : ¬ Reader r3646 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3646

def r3647 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3647 : ¬ Reader r3647 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3647

def r3648 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3648 : ¬ Reader r3648 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3648

def r3649 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3649 : ¬ Reader r3649 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3649

def r3650 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3650 : ¬ Reader r3650 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3650

def r3651 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3651 : ¬ Reader r3651 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3651

def r3652 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3652 : ¬ Reader r3652 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3652

def r3653 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3653 : ¬ Reader r3653 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3653

def r3654 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3654 : ¬ Reader r3654 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3654

def r3655 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3655 : ¬ Reader r3655 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3655

def r3656 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3656 : ¬ Reader r3656 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3656

def r3657 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem reject3657 : ¬ Reader r3657 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3657

def r3659 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3659 : ¬ Reader r3659 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3659

def r3661 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3661 : ¬ Reader r3661 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3661

def r3663 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3663 : ¬ Reader r3663 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3663

def r3665 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3665 : ¬ Reader r3665 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3665

def r3667 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3667 : ¬ Reader r3667 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3667

def r3669 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3669 : ¬ Reader r3669 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3669

def r3671 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3671 : ¬ Reader r3671 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3671

def r3673 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3673 : ¬ Reader r3673 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3673

def r3675 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3675 : ¬ Reader r3675 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3675

def r3677 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3677 : ¬ Reader r3677 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3677

def r3679 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3679 : ¬ Reader r3679 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3679

def r3681 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3681 : ¬ Reader r3681 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3681

def r3683 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3683 : ¬ Reader r3683 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3683

def r3684 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3684 : ¬ Reader r3684 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3684

def r3685 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3685 : ¬ Reader r3685 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3685

def r3686 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3686 : ¬ Reader r3686 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3686

def r3687 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3687 : ¬ Reader r3687 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3687

def r3688 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3688 : ¬ Reader r3688 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3688

def r3689 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3689 : ¬ Reader r3689 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3689

def r3690 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3690 : ¬ Reader r3690 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3690

def r3691 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3691 : ¬ Reader r3691 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3691

def r3692 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3692 : ¬ Reader r3692 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3692

def r3693 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3693 : ¬ Reader r3693 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3693

def r3694 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3694 : ¬ Reader r3694 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3694

def r3695 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3695 : ¬ Reader r3695 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3695

def r3696 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3696 : ¬ Reader r3696 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.var 1), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3696

def r3697 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3697 : ¬ Reader r3697 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.var 1), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3697

def r3698 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3698 : ¬ Reader r3698 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3698

def r3699 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3699 : ¬ Reader r3699 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3699

def r3700 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3700 : ¬ Reader r3700 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3700

def r3701 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3701 : ¬ Reader r3701 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3701

def r3702 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3702 : ¬ Reader r3702 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3702

def r3703 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3703 : ¬ Reader r3703 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3703

def r3704 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3704 : ¬ Reader r3704 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3704

def r3705 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3705 : ¬ Reader r3705 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.var 1)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3705

def r3706 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3706 : ¬ Reader r3706 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3706

def r3707 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3707 : ¬ Reader r3707 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3707

def r3708 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))))
theorem reject3708 : ¬ Reader r3708 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))) [(.lam (.app (.var 1) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3708

def r3709 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))))
theorem reject3709 : ¬ Reader r3709 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))) [(.lam (.app (.var 0) (.var 1)))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3709

def r3710 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3710 : ¬ Reader r3710 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3710

def r3711 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3711 : ¬ Reader r3711 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3711

def r3712 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3712 : ¬ Reader r3712 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3712

def r3713 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3713 : ¬ Reader r3713 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3713

def r3714 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3714 : ¬ Reader r3714 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3714

def r3715 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3715 : ¬ Reader r3715 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3715

def r3716 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3716 : ¬ Reader r3716 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3716

def r3717 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3717 : ¬ Reader r3717 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3717

def r3718 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3718 : ¬ Reader r3718 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3718

def r3719 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3719 : ¬ Reader r3719 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3719

def r3720 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3720 : ¬ Reader r3720 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3720

def r3721 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3721 : ¬ Reader r3721 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3721

def r3722 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3722 : ¬ Reader r3722 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3722

def r3723 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3723 : ¬ Reader r3723 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3723

def r3724 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3724 : ¬ Reader r3724 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3724

def r3725 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3725 : ¬ Reader r3725 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3725

def r3726 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3726 : ¬ Reader r3726 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3726

def r3727 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3727 : ¬ Reader r3727 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3727

def r3728 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3728 : ¬ Reader r3728 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3728

def r3729 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3729 : ¬ Reader r3729 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3729

def r3730 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3730 : ¬ Reader r3730 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3730

def r3731 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3731 : ¬ Reader r3731 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3731

def r3732 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3732 : ¬ Reader r3732 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3732

def r3733 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3733 : ¬ Reader r3733 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3733

def r3734 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3734 : ¬ Reader r3734 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3734

def r3735 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3735 : ¬ Reader r3735 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3735

def r3736 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3736 : ¬ Reader r3736 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3736

def r3737 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3737 : ¬ Reader r3737 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3737

def r3738 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3738 : ¬ Reader r3738 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3738

def r3739 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3739 : ¬ Reader r3739 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3739

def r3740 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3740 : ¬ Reader r3740 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3740

def r3741 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3741 : ¬ Reader r3741 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3741

def r3742 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3742 : ¬ Reader r3742 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3742

def r3743 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3743 : ¬ Reader r3743 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3743

def r3744 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3744 : ¬ Reader r3744 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3744

def r3745 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3745 : ¬ Reader r3745 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3745

def r3746 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject3746 : ¬ Reader r3746 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3746

def r3747 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3747 : ¬ Reader r3747 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3747

def r3748 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject3748 : ¬ Reader r3748 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3748

def r3749 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3749 : ¬ Reader r3749 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3749

def r3750 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject3750 : ¬ Reader r3750 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3750

def r3751 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3751 : ¬ Reader r3751 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.var 1), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3751

def r3752 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3752 : ¬ Reader r3752 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3752

def r3753 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject3753 : ¬ Reader r3753 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3753

def r3754 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3754 : ¬ Reader r3754 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3754

def r3755 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3755 : ¬ Reader r3755 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3755

def r3756 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3756 : ¬ Reader r3756 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3756

def r3757 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3757 : ¬ Reader r3757 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3757

def r3758 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3758 : ¬ Reader r3758 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3758

def r3759 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3759 : ¬ Reader r3759 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3759

def r3760 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3760 : ¬ Reader r3760 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3760

def r3761 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3761 : ¬ Reader r3761 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3761

def r3762 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3762 : ¬ Reader r3762 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3762

def r3763 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3763 : ¬ Reader r3763 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3763

def r3764 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3764 : ¬ Reader r3764 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3764

def r3765 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3765 : ¬ Reader r3765 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3765

def r3766 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3766 : ¬ Reader r3766 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3766

def r3767 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3767 : ¬ Reader r3767 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3767

def r3768 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3768 : ¬ Reader r3768 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3768

def r3769 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3769 : ¬ Reader r3769 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3769

def r3770 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3770 : ¬ Reader r3770 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3770

def r3771 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3771 : ¬ Reader r3771 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3771

def r3772 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3772 : ¬ Reader r3772 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3772

def r3773 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3773 : ¬ Reader r3773 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3773

def r3774 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3774 : ¬ Reader r3774 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3774

def r3775 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3775 : ¬ Reader r3775 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3775

def r3776 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3776 : ¬ Reader r3776 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3776

def r3777 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3777 : ¬ Reader r3777 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3777

def r3778 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3778 : ¬ Reader r3778 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3778

def r3779 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3779 : ¬ Reader r3779 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3779

def r3780 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3780 : ¬ Reader r3780 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3780

def r3781 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3781 : ¬ Reader r3781 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3781

def r3782 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3782 : ¬ Reader r3782 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3782

def r3783 : Term := (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3783 : ¬ Reader r3783 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3783

def r3784 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3784 : ¬ Reader r3784 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3784

def r3785 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3785 : ¬ Reader r3785 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3785

def r3786 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3786 : ¬ Reader r3786 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3786

def r3787 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3787 : ¬ Reader r3787 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3787

def r3788 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3788 : ¬ Reader r3788 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3788

def r3789 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3789 : ¬ Reader r3789 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3789

def r3790 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3790 : ¬ Reader r3790 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3790

def r3791 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3791 : ¬ Reader r3791 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3791

def r3792 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3792 : ¬ Reader r3792 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3792

def r3793 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3793 : ¬ Reader r3793 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3793

def r3794 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3794 : ¬ Reader r3794 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3794

def r3795 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3795 : ¬ Reader r3795 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3795

def r3796 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3796 : ¬ Reader r3796 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3796

def r3797 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3797 : ¬ Reader r3797 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3797

def r3798 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3798 : ¬ Reader r3798 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3798

def r3799 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3799 : ¬ Reader r3799 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3799

def r3800 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3800 : ¬ Reader r3800 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3800

def r3801 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3801 : ¬ Reader r3801 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3801

def r3802 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3802 : ¬ Reader r3802 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3802

def r3803 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3803 : ¬ Reader r3803 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3803

def r3804 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3804 : ¬ Reader r3804 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3804

def r3805 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3805 : ¬ Reader r3805 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3805

def r3806 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3806 : ¬ Reader r3806 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3806

def r3807 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3807 : ¬ Reader r3807 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3807

def r3808 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3808 : ¬ Reader r3808 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3808

def r3809 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3809 : ¬ Reader r3809 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3809

def r3810 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3810 : ¬ Reader r3810 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3810

def r3811 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3811 : ¬ Reader r3811 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3811

def r3812 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3812 : ¬ Reader r3812 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3812

def r3813 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3813 : ¬ Reader r3813 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3813

def r3814 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3814 : ¬ Reader r3814 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3814

def r3815 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3815 : ¬ Reader r3815 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3815

def r3816 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3816 : ¬ Reader r3816 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3816

def r3817 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3817 : ¬ Reader r3817 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3817

def r3818 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3818 : ¬ Reader r3818 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3818

def r3819 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3819 : ¬ Reader r3819 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3819

def r3820 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3820 : ¬ Reader r3820 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3820

def r3821 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3821 : ¬ Reader r3821 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3821

def r3822 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3822 : ¬ Reader r3822 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3822

def r3823 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3823 : ¬ Reader r3823 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3823

def r3824 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3824 : ¬ Reader r3824 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3824

def r3825 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3825 : ¬ Reader r3825 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3825

def r3826 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3826 : ¬ Reader r3826 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3826

def r3827 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3827 : ¬ Reader r3827 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3827

def r3828 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3828 : ¬ Reader r3828 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.var 1), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3828

def r3829 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3829 : ¬ Reader r3829 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.var 0), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3829

def r3830 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3830 : ¬ Reader r3830 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3830

def r3831 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3831 : ¬ Reader r3831 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3831

def r3832 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3832 : ¬ Reader r3832 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3832

def r3833 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3833 : ¬ Reader r3833 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3833

def r3834 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3834 : ¬ Reader r3834 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))) [(.app (.var 1) (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3834

def r3835 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3835 : ¬ Reader r3835 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))) [(.app (.var 0) (.var 1))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3835

def r3836 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3836 : ¬ Reader r3836 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3836

def r3837 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3837 : ¬ Reader r3837 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3837

def r3838 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3838 : ¬ Reader r3838 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3838

def r3839 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3839 : ¬ Reader r3839 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3839

def r3840 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3840 : ¬ Reader r3840 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3840

def r3841 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3841 : ¬ Reader r3841 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3841

def r3842 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3842 : ¬ Reader r3842 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3842

def r3843 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3843 : ¬ Reader r3843 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3843

def r3844 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3844 : ¬ Reader r3844 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3844

def r3845 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3845 : ¬ Reader r3845 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3845

def r3846 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3846 : ¬ Reader r3846 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3846

def r3847 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3847 : ¬ Reader r3847 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3847

def r3848 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3848 : ¬ Reader r3848 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3848

def r3849 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3849 : ¬ Reader r3849 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3849

def r3850 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3850 : ¬ Reader r3850 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3850

def r3851 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3851 : ¬ Reader r3851 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3851

def r3852 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3852 : ¬ Reader r3852 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3852

def r3853 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3853 : ¬ Reader r3853 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 0), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3853

def r3854 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3854 : ¬ Reader r3854 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3854

def r3855 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3855 : ¬ Reader r3855 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3855

def r3856 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3856 : ¬ Reader r3856 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3856

def r3857 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3857 : ¬ Reader r3857 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3857

def r3858 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3858 : ¬ Reader r3858 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3858

def r3859 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3859 : ¬ Reader r3859 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3859

def r3860 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3860 : ¬ Reader r3860 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3860

def r3861 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3861 : ¬ Reader r3861 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3861

def r3862 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3862 : ¬ Reader r3862 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3862

def r3863 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3863 : ¬ Reader r3863 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3863

def r3864 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3864 : ¬ Reader r3864 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3864

def r3865 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3865 : ¬ Reader r3865 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 0), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3865

def r3866 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3866 : ¬ Reader r3866 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3866

def r3867 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3867 : ¬ Reader r3867 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3867

def r3868 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3868 : ¬ Reader r3868 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3868

def r3869 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3869 : ¬ Reader r3869 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3869

def r3870 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3870 : ¬ Reader r3870 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3870

def r3871 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3871 : ¬ Reader r3871 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3871

def r3872 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3872 : ¬ Reader r3872 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3872

def r3873 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3873 : ¬ Reader r3873 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3873

def r3874 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3874 : ¬ Reader r3874 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3874

def r3875 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3875 : ¬ Reader r3875 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3875

def r3876 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3876 : ¬ Reader r3876 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3876

def r3877 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3877 : ¬ Reader r3877 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3877

def r3878 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3878 : ¬ Reader r3878 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3878

def r3879 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3879 : ¬ Reader r3879 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3879

def r3880 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3880 : ¬ Reader r3880 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3880

def r3881 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3881 : ¬ Reader r3881 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3881

def r3882 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3882 : ¬ Reader r3882 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3882

def r3883 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3883 : ¬ Reader r3883 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3883

def r3884 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3884 : ¬ Reader r3884 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3884

def r3885 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3885 : ¬ Reader r3885 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3885

def r3886 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3886 : ¬ Reader r3886 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3886

def r3887 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3887 : ¬ Reader r3887 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3887

def r3888 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3888 : ¬ Reader r3888 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3888

def r3889 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3889 : ¬ Reader r3889 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3889

def r3890 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3890 : ¬ Reader r3890 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3890

def r3891 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3891 : ¬ Reader r3891 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3891

def r3892 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3892 : ¬ Reader r3892 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3892

def r3893 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3893 : ¬ Reader r3893 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3893

def r3894 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3894 : ¬ Reader r3894 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))))) [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3894

def r3895 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3895 : ¬ Reader r3895 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3895

def r3896 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3896 : ¬ Reader r3896 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3896

def r3897 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3897 : ¬ Reader r3897 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3897

def r3898 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3898 : ¬ Reader r3898 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3898

def r3899 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3899 : ¬ Reader r3899 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3899

def r3900 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3900 : ¬ Reader r3900 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))))) [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3900

def r3901 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3901 : ¬ Reader r3901 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3901

def r3902 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3902 : ¬ Reader r3902 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3902

def r3903 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3903 : ¬ Reader r3903 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3903

def r3904 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3904 : ¬ Reader r3904 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3904

def r3905 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3905 : ¬ Reader r3905 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3905

def r3906 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3906 : ¬ Reader r3906 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3906

def r3907 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3907 : ¬ Reader r3907 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3907

def r3908 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3908 : ¬ Reader r3908 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3908

def r3909 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3909 : ¬ Reader r3909 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3909

def r3910 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3910 : ¬ Reader r3910 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3910

def r3911 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3911 : ¬ Reader r3911 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3911

def r3912 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3912 : ¬ Reader r3912 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)))) [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3912

def r3913 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3913 : ¬ Reader r3913 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3913

def r3914 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3914 : ¬ Reader r3914 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)))) [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3914

def r3915 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3915 : ¬ Reader r3915 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3915

def r3916 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3916 : ¬ Reader r3916 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3916

def r3917 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3917 : ¬ Reader r3917 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3917

def r3918 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3918 : ¬ Reader r3918 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3918

def r3919 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3919 : ¬ Reader r3919 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3919

def r3920 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3920 : ¬ Reader r3920 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3920

def r3921 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3921 : ¬ Reader r3921 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3921

def r3922 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3922 : ¬ Reader r3922 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3922

def r3923 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3923 : ¬ Reader r3923 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3923

def r3924 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3924 : ¬ Reader r3924 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3924

def r3925 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3925 : ¬ Reader r3925 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3925

def r3926 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3926 : ¬ Reader r3926 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3926

def r3927 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3927 : ¬ Reader r3927 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3927

def r3928 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3928 : ¬ Reader r3928 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3928

def r3929 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3929 : ¬ Reader r3929 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3929

def r3930 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3930 : ¬ Reader r3930 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3930

def r3931 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3931 : ¬ Reader r3931 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3931

def r3932 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3932 : ¬ Reader r3932 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3932

def r3933 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3933 : ¬ Reader r3933 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3933

def r3934 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3934 : ¬ Reader r3934 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3934

def r3935 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3935 : ¬ Reader r3935 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3935

def r3936 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3936 : ¬ Reader r3936 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3936

def r3937 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3937 : ¬ Reader r3937 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3937

def r3938 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3938 : ¬ Reader r3938 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3938

def r3939 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3939 : ¬ Reader r3939 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3939

def r3940 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3940 : ¬ Reader r3940 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3940

def r3941 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3941 : ¬ Reader r3941 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3941

def r3942 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3942 : ¬ Reader r3942 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3942

def r3943 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3943 : ¬ Reader r3943 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3943

def r3944 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3944 : ¬ Reader r3944 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3944

def r3945 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3945 : ¬ Reader r3945 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3945

def r3946 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3946 : ¬ Reader r3946 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3946

def r3947 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3947 : ¬ Reader r3947 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3947

def r3948 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3948 : ¬ Reader r3948 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3948

def r3949 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3949 : ¬ Reader r3949 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3949

def r3950 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3950 : ¬ Reader r3950 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 1) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3950

def r3951 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3951 : ¬ Reader r3951 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.var 1)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3951

def r3952 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3952 : ¬ Reader r3952 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3952

def r3953 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3953 : ¬ Reader r3953 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3953

def r3954 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3954 : ¬ Reader r3954 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3954

def r3955 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3955 : ¬ Reader r3955 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3955

def r3956 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3956 : ¬ Reader r3956 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3956

def r3957 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3957 : ¬ Reader r3957 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3957

def r3958 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3958 : ¬ Reader r3958 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3958

def r3959 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3959 : ¬ Reader r3959 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3959

def r3960 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3960 : ¬ Reader r3960 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3960

def r3961 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3961 : ¬ Reader r3961 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3961

def r3962 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3962 : ¬ Reader r3962 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3962

def r3963 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3963 : ¬ Reader r3963 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3963

def r3964 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3964 : ¬ Reader r3964 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3964

def r3965 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3965 : ¬ Reader r3965 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3965

def r3966 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3966 : ¬ Reader r3966 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3966

def r3967 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3967 : ¬ Reader r3967 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))) [(.app (.var 1) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3967

def r3968 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3968 : ¬ Reader r3968 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3968

def r3969 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3969 : ¬ Reader r3969 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))) [(.app (.var 0) (.var 1))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3969

def r3970 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3970 : ¬ Reader r3970 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3970

def r3971 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3971 : ¬ Reader r3971 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3971

def r3972 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3972 : ¬ Reader r3972 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3972

def r3973 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3973 : ¬ Reader r3973 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3973

def r3974 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3974 : ¬ Reader r3974 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3974

def r3975 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3975 : ¬ Reader r3975 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3975

def r3976 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3976 : ¬ Reader r3976 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3976

def r3977 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3977 : ¬ Reader r3977 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3977

def r3978 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3978 : ¬ Reader r3978 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3978

def r3979 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3979 : ¬ Reader r3979 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3979

def r3980 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3980 : ¬ Reader r3980 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3980

def r3981 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3981 : ¬ Reader r3981 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3981

def r3982 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3982 : ¬ Reader r3982 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3982

def r3983 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3983 : ¬ Reader r3983 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3983

def r3984 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3984 : ¬ Reader r3984 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3984

def r3985 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3985 : ¬ Reader r3985 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 0), (.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3985

def r3986 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3986 : ¬ Reader r3986 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3986

def r3987 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3987 : ¬ Reader r3987 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3987

def r3988 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3988 : ¬ Reader r3988 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3988

def r3989 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3989 : ¬ Reader r3989 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3989

def r3990 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject3990 : ¬ Reader r3990 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3990

def r3991 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3991 : ¬ Reader r3991 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3991

def r3992 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3992 : ¬ Reader r3992 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3992

def r3993 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3993 : ¬ Reader r3993 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3993

def r3994 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3994 : ¬ Reader r3994 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3994

def r3995 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3995 : ¬ Reader r3995 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3995

def r3996 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3996 : ¬ Reader r3996 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3996

def r3997 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3997 : ¬ Reader r3997 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3997

def r3998 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject3998 : ¬ Reader r3998 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3998

def r3999 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject3999 : ¬ Reader r3999 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3999

def r4000 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4000 : ¬ Reader r4000 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4000

def r4001 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4001 : ¬ Reader r4001 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4001

def r4002 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4002 : ¬ Reader r4002 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4002

def r4003 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4003 : ¬ Reader r4003 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4003

def r4004 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4004 : ¬ Reader r4004 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4004

def r4005 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4005 : ¬ Reader r4005 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4005

def r4006 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4006 : ¬ Reader r4006 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4006

def r4007 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4007 : ¬ Reader r4007 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4007

def r4008 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4008 : ¬ Reader r4008 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4008

def r4009 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4009 : ¬ Reader r4009 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4009

def r4010 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4010 : ¬ Reader r4010 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4010

def r4011 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4011 : ¬ Reader r4011 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4011

def r4013 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4013 : ¬ Reader r4013 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.var 1))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4013

def r4015 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4015 : ¬ Reader r4015 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 2))))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4015

def r4017 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4017 : ¬ Reader r4017 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4017

def r4019 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4019 : ¬ Reader r4019 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 2)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4019

def r4021 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4021 : ¬ Reader r4021 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))), (.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4021

def r4023 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4023 : ¬ Reader r4023 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4023

def r4025 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4025 : ¬ Reader r4025 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4025

def r4027 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4027 : ¬ Reader r4027 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4027

def r4029 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4029 : ¬ Reader r4029 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4029

def r4031 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4031 : ¬ Reader r4031 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4031

def r4033 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4033 : ¬ Reader r4033 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4033

def r4035 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4035 : ¬ Reader r4035 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 2) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4035

def r4037 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4037 : ¬ Reader r4037 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4037

def r4039 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4039 : ¬ Reader r4039 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 2)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4039

def r4041 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4041 : ¬ Reader r4041 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4041

def r4043 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4043 : ¬ Reader r4043 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4043

def r4045 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4045 : ¬ Reader r4045 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4045

def r4047 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4047 : ¬ Reader r4047 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4047

def r4049 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4049 : ¬ Reader r4049 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4049

def r4051 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4051 : ¬ Reader r4051 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4051

def r4053 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4053 : ¬ Reader r4053 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4053

def r4055 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4055 : ¬ Reader r4055 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4055

def r4057 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4057 : ¬ Reader r4057 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4057

def r4059 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4059 : ¬ Reader r4059 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4059

def r4061 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4061 : ¬ Reader r4061 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4061

def r4063 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4063 : ¬ Reader r4063 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4063

def r4065 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4065 : ¬ Reader r4065 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 2))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4065

def r4067 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4067 : ¬ Reader r4067 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4067

def r4069 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4069 : ¬ Reader r4069 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.var 2) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4069

def r4071 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4071 : ¬ Reader r4071 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.var 1) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4071

def r4073 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4073 : ¬ Reader r4073 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 2)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4073

def r4075 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4075 : ¬ Reader r4075 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.var 1), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4075

def r4077 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4077 : ¬ Reader r4077 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 0), (.var 1), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4077

def r4079 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4079 : ¬ Reader r4079 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4079

def r4081 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4081 : ¬ Reader r4081 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4081

def r4083 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4083 : ¬ Reader r4083 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4083

def r4085 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4085 : ¬ Reader r4085 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4085

def r4087 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4087 : ¬ Reader r4087 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)), (.var 1), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4087

def r4089 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4089 : ¬ Reader r4089 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4089

def r4091 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4091 : ¬ Reader r4091 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4091

def r4093 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4093 : ¬ Reader r4093 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4093

def r4095 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4095 : ¬ Reader r4095 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4095

def r4097 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4097 : ¬ Reader r4097 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4097

def r4099 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4099 : ¬ Reader r4099 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4099

def r4101 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4101 : ¬ Reader r4101 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4101

def r4103 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4103 : ¬ Reader r4103 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4103

def r4105 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4105 : ¬ Reader r4105 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4105

def r4107 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4107 : ¬ Reader r4107 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4107

def r4109 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4109 : ¬ Reader r4109 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4109

def r4111 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4111 : ¬ Reader r4111 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4111

def r4113 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4113 : ¬ Reader r4113 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4113

def r4115 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4115 : ¬ Reader r4115 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4115

def r4117 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4117 : ¬ Reader r4117 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4117

def r4119 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4119 : ¬ Reader r4119 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4119

def r4121 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4121 : ¬ Reader r4121 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4121

def r4123 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4123 : ¬ Reader r4123 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4123

def r4125 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4125 : ¬ Reader r4125 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4125

def r4127 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4127 : ¬ Reader r4127 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 0), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4127

def r4129 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4129 : ¬ Reader r4129 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4129

def r4131 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4131 : ¬ Reader r4131 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4131

def r4133 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4133 : ¬ Reader r4133 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4133

def r4135 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4135 : ¬ Reader r4135 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4135

def r4137 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4137 : ¬ Reader r4137 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1)))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4137

def r4139 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4139 : ¬ Reader r4139 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 2)))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4139

def r4141 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4141 : ¬ Reader r4141 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4141

def r4143 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4143 : ¬ Reader r4143 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4143

def r4145 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4145 : ¬ Reader r4145 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4145

def r4147 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4147 : ¬ Reader r4147 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4147

def r4149 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4149 : ¬ Reader r4149 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4149

def r4151 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4151 : ¬ Reader r4151 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4151

def r4153 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4153 : ¬ Reader r4153 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4153

def r4155 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4155 : ¬ Reader r4155 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4155

def r4157 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4157 : ¬ Reader r4157 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 2))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4157

def r4159 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4159 : ¬ Reader r4159 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4159

def r4161 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4161 : ¬ Reader r4161 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4161

def r4163 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4163 : ¬ Reader r4163 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4163

def r4165 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4165 : ¬ Reader r4165 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4165

def r4167 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4167 : ¬ Reader r4167 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4167

def r4169 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4169 : ¬ Reader r4169 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 2)))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4169

def r4171 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4171 : ¬ Reader r4171 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4171

def r4172 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4172 : ¬ Reader r4172 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4172

def r4173 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4173 : ¬ Reader r4173 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4173

def r4174 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4174 : ¬ Reader r4174 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4174

def r4175 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4175 : ¬ Reader r4175 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))))) [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4175

def r4176 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4176 : ¬ Reader r4176 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4176

def r4177 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4177 : ¬ Reader r4177 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4177

def r4178 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4178 : ¬ Reader r4178 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4178

def r4179 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4179 : ¬ Reader r4179 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4179

def r4180 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4180 : ¬ Reader r4180 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4180

def r4181 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4181 : ¬ Reader r4181 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))))) [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4181

def r4182 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4182 : ¬ Reader r4182 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4182

def r4183 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4183 : ¬ Reader r4183 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4183

def r4184 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4184 : ¬ Reader r4184 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4184

def r4185 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4185 : ¬ Reader r4185 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4185

def r4186 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4186 : ¬ Reader r4186 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4186

def r4187 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4187 : ¬ Reader r4187 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4187

def r4188 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4188 : ¬ Reader r4188 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4188

def r4189 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4189 : ¬ Reader r4189 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4189

def r4190 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4190 : ¬ Reader r4190 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4190

def r4191 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4191 : ¬ Reader r4191 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4191

def r4192 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4192 : ¬ Reader r4192 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4192

def r4193 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4193 : ¬ Reader r4193 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)))) [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4193

def r4194 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4194 : ¬ Reader r4194 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4194

def r4195 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4195 : ¬ Reader r4195 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)))) [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4195

def r4196 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4196 : ¬ Reader r4196 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4196

def r4197 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4197 : ¬ Reader r4197 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4197

def r4198 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4198 : ¬ Reader r4198 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4198

def r4199 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4199 : ¬ Reader r4199 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4199

def r4200 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4200 : ¬ Reader r4200 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4200

def r4201 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4201 : ¬ Reader r4201 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4201

def r4202 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4202 : ¬ Reader r4202 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4202

def r4203 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4203 : ¬ Reader r4203 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4203

def r4204 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4204 : ¬ Reader r4204 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4204

def r4205 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4205 : ¬ Reader r4205 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4205

def r4206 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4206 : ¬ Reader r4206 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4206

def r4207 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4207 : ¬ Reader r4207 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4207

def r4208 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4208 : ¬ Reader r4208 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4208

def r4209 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4209 : ¬ Reader r4209 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4209

def r4210 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4210 : ¬ Reader r4210 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4210

def r4211 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4211 : ¬ Reader r4211 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4211

def r4212 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4212 : ¬ Reader r4212 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4212

def r4213 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4213 : ¬ Reader r4213 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4213

def r4214 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4214 : ¬ Reader r4214 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4214

def r4215 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4215 : ¬ Reader r4215 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4215

def r4216 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4216 : ¬ Reader r4216 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4216

def r4217 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4217 : ¬ Reader r4217 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4217

def r4218 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4218 : ¬ Reader r4218 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4218

def r4219 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4219 : ¬ Reader r4219 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4219

def r4220 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4220 : ¬ Reader r4220 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4220

def r4221 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4221 : ¬ Reader r4221 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4221

def r4222 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4222 : ¬ Reader r4222 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4222

def r4223 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4223 : ¬ Reader r4223 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4223

def r4224 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4224 : ¬ Reader r4224 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4224

def r4225 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4225 : ¬ Reader r4225 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4225

def r4226 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4226 : ¬ Reader r4226 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4226

def r4227 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4227 : ¬ Reader r4227 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4227

def r4228 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4228 : ¬ Reader r4228 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4228

def r4229 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4229 : ¬ Reader r4229 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4229

def r4230 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4230 : ¬ Reader r4230 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4230

def r4231 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4231 : ¬ Reader r4231 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4231

def r4232 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4232 : ¬ Reader r4232 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4232

def r4233 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4233 : ¬ Reader r4233 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4233

def r4234 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4234 : ¬ Reader r4234 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4234

def r4235 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4235 : ¬ Reader r4235 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4235

def r4236 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4236 : ¬ Reader r4236 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4236

def r4237 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4237 : ¬ Reader r4237 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4237

def r4238 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4238 : ¬ Reader r4238 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4238

def r4239 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4239 : ¬ Reader r4239 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4239

def r4240 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4240 : ¬ Reader r4240 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4240

def r4241 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4241 : ¬ Reader r4241 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4241

def r4242 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4242 : ¬ Reader r4242 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4242

def r4243 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4243 : ¬ Reader r4243 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4243

def r4244 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4244 : ¬ Reader r4244 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4244

def r4245 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4245 : ¬ Reader r4245 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4245

def r4246 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4246 : ¬ Reader r4246 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4246

def r4247 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4247 : ¬ Reader r4247 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4247

def r4248 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4248 : ¬ Reader r4248 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4248

def r4249 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4249 : ¬ Reader r4249 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4249

def r4250 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4250 : ¬ Reader r4250 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4250

def r4251 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4251 : ¬ Reader r4251 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4251

def r4252 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4252 : ¬ Reader r4252 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4252

def r4253 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4253 : ¬ Reader r4253 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4253

def r4254 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4254 : ¬ Reader r4254 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4254

def r4255 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4255 : ¬ Reader r4255 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4255

def r4256 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4256 : ¬ Reader r4256 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4256

def r4257 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4257 : ¬ Reader r4257 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4257

def r4258 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4258 : ¬ Reader r4258 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4258

def r4259 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4259 : ¬ Reader r4259 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))) [(.app (.var 1) (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4259

def r4260 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4260 : ¬ Reader r4260 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4260

def r4261 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4261 : ¬ Reader r4261 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))) [(.app (.var 0) (.var 1))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4261

def r4262 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4262 : ¬ Reader r4262 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4262

def r4263 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4263 : ¬ Reader r4263 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4263

def r4264 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4264 : ¬ Reader r4264 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4264

def r4265 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4265 : ¬ Reader r4265 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.var 0)), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4265

def r4266 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4266 : ¬ Reader r4266 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 1) (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4266

def r4267 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4267 : ¬ Reader r4267 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4267

def r4268 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4268 : ¬ Reader r4268 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.var 1)), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4268

def r4269 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4269 : ¬ Reader r4269 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 0) (.var 1)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4269

def r4270 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4270 : ¬ Reader r4270 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4270

def r4271 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4271 : ¬ Reader r4271 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4271

def r4272 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4272 : ¬ Reader r4272 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4272

def r4273 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4273 : ¬ Reader r4273 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)), (.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4273

def r4274 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4274 : ¬ Reader r4274 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4274

def r4275 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4275 : ¬ Reader r4275 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4275

def r4276 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4276 : ¬ Reader r4276 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4276

def r4277 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4277 : ¬ Reader r4277 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4277

def r4278 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4278 : ¬ Reader r4278 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4278

def r4279 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4279 : ¬ Reader r4279 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4279

def r4280 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4280 : ¬ Reader r4280 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4280

def r4281 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4281 : ¬ Reader r4281 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4281

def r4282 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4282 : ¬ Reader r4282 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4282

def r4283 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4283 : ¬ Reader r4283 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4283

def r4284 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4284 : ¬ Reader r4284 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4284

def r4285 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4285 : ¬ Reader r4285 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4285

def r4286 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4286 : ¬ Reader r4286 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4286

def r4287 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4287 : ¬ Reader r4287 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4287

def r4288 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4288 : ¬ Reader r4288 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4288

def r4289 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4289 : ¬ Reader r4289 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4289

def r4290 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4290 : ¬ Reader r4290 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) [(.var 1)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4290

def r4291 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem reject4291 : ¬ Reader r4291 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4291

def r4292 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem reject4292 : ¬ Reader r4292 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4292

def r4293 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem reject4293 : ¬ Reader r4293 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4293

def r4295 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4295 : ¬ Reader r4295 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4295

def r4297 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4297 : ¬ Reader r4297 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4297

def r4299 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4299 : ¬ Reader r4299 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4299

def r4301 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4301 : ¬ Reader r4301 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4301

def r4303 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4303 : ¬ Reader r4303 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4303

def r4305 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4305 : ¬ Reader r4305 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4305

def r4307 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4307 : ¬ Reader r4307 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4307

def r4309 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4309 : ¬ Reader r4309 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4309

def r4311 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4311 : ¬ Reader r4311 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4311

def r4313 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4313 : ¬ Reader r4313 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4313

def r4315 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4315 : ¬ Reader r4315 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4315

def r4317 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4317 : ¬ Reader r4317 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4317

def r4319 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4319 : ¬ Reader r4319 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4319

def r4321 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4321 : ¬ Reader r4321 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4321

def r4323 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4323 : ¬ Reader r4323 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4323

def r4325 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4325 : ¬ Reader r4325 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4325

def r4327 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4327 : ¬ Reader r4327 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4327

def r4329 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4329 : ¬ Reader r4329 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4329

def r4331 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4331 : ¬ Reader r4331 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4331

def r4333 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4333 : ¬ Reader r4333 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4333

def r4335 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4335 : ¬ Reader r4335 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4335

def r4337 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4337 : ¬ Reader r4337 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4337

def r4339 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4339 : ¬ Reader r4339 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4339

def r4341 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4341 : ¬ Reader r4341 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4341

def r4343 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4343 : ¬ Reader r4343 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4343

def r4345 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4345 : ¬ Reader r4345 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4345

def r4347 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4347 : ¬ Reader r4347 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4347

def r4349 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4349 : ¬ Reader r4349 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4349

def r4351 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4351 : ¬ Reader r4351 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4351

def r4353 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4353 : ¬ Reader r4353 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4353

def r4355 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4355 : ¬ Reader r4355 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4355

def r4357 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem reject4357 : ¬ Reader r4357 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject4357
end Blc.HandlerLet.Exceptions4B_06
