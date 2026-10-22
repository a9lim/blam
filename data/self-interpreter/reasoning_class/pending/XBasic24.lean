import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic24
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r8762 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject8762 : ¬ Reader r8762 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8762

def r8763 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject8763 : ¬ Reader r8763 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8763

def r8764 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8764 : ¬ Reader r8764 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8764

def r8765 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8765 : ¬ Reader r8765 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8765

def r8766 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject8766 : ¬ Reader r8766 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8766

def r8767 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject8767 : ¬ Reader r8767 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8767

def r8768 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject8768 : ¬ Reader r8768 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8768

def r8769 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject8769 : ¬ Reader r8769 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8769

def r8770 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8770 : ¬ Reader r8770 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8770

def r8771 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8771 : ¬ Reader r8771 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8771

def r8772 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject8772 : ¬ Reader r8772 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8772

def r8773 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject8773 : ¬ Reader r8773 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8773

def r8774 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject8774 : ¬ Reader r8774 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8774

def r8775 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject8775 : ¬ Reader r8775 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8775

def r8776 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8776 : ¬ Reader r8776 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8776

def r8777 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8777 : ¬ Reader r8777 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8777

def r8778 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8778 : ¬ Reader r8778 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8778

def r8779 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8779 : ¬ Reader r8779 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8779

def r8780 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8780 : ¬ Reader r8780 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8780

def r8781 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8781 : ¬ Reader r8781 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8781

def r8782 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8782 : ¬ Reader r8782 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8782

def r8783 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8783 : ¬ Reader r8783 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8783

def r8784 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8784 : ¬ Reader r8784 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8784

def r8785 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8785 : ¬ Reader r8785 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8785

def r8786 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8786 : ¬ Reader r8786 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8786

def r8787 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8787 : ¬ Reader r8787 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8787

def r8788 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8788 : ¬ Reader r8788 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8788

def r8789 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8789 : ¬ Reader r8789 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8789

def r8790 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8790 : ¬ Reader r8790 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8790

def r8791 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8791 : ¬ Reader r8791 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8791

def r8792 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8792 : ¬ Reader r8792 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8792

def r8793 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8793 : ¬ Reader r8793 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8793

def r8794 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8794 : ¬ Reader r8794 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8794

def r8795 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8795 : ¬ Reader r8795 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8795

def r8796 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8796 : ¬ Reader r8796 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8796

def r8797 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8797 : ¬ Reader r8797 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8797

def r8798 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8798 : ¬ Reader r8798 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8798

def r8799 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8799 : ¬ Reader r8799 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8799

def r8800 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8800 : ¬ Reader r8800 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8800

def r8801 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8801 : ¬ Reader r8801 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8801

def r8802 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8802 : ¬ Reader r8802 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8802

def r8803 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8803 : ¬ Reader r8803 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8803

def r8804 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8804 : ¬ Reader r8804 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8804

def r8805 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8805 : ¬ Reader r8805 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8805

def r8806 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8806 : ¬ Reader r8806 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8806

def r8807 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8807 : ¬ Reader r8807 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8807

def r8808 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject8808 : ¬ Reader r8808 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8808

def r8809 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject8809 : ¬ Reader r8809 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8809

def r8810 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject8810 : ¬ Reader r8810 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8810

def r8811 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject8811 : ¬ Reader r8811 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8811

def r8812 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject8812 : ¬ Reader r8812 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8812

def r8813 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject8813 : ¬ Reader r8813 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8813

def r8814 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject8814 : ¬ Reader r8814 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8814

def r8815 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject8815 : ¬ Reader r8815 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8815

def r8816 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject8816 : ¬ Reader r8816 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8816

def r8817 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject8817 : ¬ Reader r8817 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8817

def r8818 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject8818 : ¬ Reader r8818 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8818

def r8819 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject8819 : ¬ Reader r8819 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8819

def r8826 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8826 : ¬ Reader r8826 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8826

def r8827 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8827 : ¬ Reader r8827 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8827

def r8828 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8828 : ¬ Reader r8828 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8828

def r8829 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8829 : ¬ Reader r8829 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8829

def r8830 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8830 : ¬ Reader r8830 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8830

def r8831 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8831 : ¬ Reader r8831 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8831

def r8832 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8832 : ¬ Reader r8832 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8832

def r8833 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8833 : ¬ Reader r8833 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8833

def r8834 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8834 : ¬ Reader r8834 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8834

def r8835 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8835 : ¬ Reader r8835 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8835

def r8836 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8836 : ¬ Reader r8836 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8836

def r8837 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8837 : ¬ Reader r8837 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8837

def r8838 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8838 : ¬ Reader r8838 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8838

def r8839 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8839 : ¬ Reader r8839 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8839

def r8840 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8840 : ¬ Reader r8840 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8840

def r8841 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8841 : ¬ Reader r8841 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8841

def r8842 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8842 : ¬ Reader r8842 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8842

def r8843 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8843 : ¬ Reader r8843 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8843

def r8844 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8844 : ¬ Reader r8844 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8844

def r8845 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8845 : ¬ Reader r8845 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8845

def r8846 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8846 : ¬ Reader r8846 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8846

def r8847 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8847 : ¬ Reader r8847 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8847

def r8848 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8848 : ¬ Reader r8848 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8848

def r8849 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8849 : ¬ Reader r8849 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8849

def r8850 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8850 : ¬ Reader r8850 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8850

def r8851 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8851 : ¬ Reader r8851 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8851

def r8852 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8852 : ¬ Reader r8852 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8852

def r8853 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8853 : ¬ Reader r8853 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8853

def r8854 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8854 : ¬ Reader r8854 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8854

def r8855 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8855 : ¬ Reader r8855 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8855

def r8856 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8856 : ¬ Reader r8856 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8856

def r8857 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8857 : ¬ Reader r8857 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8857

def r8858 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8858 : ¬ Reader r8858 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8858

def r8859 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8859 : ¬ Reader r8859 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8859

def r8860 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8860 : ¬ Reader r8860 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8860

def r8861 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8861 : ¬ Reader r8861 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8861

def r8865 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8865 : ¬ Reader r8865 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8865

def r8866 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8866 : ¬ Reader r8866 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8866

def r8867 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8867 : ¬ Reader r8867 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 1))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8867

def r8868 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8868 : ¬ Reader r8868 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8868

def r8869 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8869 : ¬ Reader r8869 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8869

def r8870 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8870 : ¬ Reader r8870 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8870

def r8871 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8871 : ¬ Reader r8871 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8871

def r8872 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8872 : ¬ Reader r8872 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8872

def r8873 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8873 : ¬ Reader r8873 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8873

def r8874 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8874 : ¬ Reader r8874 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8874

def r8875 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8875 : ¬ Reader r8875 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8875

def r8876 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8876 : ¬ Reader r8876 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8876

def r8877 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject8877 : ¬ Reader r8877 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8877

def r8878 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject8878 : ¬ Reader r8878 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8878

def r8879 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))
theorem reject8879 : ¬ Reader r8879 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8879

def r8880 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject8880 : ¬ Reader r8880 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8880

def r8881 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))
theorem reject8881 : ¬ Reader r8881 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8881

def r8882 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))
theorem reject8882 : ¬ Reader r8882 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8882

def r8883 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject8883 : ¬ Reader r8883 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8883

def r8884 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject8884 : ¬ Reader r8884 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8884

def r8885 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject8885 : ¬ Reader r8885 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8885

def r8886 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject8886 : ¬ Reader r8886 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8886

def r8887 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8887 : ¬ Reader r8887 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8887

def r8888 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8888 : ¬ Reader r8888 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8888

def r8889 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 1))))
theorem reject8889 : ¬ Reader r8889 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8889

def r8890 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.app (.var 0) (.var 0)))
theorem reject8890 : ¬ Reader r8890 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8890

def r8891 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 1)))
theorem reject8891 : ¬ Reader r8891 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8891

def r8892 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 1)))) (.var 0))
theorem reject8892 : ¬ Reader r8892 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8892

def r8893 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 1))))
theorem reject8893 : ¬ Reader r8893 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8893

def r8894 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject8894 : ¬ Reader r8894 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.app (.var 0) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8894

def r8895 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject8895 : ¬ Reader r8895 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8895

def r8896 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject8896 : ¬ Reader r8896 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8896

def r8897 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8897 : ¬ Reader r8897 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8897

def r8898 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8898 : ¬ Reader r8898 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8898

def r8899 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8899 : ¬ Reader r8899 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8899

def r8900 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8900 : ¬ Reader r8900 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8900

def r8901 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject8901 : ¬ Reader r8901 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8901

def r8902 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject8902 : ¬ Reader r8902 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8902

def r8903 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject8903 : ¬ Reader r8903 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8903

def r8904 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject8904 : ¬ Reader r8904 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8904

def r8905 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject8905 : ¬ Reader r8905 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8905

def r8906 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject8906 : ¬ Reader r8906 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8906

def r8907 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8907 : ¬ Reader r8907 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8907

def r8908 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8908 : ¬ Reader r8908 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8908

def r8909 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8909 : ¬ Reader r8909 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8909

def r8910 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8910 : ¬ Reader r8910 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8910

def r8911 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8911 : ¬ Reader r8911 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8911

def r8912 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8912 : ¬ Reader r8912 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8912

def r8913 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8913 : ¬ Reader r8913 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8913

def r8914 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8914 : ¬ Reader r8914 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8914

def r8915 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8915 : ¬ Reader r8915 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))))) [(.lam (.lam (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8915

def r8916 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8916 : ¬ Reader r8916 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8916

def r8917 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8917 : ¬ Reader r8917 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8917

def r8918 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8918 : ¬ Reader r8918 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8918

def r8922 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject8922 : ¬ Reader r8922 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8922

def r8923 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject8923 : ¬ Reader r8923 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8923

def r8924 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject8924 : ¬ Reader r8924 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8924

def r8925 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject8925 : ¬ Reader r8925 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.app (.var 1) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8925

def r8926 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject8926 : ¬ Reader r8926 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.app (.var 1) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8926

def r8927 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))
theorem reject8927 : ¬ Reader r8927 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.app (.var 1) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8927

def r8928 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1)))))
theorem reject8928 : ¬ Reader r8928 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 1) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8928

def r8929 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))
theorem reject8929 : ¬ Reader r8929 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.app (.var 1) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8929

def r8930 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1)))))
theorem reject8930 : ¬ Reader r8930 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 1) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8930

def r8931 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8931 : ¬ Reader r8931 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8931

def r8932 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8932 : ¬ Reader r8932 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8932

def r8933 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8933 : ¬ Reader r8933 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8933

def r8934 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8934 : ¬ Reader r8934 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8934

def r8935 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8935 : ¬ Reader r8935 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8935

def r8936 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8936 : ¬ Reader r8936 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8936

def r8943 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8943 : ¬ Reader r8943 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8943

def r8944 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8944 : ¬ Reader r8944 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8944

def r8945 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8945 : ¬ Reader r8945 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8945

def r8946 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8946 : ¬ Reader r8946 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8946

def r8947 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8947 : ¬ Reader r8947 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8947

def r8948 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8948 : ¬ Reader r8948 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8948

def r8961 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8961 : ¬ Reader r8961 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8961

def r8962 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8962 : ¬ Reader r8962 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8962

def r8963 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8963 : ¬ Reader r8963 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8963

def r8964 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8964 : ¬ Reader r8964 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8964

def r8965 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject8965 : ¬ Reader r8965 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8965

def r8966 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject8966 : ¬ Reader r8966 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8966

def r8967 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject8967 : ¬ Reader r8967 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8967

def r8968 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject8968 : ¬ Reader r8968 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8968

def r8969 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8969 : ¬ Reader r8969 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8969

def r8970 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8970 : ¬ Reader r8970 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8970

def r8971 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject8971 : ¬ Reader r8971 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8971

def r8972 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8972 : ¬ Reader r8972 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8972

def r8973 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8973 : ¬ Reader r8973 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8973

def r8974 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8974 : ¬ Reader r8974 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8974

def r8975 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8975 : ¬ Reader r8975 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8975

def r8976 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8976 : ¬ Reader r8976 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8976

def r8977 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject8977 : ¬ Reader r8977 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8977

def r8978 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject8978 : ¬ Reader r8978 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8978

def r8979 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject8979 : ¬ Reader r8979 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8979

def r8980 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject8980 : ¬ Reader r8980 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8980

def r8981 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8981 : ¬ Reader r8981 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8981

def r8982 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8982 : ¬ Reader r8982 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8982

def r8983 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject8983 : ¬ Reader r8983 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8983

def r8984 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8984 : ¬ Reader r8984 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8984

def r8997 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8997 : ¬ Reader r8997 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8997

def r8998 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8998 : ¬ Reader r8998 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8998

def r8999 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8999 : ¬ Reader r8999 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8999

def r9000 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject9000 : ¬ Reader r9000 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9000

def r9001 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject9001 : ¬ Reader r9001 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9001

def r9002 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject9002 : ¬ Reader r9002 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9002

def r9003 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject9003 : ¬ Reader r9003 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9003

def r9004 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject9004 : ¬ Reader r9004 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9004

def r9005 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject9005 : ¬ Reader r9005 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9005

def r9006 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject9006 : ¬ Reader r9006 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9006

def r9007 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject9007 : ¬ Reader r9007 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9007

def r9008 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject9008 : ¬ Reader r9008 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9008

def r9009 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject9009 : ¬ Reader r9009 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9009

def r9010 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject9010 : ¬ Reader r9010 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9010

def r9011 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.var 0))
theorem reject9011 : ¬ Reader r9011 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9011

def r9012 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))
theorem reject9012 : ¬ Reader r9012 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9012

def r9013 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))
theorem reject9013 : ¬ Reader r9013 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9013

def r9014 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))
theorem reject9014 : ¬ Reader r9014 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9014

def r9015 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 1)))))
theorem reject9015 : ¬ Reader r9015 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9015

def r9016 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))
theorem reject9016 : ¬ Reader r9016 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9016

def r9017 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 1))
theorem reject9017 : ¬ Reader r9017 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9017

def r9018 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1)))))
theorem reject9018 : ¬ Reader r9018 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9018

def r9019 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject9019 : ¬ Reader r9019 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9019

def r9020 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject9020 : ¬ Reader r9020 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9020

def r9021 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject9021 : ¬ Reader r9021 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9021

def r9022 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject9022 : ¬ Reader r9022 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9022

def r9023 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject9023 : ¬ Reader r9023 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9023

def r9024 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9024 : ¬ Reader r9024 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9024

def r9025 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9025 : ¬ Reader r9025 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9025

def r9026 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9026 : ¬ Reader r9026 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9026

def r9027 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9027 : ¬ Reader r9027 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9027

def r9028 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9028 : ¬ Reader r9028 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9028

def r9029 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9029 : ¬ Reader r9029 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9029

def r9048 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9048 : ¬ Reader r9048 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9048

def r9049 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9049 : ¬ Reader r9049 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9049

def r9050 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9050 : ¬ Reader r9050 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9050

def r9051 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9051 : ¬ Reader r9051 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9051

def r9052 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9052 : ¬ Reader r9052 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9052

def r9053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9053 : ¬ Reader r9053 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9053

def r9054 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9054 : ¬ Reader r9054 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9054

def r9055 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9055 : ¬ Reader r9055 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9055

def r9056 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9056 : ¬ Reader r9056 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9056

def r9057 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9057 : ¬ Reader r9057 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9057

def r9058 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9058 : ¬ Reader r9058 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9058

def r9059 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9059 : ¬ Reader r9059 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9059

def r9066 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9066 : ¬ Reader r9066 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9066

def r9067 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9067 : ¬ Reader r9067 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9067

def r9068 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9068 : ¬ Reader r9068 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9068

def r9069 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9069 : ¬ Reader r9069 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9069

def r9070 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9070 : ¬ Reader r9070 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9070

def r9071 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9071 : ¬ Reader r9071 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9071

def r9078 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9078 : ¬ Reader r9078 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9078

def r9079 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9079 : ¬ Reader r9079 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9079

def r9080 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9080 : ¬ Reader r9080 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9080

def r9081 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9081 : ¬ Reader r9081 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9081

def r9082 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9082 : ¬ Reader r9082 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9082

def r9083 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9083 : ¬ Reader r9083 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9083

def r9084 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9084 : ¬ Reader r9084 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject9084

def r9085 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9085 : ¬ Reader r9085 := by
  exact replay_loop true [] 8 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9085

def r9086 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9086 : ¬ Reader r9086 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject9086

def r9087 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9087 : ¬ Reader r9087 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject9087

def r9088 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9088 : ¬ Reader r9088 := by
  exact replay_loop true [] 8 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9088

def r9089 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9089 : ¬ Reader r9089 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject9089

def r9090 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9090 : ¬ Reader r9090 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9090

def r9091 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9091 : ¬ Reader r9091 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9091

def r9092 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9092 : ¬ Reader r9092 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9092

def r9093 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9093 : ¬ Reader r9093 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9093

def r9094 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9094 : ¬ Reader r9094 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9094

def r9095 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9095 : ¬ Reader r9095 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9095

def r9096 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9096 : ¬ Reader r9096 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9096

def r9097 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9097 : ¬ Reader r9097 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9097

def r9098 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9098 : ¬ Reader r9098 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject9098

def r9099 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9099 : ¬ Reader r9099 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject9099

def r9100 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9100 : ¬ Reader r9100 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9100

def r9101 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9101 : ¬ Reader r9101 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9101

def r9108 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject9108 : ¬ Reader r9108 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.app (.var 1) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9108

def r9109 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject9109 : ¬ Reader r9109 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.app (.var 1) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9109

def r9110 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))
theorem reject9110 : ¬ Reader r9110 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.app (.var 1) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9110

def r9111 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1)))))
theorem reject9111 : ¬ Reader r9111 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.app (.var 1) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9111

def r9112 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))
theorem reject9112 : ¬ Reader r9112 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.app (.var 1) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9112

def r9113 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1)))))
theorem reject9113 : ¬ Reader r9113 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.app (.var 1) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9113

def r9114 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject9114 : ¬ Reader r9114 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9114

def r9115 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject9115 : ¬ Reader r9115 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9115

def r9116 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject9116 : ¬ Reader r9116 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9116

def r9117 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject9117 : ¬ Reader r9117 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9117

def r9118 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))
theorem reject9118 : ¬ Reader r9118 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9118

def r9119 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))
theorem reject9119 : ¬ Reader r9119 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9119

def r9120 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1)))))
theorem reject9120 : ¬ Reader r9120 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9120

def r9121 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9121 : ¬ Reader r9121 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9121

def r9122 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject9122 : ¬ Reader r9122 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9122

def r9123 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))
theorem reject9123 : ¬ Reader r9123 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9123

def r9124 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject9124 : ¬ Reader r9124 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9124

def r9125 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject9125 : ¬ Reader r9125 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9125

def r9126 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject9126 : ¬ Reader r9126 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.var 1) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9126

def r9127 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject9127 : ¬ Reader r9127 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.var 1) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9127

def r9128 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))
theorem reject9128 : ¬ Reader r9128 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.var 1) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9128

def r9129 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1)))))
theorem reject9129 : ¬ Reader r9129 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 1) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9129

def r9130 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))
theorem reject9130 : ¬ Reader r9130 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.var 1) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9130

def r9131 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1)))))
theorem reject9131 : ¬ Reader r9131 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 1) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9131

def r9132 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject9132 : ¬ Reader r9132 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9132

def r9133 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject9133 : ¬ Reader r9133 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9133

def r9134 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject9134 : ¬ Reader r9134 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9134

def r9135 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject9135 : ¬ Reader r9135 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9135

def r9136 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject9136 : ¬ Reader r9136 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9136

def r9137 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject9137 : ¬ Reader r9137 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9137

def r9138 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject9138 : ¬ Reader r9138 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9138

def r9139 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject9139 : ¬ Reader r9139 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9139
end Blc.HandlerLet.XBasic24
