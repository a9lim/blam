import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic21
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r7631 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7631 : ¬ Reader r7631 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7631

def r7632 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7632 : ¬ Reader r7632 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7632

def r7633 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7633 : ¬ Reader r7633 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7633

def r7634 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7634 : ¬ Reader r7634 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7634

def r7635 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7635 : ¬ Reader r7635 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7635

def r7636 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7636 : ¬ Reader r7636 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7636

def r7637 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7637 : ¬ Reader r7637 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7637

def r7638 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7638 : ¬ Reader r7638 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7638

def r7639 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject7639 : ¬ Reader r7639 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7639

def r7640 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject7640 : ¬ Reader r7640 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7640

def r7641 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject7641 : ¬ Reader r7641 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7641

def r7642 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject7642 : ¬ Reader r7642 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7642

def r7643 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7643 : ¬ Reader r7643 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7643

def r7644 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7644 : ¬ Reader r7644 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7644

def r7645 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7645 : ¬ Reader r7645 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7645

def r7646 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7646 : ¬ Reader r7646 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7646

def r7647 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7647 : ¬ Reader r7647 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7647

def r7648 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7648 : ¬ Reader r7648 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7648

def r7649 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7649 : ¬ Reader r7649 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7649

def r7650 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7650 : ¬ Reader r7650 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7650

def r7651 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject7651 : ¬ Reader r7651 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7651

def r7658 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7658 : ¬ Reader r7658 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7658

def r7659 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7659 : ¬ Reader r7659 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7659

def r7660 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7660 : ¬ Reader r7660 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7660

def r7661 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7661 : ¬ Reader r7661 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7661

def r7662 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7662 : ¬ Reader r7662 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7662

def r7663 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7663 : ¬ Reader r7663 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7663

def r7664 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7664 : ¬ Reader r7664 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7664

def r7665 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7665 : ¬ Reader r7665 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7665

def r7666 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7666 : ¬ Reader r7666 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7666

def r7667 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7667 : ¬ Reader r7667 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7667

def r7668 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7668 : ¬ Reader r7668 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7668

def r7669 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7669 : ¬ Reader r7669 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7669

def r7676 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7676 : ¬ Reader r7676 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7676

def r7677 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7677 : ¬ Reader r7677 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7677

def r7678 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7678 : ¬ Reader r7678 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7678

def r7679 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7679 : ¬ Reader r7679 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7679

def r7680 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7680 : ¬ Reader r7680 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7680

def r7681 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7681 : ¬ Reader r7681 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7681

def r7694 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject7694 : ¬ Reader r7694 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7694

def r7695 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject7695 : ¬ Reader r7695 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7695

def r7696 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.var 0))
theorem reject7696 : ¬ Reader r7696 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7696

def r7697 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))
theorem reject7697 : ¬ Reader r7697 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7697

def r7698 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))
theorem reject7698 : ¬ Reader r7698 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7698

def r7699 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))
theorem reject7699 : ¬ Reader r7699 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7699

def r7700 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 1)))))
theorem reject7700 : ¬ Reader r7700 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7700

def r7701 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))
theorem reject7701 : ¬ Reader r7701 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7701

def r7702 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 1))
theorem reject7702 : ¬ Reader r7702 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7702

def r7703 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1)))))
theorem reject7703 : ¬ Reader r7703 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7703

def r7704 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject7704 : ¬ Reader r7704 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7704

def r7705 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject7705 : ¬ Reader r7705 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7705

def r7706 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject7706 : ¬ Reader r7706 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7706

def r7707 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject7707 : ¬ Reader r7707 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7707

def r7708 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject7708 : ¬ Reader r7708 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7708

def r7709 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject7709 : ¬ Reader r7709 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7709

def r7710 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0))))
theorem reject7710 : ¬ Reader r7710 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7710

def r7711 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))
theorem reject7711 : ¬ Reader r7711 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7711

def r7712 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 0)))))
theorem reject7712 : ¬ Reader r7712 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7712

def r7713 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 0)))
theorem reject7713 : ¬ Reader r7713 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7713

def r7714 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject7714 : ¬ Reader r7714 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7714

def r7715 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0)))))
theorem reject7715 : ¬ Reader r7715 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7715

def r7716 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject7716 : ¬ Reader r7716 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7716

def r7717 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject7717 : ¬ Reader r7717 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7717

def r7718 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7718 : ¬ Reader r7718 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7718

def r7719 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7719 : ¬ Reader r7719 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7719

def r7720 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7720 : ¬ Reader r7720 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7720

def r7724 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7724 : ¬ Reader r7724 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7724

def r7725 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7725 : ¬ Reader r7725 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7725

def r7726 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7726 : ¬ Reader r7726 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7726

def r7727 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7727 : ¬ Reader r7727 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7727

def r7728 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7728 : ¬ Reader r7728 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7728

def r7729 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7729 : ¬ Reader r7729 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7729

def r7730 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7730 : ¬ Reader r7730 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7730

def r7731 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7731 : ¬ Reader r7731 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7731

def r7732 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7732 : ¬ Reader r7732 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7732

def r7733 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7733 : ¬ Reader r7733 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7733

def r7734 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7734 : ¬ Reader r7734 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7734

def r7735 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7735 : ¬ Reader r7735 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7735

def r7748 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7748 : ¬ Reader r7748 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7748

def r7749 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7749 : ¬ Reader r7749 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7749

def r7750 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7750 : ¬ Reader r7750 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7750

def r7751 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7751 : ¬ Reader r7751 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7751

def r7752 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7752 : ¬ Reader r7752 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7752

def r7753 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7753 : ¬ Reader r7753 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7753

def r7754 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7754 : ¬ Reader r7754 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7754

def r7755 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7755 : ¬ Reader r7755 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7755

def r7756 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7756 : ¬ Reader r7756 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7756

def r7757 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7757 : ¬ Reader r7757 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7757

def r7758 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7758 : ¬ Reader r7758 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7758

def r7759 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7759 : ¬ Reader r7759 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7759

def r7760 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7760 : ¬ Reader r7760 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7760

def r7761 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7761 : ¬ Reader r7761 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7761

def r7762 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7762 : ¬ Reader r7762 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7762

def r7763 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7763 : ¬ Reader r7763 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7763

def r7764 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7764 : ¬ Reader r7764 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7764

def r7765 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7765 : ¬ Reader r7765 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7765

def r7766 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7766 : ¬ Reader r7766 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7766

def r7767 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7767 : ¬ Reader r7767 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7767

def r7768 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7768 : ¬ Reader r7768 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7768

def r7769 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7769 : ¬ Reader r7769 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7769

def r7770 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7770 : ¬ Reader r7770 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7770

def r7771 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7771 : ¬ Reader r7771 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7771

def r7772 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7772 : ¬ Reader r7772 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7772

def r7773 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7773 : ¬ Reader r7773 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7773

def r7774 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7774 : ¬ Reader r7774 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7774

def r7775 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7775 : ¬ Reader r7775 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7775

def r7776 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7776 : ¬ Reader r7776 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7776

def r7777 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7777 : ¬ Reader r7777 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7777

def r7778 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject7778 : ¬ Reader r7778 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7778

def r7779 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject7779 : ¬ Reader r7779 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7779

def r7780 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject7780 : ¬ Reader r7780 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7780

def r7781 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7781 : ¬ Reader r7781 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7781

def r7782 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7782 : ¬ Reader r7782 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7782

def r7783 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7783 : ¬ Reader r7783 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7783

def r7784 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7784 : ¬ Reader r7784 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7784

def r7785 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7785 : ¬ Reader r7785 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7785

def r7786 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7786 : ¬ Reader r7786 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7786

def r7787 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7787 : ¬ Reader r7787 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7787

def r7788 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7788 : ¬ Reader r7788 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7788

def r7789 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject7789 : ¬ Reader r7789 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7789

def r7790 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject7790 : ¬ Reader r7790 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7790

def r7791 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject7791 : ¬ Reader r7791 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7791

def r7792 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject7792 : ¬ Reader r7792 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7792

def r7793 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7793 : ¬ Reader r7793 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7793

def r7794 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7794 : ¬ Reader r7794 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7794

def r7795 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7795 : ¬ Reader r7795 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7795

def r7796 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7796 : ¬ Reader r7796 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7796

def r7797 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7797 : ¬ Reader r7797 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7797

def r7798 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7798 : ¬ Reader r7798 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7798

def r7799 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7799 : ¬ Reader r7799 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7799

def r7800 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7800 : ¬ Reader r7800 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7800

def r7801 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject7801 : ¬ Reader r7801 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7801

def r7802 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7802 : ¬ Reader r7802 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7802

def r7803 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7803 : ¬ Reader r7803 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7803

def r7804 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7804 : ¬ Reader r7804 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7804

def r7805 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7805 : ¬ Reader r7805 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7805

def r7806 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7806 : ¬ Reader r7806 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7806

def r7807 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7807 : ¬ Reader r7807 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7807

def r7814 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7814 : ¬ Reader r7814 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7814

def r7815 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7815 : ¬ Reader r7815 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7815

def r7816 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7816 : ¬ Reader r7816 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7816

def r7817 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7817 : ¬ Reader r7817 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7817

def r7818 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7818 : ¬ Reader r7818 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7818

def r7819 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7819 : ¬ Reader r7819 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7819

def r7820 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7820 : ¬ Reader r7820 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7820

def r7821 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7821 : ¬ Reader r7821 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7821

def r7822 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7822 : ¬ Reader r7822 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7822

def r7823 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7823 : ¬ Reader r7823 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7823

def r7824 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7824 : ¬ Reader r7824 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7824

def r7825 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7825 : ¬ Reader r7825 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7825

def r7826 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject7826 : ¬ Reader r7826 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7826

def r7827 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject7827 : ¬ Reader r7827 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7827

def r7828 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.var 0))
theorem reject7828 : ¬ Reader r7828 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7828

def r7829 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))
theorem reject7829 : ¬ Reader r7829 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7829

def r7830 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))
theorem reject7830 : ¬ Reader r7830 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7830

def r7831 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))
theorem reject7831 : ¬ Reader r7831 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7831

def r7832 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 1)))))
theorem reject7832 : ¬ Reader r7832 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7832

def r7833 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))
theorem reject7833 : ¬ Reader r7833 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7833

def r7834 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 1))
theorem reject7834 : ¬ Reader r7834 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7834

def r7835 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1)))))
theorem reject7835 : ¬ Reader r7835 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7835

def r7836 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject7836 : ¬ Reader r7836 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7836

def r7837 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject7837 : ¬ Reader r7837 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7837

def r7838 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7838 : ¬ Reader r7838 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7838

def r7839 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7839 : ¬ Reader r7839 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7839

def r7840 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7840 : ¬ Reader r7840 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7840

def r7841 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7841 : ¬ Reader r7841 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7841

def r7842 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7842 : ¬ Reader r7842 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7842

def r7843 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7843 : ¬ Reader r7843 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7843

def r7844 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7844 : ¬ Reader r7844 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7844

def r7845 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7845 : ¬ Reader r7845 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7845

def r7846 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7846 : ¬ Reader r7846 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7846

def r7847 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7847 : ¬ Reader r7847 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7847

def r7848 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7848 : ¬ Reader r7848 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7848

def r7849 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7849 : ¬ Reader r7849 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7849

def r7850 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7850 : ¬ Reader r7850 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7850

def r7851 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7851 : ¬ Reader r7851 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7851

def r7852 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7852 : ¬ Reader r7852 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7852

def r7859 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7859 : ¬ Reader r7859 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7859

def r7860 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7860 : ¬ Reader r7860 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7860

def r7861 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7861 : ¬ Reader r7861 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7861

def r7862 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7862 : ¬ Reader r7862 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7862

def r7863 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7863 : ¬ Reader r7863 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7863

def r7864 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7864 : ¬ Reader r7864 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7864

def r7865 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7865 : ¬ Reader r7865 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7865

def r7866 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7866 : ¬ Reader r7866 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7866

def r7867 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7867 : ¬ Reader r7867 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7867

def r7868 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7868 : ¬ Reader r7868 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7868

def r7869 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7869 : ¬ Reader r7869 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7869

def r7870 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7870 : ¬ Reader r7870 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7870

def r7883 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject7883 : ¬ Reader r7883 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7883

def r7884 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject7884 : ¬ Reader r7884 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7884

def r7885 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject7885 : ¬ Reader r7885 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7885

def r7886 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject7886 : ¬ Reader r7886 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7886

def r7887 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))
theorem reject7887 : ¬ Reader r7887 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7887

def r7888 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))
theorem reject7888 : ¬ Reader r7888 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7888

def r7889 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1)))))
theorem reject7889 : ¬ Reader r7889 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7889

def r7890 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject7890 : ¬ Reader r7890 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7890

def r7891 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject7891 : ¬ Reader r7891 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7891

def r7892 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))
theorem reject7892 : ¬ Reader r7892 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7892

def r7893 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7893 : ¬ Reader r7893 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7893

def r7894 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject7894 : ¬ Reader r7894 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7894

def r7895 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject7895 : ¬ Reader r7895 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7895

def r7896 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject7896 : ¬ Reader r7896 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7896

def r7897 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))
theorem reject7897 : ¬ Reader r7897 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7897

def r7898 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))
theorem reject7898 : ¬ Reader r7898 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7898

def r7899 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject7899 : ¬ Reader r7899 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7899

def r7900 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0)))))
theorem reject7900 : ¬ Reader r7900 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7900

def r7901 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject7901 : ¬ Reader r7901 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7901

def r7902 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject7902 : ¬ Reader r7902 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7902

def r7903 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0))
theorem reject7903 : ¬ Reader r7903 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7903

def r7904 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1))
theorem reject7904 : ¬ Reader r7904 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7904

def r7905 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject7905 : ¬ Reader r7905 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7905

def r7906 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject7906 : ¬ Reader r7906 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7906

def r7907 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject7907 : ¬ Reader r7907 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7907

def r7908 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
theorem reject7908 : ¬ Reader r7908 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7908

def r7909 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7909 : ¬ Reader r7909 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7909

def r7910 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject7910 : ¬ Reader r7910 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7910

def r7911 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject7911 : ¬ Reader r7911 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7911

def r7912 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject7912 : ¬ Reader r7912 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7912

def r7913 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject7913 : ¬ Reader r7913 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7913

def r7914 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject7914 : ¬ Reader r7914 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7914

def r7915 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject7915 : ¬ Reader r7915 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7915

def r7916 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject7916 : ¬ Reader r7916 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7916

def r7917 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))
theorem reject7917 : ¬ Reader r7917 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7917

def r7918 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))
theorem reject7918 : ¬ Reader r7918 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7918

def r7919 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1)))))
theorem reject7919 : ¬ Reader r7919 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7919

def r7920 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject7920 : ¬ Reader r7920 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7920

def r7921 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject7921 : ¬ Reader r7921 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7921

def r7922 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))
theorem reject7922 : ¬ Reader r7922 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7922

def r7923 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7923 : ¬ Reader r7923 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7923

def r7924 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject7924 : ¬ Reader r7924 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7924

def r7925 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject7925 : ¬ Reader r7925 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7925

def r7926 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject7926 : ¬ Reader r7926 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7926

def r7927 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject7927 : ¬ Reader r7927 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7927

def r7928 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject7928 : ¬ Reader r7928 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7928

def r7929 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject7929 : ¬ Reader r7929 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7929

def r7930 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject7930 : ¬ Reader r7930 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7930

def r7931 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject7931 : ¬ Reader r7931 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7931

def r7932 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
theorem reject7932 : ¬ Reader r7932 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7932

def r7933 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7933 : ¬ Reader r7933 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7933

def r7934 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject7934 : ¬ Reader r7934 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7934

def r7935 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject7935 : ¬ Reader r7935 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7935

def r7936 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject7936 : ¬ Reader r7936 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7936

def r7937 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject7937 : ¬ Reader r7937 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject7937

def r7938 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7938 : ¬ Reader r7938 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7938

def r7939 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject7939 : ¬ Reader r7939 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7939

def r7940 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject7940 : ¬ Reader r7940 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7940

def r7953 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject7953 : ¬ Reader r7953 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7953

def r7954 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject7954 : ¬ Reader r7954 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7954

def r7955 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject7955 : ¬ Reader r7955 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7955

def r7956 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7956 : ¬ Reader r7956 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7956

def r7957 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7957 : ¬ Reader r7957 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7957

def r7958 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7958 : ¬ Reader r7958 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7958

def r7959 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7959 : ¬ Reader r7959 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7959

def r7960 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7960 : ¬ Reader r7960 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7960

def r7961 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7961 : ¬ Reader r7961 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7961

def r7962 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7962 : ¬ Reader r7962 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7962

def r7963 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7963 : ¬ Reader r7963 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7963

def r7964 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject7964 : ¬ Reader r7964 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7964

def r7965 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject7965 : ¬ Reader r7965 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7965

def r7966 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject7966 : ¬ Reader r7966 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7966

def r7967 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject7967 : ¬ Reader r7967 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7967

def r7968 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7968 : ¬ Reader r7968 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7968

def r7969 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7969 : ¬ Reader r7969 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7969

def r7970 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7970 : ¬ Reader r7970 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7970

def r7971 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7971 : ¬ Reader r7971 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7971

def r7972 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7972 : ¬ Reader r7972 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7972

def r7973 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7973 : ¬ Reader r7973 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7973

def r7974 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7974 : ¬ Reader r7974 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7974

def r7975 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7975 : ¬ Reader r7975 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7975

def r7976 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject7976 : ¬ Reader r7976 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [(.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7976

def r7989 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject7989 : ¬ Reader r7989 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7989

def r7990 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject7990 : ¬ Reader r7990 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7990

def r7991 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject7991 : ¬ Reader r7991 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7991

def r7992 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7992 : ¬ Reader r7992 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7992

def r7993 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7993 : ¬ Reader r7993 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7993

def r7994 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7994 : ¬ Reader r7994 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7994

def r7995 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7995 : ¬ Reader r7995 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7995

def r7996 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7996 : ¬ Reader r7996 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7996

def r7997 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7997 : ¬ Reader r7997 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7997

def r7998 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7998 : ¬ Reader r7998 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7998

def r7999 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7999 : ¬ Reader r7999 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7999

def r8000 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8000 : ¬ Reader r8000 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8000

def r8001 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8001 : ¬ Reader r8001 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8001

def r8002 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8002 : ¬ Reader r8002 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8002

def r8003 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8003 : ¬ Reader r8003 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8003

def r8004 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8004 : ¬ Reader r8004 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8004

def r8005 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject8005 : ¬ Reader r8005 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8005

def r8006 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject8006 : ¬ Reader r8006 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8006

def r8007 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject8007 : ¬ Reader r8007 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8007

def r8008 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject8008 : ¬ Reader r8008 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8008

def r8009 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8009 : ¬ Reader r8009 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8009

def r8010 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8010 : ¬ Reader r8010 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8010

def r8011 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject8011 : ¬ Reader r8011 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8011

def r8012 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8012 : ¬ Reader r8012 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8012

def r8013 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8013 : ¬ Reader r8013 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8013

def r8014 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8014 : ¬ Reader r8014 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8014

def r8015 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8015 : ¬ Reader r8015 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8015

def r8016 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8016 : ¬ Reader r8016 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8016

def r8017 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject8017 : ¬ Reader r8017 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8017
end Blc.HandlerLet.XBasic21
